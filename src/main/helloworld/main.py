"""
A very important module, designed to do something hella-useful.
"""
import datetime

import git
from fastapi import FastAPI
from pydantic import BaseModel

from helloworld.git_info import get_git_info

APP = FastAPI()


class GitInformation(BaseModel):
    """Represents some Git Information."""
    message: str
    hexsha: str
    time: datetime.datetime


@APP.get("/")
def read_root() -> GitInformation:
    """Get information about the git repo from which this server was built.
    """
    info: git.refs.log.RefLogEntry = get_git_info()
    return GitInformation(
        message=info.message,
        hexsha=info.newhexsha,
        time=datetime.datetime.fromtimestamp(info.time[0]),
    )
