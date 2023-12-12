#!/bin/bash

<<<<<<< HEAD
python ../python/extractDCD.py -s input/ionized.pdb -t input/ionized.pdb -sel 'segname AP1 BP1 or resname SOD' -o protein_Na.pdb
python ../python/extractDCD.py -s protein_Na.pdb -t protein_Na.pdb -sel 'name CA and protein' -o CA.pdb
python ../python/extractDCD.py -s input/ionized.pdb -t input/ionized.pdb -sel 'protein or resname SOD' -o TM_thrombin_Na.pdb
=======
python /home/wud18/python/extractDCD.py -s input/ionized.pdb -t input/ionized.pdb -sel 'segname AP1 BP1 or resname SOD' -o protein_Na.pdb
python /home/wud18/python/extractDCD.py -s protein_Na.pdb -t protein_Na.pdb -sel 'name CA and protein' -o CA.pdb
python /home/wud18/python/extractDCD.py -s input/ionized.pdb -t input/ionized.pdb -sel 'protein or resname SOD' -o TM_thrombin_Na.pdb
>>>>>>> 05e619c11fb3fda267d2df7a27f05e08cd15ac95
