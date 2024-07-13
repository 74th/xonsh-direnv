`direnv <https://direnv.net>`_ support for the `xonsh shell <https://xon.sh>`_

https://direnv.net

https://xon.sh

This works with python 3.7.0, xonsh 0.8.8 and direnv 2.17.0.

::

	xpip install xonsh-direnv
	xontrib load direnv


change log
==========

1.6.2
---

* PR https://github.com/74th/xonsh-direnv/pull/18


1.6.1
---

* temporary revert 1.6.0

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


Contributors
============

* Atsushi Morimoto (@74th, original author)
* con-f-use (@con-f-use, co-maintainer)
* Gil Forsyth (@gforsyth, contributor)
* Greg Hellings (@greg-hellings, contributor)
* Andy Kipp (@anki-code, contributor)
* Alexander Sosedkin (@t184256, contributor)
