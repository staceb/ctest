workflow "New workflow" {
  on = "push"
  resolves = ["echo", "Tag Filter"]
}

action "echo" {
  uses = "./.github/action-fuzz"
  args = "Hello mister Reggie"
}

action "Tag Filter" {
  uses = "actions/bin/filter@0540803"
  runs = "tag"
}
