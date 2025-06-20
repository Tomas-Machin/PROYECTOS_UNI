��    #      4  /   L        	   	  X     S   l  S   �  S     P   h  y   �  �   3  �  �  R   �  e   �  g   T  e   �  P   "	  M   s	  X   �	  x   
  H   �
  d   �
  r   A  3   �  1   �  3        N     d  4   }     �  
   �  %   �  6   �     *     B  '   U     }  �  �     L  h   [  ]   �  ]   "  \   �  Z   �  �   8  �   �  �  �  O     m   f  f   �  f   ;  c   �  N     i   U  �   �  O   K  ~   �  y     .   �  -   �  /   �     !     9  3   V     �     �  .   �  =   �  "        5  $   Q     v        #                                                        !                            
                       "      	                                    
Syntax:
             #   'dest' may be "trash:/" to move the files
            #   to the trash.
             #   the short version kioclient cp
            #   is also available.

             #   the short version kioclient mv
            #   is also available.

             #   the short version kioclient rm
            #   is also available.

   kioclient cat 'url'
            # Writes out the contents of 'url' to stdout

   kioclient copy 'src' 'dest'
            # Copies the URL 'src' to 'dest'.
            #   'src' may be a list of URLs.
   kioclient download ['src']
            # Copies the URL 'src' to a user-specified location'.
            #   'src' may be a list of URLs, if not present then
            #   a URL will be requested.

   kioclient exec 'url' ['mimetype']
            # Tries to open the document pointed to by 'url', in the application
            #   associated with it in KDE. You may omit 'mimetype'.
            #   In this case the mimetype is determined
            #   automatically. Of course URL may be the URL of a
            #   document, or it may be a *.desktop file.
            #   'url' can be an executable, too.
   kioclient exec .
             // Opens the current directory. Very convenient.

   kioclient exec file:/home/weis/data/test.html
             // Opens the file with default binding

   kioclient exec file:/home/weis/data/test.html Netscape
             // Opens the file with netscape

   kioclient exec file:/root/Desktop/cdrom.desktop
             // Opens the CDROM's mount directory

   kioclient exec file:/root/Desktop/emacs.desktop
             // Starts emacs

   kioclient exec ftp://localhost/
             // Opens new window with URL

   kioclient ls 'url'
            # Lists the contents of the directory 'url' to stdout

   kioclient move 'src' 'dest'
            # Moves the URL 'src' to 'dest'.
            #   'src' may be a list of URLs.
   kioclient openProperties 'url'
            # Opens a properties menu

   kioclient remove 'url'
            # Removes the URL
            #   'url' may be a list of URLs.
 *** Examples:
  kioclient exec file:/root/Desktop/cdrom.desktop "Mount default"
             // Mounts the CDROM

 @info:shell%1: Syntax error, not enough arguments
 @info:shell%1: Syntax error, too many arguments
 @info:shell%1: Syntax error, unknown command '%2'
 Arguments for command Command (see --commands) Command-line tool for network-transparent operations Destination URL KIO Client Non-interactive use: no message boxes Overwrite destination if it exists (for copy and move) Show available commands Source URL or URLs Unable to download from an invalid URL. file or URL Project-Id-Version: kde-runtime-kde4
Report-Msgid-Bugs-To: http://bugs.kde.org
POT-Creation-Date: 2016-11-19 11:45+0100
PO-Revision-Date: 2014-06-28 18:18+0000
Last-Translator: Volkan Gezer <volkangezer@gmail.com>
Language-Team: Turkish (http://www.transifex.com/projects/p/kde-runtime-k-tr/language/tr/)
Language: tr
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Plural-Forms: nplurals=2; plural=(n > 1);
 
Söz Dizimi:
             #  Dosyaları çöpe atmak için 'hedef', "trash:/"
            #   olarak kullanılabilir.
             #   Kısayol olarak, kioclient cp
            #   şeklinde de kullanılabilir.

             #   Kısayol olarak, kioclient mv
            #   şeklinde de kullanılabilir.

             #   Kısayol olarak kioclient rm
            #   şeklinde de kullanılabilir.

   kioclient cat 'url'
            # 'adresin' standart çıktısının içeriğini yazar

   kioclient copy 'kaynak' 'hedef'
            # 'kaynak' adresini 'hedefe' kopyalar.
            #   'kaynak' bir adresler listesi olabilir.
   kioclient download ['kaynak']
            # 'kaynak' adresini kullanıcının belirlediği
            #   'hedefe' kopyalar.
            #   'kaynak' bir adresler listesi olabilir.

   kioclient exec 'url' ['mime türü']
            # 'url' konumundaki dosyayı KDE'deki ilişkili uygulamayı kullanarak açar
            #   İsterseniz 'mime türü' vermeyebilirsiniz. Bu durumda mime türü
            #   otomatik olarak belirlenir. 'url' herhangi bir dosya olabileceği
            #   gibi bir *.desktop dosyası ya da bir çalıştırılabilir dosya da
            #   olabilir.
   kioclient exec .
             // Geçerli dizini açar. Çok kullanışlı.

   kioclient exec file:/home/weis/data/test.html
             // Dosyayı öntanımlı bağlayıcıyla açar

   kioclient exec file:/home/weis/data/test.html Netscape
             // Dosyayı netscape ile açar

   kioclient exec file:/root/Desktop/cdrom.desktop
             // CD-ROM'un bağlanma dizinini açar

   kioclient exec file:/root/Desktop/emacs.desktop
             // emacs uygulamasını başlatır

   kioclient exec ftp://localhost/
             // Yeni pencerede adres açar

   kioclient ls 'adres'
            # 'adreste' bulunan dizinin içeriğini standart çıkışa listeler

   kioclient move 'kaynak' 'hedef'
            # 'kaynak' adresi 'hedefe' taşır.
            #   'kaynak' bir adresler listesi olabilir.

   kioclient openProperties 'url'
            # Bir özellikler menüsü açar

   kioclient remove 'url'
            # 'url' adresindeki dosyayı siler
            #   'url' bir adresler listesi olabilir.

 *** Örnekler:
  kioclient exec file:/root/Desktop/cdrom.desktop "Öntanımlı bağla"
             // CD-ROM'u bağlar

 %1: Söz dizimi hatası, yeterli argüman yok
 %1: Söz dizimi hatası, çok fazla argüman
 %1: Söz dizimi hatası, bilinmeyen komut '%2'
 Komut için argümanlar Komut (bakınız --commands) Ağ geçişli işlemler için komut satırı aracı Hedef Adres KIO İstemcisi Etkileşimsiz kullanım: ileti kutusu kullanma Hedef mevcutsa üzerine yaz (kopyala ve taşı işlemi için) Kullanılabilir komutları göster Kaynak Adres ya da Adresler Geçersiz bir adresten indirilemedi. dosya veya adres 