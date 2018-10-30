workflow "New workflow" {
  on = "push"
  resolves = ["echo", "Tag Filter"]
}

action "echo" {
  uses = "./.github/action-fuzz"
  args = "Hello mister Reggie"
}
