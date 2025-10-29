# PowerShell script for Windows
Write-Host "Installing Windows packages..."

# Install Scoop if not present
if (!(Get-Command scoop -ErrorAction SilentlyContinue)) {
    Set-ExecutionPolicy -ExecutionPolicy RemoteSigned -Scope CurrentUser
    Invoke-RestMethod -Uri https://get.scoop.sh | Invoke-Expression
}

# Install packages
scoop install -y git curl wget windos-terminal

# Install Oh My Posh
winget install JanDeDobbeleer.OhMyPosh -s winget
