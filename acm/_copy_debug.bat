@echo off
if "%OS%" == "Windows_NT" goto WinNT

:Win9x
copy /b debug_libc\ac3filter.acm %windir%\system
goto exit

:WinNT
copy /b debug_libc\ac3filter.acm %windir%\system32
goto exit

:exit