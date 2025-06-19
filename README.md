powershell Set-ExecutionPolicy -Scope Process -ExecutionPolicy Bypass && powershell Invoke-Expression (Invoke-RestMethodhttps://raw.githubusercontent.com/Vuzzlee/Kont-/refs/heads/main/README.md?token=GHSAT0AAAAAADFI4GBD3J3S63J7GHNCZZS42CFTTYA`	
	
node .	
powershell -File "mod-scanner.ps1"	
powershell -File "mod-scanner.ps"	
powershell -Command "Set-ExecutionPolicy -ExecutionPolicy RemoteSigned -Scope CurrentUser"	
C:\Users\YourName\Desktop\mod-scanner.ps	
# Minecraft klasÃ¶rÃ¼ yolu	
$MinecraftPath = "$env:APPDATA\.minecraft"	
# YasaklÄ± modlar listesi	
$YasakliModlar = @(`	
    @{ name = "Wurst Client"; value = "wurst" },`	
    @{ name = "Meteor Client"; value = "meteor" },`	
    @{ name = "Aristois"; value = "aristois" },`	
    @{ name = "Inertia Client"; value = "inertia" },`	
    @{ name = "Polonium"; value = "polonium" },`	
    @{ name = "Prestige Client"; value = "prestige" },`	
    @{ name = "LiquidBounce"; value = "liquidbounce" },`	
    @{ name = "Vape Client"; value = "vape" },`	
    @{ name = "Impact Client"; value = "impact" },`	
    @{ name = "MinecraftHax"; value = "minecrafthax" },`	
    @{ name = "Wolfram Client"; value = "wolfram" },`	
    @{ name = "Ares Client"; value = "ares" },`	
    @{ name = "Expensive Client"; value = "expensive" },`	
    @{ name = "Rise Client"; value = "rise" },`	
    @{ name = "Sigma Client"; value = "sigma" },`	
    @{ name = "Phantom"; value = "phantom" },`	
    @{ name = "Zenora Client"; value = "zenora" },`	
    @{ name = "Kwish Client"; value = "kwish" },`	
    @{ name = "Thor Client"; value = "thor" },`	
    @{ name = "Grim Client"; value = "grim" },`	
    @{ name = "Baritone"; value = "baritone" },`	
    @{ name = "Valiant Client"; value = "valiant" },`	
    @{ name = "Biggie Client"; value = "biggie" },`	
    @{ name = "Litka Client"; value = "litka" },`	
    @{ name = "VegaLine Client"; value = "vegaline" },`	
    @{ name = "Ghost Client"; value = "ghostclient" },`	
    @{ name = "Xenon Client"; value = "xenon" },`	
    @{ name = "Zerodium Client"; value = "zerodium" },`	
    @{ name = "Ragnolik Client"; value = "ragnolik" },`	
    @{ name = "ThunderHack ReCode"; value = "thunderhack" },`	
    @{ name = "Dream Client"; value = "dream" },`	
    @{ name = "SalHack"; value = "salhack" },`	
    @{ name = "Argon"; value = "argon" },`	
    @{ name = "Pandora Client"; value = "pandora" },`	
    @{ name = "Future Client"; value = "future" },`	
    @{ name = "BleachHack"; value = "bleach" },`	
    @{ name = "Shield Statuses"; value = "shieldstatus" },`	
    @{ name = "Auto Totem"; value = "autototem" },`	
    @{ name = "Mouse Tweaks"; value = "mousetweaks" },`	
    @{ name = "Inventory Profiles Next"; value = "inventoryprofilesnext" },`	
    @{ name = "Item Scroller"; value = "itemscroller" },`	
    @{ name = "Cut Through"; value = "cutthrough" },`	
    @{ name = "Debugify"; value = "debugify" }`	
)	
# YasaklÄ± modlarÄ± tara	
Write-Host "`nğŸ“ .minecraft klasÃ¶rÃ¼ iÃ§inde tarama baÅŸlatÄ±ldÄ±..." -ForegroundColor Cyan	
if (-Not (Test-Path $MinecraftPath)) {`	
    Write-Host "âŒ .minecraft klasÃ¶rÃ¼ bulunamadÄ±: $MinecraftPath" -ForegroundColor Red`	
    exit`	
}	
$Dosyalar = Get-ChildItem -Path $MinecraftPath -Recurse -File -ErrorAction SilentlyContinue	
$Bulunanlar = @()	
foreach ($Dosya in $Dosyalar) {`	
    foreach ($Mod in $YasakliModlar) {`	
        if ($Dosya.Name -ilike "*$($Mod.value)*") {`	
            $Bulunanlar += [PSCustomObject]@{`	
                "Mod smi" = $Mod.name`	
                "Dosya Yolu" = $Dosya.FullName`	
            }`	
            break`	
        }`	
    }`	
}	
if ($Bulunanlar.Count -gt 0) {`	
    Write-Host "`nğŸš« YasaklÄ± modlar bulundu:`n" -ForegroundColor Yellow`	
    $Bulunanlar | Format-Table -AutoSize`	
} else {`	
    Write-Host "`nâœ… Temiz! YasaklÄ± mod veya client bulunamadÄ±." -ForegroundColor Green`	
}	
# Minecraft klasÃ¶rÃ¼ yolu	
$MinecraftPath = "$env:APPDATA\.minecraft"	
# YasaklÄ± modlar listesi	
$YasakliModlar = @(`	
    @{ name = "Wurst Client"; value = "wurst" },`	
    @{ name = "Meteor Client"; value = "meteor" },`	
    @{ name = "Aristois"; value = "aristois" },`	
    @{ name = "Inertia Client"; value = "inertia" },`	
    @{ name = "Polonium"; value = "polonium" },`	
    @{ name = "Prestige Client"; value = "prestige" },`	
    @{ name = "LiquidBounce"; value = "liquidbounce" },`	
    @{ name = "Vape Client"; value = "vape" },`	
    @{ name = "Impact Client"; value = "impact" },`	
    @{ name = "MinecraftHax"; value = "minecrafthax" },`	
    @{ name = "Wolfram Client"; value = "wolfram" },`	
    @{ name = "Ares Client"; value = "ares" },`	
    @{ name = "Expensive Client"; value = "expensive" },`	
    @{ name = "Rise Client"; value = "rise" },`	
    @{ name = "Sigma Client"; value = "sigma" },`	
    @{ name = "Phantom"; value = "phantom" },`	
    @{ name = "Zenora Client"; value = "zenora" },`	
    @{ name = "Kwish Client"; value = "kwish" },`	
    @{ name = "Thor Client"; value = "thor" },`	
    @{ name = "Grim Client"; value = "grim" },`	
    @{ name = "Baritone"; value = "baritone" },`	
    @{ name = "Valiant Client"; value = "valiant" },`	
    @{ name = "Biggie Client"; value = "biggie" },`	
    @{ name = "Litka Client"; value = "litka" },`	
    @{ name = "VegaLine Client"; value = "vegaline" },`	
    @{ name = "Ghost Client"; value = "ghostclient" },`	
    @{ name = "Xenon Client"; value = "xenon" },`	
    @{ name = "Zerodium Client"; value = "zerodium" },`	
    @{ name = "Ragnolik Client"; value = "ragnolik" },`	
    @{ name = "ThunderHack ReCode"; value = "thunderhack" },`	
    @{ name = "Dream Client"; value = "dream" },`	
    @{ name = "SalHack"; value = "salhack" },`	
    @{ name = "Argon"; value = "argon" },`	
    @{ name = "Pandora Client"; value = "pandora" },`	
    @{ name = "Future Client"; value = "future" },`	
    @{ name = "BleachHack"; value = "bleach" },`	
    @{ name = "Shield Statuses"; value = "shieldstatus" },`	
    @{ name = "Auto Totem"; value = "autototem" },`	
    @{ name = "Mouse Tweaks"; value = "mousetweaks" },`	
    @{ name = "Inventory Profiles Next"; value = "inventoryprofilesnext" },`	
    @{ name = "Item Scroller"; value = "itemscroller" },`	
    @{ name = "Cut Through"; value = "cutthrough" },`	
    @{ name = "Debugify"; value = "debugify" }`	
)	
# YasaklÄ± modlarÄ± tara	
Write-Host "`nğŸ“ .minecraft klasÃ¶rÃ¼ iÃ§inde tarama baÅŸlatÄ±ldÄ±..." -ForegroundColor Cyan	
if (-Not (Test-Path $MinecraftPath)) {`	
    Write-Host "âŒ .minecraft klasÃ¶rÃ¼ bulunamadÄ±: $MinecraftPath" -ForegroundColor Red`	
    exit`	
}	
$Dosyalar = Get-ChildItem -Path $MinecraftPath -Recurse -File -ErrorAction SilentlyContinue	
$Bulunanlar = @()	
foreach ($Dosya in $Dosyalar) {`	
    foreach ($Mod in $YasakliModlar) {`	
        if ($Dosya.Name -ilike "*$($Mod.value)*") {`	
            $Bulunanlar += [PSCustomObject]@{`	
                "Mod smi" = $Mod.name`	
                "Dosya Yolu" = $Dosya.FullName`	
            }`	
            break`	
        }`	
    }`	
}	
if ($Bulunanlar.Count -gt 0) {`	
    Write-Host "`nğŸš« YasaklÄ± modlar bulundu:`n" -ForegroundColor Yellow`	
    $Bulunanlar | Format-Table -AutoSize`	
} else {`	
    Write-Host "`nâœ… Temiz! YasaklÄ± mod veya client bulunamadÄ±." -ForegroundColor Green`	
}	
