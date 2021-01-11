@echo off
for %%I in (*.tex) do (
  latex -output-directory=build %%I
  dvisvgm --no-fonts --output=build/%%f.svg build/%%~nI.dvi
)
del /S "*.dvi" "*.aux" "*.log"