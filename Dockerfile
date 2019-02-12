FROM salimfadhley/testpython:latest AS appinstalled
COPY . /project
RUN python -m pip install -e /project/src

# Application
FROM appinstalled AS application
ENV USERID=1000
RUN useradd -u ${USERID} -G sudo sal
USER sal
ENTRYPOINT ["uvicorn", "--port=80", "--host=0.0.0.0", "helloworld.main:app"]
EXPOSE 8080
