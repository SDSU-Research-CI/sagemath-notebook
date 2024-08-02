ARG BASE_IMAGE=quay.io/jupyter/scipy-notebook:2024-07-29
FROM ${BASE_IMAGE}

# Install sage via conda
RUN conda install -y -c conda-forge -n base sage
