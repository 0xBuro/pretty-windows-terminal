# New Windows Terminal Settings

these are my eyecandy windows terminal settings.
I used posh-git, oh-my-posh and a small custom module which tells you to sleep, code or get coffee.

## Preview

![terminal-rice.](/screenshot.png "Terminal Rice")

## Prerequisites

Install and import following modules via PowerShell profile

```
Import-Module posh-git
Import-Module Terminal-Icons
Import-Module oh-my-posh
Import-Module aware-prompt
Set-PoshPrompt -Theme mirai
```

go to your terminal settings and replace the default `settings.json`

## Folder Structure

     
     Your Path to/
     ├── WindowsPowerShell      # put `Microsoft.PowerShell_profile.ps1` here
     │   ├── Modules
     |      ├── aware-prompt    # put `aware-prompt.psm1` here
     |      ├── oh-my-posh
     |         ├── 6.3.1
     |            ├── themes    # put `mirai.omp.json` here 

## Font and Icons

- FiraMono NF (this one works with regular PowerShell as well)
- Terminal-Icons

## Custom Module

- aware-prompt, a small script I wrote which tells you to code, get coffee or maybe sleep.
