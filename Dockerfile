FROM python:3
LABEL Name=python3-scripts-unraid Version=0.0.1
RUN apt-get update && apt-get -y install cron
WORKDIR /app
ADD . /app

# Using pip:
VOLUME [ "/app" ]
CMD ["entry.sh","/bin/bash"]

# Using pipenv:
#RUN python3 -m pip install pipenv
#RUN pipenv install --ignore-pipfile
#CMD ["pipenv", "run", "python3", "-m", "python3-scripts-unraid"]

# Using miniconda (make sure to replace 'myenv' w/ your environment name):
#RUN conda env create -f environment.yml
#CMD /bin/bash -c "source activate myenv && python3 -m python3-scripts-unraid"
