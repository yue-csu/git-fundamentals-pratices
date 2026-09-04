# Git & GitHub Fundamentals Practice

Learn the core Git workflow by making a small, real contribution in your own GitHub repository. Automated checks will give you feedback; you may retry until every check passes.

## What you will practice

By the end of this activity, you will be able to:

- clone a GitHub repository to your computer;
- create and work on a branch;
- inspect, select, and commit changes with Git;
- push a branch to GitHub;
- open, check, and merge a pull request; and
- create and push a completion tag.

## What you will submit

Submit one screenshot to Canvas showing the green **Final completion** workflow summary. Your screenshot must include:

- **Git & GitHub Practice Complete**;
- your GitHub username;
- your repository name;
- your completion tag; and
- all completion checks marked as passed.

Do not submit a screenshot until you reach the final green completion screen.

## Before you begin

You need:

- a GitHub account;
- a text editor, such as Visual Studio Code; and
- either Git with a terminal or GitHub Desktop.

If you have not prepared your chosen tool yet, complete [Computer setup](SETUP.md) first.

> [!IMPORTANT]
> Work in the personal repository that you create from this template—not in the instructor's starter repository.

## Step 1: Create your personal repository

1. On the starter repository page, select **Use this template** and then **Create a new repository**.
2. Choose your own GitHub account as the owner.
3. Name it `git-fundamentals-practice-YOUR-USERNAME`, replacing `YOUR-USERNAME` with your GitHub username.
4. Select **Create repository**.

The page that opens should show your username as the repository owner. Keep this page open.

## Step 2: Clone your repository

Choose **Terminal** or **GitHub Desktop**. Keep using the same path through Step 9 so you can see how one tool represents the complete workflow.

### Option A: Terminal

On your personal repository page, select **Code**, choose **HTTPS**, and copy the URL. In your terminal, move to a folder where you keep coursework and run:

```bash
git clone YOUR-REPOSITORY-URL
cd git-fundamentals-practice-YOUR-USERNAME
```

Replace both placeholders with your information. Confirm that Git knows which repository you are using:

```bash
git remote -v
git status
```

The `origin` URL should point to your personal repository, and Git should report that you are on `main` with a clean working tree.

### Option B: GitHub Desktop

1. Sign in to GitHub Desktop.
2. On your personal repository page, select **Code**, then **Open with GitHub Desktop**.
3. Choose a local folder and select **Clone**.
4. Confirm that **Current Repository** shows your personal repository, not the instructor's starter repository.
5. Use **Repository → Open in Visual Studio Code** or open the cloned folder in your preferred editor.

## Step 3: Create a branch

Create a branch named with your GitHub username.

### Option A: Terminal

```bash
git switch -c practice/YOUR-USERNAME
```

Confirm the current branch:

```bash
git branch --show-current
```

You should see `practice/YOUR-USERNAME`.

### Option B: GitHub Desktop

1. Select **Current Branch**, then **New Branch**.
2. Enter `practice/YOUR-USERNAME`, replacing the placeholder with your GitHub username.
3. Keep `main` as the base branch and select **Create Branch**.
4. Confirm that the repository bar shows your new practice branch.

## Step 4: Make your first commit

1. Open `practice/introduction.md` in your editor, such as VS Code.
2. Replace the `TODO` entry. Use only your GitHub username; do not add private information.
3. Save the file.

### Option A: Terminal

Inspect and commit the change:

```bash
git status
git diff
git add practice/introduction.md
git status
git commit -m "Add my introduction"
```

### Option B: GitHub Desktop

1. Return to GitHub Desktop and open the **Changes** tab.
2. Select `practice/introduction.md` and review its diff.
3. In **Summary**, enter `Add my introduction`.
4. Select **Commit to practice/YOUR-USERNAME**.

## Step 5: Make your second commit

1. Open `practice/reflection.md`.
2. Replace all four `TODO` entries with complete responses.
3. Save the file.

### Option A: Terminal

Inspect and commit the change:

```bash
git diff
git add practice/reflection.md
git commit -m "Explain the Git workflow"
git log --oneline --max-count=4
```

Your log should show two separate commits that you created.

### Option B: GitHub Desktop

1. Return to the **Changes** tab and select `practice/reflection.md`.
2. Review the diff.
3. In **Summary**, enter `Explain the Git workflow`.
4. Select **Commit to practice/YOUR-USERNAME**.
5. Open **History** and confirm that your two separate commits appear.

## Step 6: Check your work

### Option A: Terminal

Run the same content check that GitHub will run:

```bash
bash scripts/check-practice.sh
```

If a check fails, follow its message, edit the file, and create another commit containing the correction.

### Option B: GitHub Desktop

Review both commits in **History**. GitHub will run the content check after you open the pull request. If it reports a problem, correct the file in your editor, create another commit in GitHub Desktop, and push it.

## Step 7: Push your branch

### Option A: Terminal

```bash
git push -u origin practice/YOUR-USERNAME
```

If GitHub asks you to authenticate, follow the browser or credential-manager instructions. Do not type your GitHub account password into the terminal.

### Option B: GitHub Desktop

Confirm that your practice branch is selected, then select **Publish branch**.

## Step 8: Open and merge a pull request

1. Return to your personal repository on GitHub. GitHub Desktop users may select **Create Pull Request** to open the correct page in a browser.
2. Select **Compare & pull request**. If that button is absent, open **Pull requests**, select **New pull request**, and compare your practice branch with `main`.
3. Use the title `Complete Git fundamentals practice`.
4. Complete the checklist in the pull-request description and select **Create pull request**.
5. Wait for **Practice checks** to finish.
6. If a check fails, open its details, fix the issue locally, commit, and push again. The pull request updates automatically.
7. When every check is green, select **Merge pull request** and confirm the merge.

Do not delete your personal repository. Deleting the practice branch after the merge is fine.

## Step 9: Update `main` and create the completion tag

### Option A: Terminal

Return to your terminal:

```bash
git switch main
git pull origin main
git tag v1.0-complete
git push origin v1.0-complete
```

The tag push starts the final automated check.

### Option B: GitHub Desktop

1. Select **Current Branch**, then switch to `main`.
2. Select **Fetch origin** and then **Pull origin** if it appears. Your history should now include the merged pull request.
3. Open **History** and right-click the newest commit on `main`.
4. Select **Create Tag...**, enter `v1.0-complete`, and select **Create Tag**.

GitHub Desktop pushes a newly created tag to GitHub by default. The tag starts the final automated check.

## Step 10: Capture the completion screen

1. On GitHub, open the **Actions** tab in your personal repository.
2. Select **Final completion**.
3. Open the newest run for `v1.0-complete`.
4. Wait for the run to display a green check.
5. Open its **Summary** and take a screenshot showing the complete success message and details listed under [What you will submit](#what-you-will-submit).
6. Submit that screenshot to Canvas.

## Command quick reference

This table is for the Terminal path. GitHub Desktop shows the same repository concepts through the **Changes**, **History**, **Current Branch**, **Fetch/Pull origin**, and **Publish branch** controls.

| Command | Purpose |
|---|---|
| `git status` | Show your current branch and changed files |
| `git diff` | Show unstaged line-by-line changes |
| `git add FILE` | Stage a file for the next commit |
| `git commit -m "MESSAGE"` | Save a staged snapshot locally |
| `git push` | Send local commits or tags to GitHub |
| `git pull` | Bring remote changes into the current local branch |
| `git log --oneline` | Show a compact commit history |

If you get stuck, use [Troubleshooting](TROUBLESHOOTING.md) before starting over.
