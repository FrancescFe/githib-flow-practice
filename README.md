# GitHub Flow Practice

This repository is for practicing GitHub Flow with a small static website published through GitHub Pages.
The site is published at [GitHub Pages](https://francescfe.github.io/github-flow-practice/).

## Add your student profile

1. **Open an issue.** Choose the **Add a student profile** template and replace its placeholders with your name, GitHub username, and course.
2. **Create a feature branch from the latest `main`:**

   ```sh
   git switch main
   git pull --ff-only origin main
   git switch -c feature_first_last
   ```

   Replace `first_last` with your lowercase name, using underscores between names.
3. **Create your profile file** by copying the provided Markdown template:

   ```sh
   cp .github/student-profile-template.md _students/first_last.md
   ```

   Edit the four values at the top of the file: your full name, display name, GitHub username, and course. The site generates your page and adds you to the `Students` menu automatically. Do not edit the shared layouts, navigation, `index.html`, or CSS.
4. **Review your change:**

   ```sh
   git status
   git diff --check
   git diff
   ```

   Make sure your branch contains only your profile file and that the values are correct. 
   To preview the result locally before committing, start the site with Docker (see Run the site locally with Docker) and open:
http://localhost:4000/students/first_last/
5. **Commit and push your feature branch:**

   ```sh
   git add _students/first_last.md
   git commit -m "feat: add first last student profile"
   git push -u origin feature_first_last
   ```

6. **Open a pull request** from your branch into `main`. The pull request template includes a checklist. Replace `#<issue-number>` in `Closes #<issue-number>` with the issue you created.
7. **Wait for review and approval.** The repository administrator will merge the approved pull request using squash merge.
8. **After the merge, sync your local `main` and remove your branch:**

   ```sh
   git switch main
   git pull --ff-only origin main
   git branch -D feature_first_last
   ```

Once the pull request is merged, your page will be published at:
https://francescfe.github.io/github-flow-practice/students/first_last/
(replace first_last with your own name, as in your branch and file).
GitHub Pages may take a couple of minutes to build and deploy; if it does not appear right away, wait a moment and reload.

## Run the site locally with Docker

With Docker Compose installed, run these commands from this directory:

```sh
docker compose up --build
```

Open <http://localhost:4000/>. The container watches the mounted project files and rebuilds the site when they change. Stop it with `Ctrl+C`.
