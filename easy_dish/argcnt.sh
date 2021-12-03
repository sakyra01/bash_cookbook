#!bin/bash
#
echo '1. Сообщить кол-во переданных аргументов динамически'
echo '	+ вывод по одному аргументу в строке'
echo '	+ добавление номера arg'
#

i=1
for ARG
do
	echo "arg$i: $ARG"
	let i++
done

echo '2. Вывод только четных аргументов'


i=1
for ARG
do
	if [ $((i % 2)) -eq 0 ]
	then
		echo "arg$i: $ARG"
		let i++
	fi
done
