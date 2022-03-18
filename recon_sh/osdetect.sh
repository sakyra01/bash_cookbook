#!/bin/bash
#
#
# Описание:
# Определение типа ОС: MS-Windows/Linux/MacOS
#
# Использование: bash osdetect.sh
# вывод будет одним из таких: Linux MSWin macOS
#


if type -t wevtutil &> /dev/null
then
	OS=MSWin
elif type -t scutil &> /dev/null
then
	OS=macOS
else
	OS=Linux
fi
echo $OS

