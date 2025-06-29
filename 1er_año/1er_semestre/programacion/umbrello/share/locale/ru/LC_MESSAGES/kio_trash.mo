��            )   �      �  
   �  O   �  �   �  �   �  �   c  �   ^  y   �  g   i  �   �     �     �     �     �  �        �  1   �     �     �     	  /   	  �   ?	  $   '
  C   L
  &   �
     �
     �
     �
     �
  D  �
  #   -  t   Q  k  �  N  2  �  �  �     t   �  �   Y    �  3   �  1     '   M     u    �     �  ,   �  4   �  &     &   ?  U   f  s  �  l   0  y   �  5     -   M  )   {     �  !   �                                                 	                 
                                                                         day  days <para>KDE's wastebin is configured to use the <b>Finder</b>'s Trash.<br></para> @info:whatsthis<para>Check this box to allow <b>automatic deletion</b> of files that are older than the value specified. Leave this disabled to <b>not</b> automatically delete any items after a certain timespan</para> @info:whatsthis<para>Check this box to limit the trash to the maximum amount of disk space that you specify below. Otherwise, it will be unlimited.</para> @info:whatsthis<para>Emptying KDE's wastebin will remove only KDE's trash items, while<br>emptying the Trash through the Finder will delete everything.</para><para>KDE's trash items will show up in a folder called KDE.trash, in the Trash can.</para> @info:whatsthis<para>Set the number of days that files can remain in the trash. Any files older than this will be automatically deleted.</para> @info:whatsthis<para>This is the calculated amount of disk space that will be allowed for the trash, the maximum.</para> @info:whatsthis<para>This is the maximum percent of disk space that will be used for the trash.</para> @info:whatsthis<para>When the size limit is reached, it will prefer to delete the type of files that you specify, first. If this is set to warn you, it will do so instead of automatically deleting files.</para> Delete Biggest Files From Trash Delete Oldest Files From Trash Delete files older than: Empty the contents of the trash Helper program to handle the KDE trash can
Note: to move files to the trash, do not use ktrash, but "kioclient move 'url' trash:/" Ignored Internal error in copyOrMove, should never happen Limit to maximum size Malformed URL %1 Maximum size: Restore a trashed file to its original location The directory %1 does not exist anymore, so it is not possible to restore this item to its original location. You can either recreate that directory and use the restore operation again, or drag the item anywhere else to restore it. The file is too large to be trashed. The trash has reached its maximum size!
Cleanup the trash manually. This file is already in the trash bin. Warn Me When limit reached: ktrash not supported Project-Id-Version: kio_trash
Report-Msgid-Bugs-To: http://bugs.kde.org
POT-Creation-Date: 2016-11-19 11:45+0100
PO-Revision-Date: 2015-03-12 08:15+0300
Last-Translator: Alexander Potashev <aspotashev@gmail.com>
Language-Team: Russian <kde-russian@lists.kde.ru>
Language: ru
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Generator: Lokalize 1.5
Plural-Forms: nplurals=4; plural=n==1 ? 3 : n%10==1 && n%100!=11 ? 0 : n%10>=2 && n%10<=4 && (n%100<10 || n%100>=20) ? 1 : 2;
X-Environment: kde
X-Accelerator-Marker: &
X-Text-Markup: kde4
  дня  дней  дней  дня <para>Корзина KDE настроена на использование корзины <b>Finder</b>.<br></para> <para>Этот параметр включает <b>автоматическую очистку</b> устаревших файлов в корзине. Оставьте параметр выключенным для отмены автоматического удаления файлов, которые старее указанного периода.</para> <para>Этот параметр устанавливает максимальный размер дискового пространства, выделяемого под корзину. Если флажок не установлен, дисковое пространство под корзину не ограничено.</para> <para>Очистка корзины KDE затронет только объекты, удалённые в корзину KDE. Чтобы<br> очистить все удалённые файлы, очистите корзину в Finder.</para><para>Объекты, находящиеся в корзине KDE, расположены в папке KDE.trash в корзине Finder.</para> <para>Количество дней нахождения файла в корзине. По истечению этого срока файл автоматически удаляется из корзины.</para> <para>Размер дискового пространства, выделяемого под корзину.</para> <para>Доля в процентах дискового пространства, выделяемого под корзину.</para> <para>Когда достигнут лимит размера будет выполнено указанное действие: показ предупреждения или автоматическое удаление файлов из корзины.</para> Удалить самые большие файлы Удалить самые старые файлы Удалять файлы старше: Очистить корзину Вспомогательная программа для работы с корзиной KDE
Внимание: удаляйте файлы в корзину командой «kioclient move 'url' trash:/», а не используйте напрямую ktrash Игнорируется Внутренняя ошибка copyOrMove Максимальный размер корзины Недопустимый адрес %1 Максимальный размер: Восстановить файл в его исходном расположении Папка %1 больше не существует. Поэтому восстановление файла в его исходном расположении невозможно. Можно либо повторно создать папку и восстановить файл в ней, либо перетащить файл в любую другую папку. Файл слишком большой для того, чтобы поместиться в корзине. Превышен допустимый размер корзины!
Пожалуйста, очистите корзину. Файл уже находится в корзине. Показать предупреждение При достижении лимита: ktrash не поддерживается 