#!/bin/bash

# Remove output?_wrapped.dcd
rm output0_wrapped.dcd output1_wrapped.dcd output2_wrapped.dcd output3_wrapped.dcd output4_wrapped.dcd output5_wrapped.dcd output6_wrapped.dcd output7_wrapped.dcd output8_wrapped.dcd output9_wrapped.dcd output10_wrapped.dcd output11_wrapped.dcd output12_wrapped.dcd output13_wrapped.dcd output14_wrapped.dcd output15_wrapped.dcd output16_wrapped.dcd output17_wrapped.dcd output18_wrapped.dcd output19_wrapped.dcd output20_wrapped.dcd output21_wrapped.dcd output22_wrapped.dcd output23_wrapped.dcd output24_wrapped.dcd output25_wrapped.dcd output26_wrapped.dcd output27_wrapped.dcd output28_wrapped.dcd output29_wrapped.dcd output30_wrapped.dcd output31_wrapped.dcd output32_wrapped.dcd output33_wrapped.dcd output34_wrapped.dcd output35_wrapped.dcd output36_wrapped.dcd output37_wrapped.dcd output38_wrapped.dcd output39_wrapped.dcd output40_wrapped.dcd output41_wrapped.dcd output42_wrapped.dcd output43_wrapped.dcd output44_wrapped.dcd output45_wrapped.dcd output46_wrapped.dcd output47_wrapped.dcd output48_wrapped.dcd output49_wrapped.dcd output50_wrapped.dcd output51_wrapped.dcd output52_wrapped.dcd output53_wrapped.dcd output54_wrapped.dcd output55_wrapped.dcd output56_wrapped.dcd output57_wrapped.dcd output58_wrapped.dcd output59_wrapped.dcd output60_wrapped.dcd output61_wrapped.dcd output62_wrapped.dcd output63_wrapped.dcd output64_wrapped.dcd output65_wrapped.dcd output66_wrapped.dcd output67_wrapped.dcd output68_wrapped.dcd output69_wrapped.dcd output70_wrapped.dcd output71_wrapped.dcd output72_wrapped.dcd output73_wrapped.dcd output74_wrapped.dcd output75_wrapped.dcd output76_wrapped.dcd output77_wrapped.dcd output78_wrapped.dcd output79_wrapped.dcd output80_wrapped.dcd output81_wrapped.dcd output82_wrapped.dcd output83_wrapped.dcd output84_wrapped.dcd output85_wrapped.dcd output86_wrapped.dcd output87_wrapped.dcd output88_wrapped.dcd output89_wrapped.dcd output90_wrapped.dcd output91_wrapped.dcd output92_wrapped.dcd output93_wrapped.dcd output94_wrapped.dcd output95_wrapped.dcd output96_wrapped.dcd output97_wrapped.dcd output98_wrapped.dcd output99_wrapped.dcd

