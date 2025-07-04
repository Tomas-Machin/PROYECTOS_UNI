��            )   �      �  
   �  O   �  �   �  �   �  �   c  �   ^  y   �  g   i  �   �     �     �     �     �  �        �  1   �     �     �     	  /   	  �   ?	  $   '
  C   L
  &   �
     �
     �
     �
     �
  �  �
     �  Y   �  �   �  �   �  �   h     f  B   �  O   )  �   y     6     S  (   o     �  �   �     G  7   T     �     �     �  .   �  �   �  /   �  C   �          >     J     a     h                                                 	                 
                                                                         day  days <para>KDE's wastebin is configured to use the <b>Finder</b>'s Trash.<br></para> @info:whatsthis<para>Check this box to allow <b>automatic deletion</b> of files that are older than the value specified. Leave this disabled to <b>not</b> automatically delete any items after a certain timespan</para> @info:whatsthis<para>Check this box to limit the trash to the maximum amount of disk space that you specify below. Otherwise, it will be unlimited.</para> @info:whatsthis<para>Emptying KDE's wastebin will remove only KDE's trash items, while<br>emptying the Trash through the Finder will delete everything.</para><para>KDE's trash items will show up in a folder called KDE.trash, in the Trash can.</para> @info:whatsthis<para>Set the number of days that files can remain in the trash. Any files older than this will be automatically deleted.</para> @info:whatsthis<para>This is the calculated amount of disk space that will be allowed for the trash, the maximum.</para> @info:whatsthis<para>This is the maximum percent of disk space that will be used for the trash.</para> @info:whatsthis<para>When the size limit is reached, it will prefer to delete the type of files that you specify, first. If this is set to warn you, it will do so instead of automatically deleting files.</para> Delete Biggest Files From Trash Delete Oldest Files From Trash Delete files older than: Empty the contents of the trash Helper program to handle the KDE trash can
Note: to move files to the trash, do not use ktrash, but "kioclient move 'url' trash:/" Ignored Internal error in copyOrMove, should never happen Limit to maximum size Malformed URL %1 Maximum size: Restore a trashed file to its original location The directory %1 does not exist anymore, so it is not possible to restore this item to its original location. You can either recreate that directory and use the restore operation again, or drag the item anywhere else to restore it. The file is too large to be trashed. The trash has reached its maximum size!
Cleanup the trash manually. This file is already in the trash bin. Warn Me When limit reached: ktrash not supported Project-Id-Version: kio_trash
Report-Msgid-Bugs-To: http://bugs.kde.org
POT-Creation-Date: 2016-11-19 11:45+0100
PO-Revision-Date: 2015-08-07 18:32+0300
Last-Translator: Marek Laane <qiilaq69@gmail.com>
Language-Team: Estonian <kde-et@linux.ee>
Language: et
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Generator: Lokalize 1.5
Plural-Forms: nplurals=2; plural=n != 1;
  päev  päeva <para>KDE prügikast on seadistatud kasutama <b>Finder</b>i prügikasti Trash.<br></para> <para>Märkimisel on lubatud selliste failide <b>automaatne kustutamine</b>, mis on määratud väärtusest vanemad. Jäta märkimata, kui sa <b>ei soovi</b>, et faile kustutataks automaatselt pärast teatud ajavahemiku möödumist.</para> <para>Märkimisel piiratakse prügikasti mahtu allpool määratud kettaruumiga. Vastasel juhul on prügikasti suurus piiramatu.</para> <para>KDE prügikasti tühjendamine eemaldab ainult KDE prügikasti elemendid,<br>samal ajal kui Trashi tühjendamine Finderi kaudu kustutab kõik.</para><para>KDE prügikasti elemente näidatakse Trashi prügikastis kataloogina nimega KDE trash.</para> <para>Siin saab määrata, mitmeks päevaks jäävad failid prügikasti. Kõik vanemad failid kustutatakse automaatselt.</para> <para>Maksimaalne kettaruum, mis eraldatakse prügikastile.</para> <para>Maksimaalne kettaruum protsentides, mis eraldatakse prügikastile.</para> <para>Mahupiirangu ületamisel kustutatakse kõigepealt määratud tüüpi failid. Kui valida hoiatamine, siis kõigepealt hoiatataksegi, mitte ei kustutata kohe automaatselt faile.</para> Kustutatakse suurimad failid Kustutatakse vanimad failid Kustutatakse failid, mis on vanemad kui: Tühjenda prügikasti sisu Abiprogramm KDE prügikasti käitlemiseks
Märkus: failide viskamiseks prügikasti ära kasuta ktrash'i, vaid käsku "kioclient move 'url' trash:/" Ignoreeritav copyOrMove sisemine viga, mida ei tohiks kunagi juhtuda Maksimumsuuruse piirang Vigane URL %1 Maksimumsuurus: Taasta fail prügikastist esialgsesse asukohta Kataloogi %1 ei ole enam olemas, mistõttu taastamine algsesse asukohta ei ole võimalik. Sa võid kataloogi uuesti luua ja taastamise taas ette võtta või siis taastada kuhugi mujale. See fail on prügikasti viskamiseks liiga suur. Prügikast on maksimaalselt täidetud!
Puhasta prügikast käsitsi. See fail on juba prügikastis. Hoiatatakse Piirangu saavutamisel: ktrash pole toetatud 