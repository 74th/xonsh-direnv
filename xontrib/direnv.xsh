import json

# workaround for https://github.com/74th/xonsh-direnv/issues/2
$UPDATE_OS_ENVIRON = True

def __direnv():
    r = $(direnv export json)
    if r:
        lines = json.loads(r)
        for k, v in lines.items():
            if v is None:
                del __xonsh__.env[k]
            else:
                __xonsh__.env[k] = v

@events.on_post_rc
def __direnv_post_rc(**kwargs) -> None:
    __direnv()

@events.on_chdir
def __direnv_chdir(olddir: str, newdir: str, **kwargs) -> None:
    if ${...}.get("DIRENV_DIR") is not None:
        direnv_dir = pf"{$DIRENV_DIR.strip('-')}"
        new = pf"{newdir}".absolute()
        if not set(direnv_dir.parts).issubset(new.parts):
            __direnv()
    else:
        __direnv()

@events.on_postcommand
def __direnv_postcommand(cmd: str, rtn: int, out: str or None, ts: list, **kwargs) -> None:
    __direnv()
