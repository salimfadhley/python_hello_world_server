#!/usr/bin/env bash
docker run -v `pwd`:/project --entrypoint=python salimfadhley/python_hello_world_server -m black /project/src
