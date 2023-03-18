<div style="text-align:center">
    <img src ="https://raw.githubusercontent.com/RainingComputers/whipFTP/master/Screenshot.png" />
</div>

# About
whipFTP is a FTP/SFTP client written in python using the tkinter GUI toolkit. Can upload, download, create, rename, copy, move and search files/folders.
#### Currently supported platforms:
+ Linux
+ Windows XP/7/10
+ MacOS

#Errors fund
home/eureka/Documents/master/network_proto/project/FTP/whipFTP.py:24: SyntaxWarning: "is" with a literal. Did you mean "=="?
  if(platform.system() is 'Windows'):
/home/eureka/Documents/master/network_proto/project/FTP/whipFTP.py:441: SyntaxWarning: "is" with a literal. Did you mean "=="?
  if len(self.file_list) is 0:
/home/eureka/Documents/master/network_proto/project/FTP/whipFTP.py:677: SyntaxWarning: "is not" with a literal. Did you mean "!="?
  if(len(self.selected_file_indices) is not 1): return
/home/eureka/Documents/master/network_proto/project/FTP/whipFTP.py:1095: SyntaxWarning: "is" with a literal. Did you mean "=="?
  while self.replace_window.command is '':
/home/eureka/Documents/master/network_proto/project/FTP/whipFTP.py:1095: SyntaxWarning: "is" with a literal. Did you mean "=="?
  while self.replace_window.command is '':
/home/eureka/Documents/master/network_proto/project/FTP/whipFTP.py:1097: SyntaxWarning: "is" with a literal. Did you mean "=="?
  if (self.replace_window.command is 'skip'): return False
/home/eureka/Documents/master/network_proto/project/FTP/whipFTP.py:1098: SyntaxWarning: "is" with a literal. Did you mean "=="?
  elif (self.replace_window.command is 'replace'): return True
/home/eureka/Documents/master/network_proto/project/FTP/whipFTP.py:1099: SyntaxWarning: "is" with a literal. Did you mean "=="?
  elif (self.replace_window.command is 'skip_all'):
/home/eureka/Documents/master/network_proto/project/FTP/whipFTP.py:1102: SyntaxWarning: "is" with a literal. Did you mean "=="?
  elif (self.replace_window.command is 'replace_all'):
/home/eureka/Documents/master/network_proto/project/FTP/whipFTP.py:1205: SyntaxWarning: "is" with a literal. Did you mean "=="?
  if(platform.system() is 'Windows' and platform.release() != '7'):
Traceback (most recent call last):
  File "/home/eureka/Documents/master/network_proto/project/FTP/whipFTP.py", line 14, in <module> 

#Upload syntaxes depreciate before to Run #2k23 
 
Ces erreurs de syntaxe sont toutes liées à l'utilisation de l'opérateur is avec des littéraux (comme des chaînes de caractères), ce qui est généralement une mauvaise pratique en Python. L'opérateur is vérifie si deux objets sont identiques en termes de référence mémoire, tandis que l'opérateur == vérifie si deux objets sont égaux en termes de valeur.

Pour corriger ces erreurs, remplacez chaque instance de l'opérateur is avec == lorsque vous comparez des littéraux.

Par exemple, la ligne:

if(platform.system() is 'Windows'):

devrait être corrigée en:

if platform.system() == 'Windows':

et ainsi de suite pour toutes les autres occurrences de l'opérateur is avec des littéraux.

==============================================================================================

File "/home/eureka/Documents/master/network_proto/project/FTP/whipFTP.py", line 677
    if(len(self.selected_file_indices) == not 1): return
                                          ^^^
SyntaxError: invalid syntax`

L'erreur de syntaxe indiquée dans votre message d'erreur est causée par une utilisation incorrecte de l'opérateur not. Dans la ligne 677 de votre fichier whipFTP.py, vous avez utilisé l'opérateur not de manière incorrecte.

La ligne en question est:

if(len(self.selected_file_indices) == not 1): return

Il semble que vous essayiez de vérifier si la longueur de la liste self.selected_file_indices n'est pas égale à 1. Cependant, la syntaxe == not est incorrecte en Python.

Pour corriger cette erreur, vous pouvez remplacer == not par !=, qui est l'opérateur correct pour vérifier si deux valeurs ne sont pas égales. La ligne corrigée serait:

if len(self.selected_file_indices) != 1: return

Cela devrait résoudre l'erreur de syntaxe.

==============================================================================================
`Traceback (most recent call last):
  File "/home/eureka/Documents/master/network_proto/project/FTP/whipFTP.py", line 14, in <module>
    from tkinter import *
