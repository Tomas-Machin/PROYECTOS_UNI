��            )         �  	   �  X   �  S     S   h  S   �  P     y   a  �   �  �  �  R   C  e   �  g   �  e   d  P   �  M   	  X   i	  x   �	  H   ;
  d   �
  r   �
     \     r  4   �     �  
   �  %   �  6        8     P  '   c  �  �     Y  b   f  T   �  T     T   s  Z   �  �   #  �   �  �  �  P   Q  q   �  i     j   ~  Q   �  N   ;  Y   �  �   �  L   {  �   �  t   Q     �     �  ]   �  
   V  
   a  ;   l  H   �  %   �       ,   .                        
                                        	                                                                        
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

 Arguments for command Command (see --commands) Command-line tool for network-transparent operations Destination URL KIO Client Non-interactive use: no message boxes Overwrite destination if it exists (for copy and move) Show available commands Source URL or URLs Unable to download from an invalid URL. Project-Id-Version: kdebase/kioclient.po
Report-Msgid-Bugs-To: http://bugs.kde.org
POT-Creation-Date: 2016-11-19 11:45+0100
PO-Revision-Date: 2007-07-08 10:16-0500
Last-Translator: Kevin Scannell <kscanne@gmail.com>
Language-Team: Irish <gaeilge-gnulinux@lists.sourceforge.net>
Language: ga
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Plural-Forms: nplurals=5; plural=n==1 ? 0 : n==2 ? 1 : n<7 ? 2 : n < 11 ? 3 : 4
 
Comhréir:
             #   Tabhair "trash:/" ar 'sprioc' chun na comhaid
            #   a chur sa bhruscar.
             #   tá an leagan gearr kioclient cp
            #   ar fáil freisin.

             #   tá an leagan gearr kioclient mv
            #   ar fáil freisin.

             #   tá an leagan gearr kioclient rm
            #   ar fáil freisin.

   kioclient cat 'url'
            # Scríobh inneachar de 'url' go dtí an gnáth-aschur

   kioclient copy 'foinse' 'sprioc'
            # Cóipeáil an URL 'foinse' go 'sprioc'.
            #    Is féidir 'foinse' a bheith ina liosta de URLanna.
   kioclient download ['foinse']
            # Cóipeáil an URL 'foinse' go suíomh a shonraíonn an t-úsáideoir.
            #   Is féidir 'foinse' a bheith ina liosta de URLanna; gan 'foinse',
            #   iarrfar URL ort.

   kioclient exec 'url' ['cineál MIME']
            # Bain triail as an gcáipéis ag 'url' a oscailt san fheidhmchlár
            #   a bhaineann leis i KDE. Is féidir an cineál MIME a fhágáil ar lár,
            #   agus déanfar an cineál MIME amach go huathoibríoch.
            #   Ar ndóigh, is féidir URL de cháipéis a thabhairt, nó de chomhad *.desktop,
            #   nó de chlár inrite freisin.
   kioclient exec .
             // Oscail an chomhadlann reatha. An-áisiúil.

   kioclient exec file:/home/kps/gaeilge/sauce.html
             // Oscail an comhad le ceangal réamhshocraithe

   kioclient exec file:/home/kps/gaeilge/sauce.html Netscape
             // Oscail an comhad i Netscape

   kioclient exec file:/root/Desktop/cdrom.desktop
             // Oscail comhadlann fheistithe an CD-ROM

   kioclient exec file:/root/Desktop/emacs.desktop
             // Tosaigh emacs

   kioclient exec ftp://localhost/
             // Oscail fuinneog nua le URL

   kioclient ls 'url'
            # Scríobh inneachar de 'url' go dtí an gnáth-aschur

   kioclient move 'foinse' 'sprioc'
            # Bog an URL 'foinse' go 'sprioc'.
            #   Is féidir 'foinse' a bheith ina liosta de URLanna.
   kioclient openProperties 'url'
            # Oscail roghchlár airíonna

   kioclient remove 'url'
            # Baineann sé seo an URL
            #   Is féidir liosta URLanna a thabhairt mar 'url' freisin.
 *** Samplaí:
  kioclient exec file:/root/Desktop/cdrom.desktop "Mount default"
             // Feistigh an CD-ROM

 Argóintí don ordú Ordú (féach ar --commands) Uirlis lenar féidir oibríochtaí líonra thrédhearcaigh a dhéanamh ó líne na n-orduithe URL sprice Cliant KIO Úsáid neamh-idirghníomhach: gan bhoscaí teachtaireachta Scríobh ar an sprioc-chomhad má tá sé ann (cóipeáil agus aistriú) Taispeáin na horduithe atá ar fáil URL nó URLanna Foinse Ní féidir íosluchtú ó URL neamhbhailí. 