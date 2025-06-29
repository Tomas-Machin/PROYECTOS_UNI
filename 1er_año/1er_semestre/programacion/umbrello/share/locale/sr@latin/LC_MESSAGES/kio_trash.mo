��            )   �      �  
   �  O   �  �   �  �   �  �   c  �   ^  y   �  g   i  �   �     �     �     �     �  �        �  1   �     �     �     	  /   	  �   ?	  $   '
  C   L
  &   �
     �
     �
     �
     �
  �  �
     �  h   �  �      �   �  �   s  l   o  V   �  S   3  �   �     ?     Z     w     �  �   �  
   f  K   q     �     �     �  0      �   1       =   '     e  
   �     �     �     �                                                 	                 
                                                                         day  days <para>KDE's wastebin is configured to use the <b>Finder</b>'s Trash.<br></para> @info:whatsthis<para>Check this box to allow <b>automatic deletion</b> of files that are older than the value specified. Leave this disabled to <b>not</b> automatically delete any items after a certain timespan</para> @info:whatsthis<para>Check this box to limit the trash to the maximum amount of disk space that you specify below. Otherwise, it will be unlimited.</para> @info:whatsthis<para>Emptying KDE's wastebin will remove only KDE's trash items, while<br>emptying the Trash through the Finder will delete everything.</para><para>KDE's trash items will show up in a folder called KDE.trash, in the Trash can.</para> @info:whatsthis<para>Set the number of days that files can remain in the trash. Any files older than this will be automatically deleted.</para> @info:whatsthis<para>This is the calculated amount of disk space that will be allowed for the trash, the maximum.</para> @info:whatsthis<para>This is the maximum percent of disk space that will be used for the trash.</para> @info:whatsthis<para>When the size limit is reached, it will prefer to delete the type of files that you specify, first. If this is set to warn you, it will do so instead of automatically deleting files.</para> Delete Biggest Files From Trash Delete Oldest Files From Trash Delete files older than: Empty the contents of the trash Helper program to handle the KDE trash can
Note: to move files to the trash, do not use ktrash, but "kioclient move 'url' trash:/" Ignored Internal error in copyOrMove, should never happen Limit to maximum size Malformed URL %1 Maximum size: Restore a trashed file to its original location The directory %1 does not exist anymore, so it is not possible to restore this item to its original location. You can either recreate that directory and use the restore operation again, or drag the item anywhere else to restore it. The file is too large to be trashed. The trash has reached its maximum size!
Cleanup the trash manually. This file is already in the trash bin. Warn Me When limit reached: ktrash not supported Project-Id-Version: kio5
Report-Msgid-Bugs-To: http://bugs.kde.org
POT-Creation-Date: 2016-11-19 11:45+0100
PO-Revision-Date: 2015-01-25 02:11+0100
Last-Translator: Chusslove Illich <caslav.ilic@gmx.net>
Language-Team: Serbian <kde-i18n-sr@kde.org>
Language: sr@latin
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Plural-Forms: nplurals=4; plural=n==1 ? 3 : n%10==1 && n%100!=11 ? 0 : n%10>=2 && n%10<=4 && (n%100<10 || n%100>=20) ? 1 : 2;
X-Accelerator-Marker: &
X-Text-Markup: kde4
X-Associated-UI-Catalogs: krunner kio.desktop systemsettings.desktop kcmkonqhtml kcompletion5_qt kwidgetsaddons5_qt
X-Environment: kde
  dana  dana  dana  dan <html><para>KDE‑ovo rukovanje smećem podešeno je da koristi <b>Nalazačevo</b> smeće.</para></html> <para>Popunite ovu kućicu da dozvolite <emphasis>automatsko brisanje</emphasis> fajlova starijih od zadate vrednosti. Ostavite prazno ako <emphasis>ne</emphasis> želite automatsko brisanje posle određenog vremena.</para> <para>Popunite ovu kućicu da ograničite smeće na najviše onoliko prostora na disku koliko zadate ispod. U suprotnom, nema ograničenja.</para> <para>Pražnjenjem KDE‑ovog smeća biće uklonjene samo KDE stavke, dok će pražnjenje smeća preko Nalazača obrisati sve.</para><para>KDE‑ove stavke smeća videće se u fascikli po imenu <filename>KDE.trash</filename>, u korpi za smeće.</para> <para>Broj dana koji fajlovi mogu da provedu u smeću. Fajlovi koji ga premaše automatski se brišu.</para> <para>Proračunati najveći prostor na disku koji se može koristiti za smeće.</para> <para>Najveći procenat prostora na disku koji se može koristiti za smeće.</para> <para>Kada se dostigne ograničenje prostora, prvo će se brisati fajlovi tipa koji zadate. Ako je postavljeno upozoravanje, bićete upozoreni pre automatskog brisanja fajlova.</para> obriši iz smeća najveće obriši iz smeća najstarije Briši fajlove starije od: Isprazni sadržaj smeća Pomoćna naredba za rukovanje smećem u KDE‑u.
Napomena: da biste premeštali fajlove u smeće, ne koristite <command>ktrash</command>, već <icode>kioclient move 'url' trash:/</icode> Ignorisano Unutrašnja greška u <icode>copyOrMove</icode>, nije trebalo da se dogodi. Ograniči najveću veličinu Neispravan URL %1 Najveća veličina: Vrati fajl iz smeća na njegovu izvornu lokaciju Izgleda da fascikla %1 više ne postoji, tako ovu stavku nije moguće vratiti na izvornu lokaciju. Možete ili ponovo napraviti tu fasciklu pa ponoviti naredbu, ili prevući stavku bilo gde drugde da biste je vratili. Fajl je prevelik za smeće. Smeće je doseglo maksimalnu veličinu!
Počistite ga ručno. Ovaj fajl je već u smeću. upozori me Kada dosegne ograničenje: ktrash nije podržano 