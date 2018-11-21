FROM rocker/verse:3.4.1

RUN apt-get update \
  && apt-get install -y \
    pandoc libudunits2-dev libgdal-dev libproj-dev \
  && apt-get clean \
  && rm -rf /var/lib/apt/lists/ \
  && install2.r --error --deps TRUE \
    argparse plotly revealjs UpSetR reshape2
