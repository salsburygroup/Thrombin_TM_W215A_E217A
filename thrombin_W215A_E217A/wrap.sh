#python ~/python/Wrap.py -s ../input/ionized.psf -t output_tmp.xtc -o output_wrapped.dcd -sel 'protein and resid 1 to 295'
#/home/wud18/.local/lib/vmd/plugins/LINUXAMD64/bin/catdcd5.2/catdcd -o output.dcd -first 1 -last 100000 -xtc output.xtc

for n in {0..9};do
    first=$((1+10000*$n))
    last=$(($first+9999))
    /home/wud18/.local/lib/vmd/plugins/LINUXAMD64/bin/catdcd5.2/catdcd -o output${n}.dcd -first $first -last $last output.dcd
    python ~/python/Wrap.py -s ../input/ionized.psf -t output${n}.dcd -o output${n}_wrapped.dcd -sel 'protein and resid 1 to 295' && rm output${n}.dcd
done

#/home/wud18/.local/lib/vmd/plugins/LINUXAMD64/bin/catdcd5.2/catdcd -o output_wrapped_TM.dcd output0_wrapped_TM.dcd output1_wrapped_TM.dcd output2_wrapped_TM.dcd output3_wrapped_TM.dcd output4_wrapped_TM.dcd output5_wrapped_TM.dcd output6_wrapped_TM.dcd output7_wrapped_TM.dcd output8_wrapped_TM.dcd output9_wrapped_TM.dcd && rm output0_wrapped_TM.dcd output1_wrapped_TM.dcd output2_wrapped_TM.dcd output3_wrapped_TM.dcd output4_wrapped_TM.dcd output5_wrapped_TM.dcd output6_wrapped_TM.dcd output7_wrapped_TM.dcd output8_wrapped_TM.dcd output9_wrapped_TM.dcd output.dcd

/home/wud18/.local/lib/vmd/plugins/LINUXAMD64/bin/catdcd5.2/catdcd -o output_wrapped.dcd output0_wrapped.dcd output1_wrapped.dcd output2_wrapped.dcd output3_wrapped.dcd output4_wrapped.dcd output5_wrapped.dcd output6_wrapped.dcd output7_wrapped.dcd output8_wrapped.dcd output9_wrapped.dcd && rm output0_wrapped.dcd output1_wrapped.dcd output2_wrapped.dcd output3_wrapped.dcd output4_wrapped.dcd output5_wrapped.dcd output6_wrapped.dcd output7_wrapped.dcd output8_wrapped.dcd output9_wrapped.dcd
