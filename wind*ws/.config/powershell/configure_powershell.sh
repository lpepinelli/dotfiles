
Set-ExecutionPolicy -ExecutionPolicy RemoteSigned -Scope CurrentUser
Invoke-RestMethod -Uri https://get.scoop.sh | Invoke-Expression
scoop install curl jq nvm
winget install --id Git.Git -e --source winget
scoop install neovim gcc bat
echo ". $env:USERPROFILE\.config\powershell\user_profile.ps1" > $PROFILE.CurrentUserCurrentHost
Install-Module posh-git -Scope CurrentUser -Force
winget install JanDeDobbeleer.OhMyPosh -s winget
Install-Module -Name Terminal-Icons -Repository PSGallery -Force
Install-Module -Name z -Force
Install-Module -Name PSReadLine -AllowPrerelease -Scope CurrentUser -Force -SkipPublisherCheck
scoop install fzf
Install-Module -Name PSFzf -Scope CurrentUser -Force
