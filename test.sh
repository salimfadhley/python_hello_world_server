#!/usr/bin/env bash
export DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"
cd ${DIR}
touch junit.xml
chmod a+rw junit.xml
docker-compose run --entrypoint="find"  application .
docker-compose run --entrypoint="python" application -m pytest --verbose --tb=long --junitxml=/project/junit.xml /project/src/tests