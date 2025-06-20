��    B      ,  Y   <      �  	   �     �     �     �  T   �  $        =  #   U     y     �  <   �  �  �  D     K   �  �     \   �  U   A  k   �  Q     N   U  �   �  r   3     �  \   �          7     R      e     �     �     �     �  	   �     �     �               (     6  e   M     �     �  	   �     �     �               *     :  )   A     k  	   �     �  "   �     �      �  >   �  /   .     ^     s     �     �  $   �  '   �     �  �    	   �  	   �     �       s     ,   �     �  (   �     �       F   0  �  w  E   L  N   �  �   �  U   �  b   �  l   U  R   �  [     �   q  �   �     {   �   �   )   %!     O!     n!     �!     �!     �!     �!     �!  	   �!     �!     "     "     0"     E"     Z"  |   u"  !   �"     #     )#     1#     F#     [#     p#     �#     �#  1   �#     �#  
   �#     $  '   	$     1$  )   N$  L   x$  @   �$     %  "    %     C%     T%  %   r%  0   �%  %   �%         :           )   ;   
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
PO-Revision-Date: 2013-10-05 11:46+0100
Last-Translator: José Nuno Coelho Pires <zepires@gmail.com>
Language-Team: Portuguese <kde-i18n-pt@kde.org>
Language: pt
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-POFile-SpellExtra: KDevelop STDIN STDOUT STDERR
Plural-Forms: nplurals=2; plural=n != 1;
 &Comando: &Entrada: &Nome: &Saída: *** Não foi possível iniciar o programa '%1'. Certifique-se que a localização está indicada correctamente. *** *** Estoirou com o código de saída: %1 *** *** Terminou normalmente *** *** Saiu com o código de saída: %1 *** *** Matou-se a aplicação *** *** Processo interrompido *** <p>Define os atalhos que poderá usar para executar este programa.</p> <p>Define o comando que deverá ser executado quando for corrido este programa. Deverão estar disponíveis as funcionalidades básicas da consola para a sua plataforma.</p>
<p>Existem alguns itens de substituição para usar no comando:</p>
<dl>
  <dt><code>%u</code></dt>
  <dd>É substituído pelo URL do documento activo.</dd>
  <dt><code>%f</code></dt>
  <dd>É substituído pela localização do ficheiro local para o documento activo.</dd>
  <dt><code>%n</code></dt>
  <dd>É substituído pelo nome do documento activo, incluindo a sua extensão.</dd>
  <dt><code>%b</code></dt>
  <dd>É substituído pelo nome do documento activo sem a sua extensão.</dd>
  <dt><code>%d</code></dt>
  <dd>É substituído pela localização da pasta do documento activo.</dd>
  <dt><code>%p</code></dt>
  <dd>É substituído pelo URL do projecto do documento activo.</dd>
  <dt><code>%s</code></dt>
  <dd>É substituído pelo conteúdo formatado pela linha de comandos da selecção no documento activo.</dd>
  <dt><code>%i</code></dt>
  <dd>É substituído pelo PID do processo KDevelop actualmente em execução.</dd>
</dl>
<p><b>NOTA:</b>  É da sua responsabilidade evitar a execução de comandos perigosos que levem à perda de dados.</p>
 <p>Define o nome do programa. Apenas para fins de apresentação.</p> <p>Define os atalhos que poderá usar para executar este programa externo.</p> <p>Define o que se deverá fazer com os erros (i.e. <code>STDERR</code>) do programa.</p><p>Nota: se a acção é a mesma da saída, os canais serão reunidos e tratados em conjunto.</p> <p>Define o que deverá ser feito com a saída (<code>STDOUT</code>) do programa.</p> <p>Define se o programa externo deverá receber dados à entrada (<code>STDIN</code>) ou não.</p> <p>Define o tipo de filtragem que deverá ser aplicado ao resultado. P.ex., indicar os erros a vermelho.</p> <p>Define se os documentos deverão ser gravados antes de executar o programa.</p> <p>Define se o resultado do programa deverá ser apresentado numa área de ferramentas.</p> <p>Deseja mesmo remover a configuração do programa externo <i>%1</i>?</p><p><i>Nota:</i> O programa em si não será removido.</p> <p>O nome também será usado como identificador na completação de código.</p>
<p><b>Nota:</b> Não são permitidos espaços.</p> Adicionar um Programa Externo Não é possível executar o programa '%1', dado que ele tenta substituir o conteúdo de um editor, mas não está nenhum documento aberto. Confirmar a Remoção do Programa Externo Criar um novo programa externo Defina aqui o filtro zepires@gmail.com Editar o Programa Externo Editar o programa externo '%1' Erros: Programas Externos Filtro... Selecção do Google José Nuno Pires Nenhum Documento Aberto Filtro do Resultado: Compilação Rápida Remover o Programa Externo Executa os programas externos ou aplicações para manipular o conteúdo do editor ou efectuar outras acções arbitrárias. A executar o programa externo: %1 &Modo de Gravação: Atalho: Mostrar o &Resultado Ordenar a Selecção filtro do compilador conteúdo do ficheiro actual criar um ficheiro novo ignorar inserir na posição do cursor do ficheiro actual reunir com a saída normal sem filtro nada indique por favor um comando a executar introduza um nome, por favor substituir o conteúdo do ficheiro actual substituir a selecção no ficheiro actual ou inserir na posição do cursor substituir a selecção no ficheiro actual ou o ficheiro inteiro gravar o documento activo gravar todos os documentos activos não gravar nada filtro de erros dos programas selecção no ficheiro actual ou nada selecção no ficheiro actual ou todo o ficheiro filtro de erros de análise estática 