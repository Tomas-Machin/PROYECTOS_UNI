��    B      ,  Y   <      �  	   �     �     �     �  T   �  $        =  #   U     y     �  <   �  �  �  D     K   �  �     \   �  U   A  k   �  Q     N   U  �   �  r   3     �  \   �          7     R      e     �     �     �     �  	   �     �     �               (     6  e   M     �     �  	   �     �     �               *     :  )   A     k  	   �     �  "   �     �      �  >   �  /   .     ^     s     �     �  $   �  '   �     �  �       �  	   �     �  	   �  p   �  )   Z     �  %   �     �     �  X   �  �  U  >   )  ^   h  �   �  \   �  \   �  r   [  Y   �  \   (  �   �  �   !      �   �   �   *   `!     �!     �!  "   �!     �!  #   "     ,"     4"  
   D"     O"  "   i"     �"     �"     �"     �"  t   �"  $   W#     |#     �#     �#     �#     �#     �#     �#  
   �#  .   $  %   6$     \$     h$  0   o$     �$  #   �$  E   �$  6   *%     a%  $   |%     �%     �%  &   �%  -   �%      &         :           )   ;   
   =   (      3      #                ,      7      *                    -       /   2       1         	   6   "   9   +            !              A   $       @   .   B      <          5   %       ?                 >                                    &       0   4   '                    8          &Command: &Input: &Name: &Output: *** Could not start program '%1'. Make sure that the path is specified correctly *** *** Crashed with return code: %1 *** *** Exited normally *** *** Exited with return code: %1 *** *** Killed Application *** *** Process aborted *** <p>Defines shortcuts you can use to execute this script.</p> <p>Defines the command that should be executed when this script is run. Basic shell features of your platform should be available.</p>
<p>There are a few placeholders you can use in the command:</p>
<dl>
  <dt><code>%u</code></dt>
  <dd>Gets replaced by the URL of the active document.</dd>
  <dt><code>%f</code></dt>
  <dd>Gets replaced by the local filepath to the active document.</dd>
  <dt><code>%n</code></dt>
  <dd>Gets replaced by the name of the active document, including its extension.</dd>
  <dt><code>%b</code></dt>
  <dd>Gets replaced by the name of the active document without its extension.</dd>
  <dt><code>%d</code></dt>
  <dd>Gets replaced by the path to the directory of the active document.</dd>
  <dt><code>%p</code></dt>
  <dd>Gets replaced by the URL to the project of the active document.</dd>
  <dt><code>%s</code></dt>
  <dd>Gets replaced with the shell escaped contents of the selection in the active document.</dd>
  <dt><code>%i</code></dt>
  <dd>Gets replaced with the PID of the currently running KDevelop process.</dd>
</dl>
<p><b>NOTE:</b>  It is your responsibility to prevent running hazardous commands that could lead to data loss.</p>
 <p>Defines the name of the script. Just for displaying purposes.</p> <p>Defines the shortcut(s) you can use to execute this external script.</p> <p>Defines what should be done with the errors (i.e. <code>STDERR</code>) of the script.</p><p>Note: if the action is the same as that chosen for the output, the channels will be merged and handled together.</p> <p>Defines what should be done with the output (i.e. <code>STDOUT</code>) of the script.</p> <p>Defines what the external script should get as input (via <code>STDIN</code>).</p> <p>Defines what type of filtering should be applied to the output. E.g. to indicate errors by red text.</p> <p>Defines whether documents should be saved before the script gets executed.</p> <p>Defines whether the output of the script should be shown in a toolview.</p> <p>Do you really want to remove the external script configuration for <i>%1</i>?</p><p><i>Note:</i> The script itself will not be removed.</p> <p>The name will also be used as the identifier during code completion.</p>
<p><b>Note:</b> No spaces allowed.</p> Add External Script Cannot run script '%1' since it tries to access the editor contents but no document is open. Confirm External Script Removal Create new external script Define filter here EMAIL OF TRANSLATORSYour emails Edit External Script Edit external script '%1' Errors: External Scripts Filter... Google Selection NAME OF TRANSLATORSYour names No Document Open Output Filter: Quick Compile Remove External Script Run external scripts or applications to manipulate the editor contents or do other arbitrary actions. Running external script: %1 Save &Mode: Shortcut: Show Out&put Sort Selection compiler filter contents of current file create new file ignore insert at cursor position of current file merge with normal output no filter nothing please insert a command to execute please insert a name replace contents of current file replace selection of current file or insert at cursor position replace selection of current file or whole file save active document save all open documents save nothing script error filter selection in current file or nothing selection in current file or whole file static analysis error filter Project-Id-Version: kdevexternalscript
Report-Msgid-Bugs-To: http://bugs.kde.org
POT-Creation-Date: 2014-06-26 05:39+0000
PO-Revision-Date: 2013-11-07 10:28+0100
Last-Translator: Burkhard Lück <lueck@hube-lueck.de>
Language-Team: German <kde-i18n-de@kde.org>
Language: de
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Generator: Lokalize 1.5
Plural-Forms: nplurals=2; plural=n != 1;
 &Befehl: &Eingabe: &Name: &Ausgabe: *** Programm „%1“ kann nicht ausgeführt werden. Stellen Sie sicher, dass der Pfad richtig angegeben ist *** *** Abgestürzt mit Rückgabewert: %1 *** *** Normal beendet *** *** Beendet mit Rückgabewert: %1 *** *** Anwendung abgeschossen *** *** Prozess abgebrochen *** <p>Legt Tastenkürzel fest, die Sie zum Ausführen dieses Skripts verwenden können.</p> <p>Legt den Befehl fest, der beim Start dieses Skripts ausgeführt werden soll.Grundlegende Funktionen der Shell Ihrer Plattform sollten verfügbar sein.</p>
<p>Es gibt einige Platzhalter, die Sie im Befehl verwenden können:</p>
<dl>
  <dt><code>%u</code></dt>
  <dd>Wird mit der URL des aktiven Dokuments ersetzt.</dd>
  <dt><code>%f</code></dt>
  <dd>Wird mit dem lokalen Dateipfad des aktiven Dokuments ersetzt.</dd>
  <dt><code>%n</code></dt>
  <dd>Wird mit dem Namen des aktiven Dokuments ersetzt, einschließlich seiner Erweiterung.</dd>
  <dt><code>%b</code></dt>
  <dd>Wird mit dem Namen des aktiven Dokuments ohne Erweiterung ersetzt.</dd>
  <dt><code>%d</code></dt>
  <dd>Wird mit dem Pfad zum Ordner des aktuellen Dokuments ersetzt.</dd>
  <dt><code>%p</code></dt>
  <dd>Wird mit der URL zum Projekt des aktuellen Dokuments ersetzt.</dd>
  <dt><code>%s</code></dt>
  <dd>Wird mit dem für die Shell maskierten Inhalt der Auswahl im aktiven Dokument ersetzt.</dd>
  <dt><code>%i</code></dt>
  <dd>Wird mit der PID des derzeit laufenden KDevelop-Prozesses ersetzt.</dd>
</dl>
<p><b>HINWEIS:</b> Es liegt in Ihrer Verantwortung zu verhindern, dass riskante Befehle ausgeführt werden, die zu Datenverlust führen können.</p>
 <p>Legt den Namen des Skripts fest. Nur zu Anzeigezwecken.</p> <p>Legt Tastenkürzel fest, die Sie zum Ausführen des externen Skripts verwenden können.</p> <p>Legt fest, was mit den Fehlern des Skripts geschehen soll (d. h. <code>STDERR</code>)</p><p>Hinweis: Wenn die Aktion dieselbe wie bei der Ausgabe ist, werden die Kanäle zusammengeführt und zusammen behandelt.</p> <p>Legt fest, was mit der Ausgabe des Skripts geschehen soll (d. h. <code>STDOUT</code>)</p> <p>Legt fest, was das externe Skript als Eingabe bekommen soll (via <code>STDIN</code>).</p> <p>Legt den Filter fest, der auf die Ausgabe angewendet wird, z. B. um Fehler in roter Schriftfarbe anzuzeigen</p> <p>Legt fest, ob Dokumente vor der Ausführung des Skripts gespeichert werden sollen.</p> <p>Legt fest, ob die Ausgabe des Skripts in einer Werkzeugansicht angezeigt werden soll.</p> <p>Möchten Sie wirklich die externe Skript-Konfiguration für <i>%1</i> entfernen?</p><p><i>Hinweis:</i> Das Skript selbst wird dabei nicht gelöscht.</p> <p>Der Name wird auch als Bezeichner während der Quelltextvervollständigung verwendet.</p>
<p><b>Hinweis:</b> Leerzeichen sind nicht erlaubt.</p> Externes Skript hinzufügen Das Skript „%1“ kann nicht ausgeführt werden, weil es versucht, auf den Inhalt des Editors zuzugreifen, aber kein Dokument geöffnet ist. Entfernen des externen Skripts bestätigen Neues externes Skript erstellen Definieren Sie hier den Filter schwarzer@kde.org,gstengel@gmx.net Externes Skript bearbeiten Externes Skript „%1“ bearbeiten Fehler: Externe Skripte Filter ... Auswahl mit Google suchen Frederik Schwarzer,Gerhard Stengel Kein geöffnetes Dokument Ausgabefilter: Schnellkompilieren Externes Skript entfernen Führen Sie externe Skripte oder Programme zum Verändern des Editorinhalts oder für beliebige andere Aktionen aus. Externes Skript wird ausgeführt: %1 Speicher&modus: Kurzbefehl: A&usgabe anzeigen Auswahl sortieren Compiler-Filter Inhalt der aktuellen Datei Neue Datei erstellen Ignorieren An Cursor-Position in aktuelle Datei einfügen Mit normalen Ausgaben zusammenführen Kein Filter Nichts Bitte geben Sie einen auszuführenden Befehl ein Bitte geben Sie einen Namen ein Inhalt der aktuellen Datei ersetzen Auswahl in aktueller Datei ersetzen oder an Cursor-Position einfügen Auswahl in aktueller Datei oder gesamte Datei ersetzen Aktives Dokument speichern Alle geöffneten Dokumente speichern Nichts speichern Skriptfehler-Filter Auswahl in aktueller Datei oder nichts Auswahl in aktueller Datei oder gesamte Datei Statischer Analysenfehler-Filter 