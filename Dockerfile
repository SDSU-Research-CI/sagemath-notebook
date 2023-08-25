FROM gitlab-registry.nrp-nautilus.io/prp/jupyter-stack/scipy

# Install sage via conda
RUN conda install -y -c conda-forge -n base sage
