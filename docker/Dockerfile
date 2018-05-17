FROM bioconductor/release_core2:R3.4.2_Bioc3.6

RUN apt-get update \
  && apt-get install -y \
    pandoc \
  && apt-get clean \
  && rm -rf /var/lib/apt/lists/

ADD setup.R /tmp/
RUN /usr/local/bin/Rscript /tmp/setup.R
RUN mkdir -p /app /fh /mnt /run/shm
