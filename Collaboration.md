# Collaboration Guide

This guide will help you contribute to the RPG-East campaign vault, even if you've never used Git before.

---

# Part 1: One-Time Setup

These steps only need to be done once when you first start contributing.

---

## 1.1: Install Obsidian

1. Go to [obsidian.md/download](https://obsidian.md/download)
2. Download the version for your computer (Mac or Windows)
3. Install it like any other app
4. Open Obsidian once to make sure it works

---

## 1.2: Install Git

**On Mac:**
1. Open the **Terminal** app (search for "Terminal" in Spotlight)
2. Type `git --version` and press Enter
3. If Git isn't installed, your Mac will prompt you to install it - click "Install"
4. Wait for the installation to complete

**On Windows:**
1. Go to [git-scm.com/download/win](https://git-scm.com/download/win)
2. Download and run the installer
3. Click "Next" through all the options (the defaults are fine)
4. Restart your computer after installation

---

## 1.3: Create a GitHub Account

If you don't have one already:
1. Go to [github.com](https://github.com)
2. Click "Sign up" and follow the steps
3. Remember your username - you'll need it later

---

## 1.4: Configure Git

Open Terminal (Mac) or Git Bash (Windows) and run these commands with your info:

```
git config --global user.name "Your Name"
git config --global user.email "your.email@example.com"
```

---

## 1.5: Clone the Repository

1. Create a folder where you want to keep the project
   - **Mac:** Create a folder in your Documents, e.g., `Documents/RPG`
   - **Windows:** Create a folder like `C:\Users\YourName\Documents\RPG`

2. Open Terminal (Mac) or Git Bash (Windows)

3. Navigate to your folder:
   ```
   cd Documents/RPG
   ```

4. Clone the repository:
   ```
   git clone https://github.com/zmdominguez/rpg-east.git
   ```

5. Enter the project folder:
   ```
   cd rpg-east
   ```

---

## 1.6: Open the Project in Obsidian

1. Open **Obsidian**
2. Click **Open folder as vault**
3. Navigate to where you cloned the project (e.g., `Documents/RPG/rpg-east`)
4. Select the `rpg-east` folder and click **Open**
5. If prompted about "Trust author", click **Trust**
6. You should now see all the campaign files in the left sidebar

---

# Part 2: Regular Workflow

Follow these steps every time you want to make changes and submit them for review.

---

## 2.1: Get the Latest Changes

Before starting new work, always get the latest version:

1. Open Terminal and navigate to the project:
   ```
   cd Documents/RPG/rpg-east
   ```

2. Switch to the main branch:
   ```
   git checkout main
   ```

3. Pull the latest changes:
   ```
   git pull origin main
   ```

---

## 2.2: Create a Branch

Create a new branch for your changes:

```
git checkout -b yourname/description
```

Examples:
- `git checkout -b marco/session-notes`
- `git checkout -b fiona/npc-updates`
- `git checkout -b ju/fix-typos`

---

## 2.3: Make Your Edits in Obsidian

Now you can edit files in Obsidian!

### Tips for Editing
- Use the left sidebar to navigate to files
- Click on a file to open and edit it
- Use `[[double brackets]]` to link to other files
- Save your changes with **Cmd+S** (Mac) or **Ctrl+S** (Windows)

### Common Tasks
- **Add session notes:** Go to `Campaign Journal/Main/` and create a new file
- **Edit NPCs:** Go to `NPCs/` folder
- **Update world info:** Go to `World/Thornhaven/` folder

---

## 2.4: Commit Your Changes

After making edits, save them to Git:

1. Check what files you changed:
   ```
   git status
   ```

2. Add the files you want to commit:
   ```
   git add .
   ```
   (The `.` adds all changed files. You can also add specific files: `git add "NPCs/Nell.md"`)

3. Commit with a descriptive message:
   ```
   git commit -m "Your message here"
   ```

### Good Commit Messages
- `git commit -m "Add S04 session notes"`
- `git commit -m "Fix typo in Eman backstory"`
- `git commit -m "Add new NPC: Merchant Greta"`

---

## 2.5: Push Your Changes

Upload your changes to GitHub:

```
git push -u origin yourname/description
```

(Use the same branch name you created in Step 2.2)

If prompted for credentials, enter your GitHub username and password.
- Note: GitHub now requires a "Personal Access Token" instead of password
- Create one at: GitHub → Settings → Developer Settings → Personal Access Tokens

---

## 2.6: Open a Pull Request

1. Go to [github.com/zmdominguez/rpg-east](https://github.com/zmdominguez/rpg-east)

2. You should see a yellow banner saying your branch was recently pushed
   - Click **Compare & pull request**
   - If you don't see the banner, click **Pull requests** → **New pull request**

3. Fill in the PR form:
   - **Title:** A short description of your changes
   - **Description:** Explain what you changed
     ```
     ## Summary
     - Added notes from Monday's session
     - Updated Nell's description based on what we learned
     ```

4. Click **Create pull request**

---

## 2.7: Add Reviewers and Notify Us

1. On the right side of the PR page, find **Reviewers**
2. Click the gear icon and select:
   - `canato`
   - `zmdominguez`

3. Send a message to **Canato** and **Zarah** to let us know your PR is ready!

Example message:
> Hey! I opened a PR with the session 4 notes: [link to PR]
> Can you review and merge when you get a chance?

---

# Quick Reference

## One-Time Setup
| Step | What to do |
|------|------------|
| Install Obsidian | [obsidian.md/download](https://obsidian.md/download) |
| Install Git | Mac: Terminal → `git --version` / Windows: [git-scm.com](https://git-scm.com) |
| Configure Git | `git config --global user.name "Name"` |
| Clone repo | `git clone https://github.com/zmdominguez/rpg-east.git` |

## Regular Workflow
| Step | Command |
|------|---------|
| Get latest | `git checkout main` then `git pull origin main` |
| Create branch | `git checkout -b yourname/description` |
| Edit files | Use Obsidian |
| Stage changes | `git add .` |
| Commit | `git commit -m "Your message"` |
| Push | `git push -u origin branch-name` |
| Open PR | Go to GitHub and click "Compare & pull request" |

---

# Need Help?

If you get stuck:
1. Take a screenshot of any error messages
2. Send it to Canato or Zarah
3. We'll help you figure it out!

---

# Glossary

- **Branch:** A separate version of the project for your changes
- **Clone:** Download a copy of the repository to your computer
- **Commit:** A saved snapshot of your changes
- **Pull:** Download the latest changes from GitHub
- **Pull Request (PR):** A request to merge your changes into the main project
- **Push:** Upload your commits to GitHub
- **Repository (Repo):** The project folder and all its history
- **Terminal:** The command line app on Mac (Git Bash on Windows)
