# Состав продукта

В данный админ-пак входят следующие скрипты, файлы и утилиты:

  - **adAdminDomain.cmd**  
    файл создания учётной записи MSSQLSR с паролем и наделение её
    правами локального администратора компьютера
  - **adAdminLocal.cmd**  
    файл создания учётной записи MSSQLSR с паролем и наделение её
    правами локального администратора компьютера
  - **before.exe**  
    Программа приостанавливает выполнение командного файла до отметки
    времени startTime, и продолжает выполнение до отметки времени
    EndTime Программа полезна, если Вы по каким-то причинам не хотите
    использовать планировщик заданий.  
    Usage: BEFORE.EXE starttime \[endtime\] \[nowait\]
  - **check\_reg\_item.bat**  
    check\_reg\_item checks the item «item» at node «node» for value or
    default value  
    Usage check\_reg\_item.bat «node» «item»  
    Проверяет пункт «item» на присутствие значения или значения по
    умочанию в звене «node» реестра Windows
  - **check\_reg\_node.bat**  
    check\_reg\_node checks the node «node» for default value  
    Usage check\_reg\_item.bat «node»  
    Проверяет на существование звена «node» в реестре Windows (со
    значением по умолчанию)
  - **check\_uname\_present.bat**  
    check\_uname\_present.bat is a file for checking some user login to
    be present in Windows  
    Usage: check\_uname\_present.bat «username»  
    where «username» is windows logon to be tested  
    Проверяет, что некоторый логин пользователя присутствует в Windows
  - **choc\_pack.install.cmd**  
    Пакетный файл для инсталляции программ через менеджер пакетов
    Chocolatey
  - **chock.install.cmd**  
    Инсталлятор менеджера пакетов Chocolatey
  - **curdaterename.bat**  
    (Бонус) программа для вставки в конец имени файла текущей даты и
    времени
  - **curdatetimerename.bat**  
    (Бонус) программа для вставки в конец имени файла текущей даты и
    времени
  - **datetimemsec.exe**  
    Данная команда делает отметку текущего времени, с разделителем или
    без  
    Usage: datetimemsec.exe \[/delims\]  
    Вывод
    «YYYY\[delims\]MM\[delims\]hh\[delims\]mm\[delims\]ss\[delims\]Msc»  
    для использования в команде FOR /F, и использования «случайных»
    строк
  - **deAdminDomain.cmd**  
    файл удаления учётной записи MSSQLSR с паролем и наделение её
    правами локального администратора компьютера
  - **deAdminLocal.cmd**  
    файл удаления учётной записи MSSQLSR с паролем и наделение её
    правами локального администратора компьютера
  - **dis-lsaprotect.cmd**  
    скрипт дезактивации защиты LSA на компьютерах с Microsoft Windows 7
    - 10
  - **dis-somemimikatz-features.cmd**  
    скрипт для дезактивации некоторых особенностей операционных систем,
    необходимых для успешного запуска программы Mimikatz. Программа
    бесполезна для Windows 10
  - **dis-wdigest.cmd**  
    скрипт для дезактивации WDigest протокола на компьютерах с Windows 7
    -10
  - **edlinw32.exe**  
    файл - строковый редактор для правки файлов на удалённом компьютере
    в CLI WinRS или Telnet сессии.  
    Это один из немногих редакторов, работающих в этих сессиях.
    Остальные требуют запуска полноценного терминала.
  - **en-lsaprotect.cmd**  
    скрипт активации защиты LSA на компьютерах с операционной системой
    Microsoft Windows 7 - 10
  - **en-somemimikatz-features.cmd**  
    скрипт, включающий некоторые возможности системы, необходимые для
    запуска программы mimikatz. Скрипт бесполезен в Windows 10
  - **en-wdigest.cmd**  
    скрипт, включающий WDigest протокол авторизации
  - **example\_check\_uname\_admin.bat**  
    пример программы, проверяющей, имеет ли текущая запись права
    локального администратора.
  - **getip\_1.cmd**  
    программа для получения внешнего ip адреса системы с помощью сайта
    ipinfo и программы curl. Программа сохраняет найденный IP АДРЕС В
    c:\\pub1\\Util\\MyIp.txt
  - **getsysteminfocheck.cmd**  
    (Бонус) Проверка системной информации о компьютере средствами
    операционной системы Windows. Необходимо для продолжения
    взлома. Требует установки дополнительного программного
    обеспечения (см. текст скрипта).
  - **inkeys.exe**  
    Функция возвращает Errorlevel = число ASCII Code нажатой клавиши или
    0  
    Usage: INKEYS.EXE \[\[string1\] prompt\_string\]  
    ;(c) mak\_soft@mail.ru  
    any params - suppress this help message. Return only Errorlevel
    Number and ERRORLEVEL  
    if string1 is nubmer - wait key number of seconds  
    ERRORLEVEL=0 -no key pressed  
    ERRORLEVEL=ASCII code of key  
    любой параметр выводит это сообщение. Выводит только число
    Errorlevel  
    Если строка 1 число, то программа ожидает нажатия на клавишу это
    число секунд.  
    ERRORLEVEL = 0 - клавиша не нажата  
    ERRORLEVEL = ASCII коду нажатой клавиши  
    Команда незаменима при построении интерактивных диалоговых оболочек
    в Commnd Shell
  - **minifilters-interface-restore.cmd**  
    Восстановление доступа к minifilters, в том числе должны заработать
    антивирусы.  
    Внимание\! После восстановления доступа необходимо сделать Manual
    Restart Services\!
  - **minifilters-interface-stop.cmd**  
    принудительная остановка minifilters Windows, в том числе всех
    антивирусов. Возможны баги\!
  - **PartOfDomain.bat**  
    скрипт WMI, который проверяет, является ли данный компьютер частью
    домена, и выдающий информацию о домене.
  - **reg\_add\_envvar.bat**  
    командный файл добавления системной переменной окружения вместе со
    значением  
    Usage: reg\_add\_envvar.bat «variable name» «value»  
    где «variable name» имя системной переменной, «value» её значение  
      
  - **reg\_addtopath.bat**  
    командный файл для добавления пути к системной переменной Path  
    Usage: reg\_addtopath.bat «Path name»  
    где «Path name» путь, добавляемый в переменную Path  
  - **reg\_del\_envvar.bat**  
    reg\_del\_envvar.bat is a script which delete the environment
    variable from the shell  
    Скрипт, удаляющий системную переменную окружения из оболочки  
    Usage: reg\_del\_envvar.bat «variable name»  
    где «variable name» имя системной переменной
  - **reg\_del\_node.bat**  
    reg\_del\_node.bat is a script to delete of a Windows Registry Node
    only if reserve copy is created  
    Скрипт, который удаляет раздел «node» из реестра Windows только если
    создана резервная копия «file name with extension»  
    Usage: reg\_del\_node.bat «node» «file name with extension»
  - **reg\_export\_reserve.bat**  
    reg\_export\_reserve.bat is a script to make of a reserved copy of
    the Windows Registry Node  
    If Old reserve copy is present, it is assigned name backupp1-5 with
    warning and then return warning or general error  
    Скрипт, создающий резервную копию раздела реестра Windows.  
    Usage: reg\_export\_reserve.bat «node» «file name with extension»  
    где «node» имя раздела реестра, «file name with extension» резервная
    копия ветви реестра. Расширение нужно указывать явно (обычно оно
    reg).
  - **reg\_import\_file.bat**  
    reg\_import\_file.bat is a script to add into the Windows Registry a
    file «file» with check of his presistens  
    Скрипт, импортирующий файл в реестр Windows с проверкой файла на
    существование  
    Usage: reg\_import\_file.bat «file name with extension»  
    где «file name with extension» - файл с резервной копией куста
    реестра (обычно имеет расширение .reg). Расширение нужно
    указывать явно.  
  - **reset\_route.cmd**  
    скрипт для очистки кэша DNS и таблицы маршрутов операционной
    системы. Скрипт используется, когда компьютер по каким-то
    причинам не может получить доступ к определённым узлам в
    Интернете, и это не проблемы провайдера.
  - **Restart\_Explorer.bat**  
    скрипт перезапускает системные процессы Explorer.exe и dwm.exe.
    Применяется, когда окна и элементы управления ведут себя
    «неподобающим образом» или зависают. Запускается от имени
    администратора компьютера.
  - **Secure-001.cmd**  
    скрипт удаляет правила брандмауэра, заданные программой
    UnSecure-001.cmd
  - **Secure-002.cmd**  
    скрипт настраивает программы удалённого доступа telnet, rdp и winrm
  - **Secure-003.cmd**  
    скрипт удаляет шару со всех локальных дисков и диска C:
  - **Secure-004.cmd**  
    скрипт запрещает анонимный доступ к шаре и нулевую сессию для SMB
    протокола
  - **ShareAllDiscs.cmd**  
    скрипт расшаривает все диски на компьютере (может не работать)
  - **telnet\_start.cmd**  
    скрипт запускает службу KpyM Telnet SSH Server v1.19a
  - **telnet\_stop.cmd**  
    скрипт останавливает службу KpyM Telnet SSH Server v1.19a
  - **timemer.exe**  
    Программа измеряет время между двумя событиями (метками)  
    TimeMer (c) 2003 by Michael Korotkin  
    Usage: timemer.exe string start|stop|view  
    где string - временная метка (строка символов)  
    return ERRORLEVEL: 0-254 number of hours, 255 - error  
    ERRORLEVEL: 0-254 число часов,  
    ERRORLEVEL=255 - ошибка
  - **tredo\_restart.cmd**  
    скрипт перезапускает интерфейс tredo. Вместо номера интерфейса 13
    поставьте номер своего tredo интерфейса
  - **uninstall-mainexponenta.cmd**  
    удаление системных переменных окружения Main Exponenta Files  
    Используется для деактивации или удаления стайлера. После запуска
    этого файла стайлер работать не будет\!
  - **uninstall-stealerexponenta.cmd**  
    удаление системных переменных окружения Main Exponenta Files  
    Используется для деактивации или удаления стайлера. После запуска
    этого файла стайлер работать не будет\!
  - **UNSECURE\_ALL.cmd**  
    контейнер для всех скриптов UnSecure. Обращаться с осторожностью\!
  - **Unsecure-001.cmd**  
    This script Adds Firewall Rules, Which allow next task  
    1\. Allowed all ftp connections by ftp.exe program  
    2\. Allowed all telnet connections on ports 23 and 972  
    3\. Allowed all winrm connections on port 5985  
    4\. Allowed all ssh connections on port 22  
    5\. Allowed all rdp connections on port 3389  
    6\. Allowed all RAdmin connections on port 4899  
    7\. Allowed all SMB Shared Connections on port 445  
    8\. Allowed All RPC Connections on Ports 135, 137, 139  
    9\. Allowed Remote Meterpreter Connections on Port 4444  
    10\. Adjust System Services for Autostart  
    Скрипт добавляет правила брандмауэра, разрешающие следующие
    задачи:  
    1\. Разрешает все соединения программе FTP.EXE  
    2\. Разрешает соединения telnet по портам 23 и 972  
    3\. Разрешает WinRM соединения на порт 5985  
    4\. Разрешает SSH соединения на порт 22  
    5\. Разрешает RDP соединения на порт 3389  
    6\. Разрешает RAdmin соединения на порт 4899  
    7\. Разрешает SMB шару на порту 445  
    8\. Разрешает SMB и RPC соединения на портах 135, 137, 139  
    9\. Разрешает удалённые Meterpreter соединения на порт 4444  
    10\. Настраивает автостарт системных сервисов.
  - **Unsecure-002.cmd**  
    скрипт настраивает программы удалённого доступа telnet, rdp и winrm
  - **Unsecure-003.cmd**  
    скрипт расшаривает локальный диск C:
  - **UnSecure-004.cmd**  
    скрипт делает возможным запуск планировщика задач Windows, разрешает
    нулевую сессию SMB протокола и анонимный доступ к шаре.
  - **unsecure-winrm-client.cmd**  
    скрипт включает некоторые небезопасные настройки WinRM клиента.
    Используйте, если Вам не удалось установить WinRM соединение
    штатными средствами
  - **unsecure-winrm-service.cmd**  
    скрипт включает некоторые небезопасные настройки WinRM сервера.
    Используйте, если Вам не удалось установить WinRM соединение
    штатными средствами
  - **update-chocolatey.cmd**  
    скрытое обновление всех программ, установленных менеджером пакетов
    chocolatey
  - **winlogon-SpecialAccounts.reg**  
    регистрация аккаунта MSSQLSR как специального  
    В специальный аккаунт Microsoft Windows нельзя зайти локально
    (только удалённо), и он не показывается в списке аккаунтов для
    входа в Windows 7-10  
  - **wupdate-interface-restore.cmd**  
    Восстановление доступа к Windows Update Schedule.  
    Внимание\! После восстановления доступа необходимо сделать Manual
    Restart Computer\!
  - **wupdate-interface-stop.cmd**  
    принудительная остановка Windows Update Schedule. Возможны баги\!
    Обновления indows переводятся в ручной режим.
  - **descript.ion**  
    описание каталога (этот файл в кодировке ANSI CP-1251)

Все скрипты и утилиты являются консольными, запускаются на выполнение из
консоли (терминала) Microsoft Windows, с указанием префикса пути
«%PUB1%\\Util\\».
