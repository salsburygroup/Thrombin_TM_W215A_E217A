#!/bin/bash

path=$(pwd)
#title=$(pwd | sed 's#/#\n#g' | sed -n '$p')
stride=100
timestep=1ns

if [ ! -d clustering ]; then
    mkdir clustering
fi
cd clustering

# Catalytic pocket
mkdir protein_stride${stride}_catalyticPocket
cd protein_stride${stride}_catalyticPocket

<<<<<<< HEAD
python ./python/ClusterTrial.py -s ${path}/protein_common_atom.pdb -t ${path}/thrombin_TM456_WE_TM456_stride${stride}_aligned.dcd -sel "\(residue\ 79\ 83\ 86\ 132\ 135\ 213\ 214\ 215\ 274\ 275\ or\ residue\ 235\ to\ 241\ or\ residue\ 261\ to\ 268\)\ and\ not\ element\ H" -title catalyticPocket -o ${path}/clustering/protein_stride${stride}_catalyticPocket -tm $timestep &
=======
python /home/wud18/python/ClusterTrial.py -s ${path}/protein_common_atom.pdb -t ${path}/thrombin_TM456_WE_TM456_stride${stride}_aligned.dcd -sel "\(residue\ 79\ 83\ 86\ 132\ 135\ 213\ 214\ 215\ 274\ 275\ or\ residue\ 235\ to\ 241\ or\ residue\ 261\ to\ 268\)\ and\ not\ element\ H" -title catalyticPocket -o ${path}/clustering/protein_stride${stride}_catalyticPocket -tm $timestep &
>>>>>>> 05e619c11fb3fda267d2df7a27f05e08cd15ac95

cd ..

# Regulatory loops
mkdir protein_stride${stride}_regulatoryLoops
cd protein_stride${stride}_regulatoryLoops

<<<<<<< HEAD
python ./python/ClusterTrial.py -s ${path}/protein_common_atom.pdb -t ${path}/thrombin_TM456_WE_TM456_stride${stride}_aligned.dcd -sel "\(residue\ 57\ 98\ 104\ 106\ 109\ 125\ 134\ 142\ 143\ 281\ 284\ 288\ or\ residue\ 182\ to\ 190\ or\ residue\ 262\ to\ 274\ or\ residue\ 82\ to\ 94\)\ and\ not\ element\ H" -title regulatoryLoops -o ${path}/clustering/protein_stride${stride}_regulatoryLoops -tm $timestep &
=======
python /home/wud18/python/ClusterTrial.py -s ${path}/protein_common_atom.pdb -t ${path}/thrombin_TM456_WE_TM456_stride${stride}_aligned.dcd -sel "\(residue\ 57\ 98\ 104\ 106\ 109\ 125\ 134\ 142\ 143\ 281\ 284\ 288\ or\ residue\ 182\ to\ 190\ or\ residue\ 262\ to\ 274\ or\ residue\ 82\ to\ 94\)\ and\ not\ element\ H" -title regulatoryLoops -o ${path}/clustering/protein_stride${stride}_regulatoryLoops -tm $timestep &
>>>>>>> 05e619c11fb3fda267d2df7a27f05e08cd15ac95

cd ..

# 60s loop
mkdir protein_stride${stride}_60sLoop
cd protein_stride${stride}_60sLoop

<<<<<<< HEAD
python ./python/ClusterTrial.py -s ${path}/protein_common_atom.pdb -t ${path}/thrombin_TM456_WE_TM456_stride${stride}_aligned.dcd -sel "\(residue\ 82\ to\ 94\)\ and\ not\ element\ H" -title 60sLoop -o ${path}/clustering/protein_stride${stride}_60sLoop -tm $timestep &
=======
python /home/wud18/python/ClusterTrial.py -s ${path}/protein_common_atom.pdb -t ${path}/thrombin_TM456_WE_TM456_stride${stride}_aligned.dcd -sel "\(residue\ 82\ to\ 94\)\ and\ not\ element\ H" -title 60sLoop -o ${path}/clustering/protein_stride${stride}_60sLoop -tm $timestep &
>>>>>>> 05e619c11fb3fda267d2df7a27f05e08cd15ac95

