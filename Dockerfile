FROM continuumio/miniconda3

RUN conda create -n env -c kidzik opensim python=3.6.1
RUN echo "source activate env" > ~/.bashrc
ENV PATH /opt/conda/envs/env/bin:$PATH

RUN /bin/bash -c "source activate env"
RUN conda install -c conda-forge lapack git
RUN pip install git+https://github.com/stanfordnmbl/osim-rl.git
