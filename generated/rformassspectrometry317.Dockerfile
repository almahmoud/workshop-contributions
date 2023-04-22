FROM ghcr.io/bioconductor/bioconductor:devel
RUN git clone https://github.com/rformassspectrometry/docs; Rscript docs/install_docs_deps.R; rm -rf docs; cd /home/rstudio && echo "./*" | tr ',' '\n' > vignlist && git clone https://github.com/rformassspectrometry/docs && cp -r docs tmpsource && cd tmpsource && curl -o install.sh https://raw.githubusercontent.com/Bioconductor/workshop-contributions/main/.github/scripts/install_missing.sh && cat ../vignlist | xargs -i bash install.sh {} && cd .. && rm -rf vignlist tmpsource/
