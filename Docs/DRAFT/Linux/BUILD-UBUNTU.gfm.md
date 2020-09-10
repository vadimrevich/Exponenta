Создание инсталлятора админ-пака Exponenta для Debian/UBUNTU/Rasbian
====================================================================

-   Скопируйте каталог *UBUNTU* в отдельный рабочий каталог для
    изменения файлов.
-   Установите программу *Multi-Edit 2008*, *@Text Replacer*, *sed* и
    т.д. для массовой замены строк в файлах и подкаталогах.
-   Установите собственные значения для имён рабочих серверов, портов и
    каталогов для размещения админ-пака.. Для этого осуществите поиск и
    замену по параметрам:

1.  *hackhost=localhost* на *hackhost=«ваш домен или IP»*
2.  *hackport=80* на *hackport=«ваш порт сервера»* (обычно менять не
    нужно, только если сервер находится на нестандартном порту)
3.  *hackMainFolder=ExponentaForDebian“/”Distrib“/”plugins* на
    *hackMainFolder=«ваш путь к плагинам Экспонента»*. Для
    стандартизации автор не рекомендует менять этот путь.
4.  *httphost=localhost* на *httphost=«ваш домен или IP»*
5.  *httpport=80* на *httpport=«ваш порт сервера»* (обычно менять не
    нужно, только если сервер находится на нестандартном порту)
6.  *httpMainFolder=ExponentaForDebian* на *httpMainFolder=«ваш путь к
    админ-паку Экспонента»*. Для стандартизации автор не рекомендует
    менять этот путь.

-   Перемемстите каталог UBUNTU в файловую систему Linux (Cygwin или
    подсистему Linux в Windows 10). Например: *\~/Work/Exponenta/*
-   В подсистеме Linux выполните команды для указанного подкаталога:

         cd ~/Work/Exponenta/UBUNTU/
         sudo find . -type f  -name '*' -exec chmod 664 '{}' \;
         sudo find . -type f -name '*.sh" -exec chmod 775 '{}' \;
         sudo find . -type f -name '*.in.sh" -exec chmod 664 '{}' \;

-   Запустите на исполнение командный файл:
    *./create-exponenta-admin-pack.sh*.
-   Скопируйте вновь созданный архив:

        mv ./exponenta-admin-pack.tar.gz ./EXPONENTA-DEST/opt.tmp.Exponenta1/

-   Перейдите в каталог:

       cd ./EXPONENTA-DEST/opt.tmp.Exponenta1/

-   Запустите там файл: *./create-hidden-installer.sh*. В каталоге
    *\~/Work/Exponenta/UBUNTU/EXPONENTA-DEST/* будет создан архив
    **Exponenta1-Main-Install.tar.gz** с автоматическим инсталлятором.
-   С помощью FTP/SFTP клиента закачайте файлы из каталога
    *\~/Work/Exponenta/UBUNTU/EXPONENTA-DEST/* на Ваш рабочий сервер
    Экспонента (см. пп. 4-6 выше).
-   Затем закачайте плагины к админ-паку «Экспонента» (см. пп. 1-3
    выше). ПРИМЕЧАНИЕ: плагины к админ-паку загружаются при помощи
    скрипта *loadmainupdate.sh*.

