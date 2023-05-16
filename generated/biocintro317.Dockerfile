FROM ghcr.io/bioconductor/bioconductor:3.17
RUN sudo apt-get update && sudo apt-get -y install apt-file &&  cd /home/rstudio && echo "./*,./episodes/*" | tr ',' '\n' > vignlist && git clone https://github.com/carpentries-incubator/bioc-intro && cp -r bioc-intro tmpsource && cd tmpsource && curl -o install.sh https://raw.githubusercontent.com/Bioconductor/workshop-contributions/main/.github/scripts/install_missing.sh && cat ../vignlist | xargs -i bash install.sh {} && cd .. && rm -rf vignlist tmpsource/ ; rm -rf /home/rstudio/bioc-intro
