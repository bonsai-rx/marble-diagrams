@echo off
for %%I in (*.tex) do (
  if not exist "build\reactive-%%~nI.svg" (
    echo --->build/reactive-%%~nI.md
    echo uid: reactive-%%~nI>>build/reactive-%%~nI.md
    echo title: %%~nI>>build/reactive-%%~nI.md
    echo --->>build/reactive-%%~nI.md
    echo(>>build/reactive-%%~nI.md
    echo ^!^[Marble diagram^]^(~/images/reactive-%%~nI.svg^)>>build/reactive-%%~nI.md
    latex -output-directory=build %%I
    dvisvgm --no-fonts --scale=2.13 --output=build/reactive-%%f.svg build/%%~nI.dvi
  )
)
del /S "*.dvi" "*.aux" "*.log" "*.tex.md"