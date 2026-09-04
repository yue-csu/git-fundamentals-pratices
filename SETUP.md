# Computer setup

Complete the setup for the path you plan to use: **Terminal** or **GitHub Desktop**. Both paths require a GitHub account and a plain-text editor such as Visual Studio Code.

## GitHub Desktop path

1. [Download and install GitHub Desktop](https://desktop.github.com/).
2. Open GitHub Desktop and sign in to your GitHub account.
3. Confirm that your preferred text editor is installed.

GitHub Desktop provides the Git operations needed for this activity, so you do not need to use terminal commands if you choose this path.

## Terminal path

### 1. Confirm that Git is installed

Open a terminal and run:

```bash
git --version
```

If you see a version number, continue. If the command is not found, [download Git](https://git-scm.com/downloads), follow the instructions for your operating system, then close and reopen the terminal.

### 2. Set your commit identity

Git records an author name and email with each commit. Use the name and email appropriate for your GitHub account and course context:

```bash
git config --global user.name "YOUR NAME"
git config --global user.email "YOUR EMAIL"
```

Confirm the values:

```bash
git config --global user.name
git config --global user.email
```

If you prefer not to expose a personal email in commits, use the GitHub-provided no-reply email shown in your GitHub email settings.

### 3. Confirm your editor

You may use any plain-text editor. Visual Studio Code is a convenient option. If its command-line launcher is configured, open the current folder with:

```bash
code .
```

Otherwise, open the editor normally and choose the cloned repository folder.

### 4. Be ready to authenticate

The first `git push` may open a browser or credential-manager prompt. Follow that prompt to sign in to GitHub. GitHub account passwords are not accepted as Git credentials, so do not paste your account password into the terminal.

Return to the main [practice instructions](README.md).
