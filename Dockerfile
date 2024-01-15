FROM gitlab-registry.nrp-nautilus.io/prp/jupyter-stack/scipy:v1.3

# Install sage via conda
RUN conda install -y -c conda-forge -n base sage
