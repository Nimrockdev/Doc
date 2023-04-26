# Dependencias de node.js

```
  "dependencies": {
    "body-parser": "^1.20.2",
    }
 ```
   
   1 - Versión mayor
    Novedades importantes del paquete, contiene cambios importantes, puede que tenga incompatibilidades.
   0 - Versión menor
    Nuevas funcionalidades compatibles con versiones anteriores.
   4 - Parche versión
    Corrección de problemas actuales, compatibles con versiones anteriores
  
 # Control de dependencias  
 "body-parser": "1.20.2" > Instala la versión concreta  
 "body-parser": "^1.2.4" > Instala la versión menor más alta posible, sin pasar de versión mayor. Opción por defecto
 "body-parser": "~1.2.4" > Instala solo los parches
 
 
 # Actualización
 
 Mediante 'npm outdate' veremos las versiones actuales, a instalar y la última de los módules  
 
 Package                    Current  Wanted   Latest  Location                                Depended by
  body-parser                 1.14.1  1.20.2   1.20.2  node_modules/body-parser                XXXXX
  chai                         3.3.0   3.5.0    4.3.7  node_modules/chai                       XXXXX

## Usaremos npm -check para actualizar las dependecias  
´npm install -g npm-check´  
Mediante ´npm-check -u´ lanzaremos el menu interactivo donde podemos ver los paquetes separados por nivel de importancia.
Este menú interactivo nos permite movernos con el cursor por la lista y selecionar con la tecla espacio los paquetes que queremos instalar.

Otras opciones  
-y	Actualiza todo sin preguntar
-p	Actualiza sólo las de producción.
-d	Actualiza sólo las de desarrollo.
-g	Actualiza los paquetes globales del sistema, no los del proyecto.
-u	Menú interactivo
