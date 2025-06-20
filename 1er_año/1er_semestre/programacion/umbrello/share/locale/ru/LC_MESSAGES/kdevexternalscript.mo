��    =        S   �      8  	   9     C     K     R  $   [     �  #   �     �     �  <   �  �  ,  D   �
  K     �   S  \   '  U   �  k   �  Q   F  N   �  �   �  r   v     �  \   �     Z     z     �      �     �     �     �        	             :     K     Z     q     �  	   �     �     �     �     �     �  )   �       	   3     =  "   E     h      }  >   �  /   �          "     :     G  $   [  '   �     �  8  �     �  
             -  2   :  1   m  <   �  1   �  %     v   4  �  �  }   ^  �   �  �  ^  �      �   �   �   �!  �   7"  �   �"  �   Q#  �    $  0   �$  �   %  M   �%  C   +&  &   o&  &   �&  0   �&  ;   �&     *'     8'     X'  ?   h'  $   �'     �'  .   �'  :   (  !   R(  "   t(      �(  #   �(  0   �(  "   )     0)  N   I)  5   �)     �)     �)  4   �)      *  A   @*  y   �*  Y   �*  *   V+  $   �+  $   �+  *   �+  C   �+  H   :,  A   �,           (       .               1   <   #      "                                      &          	   5              7   :   $       '   8               3   9      
                    =      !      /                    6   )   0         *              2       +      -   4           %          ,   ;    &Command: &Input: &Name: &Output: *** Crashed with return code: %1 *** *** Exited normally *** *** Exited with return code: %1 *** *** Killed Application *** *** Process aborted *** <p>Defines shortcuts you can use to execute this script.</p> <p>Defines the command that should be executed when this script is run. Basic shell features of your platform should be available.</p>
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
<p><b>Note:</b> No spaces allowed.</p> Add External Script Cannot run script '%1' since it tries to access the editor contents but no document is open. Confirm External Script Removal Create new external script Define filter here EMAIL OF TRANSLATORSYour emails Edit External Script Edit external script '%1' Errors: External Scripts Filter... NAME OF TRANSLATORSYour names No Document Open Output Filter: Remove External Script Running external script: %1 Save &Mode: Shortcut: Show Out&put compiler filter contents of current file create new file ignore insert at cursor position of current file merge with normal output no filter nothing please insert a command to execute please insert a name replace contents of current file replace selection of current file or insert at cursor position replace selection of current file or whole file save active document save all open documents save nothing script error filter selection in current file or nothing selection in current file or whole file static analysis error filter Project-Id-Version: 
Report-Msgid-Bugs-To: http://bugs.kde.org
POT-Creation-Date: 2014-06-26 05:39+0000
PO-Revision-Date: 2013-08-30 09:53+0400
Last-Translator: Alexander Lakhin <exclusion@gmail.com>
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
 &Команда: &Ввод: &Название: В&ывод: *** Сбой с кодом возврата %1 *** *** Нормальное завершение *** *** Завершено с кодом возврата %1 *** *** Приложение уничтожено *** *** Процесс прерван *** <p>Определите комбинации клавиш для выполнения этого сценария.</p> <p>Назначьте команду, которая будет выполняться при запуске этого сценария. При этом доступны основные возможности командной оболочки на вашей платформе.</p>
<p>В команде можно использовать следующие выражения:</p>
<dl>
  <dt><code>%u</code></dt>
  <dd>Заменяется адресом активного файла.</dd>
  <dt><code>%f</code></dt>
  <dd>Заменяется локальным путём активного файла.</dd>
  <dt><code>%n</code></dt>
  <dd>Заменяется именем активного файла с расширением.</dd>
  <dt><code>%b</code></dt>
  <dd>Заменяется именем активного файла без расширения.</dd>
  <dt><code>%d</code></dt>
  <dd>Заменяется путём к каталогу активного файла.</dd>
  <dt><code>%p</code></dt>
  <dd>Заменяется адресом проекта активного файла.</dd>
  <dt><code>%s</code></dt>
  <dd>Заменяется содержимым выделенного фрагмента активного файла, экранированном для командной оболочки.</dd>
  <dt><code>%i</code></dt>
  <dd>Заменяется идентификатором процесса (PID) текущего экземпляра KDevelop.</dd>
</dl>
<p><b>ПРИМЕЧАНИЕ:</b> будьте аккуратны в составлении команд, так как ошибка в них может привести к потере данных.</p>
 <p>Определите название сценария (только для отображения на экране).</p> <p>Определите комбинации клавиш для запуска этого внешнего сценария.</p> <p>Определите, как будут обрабатываться сообщения, поступающие из потока ошибок (<code>STDERR</code>) внешнего сценария.</p><p>Примечание: если выбрать такое же действие, что и для потока вывода <code>STDOUT</code>, то потоки будут объединены и обработаны вместе.</p> <p>Определите, как будут обрабатываться сообщения, поступающие из потока вывода (<code>STDOUT</code>) внешнего сценария.</p> <p>Определите, что внешний сценарий получит на вход (через поток ввода <code>STDIN</code>).</p> <p>Определите тип фильтра, применяемого к выводу. Например, фильтр может выделять ошибки красным.</p> <p>Определите, нужно ли автоматически сохранять файлы перед запуском сценария.</p> <p>Определите, будет ли вывод сценария показываться в служебной панели.</p> <p>Удалить настройку внешнего сценария <i>%1</i>?</p><p><i>Примечание:</i> сам сценарий не будет удалён.</p> <p>Это имя также будет служить идентификатором при завершении кода.</p>
<p><b>Примечание:</b> пробелы здесь не допускаются.</p> Добавить внешний сценарий Не удалось выполнить сценарий «%1», так как ему требуется доступ к содержимому редактора, но ни один файл не открыт. Подтверждение удаления внешнего сценария Добавление нового внешнего сценария Введите здесь фильтр aspotashev@gmail.com,morozov@gmail.com Изменить внешний сценарий Изменение внешнего сценария «%1» Ошибки: Внешние сценарии Фильтр... Александр Поташев,Алексей Морозов Нет открытых файлов Фильтр вывода: Удалить внешний сценарий Выполняется внешний сценарий: %1 Режим &сохранения: Комбинация клавиш: Показывать в&ывод фильтр компилятора содержимое текущего файла создать новый файл игнорировать вставить в позицию курсора в текущем файле объединить с обычным выводом без фильтра нет Введите выполняемую команду Введите название заменить содержимое текущего файла заменить выделение в текущем файле или вставить в позицию курсора заменить выделение в текущем файле или весь файл сохранять текущий файл сохранять все файлы ничего не сохранять фильтр ошибок сценария выделение в текущем файле или ничего выделение в текущем файле или весь файл фильтр ошибок статического анализа 