# GitHub Flow Practice

This repository is for practicing GitHub Flow with a small static website built with HTML and CSS and published through GitHub Pages. The website files live in the repository root. No JavaScript, dependencies, or build tools are required.

## Add your profile using GitHub Flow

1. **Open an issue** describing the profile you plan to add and its acceptance criteria.
2. **Create a feature branch from the latest `main`:**

   ```sh
   git switch main
   git pull --ff-only origin main
   git switch -c feature_first_last
   ```

   Replace `first_last` with your lowercase name, using underscores between names.
3. **Add your profile page** as an HTML file in the repository root, for example `first_last.html`. Add a link to it in the `Students` dropdown in `index.html` and every existing student page. Keep links relative and reuse `styles.css`.
4. **Validate your change:** check that Home opens your profile, that you can return to Home, that `Students` reveals your link, and that the shared styles load. You can open `index.html` directly or start a local static server with `python3 -m http.server` and visit `http://localhost:8000/`.
5. **Review and publish your changes:**

   ```sh
   git status
   git diff --check
   git add *.html styles.css
   git commit -m "feat: add first last student profile"
   git push -u origin feature_first_last
   ```

6. **Open a pull request** from your branch into `main`. Include `Closes #<issue-number>` in the description and review the diff before merging.
7. **After the merge,** delete the remote branch and sync your local copy:

   ```sh
   git push origin --delete feature_first_last
   git switch main
   git pull --ff-only origin main
   git branch -d feature_first_last
   ```

8. **Check the published site** at [GitHub Pages](https://francescfe.github.io/github-flow-practice/) after deployment finishes.
