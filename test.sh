#!/usr/bin/env bash
export DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"
cd ${DIR}
docker-compose run --entrypoint="python" dev -m pytest --verbose --tb=long --junitxml=/project/junit.xml /project/src/tests