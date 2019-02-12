import datetime

import git
from fastapi import FastAPI
from pydantic import BaseModel

from helloworld.git_info import get_git_info

app = FastAPI()


class GitInformation(BaseModel):
    message: str
    hexsha: str
    time: datetime.datetime


@app.get("/")
def read_root() -> GitInformation:
    """Get information about the git repo from which this server was built.
    """
    info: git.refs.log.RefLogEntry = get_git_info()
    return GitInformation(
        message=info.message,
        hexsha=info.newhexsha,
        time=datetime.datetime.fromtimestamp(info.time[0]),
    )
