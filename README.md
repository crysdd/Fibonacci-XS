Подключение модуля написанного на C к perl-скрипту.

В данном случае в модуле единственная функция вычисляющая числа Фибоначчи.

Для использования модуля, его нужно скомпилировать.

```
cd Fibo
perl Makefile.pl
make
```

В файле файле fibo.pl показан пример подключения. 

Скрипт принимает два именованных аргумента:
"-c" - длина вычисляемой последовательности и
"-f" - вызываемая функция (perl или xs)

Ну и бенчмарк, куда же без него:

```
$ time perl fibo.pl -c 35 -f xs
14930352

real	0m0.255s
user	0m0.220s
sys	0m0.000s

$ time perl fibo.pl -c 35 -f perl
14930352

real	0m16.569s
user	0m15.696s
sys	0m0.016s
```
