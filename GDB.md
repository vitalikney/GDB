# GDB

> Здесь собрана полезная информация, помогающая изучить GDB и вспомнить управляющие команды.

## Оглавление

- [Команды GDB](#команды)

## Команды

При помощи этой команды происходит компиляция программы на C++:
```
g++ -g <file_name.cpp> -o <file_name>
```
Данная команда загружает скомпилированный файл:
```
gdb <file_name>
```
Для выхода из gdb, надо нажать ```CTRL + D```
Данная команда запускает программу:
```
run
```
Создание точки остановки (breakpoint):
```
break <file_name.cpp>:<line_number> 
break <file_name.cpp>:<function_name> 
```
Информация о созданных точек остановок (breakpoint):
```
info breakpoint
```
Удалить точку остановки (breakpoint):
```
clear <file_name.cpp>:<line_number> 
clear <file_name.cpp>:<function_name> 
```