workflow "New workflow" {
  on = "release"
  resolves = ["2nd echo"]
}

action "2nd echo" {
  uses = "./.github/action-fuzz2"
  args = "Hello again"
  
  }
