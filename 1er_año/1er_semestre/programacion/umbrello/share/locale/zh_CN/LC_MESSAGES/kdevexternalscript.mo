Þ    =        S   ì      8  	   9     C     K     R  $   [       #        ¼     ×  <   ï    ,  D   Â
  K     Ó   S  \   '  U     k   Ú  Q   F  N        ç  r   v     é  \   ý     Z     z           ¨     É     Þ     ø        	             :     K     Z     q       	        £     °     À     Ù     é  )   ð       	   3     =  "   E     h      }  >     /   Ý          "     :     G  $   [  '        ¨    Å     e     s                    ½     Ò     ò       :   (  Ë  c  4   /  @   d  ¬   ¥  K   R  L     X   ë  7   D  @   |  w   ½  j   5        Y   ³          &     <     R     i     |  	        ¡  	   ®     ¸     ¿     Ò     å     ø          $     1     B     R     h     x  $        ¤     º     Ç     Ë     ç     ÷  9     0   M     ~       	   °     º  !   Ð  *   ò                 (       .               1   <   #      "                                      &          	   5              7   :   $       '   8               3   9      
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
PO-Revision-Date: 2010-11-16 15:30+0800
Last-Translator: Ni Hui <shuizhuyuanluo@126.com>
Language-Team: Chinese Simplified <kde-china@kde.org>
Language: zh_CN
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Generator: Lokalize 1.5
Plural-Forms: nplurals=1; plural=0;
 å½ä»¤(&C)ï¼ è¾å¥(&I)ï¼ åç§°(&N)ï¼ è¾åº(&O)ï¼ *** å´©æºï¼è¿åå¼ï¼%1 *** *** æ­£å¸¸éåº *** *** éåºï¼è¿åå¼ï¼%1 *** *** åºç¨ç¨åºå·²ææ­» *** *** è¿ç¨å·²ä¸­æ­¢ *** <p>å®ä¹æ¨å¯ä»¥ç¨æ¥æ§è¡æ­¤èæ¬çå¿«æ·é®ã</p> <p>å®ä¹èæ¬æ§è¡æ¶çå½ä»¤ãæ¨å¹³å°ä¸çåºæ¬ shell ç¹æ§åºè¯¥å¯ç¨ã</p>
<p>ä»¥ä¸æ¯ä¸äºæ¨å¯ä»¥å¨å½ä»¤ä¸­ä½¿ç¨çå ä½ç¬¦ï¼</p>
<dl>
  <dt><code>%u</code></dt>
  <dd>æ¿æ¢ä¸ºæ´»å¨ææ¡£ç URLã</dd>
  <dt><code>%f</code></dt>
  <dd>æ¿æ¢ä¸ºæ´»å¨ææ¡£çæ¬å°æä»¶è·¯å¾ã</dd>
  <dt><code>%n</code></dt>
  <dd>æ¿æ¢ä¸ºæ´»å¨ææ¡£çæä»¶åï¼åå«åç¼åã</dd>
  <dt><code>%b</code></dt>
  <dd>æ¿æ¢ä¸ºæ´»å¨ææ¡£çæä»¶åï¼ä¸å«åç¼åã</dd>
  <dt><code>%d</code></dt>
  <dd>æ¿æ¢ä¸ºæ´»å¨ææ¡£æå¨çç®å½çè·¯å¾ã</dd>
  <dt><code>%p</code></dt>
  <dd>æ¿æ¢ä¸ºæ´»å¨ææ¡£æå¨å·¥ç¨ç URLã</dd>
  <dt><code>%s</code></dt>
  <dd>æ¿æ¢ä¸ºå·²è¢« shell è½¬ä¹çæ´»å¨ææ¡£ä¸­çéä¸­åå®¹ã</dd>
  <dt><code>%i</code></dt>
  <dd>æ¿æ¢ä¸ºå½åè¿è¡ç KDevelop è¿ç¨çè¿ç¨å·ã</dd>
</dl>
<p><b>æ³¨æï¼</b>æ¨åºèªå·±è´è´£ä¸è¦è¿è¡å¯è½å¯¼è´çæ°æ®ä¸¢å¤±çå±é©å½ä»¤ã</p>
 <p>å®ä¹èæ¬çåç§°ãåªæ¯ä¸ºäºæ¾ç¤ºã</p> <p>å®ä¹æ¨å¯ä»¥ç¨æ¥æ§è¡æ­¤å¤é¨èæ¬çå¿«æ·é®ã</p> <p>å®ä¹è¯¥å¯¹èæ¬çéè¯¯ (ä¾å¦<code>STDERR</code>) åä»ä¹ã</p><p>æ³¨æï¼å¦æè¯¥å¨ä½ä¸å¤çè¾åºçå¨ä½ä¸è´ï¼ééä¼åå¹¶å¹¶ä¸èµ·å¤çã</p> <p>å®ä¹è¯¥å¯¹èæ¬çè¾åº (ä¾å¦<code>STDOUT</code>) åä»ä¹ã</p> <p>å®ä¹å¤é¨èæ¬è¯¥è·å¾ä»ä¹è¾å¥ (éè¿<code>STDIN</code>)ã</p> <p>å®ä¹è¦åºç¨å¨è¾åºä¸çè¿æ»¤å¨ç±»åãä¾å¦ï¼ç¨çº¢è²è¡¨æéè¯¯ã</p> <p>å®ä¹ææ¡£æ¯å¦è¦å¨èæ¬æ§è¡åä¿å­ã</p> <p>å®ä¹èæ¬çè¾åºæ¯å¦è¦æ¾ç¤ºå¨å·¥å·è§å¾ä¸­ã</p> <p>æ¨ç¡®å®æ³è¦å é¤ <i>%1</i> çå¤é¨èæ¬éç½®åï¼</p><p><i>æ³¨æï¼</i>èæ¬æ¬èº«ä¸ä¼è¢«å é¤ã</p> <p>è¯¥åç§°ä¹å°ä¼å¨ä»£ç è¡¥å¨ä¸­è¢«ç¨ä½æ è¯ç¬¦ã</p>
<p><b>æ³¨æï¼</b>ä¸åè®¸æç©ºæ ¼</p> æ·»å å¤é¨èæ¬ æ æ³è¿è¡èæ¬â%1âå ä¸ºå®è¯å¾è®¿é®ç¼è¾å¨åå®¹èæ²¡ææå¼çææ¡£ã ç¡®è®¤å¤é¨èæ¬å é¤ åå»ºæ°å¤é¨èæ¬ å¨æ­¤å®ä¹è¿æ»¤å¨ shuizhuyuanluo@126.com ç¼è¾å¤é¨èæ¬ ç¼è¾å¤é¨èæ¬â%1â éè¯¯ï¼ å¤é¨èæ¬ è¿æ»¤... Ni Hui æ æå¼çææ¡£ è¾åºè¿æ»¤å¨ï¼ å é¤å¤é¨èæ¬ è¿è¡å¤é¨èæ¬ï¼%1 ä¿å­æ¨¡å¼(&M)ï¼ å¿«æ·é®ï¼ æ¾ç¤ºè¾åº(&P) ç¼è¯è¿æ»¤å¨ å½åæä»¶çåå®¹ åå»ºæ°æä»¶ å¿½ç¥ å¨å½åæä»¶çåæ ä½ç½®æå¥ ä¸æ­£å¸¸è¾åºåå¹¶ æ è¿æ»¤å¨ æ  è¯·æå¥è¦æ§è¡çå½ä»¤ è¯·æå¥åç§° æ¿æ¢å½åæä»¶çåå®¹ æ¿æ¢å½åæä»¶çéä¸­é¨åæå¨åæ ä½ç½®æå¥ æ¿æ¢å½åæä»¶çéä¸­é¨åææ´ä¸ªæä»¶ ä¿å­æ´»å¨çææ¡£ ä¿å­å¨é¨æå¼çææ¡£ ä¸ä¿å­ èæ¬éè¯¯è¿æ»¤å¨ å½åæä»¶çéä¸­é¨åææ  å½åæä»¶çéä¸­é¨åææ´ä¸ªæä»¶ éæåæéè¯¯è¿æ»¤å¨ 