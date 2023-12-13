[![Open in MATLAB Online](https://www.mathworks.com/images/responsive/global/open-in-matlab-online.svg)](https://matlab.mathworks.com/open/github/v1?repo=sccn/dl_sccn_demo&file=eg_ml_example_1_v2.mlx)
[![View EEGLAB/MATLAB deep learning demo on File Exchange](https://www.mathworks.com/matlabcentral/images/matlab-file-exchange.svg)](https://www.mathworks.com/matlabcentral/fileexchange/155822-eeglab-matlab-deep-learning-demo)

# SCCN deep learning demo

This repository is a demo of a deep-learning EEG model in MATLAB. 
In this example, we use a large public EEG dataset from the Child Mind Institute, a non-profit organization for the advancement of children's mental health. A subset of the dataset is used to train the existing convolutional neural network classification model R-VGG_noNormalization. Furthermore, we take advantage of the MATLAB Array Datastore introduced in R2021a to facilitate the handling of large files that might not fit in memory. 

The dataset is produced and shared as part of the Healthy Brain Network (HBN) project led by the Child Mind Institute. The HBN initiative efforts resulted in the creation and public sharing of a dataset from children and adolescents (ages 5-21), including up to 10,000 subjects. The multi-modal brain recordings (EEG, MRI, fMRI) and a number of behavioral/physiological measures were collected during resting-state and performance on a variety of cognitive tasks. 
A subset of the dataset used in this demonstration includes the EEG of 1,574 subjects performing a resting-state task. EEG recordings were performed in a sound-shielded room using a 128-channel EEG by Electrical Geodesics Inc. (EGI). During the recording, which lasted 5 minutes, subjects were instructed to open or close their eyes at various time points while viewing a fixation cross located at the center of the screen. Individual subjects contributed ~80 sec of recordings during eyes closed periods. 

The data was preprocessed using EEGLAB, a versatile toolbox for EEG analysis developed at the Swartz Center for Computational Neuroscience (SCCN).  Data preprocessing included the mean baseline removal, down-sampling to 128 Hz, band-pass filtering (0.25-25 Hz), and re-referencing to the averaged mastoids. The example demonstrates the transfer learning capability of a model pre-trained on image classification, showing high performance in the classification of biological sex based on multivariate EEG signals following just a few training cycles. 

This corresponds to the published work: 

Truong, D., Milham, M., Makeig, S., & Delorme, A. (2021). Deep Convolutional Neural Network Applied to Electroencephalography: Raw Data vs Spectral Features. Annual International Conference of the IEEE Engineering in Medicine and Biology Society. IEEE Engineering in Medicine and Biology Society. Annual International Conference, 2021, 1039–1042. https://doi.org/10.1109/EMBC46164.2021.9630708

Check [here](https://viewer.mathworks.com/?viewer=live_code&url=https%3A%2F%2Fwww.mathworks.com%2Fmatlabcentral%2Fmlc-downloads%2Fdownloads%2F286df8f1-6301-4b46-8cce-0f3e089e93bb%2Ff67d6263-025b-46e5-b139-4163be748cda%2Ffiles%2Feeg_ml_example_1_v2.mlx&embed=web) to see the MATLAB LiveScript.

# Original repository

https://github.com/arnodelorme/child_mind_arno itself a submodule in the released code available at https://github.com/sccn/childmind

# Acknowledgements

This work was partially supported by a GIFT from Mathworks. Ivan Skelin, PhD, assisted in creating the LiveScript demo.

