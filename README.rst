`direnv <https://direnv.net>`_ support for the `xonsh shell <https://xon.sh>`_

https://direnv.net

https://xon.sh

This works with python 3.11.0, xonsh 0.17.0 and direnv 2.34.0.

::

	xpip install "git+https://github.com/greg-hellings/xonsh-direnv@master"
	xontrib load direnv


change log
==========

1.7.0
---

* Added support for `kwargs` to methods, required by xonsh

1.6.0
---

* PR https://github.com/74th/xonsh-direnv/pull/12

1.5
---

* fix https://github.com/74th/xonsh-direnv/issues/2

1.4
---

* fix xonsh has a history of breaking its built-ins https://github.com/74th/xonsh-direnv/pull/3

1.3
---

* $HOME/.envrc
* effecting `direnv allow` immediately
