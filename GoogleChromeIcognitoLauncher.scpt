FasdUAS 1.101.10   ��   ��    k             l      ��  ��   ��
 * Google Chrome Incognito Launcher
 * by Peter Lucak (pkl2104@columbia.edu)
 *
 * This AppleScript program is used to launch Google Chrome in incognito mode.
 * There are a number of scripts which do the same thing around the internet
 * but most of them only concern when Google Chrome launches, mine does more.
 * It was designed to act exacly as an application should which means
 * that no matter what when you click the application you will be presented
 * with a Google Chrome Incognito window.
 *
 * Here is a rundown of how it works:
 * My script allows a user with a click of a button to always get an incognito window 
 * no matter what the state of the program is.
 * - When an instance of Google Chrome is not running the script simply launches
 *   Google Chrome with an incognito window.
 * - When a instance of Google Chrome is running the script checks to see if 
 *   an incognito window is open and then:
 *      - If an icognito window is open then it merely brings that window to the
 *        the front (if you would like it to open a new tab as well you
 *        uncomment a line below to activate that functionality).
 *      - If an icognito is not open then we open a new one.
 *
 * Enjoy!
 * PS. Also my application does everything completely through AppleScript GUI programming.
 *       It never resorts to running anything on the shell.
 * PPS. Please email me if you have any comments or concerns.
      � 	 	0 
   *   G o o g l e   C h r o m e   I n c o g n i t o   L a u n c h e r 
   *   b y   P e t e r   L u c a k   ( p k l 2 1 0 4 @ c o l u m b i a . e d u ) 
   * 
   *   T h i s   A p p l e S c r i p t   p r o g r a m   i s   u s e d   t o   l a u n c h   G o o g l e   C h r o m e   i n   i n c o g n i t o   m o d e . 
   *   T h e r e   a r e   a   n u m b e r   o f   s c r i p t s   w h i c h   d o   t h e   s a m e   t h i n g   a r o u n d   t h e   i n t e r n e t 
   *   b u t   m o s t   o f   t h e m   o n l y   c o n c e r n   w h e n   G o o g l e   C h r o m e   l a u n c h e s ,   m i n e   d o e s   m o r e . 
   *   I t   w a s   d e s i g n e d   t o   a c t   e x a c l y   a s   a n   a p p l i c a t i o n   s h o u l d   w h i c h   m e a n s 
   *   t h a t   n o   m a t t e r   w h a t   w h e n   y o u   c l i c k   t h e   a p p l i c a t i o n   y o u   w i l l   b e   p r e s e n t e d 
   *   w i t h   a   G o o g l e   C h r o m e   I n c o g n i t o   w i n d o w . 
   * 
   *   H e r e   i s   a   r u n d o w n   o f   h o w   i t   w o r k s : 
   *   M y   s c r i p t   a l l o w s   a   u s e r   w i t h   a   c l i c k   o f   a   b u t t o n   t o   a l w a y s   g e t   a n   i n c o g n i t o   w i n d o w   
   *   n o   m a t t e r   w h a t   t h e   s t a t e   o f   t h e   p r o g r a m   i s . 
   *   -   W h e n   a n   i n s t a n c e   o f   G o o g l e   C h r o m e   i s   n o t   r u n n i n g   t h e   s c r i p t   s i m p l y   l a u n c h e s 
   *       G o o g l e   C h r o m e   w i t h   a n   i n c o g n i t o   w i n d o w . 
   *   -   W h e n   a   i n s t a n c e   o f   G o o g l e   C h r o m e   i s   r u n n i n g   t h e   s c r i p t   c h e c k s   t o   s e e   i f   
   *       a n   i n c o g n i t o   w i n d o w   i s   o p e n   a n d   t h e n : 
   *             -   I f   a n   i c o g n i t o   w i n d o w   i s   o p e n   t h e n   i t   m e r e l y   b r i n g s   t h a t   w i n d o w   t o   t h e 
   *                 t h e   f r o n t   ( i f   y o u   w o u l d   l i k e   i t   t o   o p e n   a   n e w   t a b   a s   w e l l   y o u 
   *                 u n c o m m e n t   a   l i n e   b e l o w   t o   a c t i v a t e   t h a t   f u n c t i o n a l i t y ) . 
   *             -   I f   a n   i c o g n i t o   i s   n o t   o p e n   t h e n   w e   o p e n   a   n e w   o n e . 
   * 
   *   E n j o y ! 
   *   P S .   A l s o   m y   a p p l i c a t i o n   d o e s   e v e r y t h i n g   c o m p l e t e l y   t h r o u g h   A p p l e S c r i p t   G U I   p r o g r a m m i n g . 
   *               I t   n e v e r   r e s o r t s   t o   r u n n i n g   a n y t h i n g   o n   t h e   s h e l l . 
   *   P P S .   P l e a s e   e m a i l   m e   i f   y o u   h a v e   a n y   c o m m e n t s   o r   c o n c e r n s . 
     
  
 l    � ����  O     �    Z    �  ��   =   	    n        1    ��
