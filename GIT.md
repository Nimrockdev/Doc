# GIT #

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

    git add .			#todos los ficheros
    git add nombre_fichero
    git add <dir>		#añade recursivamente todos los archivos del dir.

Diferencias  

    git diff

Estado del repositorio  

    git status -s

Visualizar Ramas locales y remotas	

    git branch -a

Visualizar Ramas remotas

    git branch -r

Eliminar Rama  

	git branch -d rama_nombre
	git branch -D rama_nombre-rama  

Elimminar rama remota  

	git push origin :rama_nombre

Visualizar Otras formas
	
    git ls-remote, muestra el SHA1 del último commit1
    git remote  
	
Visualizar los diferentes repositorios  

    git remote -v

Eliminar repositorios  

    git remote rm origin

Consolidar Cambios  
	
    git commit  
    git commit -m 'mensaje de confirmacion'  

Cambiar el mensaje del último commit. Esta instrucción abre el editor por defecto permitiendo editar el mensaje, al guardar se actualiza.  

	git commit --amend

Eliminar cambios que no están guardados

	 git checkout -- file

Mensaje recomendado para commit  

	Título: Resumen de los cambios 

	Explicación en mas detalle: 
	- Detalle 1
	- Detalle 2
	
	Pie: IDs de issue trackers...
	Resuelve: #001
	Afecta a: #254, #454

Eliminar último Commit, si no se ha enviado al origen

    git reset HEAD^ --hard

Eliminar último Commit sin perder los cambios, si no se ha enviado al origen  

    git reset HEAD^ --soft

Eliminar el último commit, en este caso ya se ha enviado al repositorio remoto  

    git reset HEAD^ --hard  
    git push origin -f

## Crear rama  

	git branch 							#lista ramas
	git branch <nombre-rama> 					#crea rama. Puntero al commit actual
	git checkout -b <nombre-rama> 					#crea y cambia de rama
	git merge <rama> 						#Mezcla la rama actual con <rama> remota
	git branch -d <rama> 						#elimina la rama
	git push origin --delete <branchName> 				#Elimina una rama del servidor
	git branch -v 							#lista ramas mostrando último commit
	git branch --merged 						#lista ramas que han sido mezcladas con la actual.
									Si no tienen un *, pueden borrarse, ya que significa que se han incorporado los cambios en la rama actual.
	git branch --no-merged 						#lista ramas que no han sido incorporadas a la actual

## Cambiar de rama  

	git checkout rama
	
		Ejemplo:
		git branch origin/prod       		 # en caso de no tenerla se crea la rama origin/prod
		git branch -a                		 # comprobar que realmente estamos en master
		git branch --track prod origin/prod  # si no lo tenemos ya asocia prod a origin/prod
		git checkout prod            		 # cambiamos a la rama prod
		git merge master             		 # se merguean los cambios desde master a prod
		git push                     		 # se suben los cambios del repositorio local al remoto
		git pull				 			 # se bajan los cambios al repositorio local Ramas Remotas

## En el momento de trabajar:

