# mri/makedt6frompyd
Docker container to convert PyDesigner outputs to AFQ-compatible ``dt6.mat``

## Build
After downloading/cloning thisG it repo, use terminal to cd into it
and run:

```
docker build -t dmri/makedt6frompyd .
```

## Run
To convert PyDesigner output to ``dt6.mat``, please ensure that you
have successfully run PyDesigner. Also ensure that you have the
following paths per subject:

**Required Paths**:
1. B0 (.nii or .nii.gz)

**Optional Paths**:
1. T1 anatomical image (.nii or .nii.gz)
2. Output dt.6

Then, execute this container with:

```
docker run -it --rm
-v [SOURCE DIRECTORY]:[MOUNT DIRECTORY]
dmri/makedt6frompyd [MOUNT DIRECTORY/../PATH TO B0] [MOUNT DIRECTORY/../PATH TO T1] [MOUNT DIRECTORY/../dt6.mat]
```

**Note**: Please ensure that path to files is relative to ``[MOUNT DIRECTORY]``
