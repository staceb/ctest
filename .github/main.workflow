workflow "New workflow" {
  on = "push"
  resolves = ["echo"]
}

action "echo" {
  uses = "./.github/action-fuzz"
  args = "Hello mister Reggie"
 
}

action "echo" {
  uses = "./.github/action-fuzz"
  args = "Hello again"
 
}


