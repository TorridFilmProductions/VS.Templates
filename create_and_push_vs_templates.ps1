<#
Creates a new GitHub repository named VS.Templates (using gh) and pushes the current branch as 'main'.
If gh is not available, it prints the commands you should run manually.
#>

param(
	[string]$RepoName = 'VS.Templates',
	[string]$Visibility = 'public' # or 'private'
)

if (Get-Command gh -ErrorAction SilentlyContinue) {
	gh repo create $RepoName --$Visibility --confirm
	git branch -M main
	git remote add vs-templates "https://github.com/$(gh api user --jq .login)/$RepoName.git" 2>$null
	git push -u vs-templates main
	Write-Host "Repository created and pushed to origin: https://github.com/$(gh api user --jq .login)/$RepoName"
} else {
	Write-Host "gh CLI not found. Create a new repository named '$RepoName' on GitHub, then run these commands:"
	Write-Host "  git branch -M main"
	Write-Host "  git remote add vs-templates <repo-url>"
	Write-Host "  git push -u vs-templates main"
}
