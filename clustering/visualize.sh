num=$(ls | grep cluster | wc -l)
if [ $num -gt 20 ];then
    num=20
fi

for ((j=0; j<${num}; j++));do
    cd cluster$j
    vmd -dispdev text -e ../generate_images.vmd -args Representative.pdb /deac/phy/salsburyGrp/wud18/md/TM_mutant/protein_common_atom.psf selected.dcd > vmd_rendering.out	       	
    fileName=$(ls -d $PWD/*tga)
    fileNameNoExtention="${fileName%.*}"
    #echo $fileNameNoExtention
    convert $fileName ${fileNameNoExtention}.png
    convert $fileName -transparent white ${fileNameNoExtention}_trans.png
    cd ..	    	
done
