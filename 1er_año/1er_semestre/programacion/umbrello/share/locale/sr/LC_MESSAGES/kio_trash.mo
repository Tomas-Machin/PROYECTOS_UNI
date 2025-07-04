��            )   �      �  
   �  O   �  �   �  �   �  �   c  �   ^  y   �  g   i  �   �     �     �     �     �  �        �  1   �     �     �     	  /   	  �   ?	  $   '
  C   L
  &   �
     �
     �
     �
     �
  �  �
  %   z  �   �  f  :  �   �  z  �  �     �   �  �   U  9  �  +     1   D  .   v  *   �    �     �  m   �  0   _     �      �  U   �  �  &  /   �  i   �  ,   C     p  -   �     �     �                                                 	                 
                                                                         day  days <para>KDE's wastebin is configured to use the <b>Finder</b>'s Trash.<br></para> @info:whatsthis<para>Check this box to allow <b>automatic deletion</b> of files that are older than the value specified. Leave this disabled to <b>not</b> automatically delete any items after a certain timespan</para> @info:whatsthis<para>Check this box to limit the trash to the maximum amount of disk space that you specify below. Otherwise, it will be unlimited.</para> @info:whatsthis<para>Emptying KDE's wastebin will remove only KDE's trash items, while<br>emptying the Trash through the Finder will delete everything.</para><para>KDE's trash items will show up in a folder called KDE.trash, in the Trash can.</para> @info:whatsthis<para>Set the number of days that files can remain in the trash. Any files older than this will be automatically deleted.</para> @info:whatsthis<para>This is the calculated amount of disk space that will be allowed for the trash, the maximum.</para> @info:whatsthis<para>This is the maximum percent of disk space that will be used for the trash.</para> @info:whatsthis<para>When the size limit is reached, it will prefer to delete the type of files that you specify, first. If this is set to warn you, it will do so instead of automatically deleting files.</para> Delete Biggest Files From Trash Delete Oldest Files From Trash Delete files older than: Empty the contents of the trash Helper program to handle the KDE trash can
Note: to move files to the trash, do not use ktrash, but "kioclient move 'url' trash:/" Ignored Internal error in copyOrMove, should never happen Limit to maximum size Malformed URL %1 Maximum size: Restore a trashed file to its original location The directory %1 does not exist anymore, so it is not possible to restore this item to its original location. You can either recreate that directory and use the restore operation again, or drag the item anywhere else to restore it. The file is too large to be trashed. The trash has reached its maximum size!
Cleanup the trash manually. This file is already in the trash bin. Warn Me When limit reached: ktrash not supported Project-Id-Version: kio5
Report-Msgid-Bugs-To: http://bugs.kde.org
POT-Creation-Date: 2016-11-19 11:45+0100
PO-Revision-Date: 2015-01-25 02:11+0100
Last-Translator: Chusslove Illich <caslav.ilic@gmx.net>
Language-Team: Serbian <kde-i18n-sr@kde.org>
Language: sr
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Plural-Forms: nplurals=4; plural=n==1 ? 3 : n%10==1 && n%100!=11 ? 0 : n%10>=2 && n%10<=4 && (n%100<10 || n%100>=20) ? 1 : 2;
X-Accelerator-Marker: &
X-Text-Markup: kde4
X-Associated-UI-Catalogs: krunner kio.desktop systemsettings.desktop kcmkonqhtml kcompletion5_qt kwidgetsaddons5_qt
X-Environment: kde
  дана  дана  дана  дан <html><para>КДЕ‑ово руковање смећем подешено је да користи <b>Налазачево</b> смеће.</para></html> <para>Попуните ову кућицу да дозволите <emphasis>аутоматско брисање</emphasis> фајлова старијих од задате вредности. Оставите празно ако <emphasis>не</emphasis> желите аутоматско брисање после одређеног времена.</para> <para>Попуните ову кућицу да ограничите смеће на највише онолико простора на диску колико задате испод. У супротном, нема ограничења.</para> <para>Пражњењем КДЕ‑овог смећа биће уклоњене само КДЕ ставке, док ће пражњење смећа преко Налазача обрисати све.</para><para>КДЕ‑ове ставке смећа видеће се у фасцикли по имену <filename>KDE.trash</filename>, у корпи за смеће.</para> <para>Број дана који фајлови могу да проведу у смећу. Фајлови који га премаше аутоматски се бришу.</para> <para>Прорачунати највећи простор на диску који се може користити за смеће.</para> <para>Највећи проценат простора на диску који се може користити за смеће.</para> <para>Када се достигне ограничење простора, прво ће се брисати фајлови типа који задате. Ако је постављено упозоравање, бићете упозорени пре аутоматског брисања фајлова.</para> обриши из смећа највеће обриши из смећа најстарије Бриши фајлове старије од: Испразни садржај смећа Помоћна наредба за руковање смећем у КДЕ‑у.
Напомена: да бисте премештали фајлове у смеће, не користите <command>ktrash</command>, већ <icode>kioclient move 'url' trash:/</icode> Игнорисано Унутрашња грешка у <icode>copyOrMove</icode>, није требало да се догоди. Ограничи највећу величину Неисправан УРЛ %1 Највећа величина: Врати фајл из смећа на његову изворну локацију Изгледа да фасцикла %1 више не постоји, тако ову ставку није могуће вратити на изворну локацију. Можете или поново направити ту фасциклу па поновити наредбу, или превући ставку било где другде да бисте је вратили. Фајл је превелик за смеће. Смеће је досегло максималну величину!
Почистите га ручно. Овај фајл је већ у смећу. упозори ме Када досегне ограничење: ktrash није подржано 