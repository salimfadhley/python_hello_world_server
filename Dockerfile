FROM salimfadhley/testpython:latest
COPY . /project
RUN python -m pip install -e /project/src
WORKDIR /project
#ENTRYPOINT ["uvicorn"]
#CMD ["--port=80", "--host=0.0.0.0", "helloworld.main:app"]
EXPOSE 8080

