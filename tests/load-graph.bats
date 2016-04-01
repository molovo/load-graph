#!/usr/bin/env bats

@test "Invoking load-graph with -h option prints usage" {
  run load-graph -h

  [[ "$status" -eq 0 ]]
  [[ "${lines[0]}" = "\e[0;33mUsage:\e[0;m" ]]
  [[ "${lines[1]}" = "  load-graph [options]" ]]
}

@test "Invoking load-graph without arguments prints ANSI-escaped string" {
  skip "Need to find a way to match a ';' character in regex without throwing a syntax error"
  run load-graph

  [[ "$status" -eq 0 ]]
  [[ "${lines[0]}" =~ \\e\[0\;3[1-3]m(\d?\d\.\d?\d?\%|[▁▂▃▅▇])\\e\[0\;m ]]
}

@test "Invoking load-graph with -t option prints tmux-style string" {
  run load-graph -t

  [[ "$status" -eq 0 ]]
  [[ "${lines[0]}" =~ \#\[fg=(red|yellow|green)\]+(\d?\d\.\d?\d?\%|[▁▂▃▅▇])\#\[default\] ]]
}
