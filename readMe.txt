See sample_code.m for examples.

This folder and the "\Tools\nifti" subfolder need to be in the Matlab path.You need to unzip it first.

In order to avoid unnecessary trouble, it is recommended to use ROIEditor to draw the Mask, 
possibly due to different file formats. We provide the ROIEditor toolkit in '\Tools\ROIEditor'.

Do not put any files in the 'Datapath' other than the data folder you need to process.

############################################################################

Simplest Usage (for bi-exponential model):
Datapath = '';
bval = [b1 b2 b3 ...... bn];
Num_bval = ;
Datafile = '*.nii';
Maskfile = '*.dat';
result1 = biexp_IVIM_calc(Datapath, bval, Num_bval, Datafile, Maskfile);


Simplest Usage (for joint model):
Datapath = '';
bval = [b1 b2 b3 ...... bn];
Num_bval = ;
FCfile = '*.nii';
NCfile = '*.nii';
Maskfile = '*.dat';
result1 = biexp_IVIM_calc(Datapath, bval, Num_bval, FCfile, NCfile, Maskfile);

############################################################################

## Please see sample_code.m for more details.

