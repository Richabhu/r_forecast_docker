FROM r-base:3.6.3

EXPOSE 80
ENV WORKON_HOME $HOME/.virtualenvs
LABEL version="1.0"
LABEL description="AI/ML product that can be used."

RUN apt-get update -qq && apt-get install -y \
      default-jre \
      default-jdk \
      libssl-dev \
      libcurl4-gnutls-dev \
      zlib1g-dev \
      libssh2-1-dev \
      libbz2-dev \
      libicu-dev \
      liblzma-dev \
      libxml2-dev \
      libpcre3-dev && \
      R CMD javareconf && \
      R -e 'install.packages(c("plumber","dplyr","stringr","jtools","forecast","tidyverse","tidyquant","magrittr","glmnet","e1071","rpart","reshape2","MLmetrics","TSPred","sweep","bsts"))'

COPY . .

ENTRYPOINT ["Rscript","main.R"]
