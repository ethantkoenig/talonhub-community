tag: terminal
and tag: user.git
-
git {user.git_command} [<user.git_arguments>]:
    args = git_arguments or ""
    "git {git_command}{args} "
git commit [<user.git_arguments>] message [<user.prose>]:
    args = git_arguments or ""
    message = prose or ""
    user.insert_between('git commit{args} --message "{message}', '"')
git stash [push] [<user.git_arguments>] message [<user.prose>]:
    args = git_arguments or ""
    message = prose or ""
    user.insert_between('git stash push{args} --message "{message}', '"')

# Optimistic execution for certain commands:
git amend$: "git amend\n"
git commit$: "git commit\n"
git status$: "git status\n"
git add patch$: "git add --patch\n"
git show head$: "git show HEAD\n"
