#!/usr/bin/env bash
export DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"
cd ${DIR}
#docker-compose run --entrypoint=find application /project
touch junit.xml
chmod a+rw junit.xml
docker-compose run --entrypoint="python" -u root application -m pytest --verbose --tb=long --junitxml=/tmp/junit.xml /project/src/tests