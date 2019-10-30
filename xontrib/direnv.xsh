import json, subprocess

def __direnv():
    p = subprocess.Popen('direnv export json'.split(), stdout=subprocess.PIPE)
    r, _ = p.communicate()
    p.wait()
    if r and p.returncode == 0:
        lines = json.loads(r)
        for k,v in lines.items():
            if v is None:
                del __xonsh__.env[k]
            else:
                __xonsh__.env[k] = v

@events.on_post_rc
def __direnv_post_rc() -> None:
    __direnv()

@events.on_chdir
def __direnv_chdir(olddir: str, newdir: str) -> None:
    __direnv()

@events.on_precommand
def __direnv_precommand(cmd: str) -> None:
    __direnv()

@events.on_postcommand
def __direnv_postcommand(cmd: str, rtn: int, out: str or None, ts: list) -> None:
    __direnv()
