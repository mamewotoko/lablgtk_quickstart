lablgtk_quickstart [![Build Status](https://travis-ci.org/mamewotoko/lablgtk_quickstart.svg?branch=master)](https://travis-ci.org/mamewotoko/lablgtk_quickstart) [![build](https://github.com/mamewotoko/lablgtk_quickstart/actions/workflows/build.yml/badge.svg)](https://github.com/mamewotoko/lablgtk_quickstart/actions/workflows/build.yml)
==================

![screenshot](doc/screenshot.png)

Build
-------

### MacOS

1. install [opam](https://opam.ocaml.org/doc/Install.html)
2. install gtk

    ```bash
    brew install gtk
    ```

3. install opam packages

    ```bash
    sh setup-opam
    ```

4. make

    ```
    make
    ```

### Vagrant (ubuntu 16.04)

1. install [vagrant](https://www.vagrantup.com/downloads.html)
2. start vagrant box

    ```bash
    vagrant up
    ```

3. ssh login to vagrant box

    ```bash
    vagrant ssh
    ```

4. install opam packages

    ```bash
    sh setup-opam
    ```

4. make

    ```
    make
    ```

Run
----

```
./gtk_app
```

Clean
-----

```
make clean
```



Appendix: build with dune
--------------------------

```
dune build src/main.exe
```

then executable will be built as `./_build/default/src/main.exe`

* [Build, Run with dune](README_dune.md)

References
----------

* [http://lablgtk.forge.ocamlcore.org/](http://lablgtk.forge.ocamlcore.org/)
* [Introduction to Gtk](https://ocaml.org/learn/tutorials/introduction_to_gtk.html)
* [mmottl/ocaml-makefile](https://github.com/mmottl/ocaml-makefile)

----
Takashi Masuyama < mamewotoko@gmail.com >
https://mamewo.ddo.jp/
