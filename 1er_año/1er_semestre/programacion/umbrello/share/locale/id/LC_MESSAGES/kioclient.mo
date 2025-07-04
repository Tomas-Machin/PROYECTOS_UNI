��    #      4  /   L        	   	  X     S   l  S   �  S     P   h  y   �  �   3  �  �  R   �  e   �  g   T  e   �  P   "	  M   s	  X   �	  x   
  H   �
  d   �
  r   A  3   �  1   �  3        N     d  4   }     �  
   �  %   �  6   �     *     B  '   U     }  �  �     3  i   @  P   �  P   �  K   L  F   �  z   �  �   Z  �  +  O   �  g   4  h   �  `     U   f  S   �  O     }   `  F   �  e   %  q   �  '   �  ,   %  1   R     �     �  5   �  
   �  	   �  ,     =   /      m     �  .   �     �        #                                                        !                            
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
 Arguments for command Command (see --commands) Command-line tool for network-transparent operations Destination URL KIO Client Non-interactive use: no message boxes Overwrite destination if it exists (for copy and move) Show available commands Source URL or URLs Unable to download from an invalid URL. file or URL Project-Id-Version: kioclient
Report-Msgid-Bugs-To: http://bugs.kde.org
POT-Creation-Date: 2016-11-19 11:45+0100
PO-Revision-Date: 2014-02-01 21:16+0700
Last-Translator: Andhika Padmawan <andhika.padmawan@gmail.com>
Language-Team: Indonesian <translation-team-id@lists.sourceforge.net>
Language: id
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Plural-Forms: nplurals=1; plural=0;
 
Sintaksis:
             #   'dest' dapat berupa "trash:/" untuk memindahkan
            #   berkas ke tempat sampah.
             #   versi singkat dari kioclient cp
            #   juga tersedia.

             #   versi singkat dari kioclient mv
            #   juga tersedia.

             #   versi singkat kioclient rm
            #   juga tersedia.

   kioclient cat 'url'
            # Mengeluarkan isi 'url' ke stdout

   kioclient copy 'src' 'dest'
            # Menyalin URL 'src' ke 'dest'.
            #   'src' dapat berupa senarai URL.
   kioclient download ['src']
            # Menyalin URL 'src' ke lokasi yang ditentukan pengguna.
            #   'src' dapat berupa senarai URL, jika tidak ada maka
            #   sebuah URL akan diminta.

   kioclient exec 'url' ['mimetype']
            # Mencoba untuk membuka dokumen yang diarahkan oleh 'url', di aplikasi
            #   yang diasosiasikan dengannya di KDE. Anda dapat menghapus 'tipe mime'.
            #   Dalam hal ini tipe mime ditentukan secara
            #   otomatis. Tentu saja URL dapat berupa URL
            #   dokumen, atau mungkin berkas *.desktop.
            #   'url' bisa jadi berkas dapat dieksekusi pula.
   kioclient exec .
             // Membuka direktori saat ini. Sangat nyaman.

   kioclient exec file:/home/weis/data/tes.html
             // Membuka berkas dengan pengikat standar

   kioclient exec file:/home/weis/data/tes.html Netscape
             // Membuka berkas dengan netscape

   kioclient exec file:/root/Desktop/cdrom.desktop
             // Membuka direktori kait CDROM

   kioclient exec file:/root/Desktop/emacs.desktop
             // Menjalankan emacs

   kioclient exec ftp://localhost/
             // Membuka jendela baru dengan URL

   kioclient ls 'url'
            # Mengeluarkan isi direktori 'url' ke stdout

   kioclient move 'src' 'dest'
            # Memindahkan URL 'src' ke 'dest'.
            #   'src' dapat berupa senarai URL.
   kioclient openProperties 'url'
            # Membuka menu properti

   kioclient remove 'url'
            # Menghapus URL
            #   'url' dapat berupa senarai URL.
 *** Examples:
  kioclient exec file:/root/Desktop/cdrom.desktop "Standar kait"
             // Mengaitkan CDROM

 %1: Galat sintaksis, tak cukup argumen
 %1: Galat sintaksis, terlalu banyak argumen
 %1: Galat sintaksis, perintah tak diketahui '%2'
 Argumen untuk perintah Perintah (lihat --commands) Alat baris perintah untuk operasi transparan jaringan URL Tujuan Klien KIO Penggunaan non-interaktif: tanpa kotak pesan Timpa tujuan jika telah ada (untuk penyalinan dan pemindahan) Tampilkan perintah yang tersedia Sumber URL atau banyak URL Tak dapat mengunduh dari URL yang tidak valid. berkas atau URL 