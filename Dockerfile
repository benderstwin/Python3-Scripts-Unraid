FROM python:3.7
LABEL Name=python3-scripts-unraid Version=0.0.1
MAINTAINER bender77
VOLUME [ "/appdir"]
ENV HOME="/root"
RUN export DEBCONF_NONINTERACTIVE_SEEN=true DEBIAN_FRONTEND=noninteractive &&\
apt-get update && apt-get install -y \ 
cron \
curl
WORKDIR /app
RUN wget https://raw.githubusercontent.com/benderstwin/Python3-Scripts-Unraid/master/entry.sh 

RUN chmod +x entry.sh

CMD ["/bin/bash", "entry.sh"]

# Using pipenv:
#RUN python3 -m pip install pipenv
#RUN pipenv install --ignore-pipfile
#CMD ["pipenv", "run", "python3", "-m", "python3-scripts-unraid"]

# Using miniconda (make sure to replace 'myenv' w/ your environment name):
#RUN conda env create -f environment.yml
#CMD /bin/bash -c "source activate myenv && python3 -m python3-scripts-unraid"
