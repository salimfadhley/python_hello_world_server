"""
A very important module, designed to do something hella-useful.
"""
import git


def get_git_info(repo_root="/project") -> git.refs.log.RefLogEntry:
    """Such a cool function!
    """
    return git.Repo(repo_root).head.log()[-1]
