#!/usr/bin/env bash
docker-compose run --entrypoint=ls application -l /project
docker-compose run --entrypoint="python" application -m pytest --verbose --tb=long --junitxml=/project/junit.xml /project/src/tests