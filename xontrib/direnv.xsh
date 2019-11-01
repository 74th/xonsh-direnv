import json, subprocess

def __direnv():
    p = subprocess.Popen(
        'direnv export json'.split(),
        stdout=subprocess.PIPE,
        env=__xonsh__.env.detype()
    )
    r, _ = p.communicate()
    if len(r) > 0:
        for k, v in json.loads(r).items():
            if v is None:
                del (__xonsh__.env[k])
            else:
                __xonsh__.env[k] = v

@events.on_post_rc
def __direnv_chdir() -> None:
    __direnv()

@events.on_postcommand
def __direnv_postcommand(cmd: str, rtn: int, out: str or None, ts: list) -> None:
    __direnv()
