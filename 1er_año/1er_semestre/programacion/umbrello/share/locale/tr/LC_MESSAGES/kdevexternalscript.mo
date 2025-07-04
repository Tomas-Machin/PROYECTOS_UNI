��    B      ,  Y   <      �  	   �     �     �     �  T   �  $        =  #   U     y     �  <   �  �  �  D     K   �  �     \   �  U   A  k   �  Q     N   U  �   �  r   3     �  \   �          7     R      e     �     �     �     �  	   �     �     �               (     6  e   M     �     �  	   �     �     �               *     :  )   A     k  	   �     �  "   �     �      �  >   �  /   .     ^     s     �     �  $   �  '   �     �  �       �     �     �  
   �  L   �  +      !   L  .   n  #   �      �  N   �  s  1  J   �  T   �  �   E  Y   
  X   d  o   �  X   -  g   �  �   �  �   }        w         �      �      �      �      �      !     /!     8!     G!     S!     b!     r!     �!     �!     �!  z   �!  $   9"     ^"  	   n"     x"     �"     �"  !   �"     �"     �"  '   �"     #  
   4#     ?#  +   L#     x#  )   �#  ?   �#  B   �#     <$  !   T$     v$     �$  5   �$  3   �$     
%         :           )   ;   
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
PO-Revision-Date: 2014-11-10 21:45+0000
Last-Translator: Simge <simgesezgin88@gmail.com>
Language-Team: Turkish <kde-l10n-tr@kde.org>
Language: tr
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Plural-Forms: nplurals=2; plural=(n > 1);
X-Generator: Lokalize 1.4
 &Komut: &Girdi: &İsim: &Çıktı: ***'%1' program başlatılamadı. Yolun doğru belirtildiğine emin olun.*** *** Bu kod döndürülerek çöktü: %1 *** *** Normal olarak çıkıldı *** *** Bu kod döndürülerek çıkıldı: %1 *** *** Sonlandırılmış Uygulama *** *** Süreç sonlandırıldı *** <p>Bu betiği çalıştırmak için kullanacağınız kısayolu tanımlar.</p> <p>Bu betik başlatıldığında çalıştırılması gereken komutu tanımlar. Bulunduğunuz platformun temel özellikleri kullanılabilir.</p>
<p>Bu komutla birlikte kullanabileceğiniz birkaç yer tutucu bulunuyor:</p>
<dl>
  <dt><code>%u</code></dt>
  <dd>Etkin belgenin adresi (URL) ile değiştirilir.</dd>
  <dt><code>%f</code></dt>
  <dd>Etkin belgenin yerel dosya adresi ile değiştirilir.</dd>
  <dt><code>%n</code></dt>
  <dd>Etkin belgenin adı ve uzantısı ile birlikte değiştirilir.</dd>
  <dt><code>%b</code></dt>
  <dd>Etkin belgenin adı ile, uzantısı olmadan değiştirilir.</dd>
  <dt><code>%d</code></dt>
  <dd>Etkin belgenin dizin adresi ile değiştirilir.</dd>
  <dt><code>%p</code></dt>
  <dd>Etkin belgenin proje adresi (URL) ile değiştirilir.</dd>
  <dt><code>%s</code></dt>
  <dd>Etkin belge içerisindeki  kabuktan kaçan içerik seçimi ile değiştirilir.</dd>
  <dt><code>%i</code></dt>
  <dd>Çalışmakta olan KDevelop sürecinin kimliği (PID) ile değiştirilir .</dd>
</dl>
<p><b>NOT:</b>  Veri kaybetmenize neden olabilecek tehlikeli komutları çalıştırmak sizin sorumluluğunuzdadır.</p>
 <p>Betiğin adını tanımlar, sadece ekranda göstermek amaçlıdır.</p> <p>Bu dış betiği çalıştırmak için kullanacağınız kısayolu tanımlar.</p> <p>Betiğin hataları (<code>STDERR</code> gibi) ile ne yapılacağını tanımlar.</p><p>Not: Eğer eylem seçilen çıktı ile aynı ise kanallar birleştirilir ve birlikte değerlendirilir.</p> <p>Betiğin çıktısı (<code>STDOUT</code> gibi) ile ne yapılacağını tanımlar.</p> <p>Dış betiğin girdi olarak neyi alacağını tanımlar (<code>STDIN</code> ile).</p> <p>Çıktıya uygulanacak filtrenin türünü tanımlar. Örneğin; hataları kırmızı metinle işaretle.</p> <p>Betik çalıştırılmadan önce belgelerin kaydedilip edilmeyeceğini tanımlar.</p> <p>Araç görünümünde dış betiğin çıktısının gösterilip gösterilmeyeceğini tanımlar.</p> <p><i>%1 için dış betik yapılandırmasını silmek istediğinizden emin misiniz </i>?</p><p><i>Not:</i> Betiğin kendisi silinmeyecek.</p> <p>İsim kod tamamlama sırasında bir tanımlayıcı olarak da kullanılacak.</p>
<p><b>Not:</b> Boşluk bırakmaya izin verilmiyor.</p> Dış Betik Ekle '%1' betiği çalıştırılamadı, betik düzenleyici içeriğine erişmek istiyor ancak açık durumda bir belge yok. Dış Betik Kaldırmayı Onayla Yeni dış betik oluştur Filtreyi burada tanımlayın tulliana@gmail.com Dış Betiği Düzenle '%1' dış betiğini düzenle Hatalar: Dış Betikler Filtrele... Google Seçimi Serdar Soytetir Açılacak Belge Yok Çıktı Süzgeci: Hızlı Derle Dış Betiği Kaldır Düzenleyici içeriğini değiştirmek ve diğer istenilen eylemler için dış betikleri veya uygulamaları çalıştır. Dış betik çalıştırılıyor: %1 &Kaydetme Kipi: Kısayol: Çıktıyı &Göster Seçimi Sırala derleyici süzgeci geçerli dosyanın tüm içeriği yeni dosya oluştur yoksay geçerli dosyadaki imleç konumuna ekle normal çıktı ile birleştir süzme yok hiçbir şey Lütfen çalıştırılacak bir komut girin lütfen bir isim girin geçerli dosyanın içeriğini değiştir geçerli dosyadaki seçimi değiştir veya imleç konumuna ekle geçerli dosya içerisindeki seçimi veya tüm dosyayı değiştir geçerli belgeyi kaydet açık olan tüm belgeleri kaydet hiçbir şey kaydetme betik hata süzgeci geçerli dosya içerisindeki seçim veya hiçbir şey geçerli dosya içerisindeki seçim veya tüm dosya statik analiz hata süzgeci 