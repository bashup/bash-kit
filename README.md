# bash 3.2 for bashup tests

This is a docker image for compatibility-testing [bashup](https://github.com/bashup/) projects with bash 3.2.  It adds the following modules to the official `bash:3.2` image:

* `less` and `ncurses` (for paging test results and cutting them to the current screen size)
* `py-pygments` (for colorizing the test diffs)
* `python` (for running [cram](https://bitheap.org/cram))
* `git` (to fetch dependencies)
* `entr` (to support devkit's `watch` command)
* `jq` and `py-yaml` (for [jqmd](https://github.com/bashup/jqmd))

To use it in your [.devkit](https://github.com/bashup/.devkit)-based projects, just `dk use: bash32` in your `.dkrc`.  You can then run any standard devkit commands via `dk bash32 command...`, e.g. `dk bash32 test`, `dk bash32 watch`, `dk bash32 console`, etc.