workflow "Notnew workflow" {
  on = "push"
  resolves = ["echo"]
}

action "echo" {
  uses = "./.github/action-fuzz2"
  args = "Hello Hello"
 
}