�� 
prun   g      m    ��
�� boovtrue  k    e       l        O       r        m    ��
�� boovtrue  n         !   1    ��
�� 
pisf ! 4    �� "
�� 
prcs " m     # # � $ $  G o o g l e   C h r o m e  m     % %�                                                                                  sevs  alis    �  Machintosh HD              �|�ZH+    +System Events.app                                               +��7��        ����  	                CoreServices    �|�      �8'7      +   �   �  ;Machintosh HD:System:Library:CoreServices:System Events.app   $  S y s t e m   E v e n t s . a p p    M a c h i n t o s h   H D  -System/Library/CoreServices/System Events.app   / ��    "  brings application to front     � & & 8   b r i n g s   a p p l i c a t i o n   t o   f r o n t   ' ( ' r     ) * ) m    ��
�� 
null * o      ���� (0 theincognitowindow theIncognitoWindow (  + , + X    F -�� . - Z   0 A / 0���� / =  0 5 1 2 1 n   0 3 3 4 3 1   1 3��
�� 
mode 4 o   0 1���� $0 thecurrentwindow theCurrentWindow 2 m   3 4 5 5 � 6 6  i n c o g n i t o 0 k   8 = 7 7  8 9 8 r   8 ; : ; : o   8 9���� $0 thecurrentwindow theCurrentWindow ; o      ���� (0 theincognitowindow theIncognitoWindow 9  <�� <  S   < =��  ��  ��  �� $0 thecurrentwindow theCurrentWindow . 2  ! $��
�� 
cwin ,  =�� = Z   G e > ?�� @ > =  G J A B A o   G H���� (0 theincognitowindow theIncognitoWindow B m   H I��
�� 
null ? I  M [���� C
�� .corecrel****      � null��   C �� D E
�� 
kocl D m   O P��
�� 
cwin E �� F��
�� 
prdt F K   Q U G G �� H��
�� 
mode H m   R S I I � J J  i n c o g n i t o��  ��  ��   @ k   ^ e K K  L M L l  ^ ^�� N O��   N Y S uncomment the below code to make new tab in the incognito when it brought to front    O � P P �   u n c o m m e n t   t h e   b e l o w   c o d e   t o   m a k e   n e w   t a b   i n   t h e   i n c o g n i t o   w h e n   i t   b r o u g h t   t o   f r o n t M  Q R Q l  ^ ^�� S T��   S 8 2 make new tab at end of tabs of theIncognitoWindow    T � U U d   m a k e   n e w   t a b   a t   e n d   o f   t a b s   o f   t h e I n c o g n i t o W i n d o w R  V�� V r   ^ e W X W m   ^ _��
�� boovtrue X n       Y Z Y 1   ` d��
�� 
pvis Z o   _ `���� (0 theincognitowindow theIncognitoWindow��  ��  ��    k   h � [ [  \ ] \ I  h m�� ^��
�� .miscactvnull��� ��� null ^ m   h i _ _�                                                                                  rimZ  alis    j  Machintosh HD              �|�ZH+    3Google Chrome.app                                              �+�>�        ����  	                Applications    �|�      ��      3  ,Machintosh HD:Applications:Google Chrome.app  $  G o o g l e   C h r o m e . a p p    M a c h i n t o s h   H D  Applications/Google Chrome.app  / ��  ��   ]  ` a ` I  n u�� b��
�� .coreclosnull���     obj  b 2   n q��
�� 
cwin��   a  c�� c I  v ����� d
�� .corecrel****      � null��   d �� e f
�� 
kocl e m   x y��
�� 
cwin f �� g��
�� 
prdt g K   z � h h �� i��
�� 
mode i m   { ~ j j � k k  i n c o g n i t o��  ��  ��    m      l l�                                                                                  rimZ  alis    j  Machintosh HD              �|�ZH+    3Google Chrome.app                                              �+�>�        ����  	                Applications    �|�      ��      3  ,Machintosh HD:Applications:Google Chrome.app  $  G o o g l e   C h r o m e . a p p    M a c h i n t o s h   H D  Applications/Google Chrome.app  / ��  ��  ��     m�� m l     ��������  ��  ��  ��       �� n o��   n ��
�� .aevtoappnull  �   � **** o �� p���� q r��
�� .aevtoappnull  �   � **** p k     � s s  
����  ��  ��   q ���� $0 thecurrentwindow theCurrentWindow r  l�� %�� #���������������� 5�� I���������� j
�� 
prun
�� 
prcs
�� 
pisf
�� 
null�� (0 theincognitowindow theIncognitoWindow
�� 
cwin
�� 
kocl
�� 
cobj
�� .corecnte****       ****
�� 
mode
�� 
prdt�� 
�� .corecrel****      � null
�� 
pvis
�� .miscactvnull��� ��� null
�� .coreclosnull���     obj �� �� �*�,e  ^� 
e*��/�,FUO�E�O '*�-[��l kh  ��,�  
�E�OY h[OY��O��  *�����la  Y 	e�a ,FY  �j O*�-j O*����a la  U ascr  ��ޭ