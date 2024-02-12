#!/usr/bin/python
# -*- coding: utf-8 -*-

import time
import sys
import argparse
from detect import *

if __name__ == "__main__":
    # Set up an argument parser to handle command-line inputs
    parser = argparse.ArgumentParser()
    parser.add_argument('--dir', action='store', dest='dir', help="Provide Directory to analyse")
    parser.add_argument('--plain', action='store_true', dest='plain', help="Plain in output (without Color)")
    results = parser.parse_args()

    # Check if a directory has been specified and proceed with the analysis.
    if results.dir is not None:
        """Check if a directory has been specified and proceed with the analysis.
          To browse files recursively, higher threshold"""
        sys.setrecursionlimit(1000000) 
        print("""    
   _____               _____   _______     _     ____    _         _               _                _____   __     __             _      
  / ____|     /\      / ____| |__   __|   | |   |  _ \  (_)       | |             | |       /\     |  __ \  \ \   / /     /\     | |     
 | (___      /  \    | (___      | |      | |   | |_) |  _   ___  | |__     __ _  | |      /  \    | |__) |  \ \_/ /     /  \    | |     
  \___ \    / /\ \    \___ \     | |      | |   |  _ <  | | / __| | '_ \   / _` | | |     / /\ \   |  _  /    \   /     / /\ \   | |     
  ____) |  / ____ \   ____) |    | |      | |   | |_) | | | \__ \ | | | | | (_| | | |    / ____ \  | | \ \     | |     / ____ \  | |____ 
 |_____/  /_/    \_\ |_____/     |_|      | |   |____/  |_| |___/ |_| |_|  \__,_| |_|   /_/    \_\ |_|  \_\    |_|    /_/    \_\ |______|
                                          |_|                                                                                        

                                                                    Made By: Bishal Aryal | ScanCodeShield """)
        print("\n{}Analyzing '{}' source code{}".format('' if results.plain else '\033[1m', results.dir, '' if results.plain else '\033[0m'))
        time.sleep(5)
        if os.path.isfile(results.dir):
            analysis(results.dirm, results.plain)
        else:
            recursive(results.dir, 0, results.plain)
        scanresults()

    else:
        parser.print_help()
