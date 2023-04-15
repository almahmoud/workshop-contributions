FROM ghcr.io/bioconductor/bioconductor:devel
RUN sudo apt update && sudo apt -y install apt-file && Rscript -e "BiocManager::install(c('SingscoreAMLMutations'), dependencies = c('Depends', 'Imports', 'LinkingTo', 'Suggests'))" && rm -rf /var/lib/apt/lists/*
RUN mkdir -p /tmp && cd /tmp && echo "vignettes/*" | tr ',' '\n' > vignettes && git clone https://git.bioconductor.org/packages/SingscoreAMLMutations && cd SingscoreAMLMutations && curl -o install.sh https://raw.githubusercontent.com/Bioconductor/workshop-contributions/main/.github/scripts/install_missing.sh && cat ../vignettes | xargs -i bash install.sh {}
RUN mkdir -p /tmp && cd /tmp && echo "vignettes/*" | tr ',' '\n' > vignettes && git clone https://git.bioconductor.org/packages/SingscoreAMLMutations && cd SingscoreAMLMutations && curl -o install.sh https://raw.githubusercontent.com/Bioconductor/workshop-contributions/main/.github/scripts/install_missing.sh && cat ../vignettes | xargs -i bash install.sh {}
RUN mkdir -p /tmp && cd /tmp && echo "vignettes/*" | tr ',' '\n' > vignettes && git clone https://git.bioconductor.org/packages/SingscoreAMLMutations && cd SingscoreAMLMutations && curl -o install.sh https://raw.githubusercontent.com/Bioconductor/workshop-contributions/main/.github/scripts/install_missing.sh && cat ../vignettes | xargs -i bash install.sh {}
