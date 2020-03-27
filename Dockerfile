FROM rocker/tidyverse:3.6.1

RUN apt-get update -qq \
    && install2.r --error \
    --deps TRUE \
    data.table \
    disk.frame \
    dtplyr \
    furrr \
    future \
    && R -e "devtools::install_github('TysonStanley/tidyfast')" \
    && rm -rf /tmp/downloaded_packages/

