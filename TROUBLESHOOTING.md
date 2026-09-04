# Troubleshooting

Read the error message first. Most Git problems are recoverable without deleting your repository.

## I cloned the instructor repository by mistake

Run:

```bash
git remote -v
```

If `origin` does not contain your GitHub username, stop. Create your personal repository from the template, then clone that personal repository into a new folder.

In GitHub Desktop, select **Repository → View on GitHub** and confirm that the page belongs to your account. If it opens the instructor's repository, clone your personal repository instead.

## Git says my identity is unknown

Complete the commit-identity commands in [Computer setup](SETUP.md#set-your-commit-identity), then retry the commit.

## My branch has the wrong name

Before pushing it, rename the current branch:

```bash
git branch -m practice/YOUR-USERNAME
```

In GitHub Desktop, select **Branch → Rename...** and enter the correct name.

If you already pushed the incorrect branch, create or push the correctly named branch and use it for the pull request.

## My push was rejected because of authentication

Retry `git push` and complete the browser or credential-manager sign-in. Do not use your GitHub account password as a Git password.

In GitHub Desktop, open its account settings, confirm that the correct GitHub account is signed in, and retry **Publish branch** or **Push origin**.

## Git says there is nothing to commit

Run `git status`. Confirm that you saved the file and that it is inside the cloned repository folder. If the change is already committed, `git log --oneline --max-count=4` will show it.

In GitHub Desktop, open **Changes** and confirm that you saved the file inside the repository shown under **Current Repository**. If the change is already committed, it appears under **History**.

## An automated check failed

Open the failed check and read its first error message. Then:

1. Correct the file locally.
2. Run `bash scripts/check-practice.sh`.
3. Stage and commit the correction.
4. Run `git push`.

The open pull request will update automatically.

With GitHub Desktop, make the correction in your editor, select the changed file, create a new commit, and select **Push origin**.

## I merged before the checks passed

Create a new practice branch from `main`, make the required correction, push it, and open another pull request. The final completion check accepts any merged pull request that satisfies the activity.

## I created the tag too early

After merging and updating local `main`, create a new completion tag instead of reusing the early one. For example:

```bash
git tag v1.1-complete
git push origin v1.1-complete
```

In GitHub Desktop, switch to `main`, fetch and pull, then right-click the newest commit under **History** and create `v1.1-complete`. Any tag matching `vNUMBER.NUMBER-complete` starts the final check.

## I still need help

Record these outputs for your instructor or support person:

```bash
git status
git branch --show-current
git remote -v
git log --oneline --max-count=6
```

Do not include passwords, access tokens, or other secrets in a help request.
