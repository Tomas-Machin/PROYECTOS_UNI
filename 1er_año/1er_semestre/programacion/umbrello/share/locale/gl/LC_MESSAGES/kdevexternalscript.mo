��    B      ,  Y   <      �  	   �     �     �     �  T   �  $        =  #   U     y     �  <   �  �  �  D     K   �  �     \   �  U   A  k   �  Q     N   U  �   �  r   3     �  \   �          7     R      e     �     �     �     �  	   �     �     �               (     6  e   M     �     �  	   �     �     �               *     :  )   A     k  	   �     �  "   �     �      �  >   �  /   .     ^     s     �     �  $   �  '   �     �  �         	                k   )  :   �     �  '   �          .  I   K  �  �  =   ,  U   j  �   �  N   �  f   �  {   F  O   �  Q     �   d  �   �     l   y   �   /    !     0!     M!  5   d!     �!     �!     �!     �!  	   �!     �!     
"      '"     H"     Z"     o"  k   �"  '   �"     #     1#     9#     K#     `#     u#     �#     �#  1   �#     �#  
   �#     $  #   $     0$  (   B$  M   k$  A   �$     �$  -   %     C%     S%  %   m%  3   �%  %   �%         :           )   ;   
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
PO-Revision-Date: 2013-12-31 09:57+0100
Last-Translator: Marce Villarino <mvillarino@kde-espana.org>
Language-Team: Galician <proxecto@trasno.net>
Language: gl
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Plural-Forms: nplurals=2; plural=n != 1;
X-Generator: Lokalize 1.5
X-Environment: kde, development
X-Accelerator-Marker: &
X-Text-Markup: kde4
 &Orde: &Entrada: &Nome: &Saída: *** Non foi posíbel iniciar o programa «%1». Asegúrese de que se especificase correctamente a ruta. *** *** Pechouse inesperadamente co código de retorno: %1 *** *** Saíu con normalidade *** *** Saíu co código de retorno: %1 *** *** Programa matado *** *** Cancelouse o proceso *** <p>Indica os atallos que se poden empregar para executar este script.</p> <p>Indica a orde que se desexa executar ao executar este script. Debería poder dispor das funcionalidades básicas da consola para a plataforma do sistema.</p>
<p>Existen varios marcadores de posición que se poden empregar con esta orde:</p>
<dl>
 <dt><code>%u</code></dt>
  <dd>Substitúese polo URL do documento activo.</dd>
  <dt><code>%f</code></dt>
  <dd>Substitúese pola ruta local do documento activo.</dd>
  <dt><code>%n</code></dt>
  <dd>Substitúese polo nome do documento activo, incluída a súa extensión.</dd>
  <dt><code>%b</code></dt>
  <dd>Substitúese polo nome do documento activo, sen a súa extensión.</dd>
  <dt><code>%d</code></dt>
  <dd>Substitúese pola ruta ao directorio do documento activo.</dd>
  <dt><code>%p</code></dt>
  <dd>Substitúese polo URL ao proxecto do documento activo.</dd>
  <dt><code>%s</code></dt>
  <dd>Substitúese polo contido escapado pola consola da selección do documento activo.</dd>
  <dt><code>%i</code></dt>
  <dd>Substitúese polo PID do proceso que se estea a executar do KDevelop.</dd>
</dl>
<p><b>NOTA:</b>  É a súa responsabilidade evitar executar ordes aleatorias que puideran causar perda de datos.</p>
 <p>Indica o nome do script. É simplemente para mostralo.</p> <p>Indica o(s) atallo(s) que se poden empregar para executar este script externo.</p> <p>Indica o que se desexa facer cos erros (isto é, <code>STDERR</code>) do script.</p><p>Nota: se a acción for a mesma que a escollida para a saída, as canles fusiónanse e xestiónanse conxuntamente.</p> <p>Indica o que facer coa saída (isto é, <code>STDOUT</code>) do script.</p> <p>Indica o que se desexa que obteña o script externo como entrada (mediante <code>STDIN</code>).</p> <p>Indica o tipo de filtrado que se desexa aplicar á saída. Por exemplo, para indicar os erros con texto en vermello.</p> <p>Indica se se desexa gardar o documento antes de que se execute o script.</p> <p>Indica se se desexa mostrar a saída do script nunha vista de ferramentas.</p> <p>Desexa realmente retirar a configuración do script externo <i>%1</i>?</p><p><i>Nota:</i> O script en si non vai ser eliminado.</p> <p>O nome tamén se emprega como identificador durante o completado do código.</p>
<p><b>Nota:</b> Non se permiten espazos.</p> Engadir un script externo Non é posíbel executar o script «%1» porque tenta acceder ao contido do editor mais non hai ningún documento aberto. Confirmación da eliminación do script externo Criar un script externo novo Indique aquí o filtro mvillarino@users.sourceforge.net,
xosecalvo@gmail.com Editar un script externo Engadir o script externo «%1» Erros: Scripts externos Filtro... Selección en Google Marce Villarino,
Xosé Calvo Non hai ningún documento aberto Filtro de saída: Compilación rápida Retirar o script externo Executa scripts externos ou programas para manipular os contidos do editor ou levar a cabo outras accións. Estase a executar un script externo: %1 &Modo de gravación: Atallo: &Mostrar a saída Ordenar a selección filtro do compilador contido do ficheiro actual crear un ficheiro novo ignorar inserir na posición do cursor no ficheiro actual fusionar coa saída normal sen filtro nada Introduza a orde que quere executar introduza un nome substituír o contido do ficheiro actual substituír a selección do ficheiro actual ou inserir na posición do cursor substituír a selección do ficheiro actual ou o ficheiro enteiro gravar o documento activo gravar todos os documentos que estean abertos non gravar nada filtro de erros de script selección do ficheiro actual ou nada selección no ficheiro actual ou o ficheiro enteiro filtro de erros de análise estática 