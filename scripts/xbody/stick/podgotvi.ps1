# XEMS — prepares the USB stick for the XBody unit (Windows). Started by PODGOTVI-FLESHKA.cmd next to this folder.
# Finds the stick, makes it FAT32 if needed (asks first), copies the mod to its root, checks it, ejects it.
# A XIAO plugged in UF2 mode (RESET pressed twice) gets the bridge firmware on the way. Backups already on the
# stick (xems\backup-*) are never touched; "върни назад" arms the stick to undo the last install.
$ErrorActionPreference = 'Stop'
try { [Console]::OutputEncoding = [Text.Encoding]::UTF8 } catch {}
$Host.UI.RawUI.WindowTitle = 'XEMS - флашка за XBody'
$Src = Join-Path (Split-Path -Parent $PSScriptRoot) 'fleshka'

function Say([string]$t, [string]$c = 'Gray') { Write-Host $t -ForegroundColor $c }
function Bye([int]$code) { Write-Host ''; Read-Host 'Натисни Enter за изход' | Out-Null; exit $code }
function Removable { @(Get-CimInstance Win32_LogicalDisk | Where-Object { $_.DriveType -eq 2 -and $_.Size -gt 0 }) }
function IsXiao($d) {
    $f = Join-Path ($d.DeviceID + '\') 'INFO_UF2.TXT'
    (Test-Path $f) -and ((Get-Content $f -Raw) -match 'nRF52840|XIAO')
}

if (-not (Test-Path (Join-Path $Src 'updater.sh'))) {
    Say 'Не намирам папката "fleshka". Разархивирай целия zip (десен бутон -> Extract All) и пусни пак.' 'Red'
    Bye 1
}
$ver = (Get-Content (Join-Path $Src 'xems\VERSION') -Raw).Trim()
Write-Host ''
Say "  XEMS за XBody - версия $ver" 'Cyan'
Say '  ------------------------------------------------------------'
Write-Host ''

# ---- a XIAO in UF2 mode: program the bridge (no other step needed for it) ----
foreach ($d in Removable) {
    if (IsXiao $d) {
        Say "Намерих платката XIAO ($($d.DeviceID)) - програмирам моста..." 'Yellow'
        try {
            Copy-Item (Join-Path $Src 'xems-bridge.uf2') ($d.DeviceID + '\') -Force
        } catch { }   # the board restarts as soon as the file is in; Windows may report that as an error
        Say '  OK Мостът е програмиран. Платката се рестартира сама - извади я.' 'Green'
        Write-Host ''
    }
}

# ---- the stick ----
while ($true) {
    $sticks = @(Removable | Where-Object { -not (IsXiao $_) })
    if ($sticks.Count -gt 0) { break }
    Say 'Сложи USB флашката в компютъра и натисни Enter.' 'Yellow'
    Read-Host | Out-Null
}
if ($sticks.Count -eq 1) { $s = $sticks[0] }
else {
    Say 'Има няколко флашки:'
    for ($i = 0; $i -lt $sticks.Count; $i++) {
        $x = $sticks[$i]
        Say ("  {0}  {1}  {2}  {3:N1} GB  {4}" -f ($i + 1), $x.DeviceID, $x.VolumeName, ($x.Size / 1GB), $x.FileSystem)
    }
    $n = [int](Read-Host 'Номер на флашката')
    if ($n -lt 1 -or $n -gt $sticks.Count) { Say 'Няма такава.' 'Red'; Bye 1 }
    $s = $sticks[$n - 1]
}
$L = $s.DeviceID
Say ("Флашка: {0}  {1}  {2:N1} GB  {3}" -f $L, $s.VolumeName, ($s.Size / 1GB), $s.FileSystem)

# ---- install or undo? (undo only if this stick holds a backup of an earlier install) ----
$backups = @(Get-ChildItem "$L\xems\backup-*.added" -ErrorAction SilentlyContinue | Where-Object { $_.Name -notmatch 'restored' })
$mode = 'install'
if ($backups.Count -gt 0) {
    Write-Host ''
    Say "  1  Инсталирай версия $ver  (Enter)"
    Say '  2  Върни назад последната инсталация'
    if ((Read-Host 'Избор') -eq '2') { $mode = 'restore' }
}

# ---- FAT32: the unit reads nothing else ----
if ($mode -eq 'install' -and $s.FileSystem -ne 'FAT32') {
    if ($s.Size -gt 32GB) {
        Say 'Флашката не е FAT32 и е над 32 GB - Windows не я прави FAT32. Вземи флашка до 32 GB.' 'Red'
        Bye 1
    }
    Say "Флашката е $($s.FileSystem); машината чете само FAT32. Ще я форматирам - ВСИЧКО на нея ще се изтрие." 'Yellow'
    $a = Read-Host 'Напиши ДА за да продължа'
    if ($a -notin @('ДА', 'да', 'Да', 'DA', 'da', 'Da')) { Say 'Нищо не е променено.'; Bye 1 }
    try {
        Format-Volume -DriveLetter $L[0] -FileSystem FAT32 -NewFileSystemLabel 'XEMS' -Confirm:$false | Out-Null
    } catch {
        Say 'Не успях да форматирам. Десен бутон на PODGOTVI-FLESHKA.cmd -> "Run as administrator", или' 'Red'
        Say 'форматирай я сам: This PC -> десен бутон на флашката -> Format -> FAT32.' 'Red'
        Bye 1
    }
    Say '  OK Форматирана (FAT32).' 'Green'
}

try {
    if ($mode -eq 'restore') {
        Copy-Item (Join-Path $Src 'updater.sh') "$L\" -Force
        Remove-Item "$L\updater.done.sh" -ErrorAction SilentlyContinue
        New-Item -ItemType File "$L\xems\RESTORE" -Force | Out-Null
        Say '  OK Флашката е готова да ВЪРНЕ последната инсталация.' 'Green'
    } else {
        Remove-Item "$L\updater.done.sh", "$L\xems\RESTORE" -ErrorAction SilentlyContinue
        New-Item -ItemType Directory "$L\xems" -Force | Out-Null
        Copy-Item (Join-Path $Src 'updater.sh') "$L\" -Force
        Copy-Item (Join-Path $Src 'xems\*') "$L\xems\" -Force        # backup-* already there stay
        Copy-Item (Join-Path $Src 'xems-bridge.uf2'), (Join-Path $Src 'README.txt') "$L\" -Force
        $want = ((Get-Content "$L\xems\payload.md5" -Raw).Trim() -split '\s+')[0]
        $got = (Get-FileHash "$L\xems\payload.tar.gz" -Algorithm MD5).Hash.ToLower()
        if ($want -ne $got) { throw 'проверката на копието не съвпада' }
        Say "  OK Версия $ver е на флашката и е проверена." 'Green'
    }
} catch {
    Say "Грешка при копиране: $($_.Exception.Message). Опитай с друга флашка." 'Red'
    Bye 1
}

try { (New-Object -ComObject Shell.Application).Namespace(17).ParseName($L).InvokeVerb('Eject') } catch { }
Write-Host ''
Say '  Извади флашката и я занеси на машината:' 'Cyan'
Say '   1. Изключи XBody.'
Say '   2. Вкарай флашката и включи.'
Say '   3. Изчакай - след около минута машината се изключва сама.'
Say '   4. Извади флашката и включи пак.'
if ($mode -eq 'install') { Say '   Горе вдясно на екрана на XBody се появява копче XEMS.' }
else { Say '   Машината е както преди последната инсталация.' }
Say '   Пази флашката - на нея е копието за връщане назад.' 'DarkGray'
Bye 0
