��    B      ,  Y   <      �  	   �     �     �     �  T   �  $        =  #   U     y     �  <   �  �  �  D     K   �  �     \   �  U   A  k   �  Q     N   U  �   �  r   3     �  \   �          7     R      e     �     �     �     �  	   �     �     �               (     6  e   M     �     �  	   �     �     �               *     :  )   A     k  	   �     �  "   �     �      �  >   �  /   .     ^     s     �     �  $   �  '   �     �           
   +     6     C  �   P  T   �  /   :  C   j  +   �  <   �  �     p  �  �   /   �   �   �  �!  �   #  �   �#     =$  |   >%  �   �%  �   H&  �   '  8   �'    +(  S   0)  ;   �)  "   �)     �)  <   �)  ;   0*     l*     |*     �*  '   �*     �*  7   �*      (+  !   I+  8   k+  �   �+  6   t,  !   �,     �,     �,  -    -  #   .-  (   R-     {-     �-  R   �-  :   �-     8.     X.  T   e.  .   �.  9   �.  �   #/  ]   �/  2   0  ;   B0  $   ~0  *   �0  G   �0  L   1  ?   c1         :           )   ;   
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
PO-Revision-Date: 2013-10-05 08:17+0300
Last-Translator: Yuri Chornoivan <yurchor@ukr.net>
Language-Team: Ukrainian <kde-i18n-uk@kde.org>
Language: uk
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Generator: Lokalize 1.5
Plural-Forms: nplurals=4; plural=n==1 ? 3 : n%10==1 && n%100!=11 ? 0 : n%10>=2 && n%10<=4 && (n%100<10 || n%100>=20) ? 1 : 2;
 &Команда: В&хід: &Назва: В&ихід: *** Не вдалося запустити програму «%1». Переконайтеся, що шлях вказано правильно. *** *** Аварійне завершення з повернутим кодом: %1 *** *** Нормальне завершення *** *** Завершення з повернутим кодом: %1 *** *** Перервана програма *** *** Аварійне завершення процесу *** <p>Визначає клавіатурні скорочення, якими можна користуватися для запуску цього скрипту.</p> <p>Визначає команду, яку має бути виконано після запуску скрипту. Можна використовувати базові можливості командної оболонки використаної платформи.</p>
<p>Передбачено декілька замінників, які можна використати у команді:</p>
<dl>
  <dt><code>%u</code></dt>
  <dd>Буде замінено на адресу активного документа.</dd>
  <dt><code>%f</code></dt>
  <dd>Буде замінено на локальний шлях до файла активного документа.</dd>
  <dt><code>%n</code></dt>
  <dd>Буде замінено на назву активного документа разом з суфіксом назви.</dd>
  <dt><code>%b</code></dt>
  <dd>Буде замінено на назву активного документа без суфікса назви.</dd>
  <dt><code>%d</code></dt>
  <dd>Буде замінено на шлях до каталогу активного документа.</dd>
  <dt><code>%p</code></dt>
  <dd>Буде замінено на адресу проекту активного документа.</dd>
  <dt><code>%s</code></dt>
  <dd>Буде замінено на вміст позначеного фрагмента активного документа з використанням екранування командної оболонки.</dd>
  <dt><code>%i</code></dt>
  <dd>Буде замінено на ідентифікатор (PID) поточного запущеного процесу KDevelop.</dd>
</dl>
<p><b>ЗАУВАЖЕННЯ:</b> відповідальність за можливу втрату даних у результаті виконання команд покладається на вас.</p>
 <p>Визначає назву скрипту. Назва використовується лише для розпізнавання скрипту користувачем.</p> <p>Визначає клавіатурні скорочення, якими можна користуватися для запуску зовнішнього скрипту.</p> <p>Визначає спосіб обробки повідомлень про помилки (тобто потоку до <code>STDERR</code>) у скрипті.</p><p>Зауваження: якщо дія буде тотожною з дією для звичайного виводу даних, канали даних буде об’єднано і оброблено разом.</p> <p>Визначає спосіб обробки вихідних даних (тобто <code>STDOUT</code>), виведених скриптом.</p> <p>Визначає, звідки має отримувати дані зовнішній скрипт (через <code>STDIN</code>).</p> <p>Визначає тип фільтрування, який має бути застосовано до виведених даних. Наприклад, можна позначити помилки у тексті червоним кольором.</p> <p>Визначає, чи слід зберігати документи перед виконанням скрипту.</p> <p>Визначає, чи слід показувати виведені скриптом дані на панелі перегляду.</p> <p>Бажаєте вилучити налаштування зовнішнього скрипту <i>%1</i>?</p><p><i>Зауваження:</i> сам скрипт не буде вилучено.</p> <p>Назву буде використано як ідентифікатор під час доповнення коду.</p>
<p><b>Зауваження:</b> не можна використовувати пробіли.</p> Додавання зовнішнього скрипту Не вдалося виконати скрипт «%1», оскільки скрипт намагається отримати доступ до вмісту вікна редактора, у якому не відкрито жодного документа. Підтвердження вилучення зовнішнього скрипту Створити новий зовнішній скрипт Тут вкажіть фільтр yurchor@ukr.net Редагування зовнішнього скрипту Редагувати зовнішній скрипт «%1» Помилки: Зовнішні скрипти Фільтр… Пошук у Google фрагмента Юрій Чорноіван Не відкрито жодного документа Фільтр виведення: Швидка компіляція Вилучення зовнішнього скрипту Запускає зовнішні скрипти або програми для обробки текстових даних редактора або виконання інших потрібних дій. Запуск зовнішнього скрипту: %1 &Режим збереження: Скорочення: Показати в&ивід Впорядкування фрагмента фільтр компілятора вміст поточного файла створити файл ігнорувати вставити у позицію курсора у поточному файлі об’єднати зі звичайним виводом без фільтрування нічого будь ласка, вкажіть команду, яку слід виконати будь ласка, вкажіть назву замінити вміст поточного файла замінити позначений фрагмент поточного файла або вставити у позицію курсора замінити позначене у поточному файлі або весь файл зберегти активний документ зберегти всі відкриті документи нічого не зберігати фільтр помилок скрипту позначене у поточному файлі або нічого позначене у поточному файлі або весь файл фільтр помилок статичного аналізу 