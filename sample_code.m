%   Current Version: 1.0
%   Date : 4/28/2021
%   Authors : Yuhao Liao
%
%   -----------------------------------------------------------------------
%   biexp analysis of FC and NC IVIM data
%   S/S0 = (1-f)exp(-b*Dt) + f*exp(-b*Db)
% 
%   [Datapath] --- Set to the folder directory you want to batch;
%   [bval] --- b value stye of the sample: [10 20 50 100 150 200 300 400 600];
%   [Num_bval] --- For the sample data, we collected each b value 6 times;
%   [Datafile] --- The data that needs to be processed can be NIFTI files or
%                  Analyze files;
%   [Maskfile] --- Mask file must be [*.dat] file;
%   -----------------------------------------------------------------------
% 
%   -----------------------------------------------------------------------
%   Joint analysis of FC and NC IVIM data
%   for FC, S/S0 = (1-f)exp(-b*Dt) + f*exp(-b*Db)
%   for NC, S/S0 = (1-f)exp(-b*Dt) + f*exp(-b*Db)*exp(-Qsquare*Vsquare)
% 
%   [Datapath] --- Set to the folder directory you want to batch;
%   [bval] --- b value stye of the sample: [10 20 50 100 150 200 300 400 600];
%   [Num_bval] --- For the sample data, we collected each b value 6 times;
%   [FCfile] --- The data that needs to be processed can be NIFTI files or
%                  Analyze files;
%   [NCfile] --- The data that needs to be processed can be NIFTI files or
%                  Analyze files;
%   [Maskfile] --- Mask file must be [*.dat] file;
%   -----------------------------------------------------------------------
% 
%   NOTE: To use our toolkit, it is better to have registration in advance,
%   so that the result will be better.In addition, the registered data should
%   not contain b0 images.
%
%% 
%%%%%%%%%%%%%%%%%%%%%%______bi-exponential model______%%%%%%%%%%%%%%%%%%%%%%
clc
clear
Datapath = 'D:\IVIM_calculate_V1\test_data';
bval = [10 20 50 100 150 200 300 400 600];
Num_bval = 6;
Datafile = 'Aligned_FC_data.nii';    % or Datafile = 'Aligned_NC_data.nii';
Maskfile = 'Mask.dat';
result1 = biexp_IVIM_calc(Datapath, bval, Num_bval, Datafile, Maskfile);
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%______joint model______%%%%%%%%%%%%%%%%%%%%%%%%%%
clc
clear
Datapath = 'D:\IVIM_calculate_V1\test_data';
bval = [10 20 50 100 150 200 300 400 600];
Num_bval = 6;
FCfile = 'Aligned_FC_data.nii';
NCfile = 'Aligned_NC_data.nii';
Maskfile = 'Mask.dat';
result2 = joint_IVIM_calc(Datapath, bval, Num_bval, FCfile, NCfile, Maskfile);
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%