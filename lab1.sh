echo "grep"
echo "Файл с именами:"
cat names.txt
echo ""
echo "1 Иннокентии и Харитоны:"
grep -E 'Иннокентий|Харитон' names.txt
echo ""
echo "2 Фамилии на согласные:"
grep -P '^(?=[^АЕЁИОУЫЭЮЯ])[А-Я]' names.txt
echo ""
echo "3 Минимум 3 гласных в начале фамилии:"
grep -cE '^[АЕЁИОУЫЭЮЯаеёиоуыэюя]{3,}' names.txt
echo ""
echo "4 Последняя фамилия по алфавиту:"
sort -r names.txt | grep -m1 ""
echo ""
echo "sed"
echo "Файл с улицами: "
cat streets.txt
echo ""
echo "1 улицы с 3 гласных"
sed -n -r '/^[АЕЁИОУЫЭЮЯаеёиоуыэюя]{3,}/p'  streets.txt
echo ""
echo "2 ская на ***"
sed 's/ская/***/g' streets.txt
echo ""
echo "3 ^^^ после ская"
sed '/ская/a^^^' streets.txt
echo ""
echo "4 абв в бва"
sed 'y/абвгдеёжзийклмнопрстуфхцчшщъыьэюя/бвгдеёжзийклмнопрстуфхцчшщъыьэюяа/' streets.txt
echo ""
echo "awk"
echo "1 все даты 100метров:"
ls awk | awk -F _ '/100метров/{print $2}'
echo ""
echo "2 все соревнования 10.10.2006:"
ls awk | awk -F _ '/10.10.2006/{print $1}'
echo ""
echo "3 среднее время по каждому соревнованию:"
cd awk
awk '{sum[FILENAME]+=$2; count[FILENAME]++;}END{for(file in sum){split(file,f,"_");printf "Среднее время по бегу %s %s – %.2f миллисекунд\n", f[1], f[2],  sum[file]/count[file]}}' *
echo ""
echo "4 победитель в каждом соревновании:"
awk '{if(max[FILENAME]<$2){max[FILENAME]=$2;winner[FILENAME]=$1;}}END{for(file in winner)print file, winner[file]}' *
