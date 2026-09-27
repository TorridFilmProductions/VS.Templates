# VS.Templates

This repository will contain Visual Studio project/item templates.

This local workspace (ConsoleApp1) has been prepared to be pushed into a new GitHub repository named `VS.Templates`.

How to publish to GitHub (recommended):

1. Install GitHub CLI (gh) and authenticate: `gh auth login`
2. Run the script to create the repo and push the current main branch:
   - Windows PowerShell: `./create_and_push_vs_templates.ps1`

If you prefer to create the repository manually, create a remote URL for the new repo and run:

	git remote add vs-templates <repo-url>
	git push -u vs-templates main
