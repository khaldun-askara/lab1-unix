grep -E 'Иннокентий|Харитон' names.txt
echo "--------------------------------------"
grep -P '(?=[^АЕЁИОУЫЭЮЯ])[А-Я][а-яё]* [А-ЯЁа-яё]* [А-ЯЁа-яё]*' names.txt
echo "--------------------------------------"
grep -cE '[АЕЁИОУЫЭЮЯаеёиоуыэюя]{3,}[а-яё]* [А-ЯЁа-яё]* [А-ЯЁа-яё]*' names.txt