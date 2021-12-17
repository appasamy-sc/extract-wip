# Hyperparameter Optimization Routine

This tutorial provides a 2-step approach for optimizing the hyperparameters of EXTRACT for a low SNR movie, where EXTRACT is not finding cells with the default settings. The movie is courtesy of Ben Yang -Parker Lab. See Parker, J.G., Marshall, J.D., Ahanonu, B. et al. Diametric neural ensemble dynamics in parkinsonian and dyskinetic states. Nature 557, 177–182 (2018). https://doi.org/10.1038/s41586-018-0090-6 Extended Data Fig 4 for more information.

Link for the movie: https://drive.google.com/file/d/1sc7yom4LlgZ42UfwuXpuZwCWzNcy2bkZ/view?usp=sharing

This movie size is ~11 GB and MATLAB may crash if you try to load the entire 3D movie matrix by reading the entire file using hdf5read() or h5read(). If that's the case, use the option of passing the movie name, M, as a string that specifies an HDF5 path to the 3D movie matrx and increase the number of partitions. 

Note that if M is a string, it must be in the following format: filepath:dataset (for this tutorial: M='jones.hdf5:/Data/Images').
