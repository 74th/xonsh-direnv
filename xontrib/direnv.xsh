@events.on_chdir
def __direnv(olddir, newdir, **kw):
    r = !(direnv export bash)
    r.end()
    if len(r.output) > 0:
        cmds = r.output.split(";")
        for cmd in cmds:
            if cmd.startswith("export"):
                c = cmd.find("=")
                __xonsh__.env[cmd[7:c]] = cmd[c+3:-1]
            if cmd.startswith("unset"):
                del(__xonsh__.env[cmd[6:]])