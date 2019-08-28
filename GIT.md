Ayuda  

	git help <command>
	
Directorio donde estamos  

	pwd

Eliminar repositorio  

    rm -rf directoryname
    o
    cd carpeta/
    rm -rf .git

Para iniciar proyecto  

    git init

Añadir Ficheros  

	git add . 				#todos los ficheros
	git add nombre_fichero
	git add <dir> 			#añade recursivamente todos los archivos del dir.

Diferencias  

	git diff

Estado del repositorio  

	git status -s
	
Consolidar Cambios  

	git commit -m 'mensaje de confirmacion'

Crear rama  

	git branch 								#lista ramas
	git branch <nombre-rama> 				#crea rama. Puntero al commit actual
	git checkout -b <nombre-rama> 			#crea y cambia de rama
	git merge <rama> 						#Mezcla la rama actual con <rama> remota
	git branch -d <rama> 					#elimina la rama
	git push origin --delete <branchName> 	#Elimina una rama del servidor
	git branch -v 							#lista ramas mostrando último commit
	git branch --merged 					#lista ramas que han sido mezcladas con la actual.
											 Si no tienen un *, pueden borrarse, ya que significa que se han incorporado los cambios en la rama actual.
	git branch --no-merged 					#lista ramas que no han sido incorporadas a la actual

Cambiar de rama
	git checkout rama
	
		Ejemplo:
		git branch origin/prod       		 # en caso de no tenerla se crea la rama origin/prod
		git branch -a                		 # comprobar que realmente estamos en master
		git branch --track prod origin/prod  # si no lo tenemos ya asocia prod a origin/prod
		git checkout prod            		 # cambiamos a la rama prod
		git merge master             		 # se merguean los cambios desde master a prod
		git push                     		 # se suben los cambios del repositorio local al remoto
		git pull							 # se bajan los cambios al repositorio local Ramas Remotas




Ver la diferencia entre los archivos que están añadidos y los cambios que aún no están  
 
	git diff

Envío de cambios, enviar los cambios de copia local al repositorio  

	git push origin master 	#master es larama a al que quieres enviar tus cambios

Conectar a un repositorio local a uno remoto  

	git remote add origin <server>	#Ruta del servidor

Eliminar ficheros del repositorio

 
	git rm file
	git commit -m 'comentario del delete' file
	git push

Revertir ficheros no commiteados  

	'git checkout -- file'

Revertir todos los ficheros modificados  

    git checkout .

Deshacer el último commit no enviado con push  

	git reset --hard HEAD~1

Configurar GIT  

	git config --global user.name "atareao"
	git config --global user.email atareao@atareao.es

Configurar nano para editar desde el terminal  

	git config --global core.editor nano

Visualizar la configuración del repositorio  

	git config --list

Revertir el último cambiado, al que se le ha hecho push  

	git push -f origin last_commit:branch

Clonar Repositorio donde estemos posicionados 

	git clone https://github.com/atareao/ejemplo01.git
	git clone username@host:/path/to/repository
	git clone /path/to/repository

	git clone <uri> namedir # clona usando como nombre de directorio namedir.


Las ramas son utilizadas para desarrollar funcionalidades aisladas unas de otras.
 
La rama master es la rama "por defecto" cuando creas un repositorio. 

	Crea nuevas ramas durante el desarrollo y fusiónalas a la rama principal cuando termines. 
		Crea una nueva rama llamada "feature_x" y cámbiate a ella usando
			git checkout -b feature_x
		vuelve a la rama principal
			git checkout master
		y borra la rama
			git branch -d feature_x

	Una rama nueva no estará disponible para los demás a menos que subas (push) la rama a tu repositorio remoto
		git push origin <branch>

Actualiza & Fusiona

	Para actualizar tu repositorio local al commit más nuevo, ejecuta
		git pull	
	
	en tu directorio de trabajo para bajar y fusionar los cambios remotos.
	Para fusionar otra rama a tu rama activa (por ejemplo master), utiliza
		git merge <branch>

	en ambos casos git intentará fusionar automáticamente los cambios. Desafortunadamente, no siempre será posible y se podrán producir conflictos. Tú eres responsable de fusionar esos conflictos manualmente al editar los archivos mostrados por git. Después de modificarlos, necesitas marcarlos como fusionados con
		git add <filename>
	
	Antes de fusionar los cambios, puedes revisarlos usando
		git diff <source_branch> <target_branch>

Etiquetas

	Se recomienda crear etiquetas para cada nueva versión publicada de un software. Este concepto no es nuevo, ya que estaba disponible en SVN. Puedes crear una nueva etiqueta llamada 1.0.0 ejecutando
		git tag 1.0.0 1b2e1d63ff
	1b2e1d63ff se refiere a los 10 caracteres del commit id al cual quieres referirte con tu etiqueta. 
	Puedes obtener el commit id con
		git log
	también puedes usar menos caracteres que el commit id, pero debe ser un valor único. 


Rreemplaza cambios locales.
Este comando reemplaza los cambios en tu directorio de trabajo con el último contenido de HEAD. Los cambios que ya han sido agregados al Index, así como también los nuevos archivos, se mantendrán sin cambio.  

	git checkout -- <filename>

Por otro lado, si quieres deshacer todos los cambios locales y commits, puedes traer la última versión del servidor y apuntar a tu copia local principal de esta forma.

	git fetch origin
	git reset --hard origin/master

REBASE
Rebase y merge se diferencian en que merge mezcla dos puntos finales de dos snapshots y rebase aplica cada uno de los cambios a la rama en la que se hace el rebase. No lo uses en repos publicos con mas colaboradores, porque todos los demas tendrán que hacer re-merges.  


    git checkout <una rama>
    git rebase master # aplica todos los cambios de <una rama> a master
    git merge master # hay que hacer un merge de tipo fast forward
    Tenemos 3 ramas, master, client y server, en server y client tenemos varios commit y queremos mezclar client en master pero dejar server intacta:
        git rebase --onto master server client # adivina los patches del antecesor común de las ramas server y client y aplica los cambios a master.
        git checkout master
        git merge client # fast-forward. Client y master en el mismo snapshot

    Si se quiere aplicar también los cambios de server, basta con:
        git rebase master server
        git checkout master
        git merge server

    git rebase [basebranch] [topicbranch] # sintaxis de rebase

    git rebase -i # Rebase interactivo

	

Etiquetas

Subir Etiquetas
git push origin --tags , envia los cambios y los tags


echo "# Doc" >> README.md
git init
git add README.md
git commit -m "first commit"
git remote add origin https://github.com/jsg8405/Doc.git
git push -u origin master

Ver diferencias  
git log
Para salir q+Enter