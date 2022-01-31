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
