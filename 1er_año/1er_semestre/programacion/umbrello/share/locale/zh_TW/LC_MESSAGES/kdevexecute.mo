��    4      �  G   \      x  T   y  $   �     �  #        /     J  �   b      _  '     �     �  �   �  �   8	     �	  .   �	  
   �	     
     
  #   *
     N
  
   [
      f
  %   �
  )   �
  @   �
       
   %     0     <  #   L  !   p  /   �     �     �  �   �     }     �     �  0   �  -   �        Q   ?     �     �  �   �  \   �  ]   �  �   B  ^   �     >     U  �  h  >   /  &   n     �  .   �     �     �  �       �  %  �     �     �  n   �  q   P  	   �  *   �  	   �            #   !  	   E     O  $   _     �  $   �  *   �  	   �  	   �               !  !   =  !   _     �     �  r   �     $     =     M  '   ]  !   �     �  ?   �       	     �     F   �  I     ]   P  6   �     �     �     &   !                  -                ,          '                        #                        1   4   .   2                           	            $      (          0          "   )   %   +         *                3   /                  
       *** Could not start program '%1'. Make sure that the path is specified correctly *** *** Crashed with return code: %1 *** *** Exited normally *** *** Exited with return code: %1 *** *** Killed Application *** *** Process aborted *** <html><head/><body><p>Enter arguments to give to the executable.<br/>You can pass arguments containing space characters by putting them in double-quotes.</p></body></html> <p>By default applications will be run in the background and only their output will be displayed in a toolview. This makes it impossible to interact with applications requiring user input from a terminal emulator. To run such applications, you should use an external terminal.</p> <p>Defines the command to execute the external terminal emulator. Use the following placeholders:</p>
<dl>
<dt><code>%exe</code></dt>
<dd>The path to the executable selected above.</dd>
<dt><code>%workdir</code></dt>
<dd>The path to the working directory selected above.</dd>
</dl>
<p>The arguments defined above will get appended to this command.</p> @actionBuild @actionBuild and Install A shell meta character was included in the arguments for the launch configuration '%1', this is not supported currently. Aborting start. A shell meta character was included in the executable for the launch configuration '%1', this is not supported currently. Aborting start. Action: Adds the listed target to the dependency list. Arguments: Behavior Configure Native Application Couldn't resolve the dependency: %1 Dependencies Do Nothing EMAIL OF TRANSLATORSYour emails Enter a dependency to add to the list Enter arguments to give to the executable Enter the executable name or absolute path to an executable file Environment: Executable Executable: Execute support List of indirect dependent targets. Move a dependency up in the list. Moves the selected dependency down in the list. NAME OF TRANSLATORSYour names Native Application No environment group specified, looks like a broken configuration, please check run configuration '%1'. Using default environment group. No valid executable specified Project Executables Project Target: Removes the selected dependencies from the list. Select a working directory for the executable Select an environment to be used Specifies the action to take for the dependencies before starting the executable. Starting: %1 Targets: The selected action will be run before the executable is started.  This allows there to be parts of a project, upon which the executable does not directly depend, to be built and/or installed before running the application. There is a quoting error in the arguments for the launch configuration '%1'. Aborting start. There is a quoting error in the executable for the launch configuration '%1'. Aborting start. This list should contain targets that the application does not directly depend on, but for which an action needs to be taken before running the application. This plugin allows running of programs with no instrumentor, ie. natively by the current host. Use External Terminal: Working Directory: Project-Id-Version: kdevexecute
Report-Msgid-Bugs-To: http://bugs.kde.org
POT-Creation-Date: 2014-08-01 06:16+0000
PO-Revision-Date: 2013-11-07 15:30+0800
Last-Translator: Franklin Weng <franklin at goodhorse dot idv dot tw>
Language-Team: Chinese Traditional <kde-tw@googlegroups.com>
Language: zh_TW
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Generator: Lokalize 1.5
Plural-Forms: nplurals=1; plural=0;
 *** 無法啟動程式 %1。請確定路徑名稱正確。 *** *** 程式當掉，返回碼： %1 *** *** 已正常結束 *** *** 不正常結束，離開狀態為：%1 *** *** 已砍掉應用程式 *** *** 行程被中止 *** <html><head/><body><p>輸入執行檔的參數。<br/>若參數中有空白，您可以用雙引號包起來。</p></body></html> <p>應用程式預設會在背景執行，它的輸出會顯示在一個工具檢視中。不過這樣您無法與此應用程式有互動，也就是使用者無法從終端進行輸入。若您的應用程式需要使用者輸入，您應該改用外部終端機。</p> <p>定義要在外部終端模擬器執行的指令。您可以使用以下的取代符：</p>
<dl>
<dt><code>%exe</code></dt>
<dd>執行檔的路徑。</dd>
<dt><code>%workdir</code></dt>
<dd>執行期的工作目錄。</dd>
</dl>
<p>上方所定義的參數會附加到此指令後面。</p> 編譯 編譯並安裝 在啟動設定 %1 的參數中有一個 shell 中繼字元。目前尚未支援這種用法。啟動中止。 在啟動設定 %1 的執行檔中有一個 shell 中繼字元。目前尚未支援這種用法。啟動中止。 動作： 將列出的目標加入相依性清單。 引數： 行為 設定原始應用程式 無法解決此相依性問題：%1 相依性 不做任何事 franklin at goodhorse dot idv dot tw 輸入相依性加入清單中 請輸入要送給執行檔的參數 請輸入執行檔的名稱或絕對路徑 環境： 執行檔 執行檔： 執行支援 間接相依目標清單。 在清單中將相依性上移。 在清單中將相依性下移。 Frank Weng (a.k.a. Franklin) 原始應用程式 沒有指定環境群組，似乎是設定有問題。請檢查執行設定 %1。將改用預設的環境群組。 未指定合法執行檔 專案執行檔 專案目標： 從清單中移除選取的相依性。 請選擇執行檔的工作目錄 請選擇要使用的環境 指定啟動執行檔之前，此相依性要執行的動作。 開始：%1 目標： 選取的動作會在執行檔啟動前執行。它可以是專案的一部份，執行檔本身不直接相依，而在執行應用程式前先行編譯與安裝。 在啟動設定 %1 的參數中有一個引號錯誤。啟動中止。 在啟動設定 %1 的執行檔中有一個引號錯誤。啟動中止。 這份清單中包含應用程式不直接相依，但是需要在啟動前執行的動作。 此外掛程式允許在目前主機上執行程式。 使用外部終端機： 工作目錄： 