![GIT Flow](https://docs.microsoft.com/es-es/azure/architecture/framework/_images/hotfix-branches.png)

[docs.microsoft.com](https://docs.microsoft.com/es-es/azure/architecture/framework/_images/hotfix-branches.png)

   * Rama **master**: Rama de producción.
   	- Todos los commits tienen que ser optimos para subir a producción.
	- Cada vez que se incorpora código a master se genera una nueva versión.	
   * Rama **develop**: rama en la que está el código que conformará la siguiente versión planificada del proyecto.
    	- Trabajar en rama develop, para uso interno, rama de trabajo de donde salen las todas las ramas que existentes.
    
   ----
	* Feature, rama que parte y se incorpora siempre a develop.
        * Desarrollo de nuevas características.  
	   * Nombre: si no se usa git flow, fte_...
   ----
    * Release, se origina en develop con el fin de preparar una versión final y su testeo
   	   * Corrigen el código antes de pasar a master.
	   * Nombre: si no se usa git flow, rle_...  
   ----
	* Hotfix, se origina a partir de la rama master, se incorpra a master y develop.
   	   * Corrigen errores en producción.
	   * Nombre: si no se usa git flow, htx_...
   ----
	* Test, rama para testing, equivalente a release
        *  Nombre: No esta en gitflow, tsg_---
   ----



Ver cambios con ficheros afectados
 
    git log -p

Ver la diferencia entre los archivos que están añadidos y los cambios que aún no están  
 
    git diff

Envío de cambios, enviar los cambios de copia local al repositorio  

    git push origin master 	#master es la rama a al que quieres enviar tus cambios

Conectar a un repositorio local a uno remoto  

    git remote add origin <server>	#Ruta del servidor
    git remote add origin https://github.com/xx/xx.git


Cambiar la url del repositorio  
	
	git remote set-url origin git@github.com:user/project.git
	git remote set-url origin https://github.com/user/project.git  


Eliminar ficheros del repositorio
 
    git rm file
    git commit -m 'comentario del delete' file
    git push

Revertir ficheros no commiteados  

    git checkout -- file

Revertir todos los ficheros modificados  

    git checkout .

Deshacer el último commit no enviado con push  

    git reset --hard HEAD~1


Si haces un commit y ves que te has equivocado, basta con que añadas con git add los cambios que faltaran en el área de preparación y hagas un nuevo commit, pero con el sufijo--amend. Esto hará que los cambios se incluyan en el último commit realizado, sin tener que crear uno adicional para corregir el error. Si quieres puedes incluir un -m XXXXXX y modificar el mensaje del mismo.


	git commit -m 'Commit erroneo'
	git add fichero_pendiente
	$ git commit --amend


Revertir el último cambiado, al que se le ha hecho push  

	git push -f origin last_commit:branch

Clonar Repositorio donde estemos posicionados 

	git clone https://github.com/atareao/ejemplo01.git
	git clone username@host:/path/to/repository
	git clone /path/to/repository

	git clone <uri> namedir # clona usando como nombre de directorio namedir.

Visualizar todos los repositorios remotos  

    git remote -v


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

## Actualiza & Fusiona

Para actualizar tu repositorio local al commit más nuevo, ejecuta  

    git pull	
	
en tu directorio de trabajo para bajar y fusionar los cambios remotos.
Para fusionar otra rama a tu rama activa,

    git merge <branch>

en ambos casos git intentará fusionar automáticamente los cambios. Es posible que se produzcan conflictos. Somos los responsables de solucionar los conflictos manualmente al editar los archivos mostrados por git. Después de editarlos, los marcaremos como editados

    git add <filename>
	
Antes de fusionar podemos revisar los cambios

    git diff <source_branch> <target_branch>

Para deshacer todos los cambios locales y commits realizados, podemos recuperar la versión del servidor y apuntar a tu copia local principal de esta forma.

	git fetch origin
	git reset --hard origin/master

## Fast Forward  
Se realiza al realizar commit entre ramas que no presentan conflictos.
Se suele hacer por ejemplo: entre rama_original (sin cambios) y rama que parte de original.

## REBASE
Añade los cambios de la rama a integrar en la rama develop eliminando el historial de cambios, hace que sea más simple el historial.

 

## Etiquetas

Se recomienda crear etiquetas para cada nueva versión publicada de un  Puedes crear una nueva etiqueta llamada 1.0.0 ejecutando  

	git tag -a v1.4.0 -m "my version 1.4.0"

	Puedes obtener el commit id con, para salir q+Enter
		git log

	Subir Etiquetas
	git push origin --tags  

### Para eliminarlo en local  
	`git tag --delete nombretag`

### Para eliminarlo en servidor  
	`git push --delete origin nombretag`  
	
### Para listar	

## Obtener usuario y email

	git config  user.name
	git config  user.email

## Configurar GIT para todos los repositorios 

	git config --global user.name "xxx"
	git config --global user.email xxx@email.es
	
## Configurar GIT para el repositorio actual

	git config user.email xxx@email.es
	git config user.name "xxx"
	

## Configurar nano para editar desde el terminal  

	git config --global core.editor nano

## Visualizar la configuración del repositorio  

	git config --list


## Cherry Pick ##

Trasladar a la rama master un commit determinado de una rama sin mergear toda la rama. Solo 1 commit.

	git cherry-pick 3cdd67fed7ce2265cb366787455da6fc34c022f5


## Stash ##

Para cambiar de la rama de trabajo a otra sin guardar las modificaciones no confirmadas.
	
	git stash

Para guardar stash con un nombre.  

	git stash save "Requisito 01"   

Para visualizar los stash.  
El stash{0} siempre es el cambio mas actual, en la parte superior de la lista.  

	git stash list

Para recuperar el trabajo incompleto, si solo hay un stash.  
 
	git stash pop

Para recuperar el trabajo incompleto de la list.  

	git stash apply stash@{0}  
	git stash apply stash@{1}

Para eliminar un stash de la lista.  

	git stash drop stash@{0}




# VIM #

Para conflictos, revisar el Doc/VIM

## Credenciales

Para evitar que git pregunte cada vez por las credenciales, activamos el store. la próxima vez que las utilicemos quedarán grabadas.

	git config --global credential.helper store

Si queremos que caduque en una hora

	git config --global credential.helper 'cache --timeout=3600'
	
## Errores  

### Bloqueo

Existe un bloqueo por una operación sin finalizar.

`Another git process seems to be running in this repository e.g. an editor opened by 'git commit'`

Utilizar

	rm -f .git/index.lock





>En desarrollo
