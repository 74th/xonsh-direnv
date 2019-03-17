import json

def __direnv():
    r = !(direnv export json)
    r.end()
    if len(r.output) > 0:
        lines = json.loads(r.output)
        for k,v in lines.items():
            if v is None:
                del(__xonsh__.env[k])
            else:
                __xonsh__.env[k] = v

@events.on_post_rc
def __direnv_chdir() -> None:
    __direnv()

@events.on_postcommand
def __direnv_postcommand(cmd: str, rtn: int, out: str or None, ts: list) -> None:
    __direnv()
