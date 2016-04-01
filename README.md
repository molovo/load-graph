# load-graph

Outputs the current 1-minute load average as a percentage, and a spark line
graph of the 1, 5 and 15 minute averages.

## Usage
```sh
load-graph [options]
```

## Options
```sh
-h, --help    Show help text and exit
-t, --tmux    Display output using tmux-style colorisation
```

## Installation

Place `load-graph` somewhere in your path. Requires [ZSH](http://zsh.org) and
[Spark](http://github.com/holman/spark).
