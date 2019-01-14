import json
@events.on_chdir
def __direnv(olddir, newdir, **kw):
    r = !(direnv export json)
    r.end()
    if len(r.output) > 0:
        lines = json.loads(r.output)
        for k,v in lines.items():
            if v is None:
                del(__xonsh__.env[k])
            else:
                __xonsh__.env[k] = v