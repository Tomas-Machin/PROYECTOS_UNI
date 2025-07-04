��    B      ,  Y   <      �  	   �     �     �     �  T   �  $        =  #   U     y     �  <   �  �  �  D     K   �  �     \   �  U   A  k   �  Q     N   U  �   �  r   3     �  \   �          7     R      e     �     �     �     �  	   �     �     �               (     6  e   M     �     �  	   �     �     �               *     :  )   A     k  	   �     �  "   �     �      �  >   �  /   .     ^     s     �     �  $   �  '   �     �  �    	   �  	   �     �     �  n     ,   u     �  (   �     �       L     �  j  E   2  T   x  �   �  U   �  b   �  y   N  P   �  [     �   u  �         �   �   �   )   ;!     e!     �!     �!     �!     �!     �!     �!  	   �!     "     "     ("     @"     R"     g"  x   �"     �"     #     /#     7#     L#     `#     u#     �#     �#  /   �#     �#  
   �#     $  '   	$     1$  '   K$  I   s$  9   �$     �$  !   %     2%     C%  "   ]%  ,   �%  %   �%         :           )   ;   
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
PO-Revision-Date: 2013-11-07 10:02-0200
Last-Translator: André Marcelo Alvarenga <alvarenga@kde.org>
Language-Team: Brazilian Portuguese <kde-i18n-pt_br@kde.org>
Language: pt_BR
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Generator: Lokalize 1.5
Plural-Forms: nplurals=2; plural=(n > 1);
 &Comando: &Entrada: &Nome: &Saída: *** Não foi possível iniciar o programa '%1'. Certifique-se de que o caminho está indicado corretamente *** *** Estourou com o código de saída: %1 *** *** Saiu normalmente *** *** Saiu com o código de saída: %1 *** *** Matou-se o aplicativo *** *** Processo cancelado *** <p>Define os atalhos que você poderá usar para executar este programa.</p> <p>Define o comando que deverá ser executado quando for rodado este programa. Deverão estar disponíveis as funcionalidades básicas do console para a sua plataforma.</p>
<p>Existem alguns itens de substituição para usar no comando:</p>
<dl>
  <dt><code>%u</code></dt>
  <dd>É substituído pela URL do documento ativo.</dd>
  <dt><code>%f</code></dt>
  <dd>É substituído pela localização do arquivo local para o documento ativo.</dd>
  <dt><code>%n</code></dt>
  <dd>É substituído pelo nome do documento ativo, incluindo a sua extensão.</dd>
  <dt><code>%b</code></dt>
  <dd>É substituído pelo nome do documento ativo sem a sua extensão.</dd>
  <dt><code>%d</code></dt>
  <dd>É substituído pela localização da pasta do documento ativo.</dd>
  <dt><code>%p</code></dt>
  <dd>É substituído pela URL do projeto do documento ativo.</dd>
  <dt><code>%s</code></dt>
  <dd>É substituído pelo conteúdo formatado pela linha de comando da seleção no documento ativo.</dd>
  <dt><code>%i</code></dt>
  <dd>É substituído pelo PID do processo KDevelop atualmente em execução.</dd>
</dl>
<p><b>NOTA:</b>  É da sua responsabilidade evitar a execução de comandos perigosos que levem à perda de dados.</p>
 <p>Define o nome do programa. Apenas para fins de apresentação.</p> <p>Define os atalhos que você poderá usar para executar este programa externo.</p> <p>Define o que se deverá fazer com os erros (i.e. <code>STDERR</code>) do programa.</p><p>Nota: se a ação é a mesma escolhida para a saída, os canais serão reunidos e tratados em conjunto.</p> <p>Define o que deverá ser feito com a saída (<code>STDOUT</code>) do programa.</p> <p>Define se o programa externo deverá receber dados à entrada (<code>STDIN</code>) ou não.</p> <p>Define o tipo de filtragem que deve ser aplicado à saída. Por exemplo, para indicar erros com texto em vermelho.</p> <p>Define se os documentos deverão ser salvos antes de executar o programa.</p> <p>Define se o resultado do programa deverá ser apresentado numa área de ferramentas.</p> <p>Você deseja realmente remover a configuração do programa externo <i>%1</i>?</p><p><i>Nota:</i> O programa em si não será removido.</p> <p>O nome será também usado como identificador durante o completamento do código.</p>
<p><b>Nota:</b> Espaços não são permitidos.</p> Adicionar um programa externo Não é possível executar o programa '%1', uma vez que ele tenta acessar o conteúdo de um editor, mas não existe nenhum documento aberto. Confirmar a remoção do programa externo Criar um novo script externo Defina aqui o filtro marcus.gama@gmail.com Editar o programa externo Editar o script externo '%1' Erros: Programas externos Filtro... Seleção do Google Marcus Gama Nenhum documento aberto Filtro de saída: Compilação rápida Remover o programa externo Execute scripts externos ou aplicativos para manipular os conteúdos do editor ou para fazer outras ações ordinárias. Rodando o programa externo: %1 &Modo de salvamento: Atalho: Mo&strar o resultado Ordenar a seleção filtro do compilador conteúdo do arquivo atual criar um arquivo novo ignorar inserir na posição do cursor do arquivo atual reunir com a saída normal sem filtro nada por favor, insira um comando a executar por favor, insira um nome substituir o conteúdo do arquivo atual substituir a seleção no arquivo atual ou inserir na posição do cursor substituir a seleção no arquivo atual ou todo o arquivo salvar o documento ativo salvar todos os documentos ativos não salvar nada filtro de erros do script seleção no arquivo atual ou nada seleção no arquivo atual ou todo o arquivo filtro de erros de análise estática 