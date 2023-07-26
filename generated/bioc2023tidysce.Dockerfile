FROM ghcr.io/tidybiology/tidyomicsworkshopbioc2023:latest
RUN sudo apt-get update && sudo apt-get -y install apt-file &&  cd /home/rstudio && echo "vignettes/*" | tr ',' '\n' > vignlist && git clone https://github.com/tidybiology/tidyomicsWorkshopBioc2023 && cp -r tidyomicsWorkshopBioc2023 tmpsource && cd tmpsource && curl -o install.sh https://raw.githubusercontent.com/Bioconductor/workshop-contributions/main/.github/scripts/install_missing.sh && cat ../vignlist | xargs -i bash install.sh {} && cd .. && rm -rf vignlist tmpsource/ 