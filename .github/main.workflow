workflow "New workflow" {
  on = "push"
  resolves = ["echo"]
}

action "echo" {
  uses = "./.github/action-fuzz"
  args = "Hello mister Reggie"
 
}

action "2nd echo" {
  uses = "./.github/action-fuzz2"
  args = "Hello again"
 
}


