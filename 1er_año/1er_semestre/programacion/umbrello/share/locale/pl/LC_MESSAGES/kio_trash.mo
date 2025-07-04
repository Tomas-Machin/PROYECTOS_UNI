��            )   �      �  
   �  O   �  �   �  �   �  �   c  �   ^  y   �  g   i  �   �     �     �     �     �  �        �  1   �     �     �     	  /   	  �   ?	  $   '
  C   L
  &   �
     �
     �
     �
     �
  �  �
     �  S   �  �   =  �   0  �   �  �   �  X   O  L   �  �   �     �     �     �       �   5  
   �  A   �          +     =  6   P  	  �  8   �  <   �  $        ,     :     Y     `                                                 	                 
                                                                         day  days <para>KDE's wastebin is configured to use the <b>Finder</b>'s Trash.<br></para> @info:whatsthis<para>Check this box to allow <b>automatic deletion</b> of files that are older than the value specified. Leave this disabled to <b>not</b> automatically delete any items after a certain timespan</para> @info:whatsthis<para>Check this box to limit the trash to the maximum amount of disk space that you specify below. Otherwise, it will be unlimited.</para> @info:whatsthis<para>Emptying KDE's wastebin will remove only KDE's trash items, while<br>emptying the Trash through the Finder will delete everything.</para><para>KDE's trash items will show up in a folder called KDE.trash, in the Trash can.</para> @info:whatsthis<para>Set the number of days that files can remain in the trash. Any files older than this will be automatically deleted.</para> @info:whatsthis<para>This is the calculated amount of disk space that will be allowed for the trash, the maximum.</para> @info:whatsthis<para>This is the maximum percent of disk space that will be used for the trash.</para> @info:whatsthis<para>When the size limit is reached, it will prefer to delete the type of files that you specify, first. If this is set to warn you, it will do so instead of automatically deleting files.</para> Delete Biggest Files From Trash Delete Oldest Files From Trash Delete files older than: Empty the contents of the trash Helper program to handle the KDE trash can
Note: to move files to the trash, do not use ktrash, but "kioclient move 'url' trash:/" Ignored Internal error in copyOrMove, should never happen Limit to maximum size Malformed URL %1 Maximum size: Restore a trashed file to its original location The directory %1 does not exist anymore, so it is not possible to restore this item to its original location. You can either recreate that directory and use the restore operation again, or drag the item anywhere else to restore it. The file is too large to be trashed. The trash has reached its maximum size!
Cleanup the trash manually. This file is already in the trash bin. Warn Me When limit reached: ktrash not supported Project-Id-Version: kio_trash
Report-Msgid-Bugs-To: http://bugs.kde.org
POT-Creation-Date: 2016-11-19 11:45+0100
PO-Revision-Date: 2015-01-17 08:34+0100
Last-Translator: Łukasz Wojniłowicz <lukasz.wojnilowicz@gmail.com>
Language-Team: Polish <kde-i18n-doc@kde.org>
Language: pl
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Generator: Lokalize 1.5
Plural-Forms: nplurals=3; plural=(n==1 ? 0 : n%10>=2 && n%10<=4 && (n%100<10 || n%100>=20) ? 1 : 2);
 dzień dni dni <para>Kosz KDE ustawiono tak, aby wykorzystywał program  <b>Finder</b>.<br></para> <para>Zaznaczenie tego pola oznacza zezwolenie na <b>automatyczne usuwanie</b> plików starszych niż podany czas. Ta opcja powinna pozostać wyłączona jeśli żadne obiekty mają <b>nie</b> być usuwane po upłynięciu pewnego czasu</para> <para>Zaznaczenie tego pola pozwala ustawić maksymalną wielkość obszaru dysku zajętego przez pliki z kosza. Jeśli pole to nie jest zaznaczone, nie ma limitu.</para> <para>Opróżnienie kosza KDE usunie tylko elementy w koszu KDE, podczas gdy <br>opróżnianie kosza przez program Finder usunie wszystko.</para><para>Elementy kosza KDE pokażą się w koszu, w katalogu o nazwie KDE.trash.</para> <para>Ustawienie liczby dni, przez który to czas pliki pozostają w koszu. Wszystkie starsze pliki zostaną automatycznie usunięte.</para> <para>To jest ilość miejsca na dysku do wykorzystania przez kosz (maksymalnie).</para> <para>To jest maksymalna zajętość dysku (w procentach) przez kosz.</para> <para>Kiedy dostanie osiągnięty limit, pliki tego typu mają być usuwane jako pierwsze. Jeśli wybrano też opcję ostrzeżenia, nastąpi ostrzeżenie zamiast automatycznego usuwania plików.</para> Usuń największe pliki z kosza Usuń najstarsze pliki z kosza Usuń pliki starsze niż: Opróżnij zawartość kosza Program pomocniczy do obsługi kosza KDE.
Uwaga: aby przenieść pliki do kosza, nie używaj ktrash, ale polecenia "kioclient move 'url' trash:/" Ignorowany Błąd wewnętrzny w copyOrMove, nigdy nie powinien się zdarzyć Ogranicz rozmiar kosza Błędny URL %1 Rozmiar graniczny: Przywróć plik z kosza do jego pierwotnej lokalizacji Katalog %1 już nie istnieje, więc nie jest możliwe przywrócenie tego elementu do jego pierwotnej lokalizacji. Możesz jednak utworzyć ten katalog i użyć opcji przywrócenia ponownie, lub przeciągnąć ten element gdziekolwiek indziej, aby go przywrócić. Ten plik jest zbyt duży, żeby go przenieść do kosza. Kosz osiągnął maksymalny rozmiar!
Proszę go opróżnić. Ten plik znajduje się już w koszu. Ostrzeż mnie Po przekroczeniu ograniczenia: ktrash nie wspierane 