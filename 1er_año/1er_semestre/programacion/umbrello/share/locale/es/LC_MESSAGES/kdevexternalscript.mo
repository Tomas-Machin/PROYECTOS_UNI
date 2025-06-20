��    B      ,  Y   <      �  	   �     �     �     �  T   �  $        =  #   U     y     �  <   �  �  �  D     K   �  �     \   �  U   A  k   �  Q     N   U  �   �  r   3     �  \   �          7     R      e     �     �     �     �  	   �     �     �               (     6  e   M     �     �  	   �     �     �               *     :  )   A     k  	   �     �  "   �     �      �  >   �  /   .     ^     s     �     �  $   �  '   �     �  �       �  	   �     �     �  f   �  "   ;     ^  $   |     �     �  L   �  �  #  @     T   C  �   �  \   w  ]   �  u   2  M   �  S   �  �   J  �   �     V   x   m   +   �      !     -!     D!     W!     m!     �!     �!  	   �!     �!     �!     �!     �!     �!     "  w   +"     �"     �"     �"     �"     �"     
#      #     <#     P#  6   X#     �#     �#     �#     �#     �#  *   �#  Q    $  =   r$     �$  %   �$     �$     %  $   %  1   C%  (   u%         :           )   ;   
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
PO-Revision-Date: 2014-08-09 13:42+0200
Last-Translator: Eloy Cuadra <ecuadra@eloihr.net>
Language-Team: Spanish <kde-l10n-es@kde.org>
Language: es
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Generator: Lokalize 1.5
Plural-Forms: nplurals=2; plural=n != 1;
 &Orden: &Entrada: &Nombre: &Salida: *** No se pudo iniciar el programa «%1». Asegúrese de que ha especificado la ruta correctamente *** *** Colgado con el código: %1 *** *** Terminado normalmente *** *** Terminado con el código: %1 *** *** Aplicación matada *** *** Proceso cancelado *** <p>Define los accesos rápidos que puede usar para ejecutar este script.</p> <p>Define la orden que se debe ejecutar cuando se lanza este script. Las funcionalidades básicas de la consola de su plataforma deben estar disponibles.</p>
<p>Existen varios parámetros de sustitución que puede usar en la orden:</p>
<dl>
  <dt><code>%u</code></dt>
  <dd>Se sustituye por el URL del documento activo.</dd>
  <dt><code>%f</code></dt>
  <dd>Se sustituye por la ruta local del archivo del documento activo.</dd>
  <dt><code>%n</code></dt>
  <dd>Se sustituye por el nombre del documento activo, incluyendo su extensión.</dd>
  <dt><code>%b</code></dt>
  <dd>Se sustituye por el nombre del documento activo sin su extensión.</dd>
  <dt><code>%d</code></dt>
  <dd>Se sustituye por la ruta del directorio del documento activo.</dd>
  <dt><code>%p</code></dt>
  <dd>Se sustituye por el URL del proyecto del documento activo.</dd>
  <dt><code>%s</code></dt>
  <dd>Se sustituye por el contenido de consola «escapado» de la selección existente en el documento activo.</dd>
  <dt><code>%i</code></dt>
  <dd>Se sustituye por el PID del proceso actual en ejecución de KDevelop.</dd>
</dl>
<p><b>NOTA:</b> Queda bajo su propia responsabilidad evitar la ejecución de órdenes peligrosas que pudieran conllevar la pérdida de datos.</p>
 <p>Define el nombre del script. Solo a efectos de mostrarlo.</p> <p>Define los accesos rápidos que puede usar para ejecutar este script externo.</p> <p>Define lo que se debe hacer con los errores (es decir, <code>STDERR</code>) del script.</p><p>Nota: si la acción es la misma que la escogida para la salida, ambos canales se mezclarán y se tratarán conjuntamente.</p> <p>Define lo que se debe hacer con la salida (es decir, <code>STDOUT</code>) del script.</p> <p>Define lo que debe tener como entrada el script externo (mediante <code>STDIN</code>).</p> <p>Define qué tipo de filtrado se debe aplicar a la salida. Por ejemplo, para indicar errores con texto en rojo.</p> <p>Define si se deben guardar los documentos antes de ejecutar el script.</p> <p>Define si se debe mostrar la salida del script en una vista de herramientas.</p> <p>¿Realmente quiere eliminar la configuración del script externo <i>%1</i>?</p><p><i>Nota:</i> el script no será eliminado.</p> <p>El nombre también se usará como identificador durante la terminación de código.</p>
<p><b>Nota:</b> no se permiten espacios.</p> Añadir script externo No se puede ejecutar el script «%1» porque intenta acceder al contenido del editor cuando no hay un documento abierto. Confirme la eliminación del script externo Crear nuevo script externo Defina aquí el filtro ecuadra@eloihr.net Editar script externo Editar el script externo «%1» Errores: Scripts externos Filtro... Selección de Google Eloy Cuadra Ningún documento abierto Filtro de salida: Compilación rápida Eliminar script externo Ejecutar scripts o aplicaciones externas para manipular el contenido del editor o hacer otras acciones sin especificar. Ejecutando script externo: %1 &Modo para guardar: Acceso rápido: M&ostrar salida Selección del orden filtro del compilador contenido de archivo actual crear nuevo archivo ignorar insertar en la posición del cursor del archivo actual mezclar con la salida normal ningún filtro nada introduzca una orden a ejecutar introduzca un nombre reemplazar el contenido del archivo actual reemplazar la selección del archivo actual o insertar en la posición del cursor reemplazar la selección del archivo actual o todo el archivo guardar el documento activo guardar todos los documentos abiertos no guardar nada filtro de errores de script selección del archivo actual o nada selección en el archivo actual o todo el archivo filtro de errores de análisis estático 