cd ..

# 30s loop
mkdir protein_stride${stride}_30sLoop
cd protein_stride${stride}_30sLoop

<<<<<<< HEAD
python ./python/ClusterTrial.py -s ${path}/protein_common_atom.pdb -t ${path}/thrombin_TM456_WE_TM456_stride${stride}_aligned.dcd -sel "\(residue\ 55\ to\ 62\)\ and\ not\ element\ H" -title 30sLoop -o ${path}/clustering/protein_stride${stride}_30sLoop -tm $timestep &
=======
python /home/wud18/python/ClusterTrial.py -s ${path}/protein_common_atom.pdb -t ${path}/thrombin_TM456_WE_TM456_stride${stride}_aligned.dcd -sel "\(residue\ 55\ to\ 62\)\ and\ not\ element\ H" -title 30sLoop -o ${path}/clustering/protein_stride${stride}_30sLoop -tm $timestep &
>>>>>>> 05e619c11fb3fda267d2df7a27f05e08cd15ac95

cd ..

# Helix 1
mkdir protein_stride${stride}_helix1
cd protein_stride${stride}_helix1

<<<<<<< HEAD
python ./python/ClusterTrial.py -s ${path}/protein_common_atom.pdb -t ${path}/thrombin_TM456_WE_TM456_stride${stride}_aligned.dcd -sel "\(residue\ 158\ to\ 166\)\ and\ not\ element\ H" -title helix1 -o ${path}/clustering/protein_stride${stride}_helix1 -tm $timestep &
=======
python /home/wud18/python/ClusterTrial.py -s ${path}/protein_common_atom.pdb -t ${path}/thrombin_TM456_WE_TM456_stride${stride}_aligned.dcd -sel "\(residue\ 158\ to\ 166\)\ and\ not\ element\ H" -title helix1 -o ${path}/clustering/protein_stride${stride}_helix1 -tm $timestep &
>>>>>>> 05e619c11fb3fda267d2df7a27f05e08cd15ac95

cd ..

# Gamma loop
mkdir protein_stride${stride}_gammaLoop
cd protein_stride${stride}_gammaLoop

<<<<<<< HEAD
python ./python/ClusterTrial.py -s ${path}/protein_common_atom.pdb -t ${path}/thrombin_TM456_WE_TM456_stride${stride}_aligned.dcd -sel "\(residue\ 182\ to\ 190\)\ and\ not\ element\ H" -title gammaLoop -o ${path}/clustering/protein_stride${stride}_gammaLoop -tm $timestep &
=======
python /home/wud18/python/ClusterTrial.py -s ${path}/protein_common_atom.pdb -t ${path}/thrombin_TM456_WE_TM456_stride${stride}_aligned.dcd -sel "\(residue\ 182\ to\ 190\)\ and\ not\ element\ H" -title gammaLoop -o ${path}/clustering/protein_stride${stride}_gammaLoop -tm $timestep &
>>>>>>> 05e619c11fb3fda267d2df7a27f05e08cd15ac95

cd ..

# Helix 2
mkdir protein_stride${stride}_helix2
cd protein_stride${stride}_helix2

<<<<<<< HEAD
python ./python/ClusterTrial.py -s ${path}/protein_common_atom.pdb -t ${path}/thrombin_TM456_WE_TM456_stride${stride}_aligned.dcd -sel "\(residue\ 205\ to\ 212\)\ and\ not\ element\ H" -title helix2 -o ${path}/clustering/protein_stride${stride}_helix2 -tm $timestep &
=======
python /home/wud18/python/ClusterTrial.py -s ${path}/protein_common_atom.pdb -t ${path}/thrombin_TM456_WE_TM456_stride${stride}_aligned.dcd -sel "\(residue\ 205\ to\ 212\)\ and\ not\ element\ H" -title helix2 -o ${path}/clustering/protein_stride${stride}_helix2 -tm $timestep &
>>>>>>> 05e619c11fb3fda267d2df7a27f05e08cd15ac95

