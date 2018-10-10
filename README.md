# hello-fuzz

## Instructions

* Create a repo
* Create a new branch introducing three new files
  * .github/action-fuzz/Dockerfile
  * .github/action-fuzz/entrypoint.sh
  * .github/main.workflow
* Open a pull request
* Merge the pull request and enjoy your new action!

First, create a repository:

```
curl -v -H "Authorization: token $TOKEN" https://api.github.com/user/repos -d '{"name":"hello-fuzz", "auto_init":true, "private":true}'
```

Next, create a branch for tracking work. In that branch, create a `.github` folder. In that `.github` folder, create a new action called `action-fuzz` with two files, `Dockerfile` and `entrypoint.sh`:

#### `.github/action-fuzz/Dockerfile`
```
FROM debian:9.5-slim

LABEL "com.github.actions.name"=""
LABEL "com.github.actions.description"="Write ARGS to standardoutput"
LABEL "com.github.actions.icon"="mic"
LABEL "com.github.actions.color"="purple"

LABEL "repository"="http://github.com/runleonarun/hello-fuzz"
LABEL "homepage"="http://github.com/actions"
LABEL "maintainer"="Octocat <octocat@github.com>"

ADD entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
```

#### `.github/action-fuzz/entrypoint.sh`
```
#!/bin/sh -l

sh -c "echo $*"
```

In order for GitHub to execute `entrypoint.sh`, modify its file permission by allowing it to be executed:

> chmod +x ./.github/action-fuzz/entrypoint.sh

#### `.github/main.workflow`

Last, using GitHub's editor, create a `main.workflow` file in the `.github` folder:

```
workflow "New workflow" {
  on = "push"
  resolves = ["echo"]
}

action "echo" {
  uses = "./.github/action-fuzz"
  args = "Hello mister fuzz"
}
```

Once that's done, open a pull request against this branch and observe the new workflow in action by navigating to the Actions tab to see your new action run!

Merge this in and happy coding!
