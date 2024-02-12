FROM pytorch/pytorch:1.8.1-cuda11.1-cudnn8-runtime

RUN apt-get update && apt-get upgrade -y

RUN apt-get install -y --no-install-recommends libsm6                            \
                                               libxext6                          \
                                               libxvidcore4                      \
                                               ffmpeg                            \
                                               git


RUN pip install --no-cache-dir pytorch-lightning      \
                               jupyterlab             \
                               pandas                 \
                               numpy                  \
                               scipy                  \
                               matplotlib             \
                               ipython                \
                               jupyter                \
                               sympy                  \
                               einops                 \
                               opencv-python          \
                               wandb                  \
                               kornia                 \
                               torchfunc              \
                               torchsummary           \
                               hydra-core             \
                               captum                 \
                               timm                   \
                               transformers           \
                               imageio                \
                               imageio-ffmpeg        
