# Base Image, Python Interpreter
FROM python:3.7.2-stretch AS basepython
COPY . /project
RUN apt-get install git
RUN python -m pip install --upgrade pip setuptools
RUN python -m pip install -e /project/src

# Application
FROM basepython AS application
ENTRYPOINT ["uvicorn", "--port=80", "--host=0.0.0.0", "helloworld.main:app"]
EXPOSE 8080
