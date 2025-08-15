ARG BASE_IMAGE=quay.io/jupyter/scipy-notebook:2025-07-07
FROM ${BASE_IMAGE}

USER root

RUN apt-get update -y \
 && apt-get install -y \
    libopenblas-dev \
 && apt clean \
 && rm -rf /var/lib/apt/lists/* \
 && fix-permissions "${CONDA_DIR}" \
 && fix-permissions "/home/${NB_USER}"

USER ${NB_USER}
WORKDIR /home/${NB_USER}

# Install sage via conda
RUN mamba install -y -c conda-forge -n base sage
