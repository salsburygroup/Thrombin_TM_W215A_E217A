<<<<<<< HEAD
=======

>>>>>>> 3dadf4b7dc4f021fe4c78b7fafd2d38671de5339
Introduction
This repository contains the code and data for our molecular dynamics (MD) simulation study on thrombin, a serine protease crucial in hemostasis. Thrombin exhibits dual functionality in coagulation processes: it favors fibrinogen cleavage in its native form but shifts towards activating protein C when complexed with thrombomodulin (TM). Beyond coagulation, thrombin is implicated in cancer-associated thrombosis, potentially influencing metastasis and tumorigenesis. We spotlight the W215A/E217A (WE) double mutant of thrombin, which exhibits a dramatic reduction in fibrinogen cleavage activity (decreased by 19,000-fold) compared to a modest 7-fold reduction in protein C activation with TM. This disparity in substrate specificity of the WE mutant poses intriguing questions about the molecular mechanisms involved.


Data Availability
The trajectory data is too large to be uploaded to GitHub but is available upon request.

Repository Structure
Prepare/: Contains all input files for MD simulations
python/: Contains all Python scripts.
TM_thrombin/, TM456_Na0.125/, thrombin_W215A_E217A/, TM456_W215A_E217A/: Directories containing analyses for specific complexes.
pca/: PCA analyses files.
hbond/: Directories for hydrogen bond data.
logistic_regression_Hbond/: Contains R scripts for logistic regression analysis on hydrogen bonds.


How to Run the Analyses

Initial Setup

Add the Analysis/ sub-directory, located within the python/ directory, to your Python path. To do this, execute the following command: 'export PYTHONPATH=$PYTHONPATH:/your_path/Analysis'

Edit the .sh files to correctly point to the Python scripts in the python/ directory.

The following python libraries will be needed: numpy,mdtraj,scipy,pyemma,MDAnalysis,matplotlib,and pandas.

Basic Analyses

Navigate to the specific analysis directory (e.g., TM_thrombin/, TM456_Na0.125/, thrombin_W215A_E217A/, or TM456_W215A_E217A/). Run Process1.sh to Process4.sh to conduct basic analyses such as RMSF.


Plot RMSF

To plot RMSF, run: 'python Plot_deviation.py'


Clustering Analysis

Execute ./clustering.sh. Visualize the clusters by running begin.sh in the clustering/ directory.


PCA Analysis

Use the Jupyter notebooks pca_calculate.ipynb, pca_plot.ipynb, and pca_plot_examine_wells.ipynb located in the pca/ directory. For visualization, execute Begin.sh in the pca/visualization/ directory.


Hydrogen Bond Analysis

<<<<<<< HEAD
Execute the Python script hbond_analysis_resid.py to extract hydrogen bonds from the trajectory. Use select_Hbonds.ipynb to filter hydrogen bonds. For logistic regression analyses, navigate to the logistic_regression_Hbond/ directory and use the R scripts logistic_regression_Hbond.Rmd and logistic_regression_Hbond3.Rmd.
=======
Execute the Python script hbond_analysis_resid.py to extract hydrogen bonds from the trajectory. 
Use select_Hbonds.ipynb to filter hydrogen bonds. 
For logistic regression analyses, navigate to the logistic_regression_Hbond/ directory and use the R scripts logistic_regression_Hbond.Rmd and logistic_regression_Hbond3.Rmd.
=
>>>>>>> 3dadf4b7dc4f021fe4c78b7fafd2d38671de5339

