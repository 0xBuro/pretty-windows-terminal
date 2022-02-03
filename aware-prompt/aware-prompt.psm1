#requires -Modules posh-git

function Set-EnvVar {
    param(
        [string]
        $aware
    )

    $currentTime = Get-Date
    $early = Get-Date -Hour 5
    $noon = Get-Date -Hour 12
    $late = Get-Date -Hour 18
    $sleepMaybe = Get-Date -Hour 23

    if($currentTime -ge $early -and $currentTime -le $noon) {
    $aware += " $CoffeeCup get a coffee. "
    }
    elseif($currentTime -ge $noon -and $currentTime -le $late) {
    $aware += " $CoffeeCup $Pc time to code. "
    }
    elseif($currentTime -ge $late -and $currentTime -le $sleepMaybe) {
    $aware += " $Moon good evening. " 
    }
    else {
    $aware += " $Zzz sleep maybe? " 
    }

    $env:POSH=$(Write-Prompt -Object $aware)
}
New-Alias -Name 'Set-PoshContext' -Value 'Set-EnvVar' -Scope Global -Force


# Icons
# signals code or sleep time.
# ☕
  $CoffeeCup=([char]::ConvertFromUtf32(9749))
# 🌙  
  $Moon=([char]::ConvertFromUtf32(127769))
# 💤  
  $Zzz=([char]::ConvertFromUtf32(128164))
# 💻
  $Pc=([char]::ConvertFromUtf32(128187))  