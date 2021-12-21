#!/usr/bin/env python3
"""
Update inc/trig_tables.h & src/trig_tables.c

USAGE: ./gen_trig_table -h

TODO: document required project structure

Marion Anderson
July 2021
"""

import re
from argparse import ArgumentParser
from datetime import datetime
from pathlib import Path

from numpy import arange, array2string, pi, sin

parser = ArgumentParser(
        'Generate sine lookup table for Motor-Controller-Teensy project')
parser.add_argument('--ticks-per-rev', type=int, default=None, help="""
Ticks per revolution. Defaults to TICKS_PER_REV in inc/trig_tables.h
""")
parser.add_argument('--decimals', type=int, default=6, help="""
Default:6. # decimals for SINE_ARRAY values.
""")
parser.add_argument('--debug', action='store_true',
                    help='Print script debug statements')


if __name__ == '__main__':
# ----------------------------------------------------------------------------
# Setup
# ----------------------------------------------------------------------------

    args = parser.parse_args()
    debug = args.debug
    ticks_per_rev = args.ticks_per_rev
    decimals = args.decimals
    date_str = datetime.strftime(datetime.now(), '%Y-%m-%d %H:%m:%S')
    date_line = f'  * @date    {date_str}'  # Last Updated timestamp str

# ----------------------------------------------------------------------------
# Find Files
# ----------------------------------------------------------------------------

    # Repo Path
    rootstr = 'Motor-Controller-Teensy'  # project rootname var for brevity
    scriptpath = Path(__file__).resolve()
    if debug:
        print(f'scriptpath: {scriptpath}')
    if rootstr not in str(scriptpath):
        raise RuntimeError('Script not located in Motor-Controller-Teensy directory')

    # Finding Files
    pts = scriptpath.parents
    ndx = [i for i in range(len(pts)) if rootstr not in str(pts[i])][0] - 1
    rootdir = pts[ndx]
    fn_trig_c = rootdir / 'src/trig_tables.c'
    fn_trig_h = rootdir / 'inc/trig_tables.h'
    if debug:
        print(f'fn_trig_c: {fn_trig_c}\nfn_trig_h: {fn_trig_h}')

# ----------------------------------------------------------------------------
# Analyze Header File
# ----------------------------------------------------------------------------

    with open(fn_trig_h, 'r') as f:
        trig_h_str = f.read()
    trig_h_lines = trig_h_str.splitlines()

    # Last Updated - only if updating encoder ticks
    date_ndx = -1  # if -1, don't update inc/trig_tables.h
    if ticks_per_rev is not None:
        date_ndx = [i for i,v in enumerate(trig_h_lines) if '@date' in v][0]
        trig_h_lines[date_ndx] = date_line

    # Find Ticks Per Rev
    pattern = re.compile('#define\s+TICKS_PER_REV.*')
    ticks_h_line = pattern.findall(trig_h_str)[0]
    ticks_h_split = ticks_h_line.split('REV')

    # Reference or Update
    if date_ndx == -1:  # reference
        ticks_per_rev = int(
            ticks_h_split[1].strip().replace('U','')  # remove trailing U
        )
        if debug:
            print(f'Not updating {fn_trig_h}\nTICKS_PER_REV={ticks_per_rev}')
    else:  # update
        ndx = trig_h_lines.index(ticks_h_line)  # where to insert ticks
        trig_h_lines[ndx] = f'#define TICKS_PER_REV {ticks_per_rev}U'
        with open(fn_trig_h, 'w') as f:
            f.writelines([v+'\n' for v in trig_h_lines])

# ----------------------------------------------------------------------------
# Analyze C File
# ----------------------------------------------------------------------------

    with open(fn_trig_c, 'r') as f:
        trig_c_str = f.read()
    trig_c_lines = trig_c_str.splitlines()

    # Last Updated
    date_ndx = [i for i,v in enumerate(trig_c_lines) if '@date' in v][0]
    trig_c_lines[date_ndx] = date_line

    # Find Trig Table Start
    # - identify by looking for first Q(x) after SINE_ARRAY
    # initial guess - start at SINE_ARRAY defn
    pattern = re.compile('\AQ_T\s+SINE_ARRAY\[TRIG_SZ\]\s*=')
    ndx_trig_start = [i for i,v in enumerate(trig_c_lines) if len(pattern.findall(v))!=0][0]
    while 'Q(0' not in trig_c_lines[ndx_trig_start]:
        ndx_trig_start += 1
        if ndx_trig_start > len(trig_c_lines):
            raise RuntimeError('Could not find start of SINE_ARRAY')
    if debug:
        print(f'ndx_trig_start={ndx_trig_start}')

    # Find Trig Table End
    ndx_trig_end = ndx_trig_start  # as good an init guess as any
    while '};' not in trig_c_lines[ndx_trig_end]:
        ndx_trig_end += 1
        if ndx_trig_end > len(trig_c_lines):
            raise RuntimeError('Could not find end of SINE_ARRAY')
    if debug:
        print(f'ndx_trig_end={ndx_trig_end}')

    # Generate Trig Table
    dtheta = 2*pi / ticks_per_rev     # radians per encoder tick
    thetas = arange(0, pi/2, dtheta)  # don't include pi/2
    sines = sin(thetas)
    if debug:
        print(f'SINE_ARRAY[-1]={sines[-1]}')

    # String-ify Trig Table
    fmtr = {'all': lambda x: f'Q({x:0.{decimals}f})'}  # Q(x) string wrapping
    arrstr = array2string(sines, max_line_width=80, formatter=fmtr,
                          separator=',', threshold=len(sines)+1,)
    arrstr = '\n   '.join(arrstr.splitlines())
    if debug:
        print(f'arrstr[:100]: {arrstr[:100]}')

    # Update
    del trig_c_lines[ndx_trig_start:ndx_trig_end+1]  # remove prev trig table
    trig_c_lines.insert(ndx_trig_start,'    '+arrstr[1:-1])
    trig_c_lines.append('};')
    with open(fn_trig_c, 'w') as f:
            f.writelines([v+'\n' for v in trig_c_lines])