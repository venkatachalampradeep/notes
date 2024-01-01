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