cd ..

# 170s loop
mkdir protein_stride${stride}_170sLoop
cd protein_stride${stride}_170sLoop

<<<<<<< HEAD
python ./python/ClusterTrial.py -s ${path}/protein_common_atom.pdb -t ${path}/thrombin_TM456_WE_TM456_stride${stride}_aligned.dcd -sel "\(residue\ 204\ to\ 219\)\ and\ not\ element\ H" -title 170sLoop -o ${path}/clustering/protein_stride${stride}_170sLoop -tm $timestep &
=======
python /home/wud18/python/ClusterTrial.py -s ${path}/protein_common_atom.pdb -t ${path}/thrombin_TM456_WE_TM456_stride${stride}_aligned.dcd -sel "\(residue\ 204\ to\ 219\)\ and\ not\ element\ H" -title 170sLoop -o ${path}/clustering/protein_stride${stride}_170sLoop -tm $timestep &
>>>>>>> 05e619c11fb3fda267d2df7a27f05e08cd15ac95

cd ..

# 220s loop
mkdir protein_stride${stride}_220sLoop
cd protein_stride${stride}_220sLoop

<<<<<<< HEAD
python ./python/ClusterTrial.py -s ${path}/protein_common_atom.pdb -t ${path}/thrombin_TM456_WE_TM456_stride${stride}_aligned.dcd -sel "\(residue\ 262\ to\ 274\)\ and\ not\ element\ H" -title 220sLoop -o ${path}/clustering/protein_stride${stride}_220sLoop -tm $timestep &
=======
python /home/wud18/python/ClusterTrial.py -s ${path}/protein_common_atom.pdb -t ${path}/thrombin_TM456_WE_TM456_stride${stride}_aligned.dcd -sel "\(residue\ 262\ to\ 274\)\ and\ not\ element\ H" -title 220sLoop -o ${path}/clustering/protein_stride${stride}_220sLoop -tm $timestep &
>>>>>>> 05e619c11fb3fda267d2df7a27f05e08cd15ac95

cd ..

# Catalytic triad
mkdir protein_stride${stride}_catalyticTriad
cd protein_stride${stride}_catalyticTriad

<<<<<<< HEAD
python ./python/ClusterTrial.py -s ${path}/protein_common_atom.pdb -t ${path}/thrombin_TM456_WE_TM456_stride${stride}_aligned.dcd -sel "\(residue\ 79\ 135\ 241\)\ and\ not\ element\ H" -title catalyticTriad -o ${path}/clustering/protein_stride${stride}_catalyticTriad -tm $timestep &
=======
python /home/wud18/python/ClusterTrial.py -s ${path}/protein_common_atom.pdb -t ${path}/thrombin_TM456_WE_TM456_stride${stride}_aligned.dcd -sel "\(residue\ 79\ 135\ 241\)\ and\ not\ element\ H" -title catalyticTriad -o ${path}/clustering/protein_stride${stride}_catalyticTriad -tm $timestep &
>>>>>>> 05e619c11fb3fda267d2df7a27f05e08cd15ac95

cd ..

# Exosite I
mkdir protein_stride${stride}_exositeI
cd protein_stride${stride}_exositeI

<<<<<<< HEAD
python ./python/ClusterTrial.py -s ${path}/protein_common_atom.pdb -t ${path}/thrombin_TM456_WE_TM456_stride${stride}_aligned.dcd -sel "\(residue\ 57\ 98\ 104\ 106\ 109\ 142\ 143\)\ and\ not\ element\ H" -title exositeI -o ${path}/clustering/protein_stride${stride}_exositeI -tm $timestep &
=======
python /home/wud18/python/ClusterTrial.py -s ${path}/protein_common_atom.pdb -t ${path}/thrombin_TM456_WE_TM456_stride${stride}_aligned.dcd -sel "\(residue\ 57\ 98\ 104\ 106\ 109\ 142\ 143\)\ and\ not\ element\ H" -title exositeI -o ${path}/clustering/protein_stride${stride}_exositeI -tm $timestep &
>>>>>>> 05e619c11fb3fda267d2df7a27f05e08cd15ac95

