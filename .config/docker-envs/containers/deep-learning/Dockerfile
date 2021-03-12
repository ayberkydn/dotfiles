FROM pytorch/pytorch:1.6.0-cuda10.1-cudnn7-runtime


RUN apt-get update
RUN apt-get install -y libglib2.0-0
RUN apt-get install -y libgl1-mesa-dev
RUN apt-get install -y git
RUN pip install pytorch-lightning  
RUN pip install jupyterlab
RUN pip install pandas
RUN pip install numpy
RUN pip install scipy 
RUN pip install matplotlib 
RUN pip install ipython 
RUN pip install jupyter 
RUN pip install pandas 
RUN pip install sympy 
RUN pip install nose
RUN pip install einops
RUN pip install opencv-python  
RUN pip install wandb  
RUN pip install kornia  
RUN pip install torchfunc torchsummary torchlayers  
RUN pip install hydra-core

ENV NVIDIA_VISIBLE_DEVICES all
ENV NVIDIA_DRIVER_CAPABILITIES compute,utility

RUN useradd -s /bin/bash ayb
USER ayb


CMD sh