ModuleNotFoundError: No module named 'tkinter'`

L'erreur que vous rencontrez indique que le module tkinter n'est pas installé ou n'est pas accessible pour votre programme. tkinter est un module standard de Python qui fournit une interface graphique utilisateur (GUI).

Pour résoudre cette erreur, vous pouvez installer le module tkinter en utilisant la commande d'installation de packages pip:

`pip install tk`
Si vous utilisez Debian ou Ubuntu, vous pouvez installer le paquet en exécutant la commande suivante dans un terminal :
`sudo apt-get install python3-tk`




# Getting whipFTP

#### Ubuntu/Debian:
+  Download the [.deb](https://github.com/RainingComputers/whipFTP/releases/download/v5.0/whipFTP_5.0.deb) file and install it.

#### Windows:
+ Install Python (minimum required version: python3.6.3 for 10/7 and python3.4.0 for XP), download the [.zip](https://github.com/RainingComputers/whipFTP/releases/download/v5.0/whipFTP_5.0_windows.zip) file and extract it. Run `install_dependencies.py` script to install dependencies. Now you can run `whipFTP.pyw` to launch the application.

#### MacOS:
+ Not released yet. Use `git clone` or 'download zip', Install Python (minimum required version: python3.6.3). Run `install_dependencies.py` script to install dependencies. Now you can run `whipFTP.py` to launch the application.

#### Other Linux distributions:
+ Install Python (minimum required version: python3.6.3), download the [.zip](https://github.com/RainingComputers/whipFTP/releases/download/v5.0/whipFTP_5.0_linux.zip) file and extract it. Run `install_dependencies.py` script to install dependencies. Now you can run `whipFTP.py` to launch the application.

# Controls
+ ![](https://raw.githubusercontent.com/RainingComputers/whipFTP/master/Icons/connect_big.png)
*Start connection*
+ ![](https://raw.githubusercontent.com/RainingComputers/whipFTP/master/Icons/upload_big.png)
*Upload files or folders*
+ ![](https://raw.githubusercontent.com/RainingComputers/whipFTP/master/Icons/download_big.png)
*Save/Download files or folders*
+ ![](https://raw.githubusercontent.com/RainingComputers/whipFTP/master/Icons/newfolder_big.png)
*Create a new directory*
+ ![](https://raw.githubusercontent.com/RainingComputers/whipFTP/master/Icons/delete_big.png)
*Delete files or folders*
+ ![](https://raw.githubusercontent.com/RainingComputers/whipFTP/master/Icons/properties_big.png)
*Edit/View properties*
+ ![](https://raw.githubusercontent.com/RainingComputers/whipFTP/master/Icons/cut_big.png)
*Cut*
+ ![](https://raw.githubusercontent.com/RainingComputers/whipFTP/master/Icons/copy_big.png)
*Copy*
+ ![](https://raw.githubusercontent.com/RainingComputers/whipFTP/master/Icons/paste_big.png)
*Paste*
+ ![](https://raw.githubusercontent.com/RainingComputers/whipFTP/master/Icons/info_big.png)
*About/Help*
+ ![](https://raw.githubusercontent.com/RainingComputers/whipFTP/master/Icons/gotopath_big.png)
*Goto a path*
+ ![](https://raw.githubusercontent.com/RainingComputers/whipFTP/master/Icons/search_big.png)
*Search/Find files or folders*
+ ![](https://raw.githubusercontent.com/RainingComputers/whipFTP/master/Icons/up_big.png)
*Goto parent directory*

# License
+ MIT License. See: https://github.com/RainingComputers/whipFTP/blob/master/LICENSE.md

# Bugs
+ Application looks blurry when DPI scaling is enabled.
+ Search on the root directory does not work.

# Note
This project is currently being rewritten in wxpython.