# Concatenate all aligned trajectories
/home/wud18/.local/lib/vmd/plugins/LINUXAMD64/bin/catdcd5.2/catdcd -o output_wrapped_aligned.dcd output0_wrapped_aligned.dcd output1_wrapped_aligned.dcd output2_wrapped_aligned.dcd output3_wrapped_aligned.dcd output4_wrapped_aligned.dcd output5_wrapped_aligned.dcd output6_wrapped_aligned.dcd output7_wrapped_aligned.dcd output8_wrapped_aligned.dcd output9_wrapped_aligned.dcd output10_wrapped_aligned.dcd output11_wrapped_aligned.dcd output12_wrapped_aligned.dcd output13_wrapped_aligned.dcd output14_wrapped_aligned.dcd output15_wrapped_aligned.dcd output16_wrapped_aligned.dcd output17_wrapped_aligned.dcd output18_wrapped_aligned.dcd output19_wrapped_aligned.dcd output20_wrapped_aligned.dcd output21_wrapped_aligned.dcd output22_wrapped_aligned.dcd output23_wrapped_aligned.dcd output24_wrapped_aligned.dcd output25_wrapped_aligned.dcd output26_wrapped_aligned.dcd output27_wrapped_aligned.dcd output28_wrapped_aligned.dcd output29_wrapped_aligned.dcd output30_wrapped_aligned.dcd output31_wrapped_aligned.dcd output32_wrapped_aligned.dcd output33_wrapped_aligned.dcd output34_wrapped_aligned.dcd output35_wrapped_aligned.dcd output36_wrapped_aligned.dcd output37_wrapped_aligned.dcd output38_wrapped_aligned.dcd output39_wrapped_aligned.dcd output40_wrapped_aligned.dcd output41_wrapped_aligned.dcd output42_wrapped_aligned.dcd output43_wrapped_aligned.dcd output44_wrapped_aligned.dcd output45_wrapped_aligned.dcd output46_wrapped_aligned.dcd output47_wrapped_aligned.dcd output48_wrapped_aligned.dcd output49_wrapped_aligned.dcd output50_wrapped_aligned.dcd output51_wrapped_aligned.dcd output52_wrapped_aligned.dcd output53_wrapped_aligned.dcd output54_wrapped_aligned.dcd output55_wrapped_aligned.dcd output56_wrapped_aligned.dcd output57_wrapped_aligned.dcd output58_wrapped_aligned.dcd output59_wrapped_aligned.dcd output60_wrapped_aligned.dcd output61_wrapped_aligned.dcd output62_wrapped_aligned.dcd output63_wrapped_aligned.dcd output64_wrapped_aligned.dcd output65_wrapped_aligned.dcd output66_wrapped_aligned.dcd output67_wrapped_aligned.dcd output68_wrapped_aligned.dcd output69_wrapped_aligned.dcd output70_wrapped_aligned.dcd output71_wrapped_aligned.dcd output72_wrapped_aligned.dcd output73_wrapped_aligned.dcd output74_wrapped_aligned.dcd output75_wrapped_aligned.dcd output76_wrapped_aligned.dcd output77_wrapped_aligned.dcd output78_wrapped_aligned.dcd output79_wrapped_aligned.dcd output80_wrapped_aligned.dcd output81_wrapped_aligned.dcd output82_wrapped_aligned.dcd output83_wrapped_aligned.dcd output84_wrapped_aligned.dcd output85_wrapped_aligned.dcd output86_wrapped_aligned.dcd output87_wrapped_aligned.dcd output88_wrapped_aligned.dcd output89_wrapped_aligned.dcd output90_wrapped_aligned.dcd output91_wrapped_aligned.dcd output92_wrapped_aligned.dcd output93_wrapped_aligned.dcd output94_wrapped_aligned.dcd output95_wrapped_aligned.dcd output96_wrapped_aligned.dcd output97_wrapped_aligned.dcd output98_wrapped_aligned.dcd output99_wrapped_aligned.dcd

# Extract protein_Na and alpha carbon
python /home/wud18/python/extractDCD.py -s ../input/ionized.pdb -t output_wrapped_aligned.dcd -sel 'segname AP1 BP1 or resname SOD' -o protein_Na.dcd

python /home/wud18/python/extractDCD.py -s ../protein_Na.pdb -t protein_Na.dcd -sel 'name CA and protein' -o CA.dcd

# Align CA 
python /home/wud18/python/align.py -s ../CA.pdb -t CA.dcd -o CA_aligned.dcd && rm CA.dcd

# Calculating RMSF and RMSD for each trajectory
python /home/wud18/python/deviation.py -align -s ../CA.pdb -t CA_aligned.dcd -o CA

# Converting .dcd to .xtc to save space
mdconvert -o output_wrapped_aligned.xtc output_wrapped_aligned.dcd && rm output_wrapped_aligned.dcd

mdconvert -o output_wrapped.xtc output_wrapped.dcd && rm output_wrapped.dcd

#mdconvert -o output_wrapped_TM.xtc output_wrapped_TM.dcd && rm output_wrapped_TM.dcd

# Extract NH_thrombin_Na.dcd
python /home/wud18/python/extractDCD.py -s input/ionized.pdb -t output_wrapped_aligned.dcd -sel 'protein or resname SOD' -o NH_thrombin_Na.dcd
