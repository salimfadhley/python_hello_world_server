import git


def get_git_info(repo_root="/project") -> git.refs.log.RefLogEntry:
    return git.Repo(repo_root).head.log()[-1]
