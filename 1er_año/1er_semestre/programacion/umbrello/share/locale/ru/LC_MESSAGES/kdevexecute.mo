��    1      �  C   ,      8  $   9     ^  #   v     �     �    �  _  �     F     T  �   n  �   �     �  .   �  
   �     �     �  #   �     	  
   	      %	  %   F	  )   l	  @   �	     �	  
   �	     �	     �	  #   
  !   /
  /   Q
     �
     �
  �   �
     <     Z     n  0   ~  -   �      �  Q   �     P     ]  �   f  \   F  ]   �  �        �     �  C  �  2     1   ?  <   q  1   �  %   �  �    2  �     &  &   5  �   \  "  [     ~  V   �     �     �  8     A   G     �     �  <   �  Q   �  `   N  l   �          0     P  2   d  <   �  `   �  ^   5  [   �  #   �  )    9   >  0   x     �  K   �  A     H   U  b   �        	      j  %   �   �!  �   -"  �   �"  9   �#     $     .                   +             0           *                        )      
       $   ,   &                                              !       '         #             /      %                 	   -   1   (                 "        *** Crashed with return code: %1 *** *** Exited normally *** *** Exited with return code: %1 *** *** Killed Application *** *** Process aborted *** <p>By default applications will be run in the background and only their output will be displayed in a toolview. This makes it impossible to interact with applications requiring user input from a terminal emulator. To run such applications, you should use an external terminal.</p> <p>Defines the command to execute the external terminal emulator. Use the following placeholders:</p>
<dl>
<dt><code>%exe</code></dt>
<dd>The path to the executable selected above.</dd>
<dt><code>%workdir</code></dt>
<dd>The path to the working directory selected above.</dd>
</dl>
<p>The arguments defined above will get appended to this command.</p> @actionBuild @actionBuild and Install A shell meta character was included in the arguments for the launch configuration '%1', this is not supported currently. Aborting start. A shell meta character was included in the executable for the launch configuration '%1', this is not supported currently. Aborting start. Action: Adds the listed target to the dependency list. Arguments: Behavior Configure Native Application Couldn't resolve the dependency: %1 Dependencies Do Nothing EMAIL OF TRANSLATORSYour emails Enter a dependency to add to the list Enter arguments to give to the executable Enter the executable name or absolute path to an executable file Environment: Executable Executable: Execute support List of indirect dependent targets. Move a dependency up in the list. Moves the selected dependency down in the list. NAME OF TRANSLATORSYour names Native Application No environment group specified, looks like a broken configuration, please check run configuration '%1'. Using default environment group. No valid executable specified Project Executables Project Target: Removes the selected dependencies from the list. Select a working directory for the executable Select an environment to be used Specifies the action to take for the dependencies before starting the executable. Starting: %1 Targets: The selected action will be run before the executable is started.  This allows there to be parts of a project, upon which the executable does not directly depend, to be built and/or installed before running the application. There is a quoting error in the arguments for the launch configuration '%1'. Aborting start. There is a quoting error in the executable for the launch configuration '%1'. Aborting start. This list should contain targets that the application does not directly depend on, but for which an action needs to be taken before running the application. Use External Terminal: Working Directory: Project-Id-Version: kdevexecute
Report-Msgid-Bugs-To: http://bugs.kde.org
POT-Creation-Date: 2014-08-01 06:16+0000
PO-Revision-Date: 2013-08-23 11:21+0400
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
 *** Сбой с кодом возврата %1 *** *** Нормальное завершение *** *** Завершено с кодом возврата %1 *** *** Приложение уничтожено *** *** Процесс прерван *** <p>По умолчанию приложения будут запускаться в фоновом режиме и только их вывод будет виден в окне. Поэтому вы не сможете взаимодействовать в окне с приложениями, требующими ввод данных в терминале. Для запуска таких приложений следует использовать внешний терминал.</p> <p>Определяет команду для запуска внешнего эмулятора терминала с помощью следующих символов подстановки:</p>
<dl>
<dt><code>%exe</code></dt>
<dd>Путь к исполняемому файлу, выбранному выше.</dd>
<dt><code>%workdir</code></dt>
<dd>Путь к рабочему каталогу, выбранному выше.</dd>
</dl>
<p>Этой команде будут переданы все определённые выше аргументы.</p> Собрать Собрать и установить В параметрах запуска в конфигурации «%1» обнаружен метасимвол командной оболочки. В настоящее время они не поддерживаются. Запуск отменён. В параметрах исполняемого файла в конфигурации запуска «%1» обнаружен метасимвол командной оболочки. В настоящее время они не поддерживаются. Запуск отменён. Действие: Добавить указанную цель в список зависимостей. Аргументы: Поведение Настройка обычного приложения Не удалось разрешить зависимость: %1 Зависимости Ничего не делать doktorkster@gmail.com,aspotashev@gmail.com,morozov@gmail.com Введите зависимость для добавления в список Введите аргументы, которые нужно передать программе Введите имя программы или полный путь к исполняемому файлу Окружение: Исполняемый файл Программа: Поддержка запуска программ Список косвенно зависимых целей. Переместить выделенную зависимость вверх по списку. Переместить выделенную зависимость вниз по списку. Ерёмин Николай,Александр Поташев,Алексей Морозов Обычное приложение Группа переменных среды не указана. Похоже, конфигурация неверна. Проверьте конфигурацию запуска «%1». Будет использоваться группа переменных среды по умолчанию. Запускаемый файл задан неверно Исполняемые файлы проекта Цель из проекта: Удалить выбранные зависимости из списка. Выберите рабочий каталог программы Выберите, какое окружение использовать Действие для зависимостей перед запуском приложения. Запускается %1 Цели: Указанное действие будет выполнено перед запуском программы. Таким образом, части проекта, от которых программа не зависит напрямую, могут быть собраны и/или установлены перед запуском приложения. В параметрах запуска в конфигурации «%1» обнаружены непарные кавычки. Запуск отменён. В исполняемом файле конфигурации запуска «%1» обнаружены непарные кавычки. Запуск отменён. Это список целей, от которых приложение не зависит напрямую, но для которых требуются какие-либо действия перед запуском приложения. Использовать внешний терминал: Рабочий каталог: 