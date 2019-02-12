FROM salimfadhley/testpython:latest AS appinstalled
COPY . /project
COPY src /src
RUN python -m pip install -e /project/src

# Application
FROM appinstalled AS application
WORKDIR /project
ENTRYPOINT ["uvicorn", "--port=80", "--host=0.0.0.0", "helloworld.main:app"]
EXPOSE 8080

