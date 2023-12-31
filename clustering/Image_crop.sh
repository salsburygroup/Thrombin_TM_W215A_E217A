#for i in 170sLoop 220sLoop 60sLoop gammaLoop helix1 helix2 connection betaSheet1 30sLoop;do
for i in 170sLoop 180sLoop 220sLoop 60sLoop gammaLoop helix1 connection betaSheet1 30sLoop;do
    cd protein_stride100_${i}/IMWKRescaled/clusters
    ../../../image_crop_loops.sh
    cd ../../..
done

for i in catalyticPocket;do
    cd protein_stride100_${i}/IMWKRescaled/clusters
    ../../../image_crop_catalytic_pockets.sh
    cd ../../..
done

for i in catalyticTriad exositeI exositeII;do
    cd protein_stride100_${i}/IMWKRescaled/clusters
    ../../../image_crop_residues.sh
    cd ../../..
done


for i in 170sLoop 180sLoop 220sLoop 60sLoop gammaLoop helix1 helix2 connection betaSheet1 30sLoop;do
    cd protein_stride100_${i}/HDBSCAN/clusters
    ../../../image_crop_loops.sh
    cd ../../..
done

for i in regulatoryLoops;do
    cd protein_stride100_${i}/HDBSCAN/clusters
    ../../../image_crop_RegulatoryLoops.sh
    cd ../../..
done

for i in catalyticPocket;do
    cd protein_stride100_${i}/HDBSCAN/clusters
    ../../../image_crop_catalytic_pockets.sh
    cd ../../..
done

for i in catalyticTriad exositeI exositeII;do
    cd protein_stride100_${i}/HDBSCAN/clusters
    ../../../image_crop_residues.sh
    cd ../../..
done
