workflow "New workflow" {
  on = "push"
  resolves = ["echo"]
}

action "echo" {
  uses = "./.github/action-fuzz"
  args = "Hello mister Reggie"
}

env = {
LD_PROJ_KEY = "default"
LD_CONTEXT_LINE = "1"
LD_LOG_LEVEL = "DEBUG"
}
