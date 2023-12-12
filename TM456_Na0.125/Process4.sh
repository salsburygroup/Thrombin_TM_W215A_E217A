#!/bin/bash

for i in {1..6};do
    cd $i
# Wrap the water and ions
vmd ../input/ionized.psf output.dcd -dispdev text -e ../vmd/VMDScripts/Analysis/Wrap.tcl -args -atomsel protein_or_nucleic -outfile output_wrapped.dcd > wrap.log

# Align all frames to the protein
python ../python/align.py -s ../input/ionized.pdb -t output_wrapped.dcd -sel protein -o output_wrapped_aligned.dcd > align.log && rm output_wrapped.dcd

# Extract protein_Na and alpha carbon
python ../python/extractDCD.py -s ../protein_Na.pdb -t protein_Na_wrapped.dcd -sel 'name CA and protein' -o CA_wrapped.dcd

# Align CA 
python ../python/align.py -s ../CA.pdb -t CA_wrapped.dcd -o CA_wrapped_aligned.dcd && rm CA_wrapped.dcd

# Calculating RMSF and RMSD for each trajectory
python ../python/deviation.py -align -s ../CA.pdb -t CA_wrapped_aligned.dcd -o CA

    cd ..
done
# Plot rmsd and rmsf
python ../python/Plot_deviation.py -n 6 -title 'thrombin-TM complex (with Ca)'

## Concatenate all trajectories and do the analysis
# protein_Na_wrapped aligned
../.local/lib/vmd/plugins/LINUXAMD64/bin/catdcd5.2/catdcd -o protein_Na_wrapped.dcd 1/protein_Na_wrapped.dcd 2/protein_Na_wrapped.dcd 3/protein_Na_wrapped.dcd 4/protein_Na_wrapped.dcd 5/protein_Na_wrapped.dcd 6/protein_Na_wrapped.dcd

python ../python/align.py -s protein_Na_wrapped_right_angle.pdb -sel protein -t protein_Na_wrapped.dcd -o protein_Na_wrapped_stride1_aligned.dcd && rm protein_Na_wrapped.dcd

# stride 10 protein aligned
../.local/lib/vmd/plugins/LINUXAMD64/bin/catdcd5.2/catdcd -o protein_Na_wrapped_stride10_aligned.dcd -stride 10 protein_Na_wrapped_stride1_aligned.dcd

# stride 100 protein aligned
../.local/lib/vmd/plugins/LINUXAMD64/bin/catdcd5.2/catdcd -o protein_Na_wrapped_stride100_aligned.dcd -stride 10 protein_Na_wrapped_stride10_aligned.dcd