cd ..

# Exosite II
mkdir protein_stride${stride}_exositeII
cd protein_stride${stride}_exositeII

<<<<<<< HEAD
python ./python/ClusterTrial.py -s ${path}/protein_common_atom.pdb -t ${path}/thrombin_TM456_WE_TM456_stride${stride}_aligned.dcd -sel "\(residue\ 125\ 134\ 281\ 284\ 288\)\ and\ not\ element\ H" -title exositeII -o ${path}/clustering/protein_stride${stride}_exositeII -tm $timestep &
=======
python /home/wud18/python/ClusterTrial.py -s ${path}/protein_common_atom.pdb -t ${path}/thrombin_TM456_WE_TM456_stride${stride}_aligned.dcd -sel "\(residue\ 125\ 134\ 281\ 284\ 288\)\ and\ not\ element\ H" -title exositeII -o ${path}/clustering/protein_stride${stride}_exositeII -tm $timestep &
>>>>>>> 05e619c11fb3fda267d2df7a27f05e08cd15ac95

cd ..

# 180s loop
mkdir protein_stride${stride}_180sLoop
cd protein_stride${stride}_180sLoop

<<<<<<< HEAD
python ./python/ClusterTrial.py -s ${path}/protein_common_atom.pdb -t ${path}/thrombin_TM456_WE_TM456_stride${stride}_aligned.dcd -sel "\(residue\ 225\ to\ 239\)\ and\ not\ element\ H" -title 180sLoop -o ${path}/clustering/protein_stride${stride}_180sLoop -tm $timestep &
=======
python /home/wud18/python/ClusterTrial.py -s ${path}/protein_common_atom.pdb -t ${path}/thrombin_TM456_WE_TM456_stride${stride}_aligned.dcd -sel "\(residue\ 225\ to\ 239\)\ and\ not\ element\ H" -title 180sLoop -o ${path}/clustering/protein_stride${stride}_180sLoop -tm $timestep &
>>>>>>> 05e619c11fb3fda267d2df7a27f05e08cd15ac95

cd ..

# Connection
mkdir protein_stride${stride}_connection
cd protein_stride${stride}_connection

<<<<<<< HEAD
python ./python/ClusterTrial.py -s ${path}/protein_common_atom.pdb -t ${path}/thrombin_TM456_WE_TM456_stride${stride}_aligned.dcd -sel "\(residue\ 167\ to\ 170\)\ and\ not\ element\ H" -title connection -o ${path}/clustering/protein_stride${stride}_connection -tm $timestep &
=======
python /home/wud18/python/ClusterTrial.py -s ${path}/protein_common_atom.pdb -t ${path}/thrombin_TM456_WE_TM456_stride${stride}_aligned.dcd -sel "\(residue\ 167\ to\ 170\)\ and\ not\ element\ H" -title connection -o ${path}/clustering/protein_stride${stride}_connection -tm $timestep &
>>>>>>> 05e619c11fb3fda267d2df7a27f05e08cd15ac95

cd ..

# Beta Sheet1
mkdir protein_stride${stride}_betaSheet1
cd protein_stride${stride}_betaSheet1

<<<<<<< HEAD
python ./python/ClusterTrial.py -s ${path}/protein_common_atom.pdb -t ${path}/thrombin_TM456_WE_TM456_stride${stride}_aligned.dcd -sel "\(residue\ 171\ to\ 176\)\ and\ not\ element\ H" -title betaSheet1 -o ${path}/clustering/protein_stride${stride}_betaSheet1 -tm $timestep &
=======
python /home/wud18/python/ClusterTrial.py -s ${path}/protein_common_atom.pdb -t ${path}/thrombin_TM456_WE_TM456_stride${stride}_aligned.dcd -sel "\(residue\ 171\ to\ 176\)\ and\ not\ element\ H" -title betaSheet1 -o ${path}/clustering/protein_stride${stride}_betaSheet1 -tm $timestep &
>>>>>>> 05e619c11fb3fda267d2df7a27f05e08cd15ac95

cd ../..
