## Create a GitHub Repository from the Command Line

**Step 1: Generate a Personal Access Token**

Before creating a GitHub repository from the command line, generate a personal access token for authentication.

1. Go to your [GitHub Settings](https://github.com/settings/tokens).
2. Click the "Generate token" button.
3. Give your token a name and select the required scopes, including at least "repo."
4. Click "Generate token" and copy the generated token.

**Step 2: Use the `curl` Command to Create a Repository**

Open your terminal and run the following `curl` command to create a new GitHub repository:

```bash
curl -H "Authorization: token YOUR_ACCESS_TOKEN" \
     -d '{"name":"REPO_NAME","private":false}' \
     https://api.github.com/user/repos
```
**Step 3: Push project file to repository**

This sequence of commands initializes a Git repository, stages your project files, creates an initial commit, renames the default branch to 'main', links your local repository to a remote GitHub repository, and pushes your project files to GitHub.

```bash
git init
git add .
git commit -m "first commit"
git branch -M main
git remote add origin https://github.com/yourusername/your-repo.git
git push -u origin main
```