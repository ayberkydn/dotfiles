FROM pytorch/pytorch:1.6.0-cuda10.1-cudnn7-runtime


RUN apt-get update
RUN apt-get install -y libglib2.0-0
RUN apt-get install -y libgl1-mesa-dev
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

ENV NVIDIA_VISIBLE_DEVICES all
ENV NVIDIA_DRIVER_CAPABILITIES compute,utility

RUN useradd -ms /bin/bash ayb


CMD sh
