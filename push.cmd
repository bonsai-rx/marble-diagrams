@echo off
for %%I in (*.tex) do (
  latex -output-directory=build %%I
  dvisvgm --no-fonts --scale=2.142857 --output=build/%%f.svg build/%%~nI.dvi
)
del /S "*.dvi" "*.aux" "*.log"