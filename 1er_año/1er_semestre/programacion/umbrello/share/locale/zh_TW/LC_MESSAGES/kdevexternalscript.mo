��    B      ,  Y   <      �  	   �     �     �     �  T   �  $        =  #   U     y     �  <   �  �  �  D     K   �  �     \   �  U   A  k   �  Q     N   U  �   �  r   3     �  \   �          7     R      e     �     �     �     �  	   �     �     �               (     6  e   M     �     �  	   �     �     �               *     :  )   A     k  	   �     �  "   �     �      �  >   �  /   .     ^     s     �     �  $   �  '   �     �  �       �     �     �     �  >   
  &   I     p  .   �     �     �  7   �  �  %  1   �  @     �   W  Z     P   u  j   �  :   1  @   l  q   �  d        �  f   �     �          0  $   F     k     ~  	   �     �  	   �  #   �     �     �                 ,   Z   ?      �      �   	   �      �      �      �      
!      !     0!  $   7!     \!     r!     �!     �!     �!     �!  B   �!  3   "     E"     ^"  	   z"     �"  <   �"  ?   �"     #         :           )   ;   
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
<p><b>Note:</b> No spaces allowed.</p> Add External Script Cannot run script '%1' since it tries to access the editor contents but no document is open. Confirm External Script Removal Create new external script Define filter here EMAIL OF TRANSLATORSYour emails Edit External Script Edit external script '%1' Errors: External Scripts Filter... Google Selection NAME OF TRANSLATORSYour names No Document Open Output Filter: Quick Compile Remove External Script Run external scripts or applications to manipulate the editor contents or do other arbitrary actions. Running external script: %1 Save &Mode: Shortcut: Show Out&put Sort Selection compiler filter contents of current file create new file ignore insert at cursor position of current file merge with normal output no filter nothing please insert a command to execute please insert a name replace contents of current file replace selection of current file or insert at cursor position replace selection of current file or whole file save active document save all open documents save nothing script error filter selection in current file or nothing selection in current file or whole file static analysis error filter Project-Id-Version: 
Report-Msgid-Bugs-To: http://bugs.kde.org
POT-Creation-Date: 2014-06-26 05:39+0000
PO-Revision-Date: 2013-11-07 15:30+0800
Last-Translator: Franklin Weng <franklin at goodhorse dot idv dot tw>
Language-Team: Chinese Traditional <kde-tw@googlegroups.com>
Language: zh_TW
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Generator: Lokalize 1.5
Plural-Forms: nplurals=1; plural=0;
 指令(&C)： 輸入(&I)： 名稱(&N)： 輸出(&O)： *** 無法啟動程式 %1。請確定路徑名稱正確。 *** *** 程式當掉，返回碼： %1 *** *** 已正常結束 *** *** 不正常結束，離開狀態為：%1 *** *** 已砍掉應用程式 *** *** 行程被中止 *** <p>定義您要用來執行此文稿用的捷徑。</p> <p>定義文稿執行時應該被執行的指令。基本的 shell 功能應該都可以用。</p>
<p>您可以將下列取代符用於指令中：</p>
<dl>
<dt><code>%u</code></dt>
<dd>會取代為作用中文件的網址。</dd>
<dt><code>%f</code></dt>
<dd>會取代為作用中文件的本地端路徑。</dd>
<dt><code>%n</code></dt>
<dd>會取代為作用中文件的名稱，包含副檔名。</dd>
<dt><code>%b</code></dt>
<dd>會取代為作用中文件的名稱，但不含副檔名。</dd>
<dt><code>%d</code></dt>
<dd>會取代為作用中文件所在目錄的路徑。</dd>
<dt><code>%p</code></dt>
<dd>會取代為作用中文件所屬專案的網址。</dd>
<dt><code>%s</code></dt>
<dd>會取代為作用中文件選取區在 shell 脫逸的內容。</dd>
<dt><code>%i</code></dt>
<dd>會取代為目前執行的 KDevelop 行程的代碼。</dd>
</dl>
<p><b>注意：</b>您必須自己小心避免執行會造成資料損失的指令。</p>
 <p>定義文稿名稱。只是用於顯示。</p> <p>定義您要用來執行此直外部文稿用的捷徑。</p> <p>定義文稿發生錯誤（也就是標準錯誤 stderr 有東西）時應該怎麼辦。</p> <p>注意：此動作若與輸出的動作一樣，則它們將會被合併在一起處理。</p> <p>定義文稿輸出（也就是標準輸出 stdout 有東西）時應該怎麼辦。</p> <p>定義文稿要怎麼取得輸入（透過標準輸入 stdin 傳送）。</p> <p>定義輸出要套用哪一種型態的過濾器。例如：將錯誤以紅色文字標記出來。</p> <p>定義是否要在文稿執行前先儲存文件。</p> <p>定義是否要在工具檢視中顯示文稿的輸出。</p> <p>您確定要移除為 %1 設定的外部文稿嗎？</p> <p><i>注意：</i>文稿本身不會被移除。</p> <p>此名稱也會用作源碼補完時的識別子。</p>
<p><b>注意：</b>不能有空白。</p> 新增外部文稿 無法執行文稿 %1，因為它試著存取編輯器內容，但是裡面並未開啟任何文件。 確認移除外部文稿 建立新的外部文稿 在此定義過濾器 franklin at goodhorse dot idv dot tw 編輯外部文稿 編輯外部文稿 %1 錯誤： 外部文稿 過濾... 在 Google 上查詢選取區文字 Frank Weng (a.k.a. Franklin) 沒有已開啟文件 輸出過濾器： 快速編譯 移除外部文稿 執行外部文稿或應用程式來運用編輯器內的內容，或是做各種動作。 執行外部文稿中：%1 儲存模式(&M)： 捷徑： 顯示輸出(&P) 排序選取區文字 編譯過濾器 目前檔案的內容 建立新檔案 忽略 插入目前檔案游標所在位置 與正常輸出合併 沒有過濾器 無 請輸入要執行的指令 請插入名稱 取代目前檔案的內容 取代目前檔案的選取區，或是插入目前游標的位置 取代目前檔案的選取區，或是整個檔案 儲存作用中的文件 儲存所有開啟的文件 不儲存 文稿錯誤過濾器 以目前檔案中的選取區做為輸入，或是不輸入 以目前檔案中的選取區做為輸入，或是整個檔案 靜態分析過濾器 