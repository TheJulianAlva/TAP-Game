# Proyecto Tópicos Avanzados de Programación
### Creadores:
- Julian Alva
- Carolina Ledesma
<br><br><br>
>## Sintaxis para el proyecto:
>### Objetos Nuevos:
>>- Los ***objetos*** y ***pantallas*** nuevos se almacenan dentro de carpetas que tengan el **mismo nombre**.
>>- Se nombran en **inglés**.
>>- Para nombrarlos se utilizan solo **minúsculas** y con **guiones bajos** para separar entre palabras.
>>#### Ejemplo: `screen_principal/screen_principal.tscn`.
>
>### Carpetas:
>>- Las carpetas creadas para almacenar **más de un objeto**, pantalla o recurso deben ser creadas en **mayusculas** y con **guiones bajos** para separar entre palabras.
>>#### Ejemplo: `source/SCREENS/NON_GAME_SCREENS`.
>
>### Resources:
>>- Dentro de *`Resources`* se agregan recursos necesarios para el proyecto, tales como **imagenes, audio, fuentes,** etc.
>>- **NO** puede haber ***objetos*** o ***pantallas*** dentro de *`Resources`*.
>
>### Source:
>>- Dentro de *`Source`* se agregan todos los ***objetos*** y ***pantallas*** del proyecto.
>>- Las ***pantallas*** se clasifican en ***`IN_GAME_SCREENS`*** y ***`NON_GAME_SCREENS`***.
>
<br><br>
>## Para crear enemigos:  
>- Crear nodo `Path2D`.  
>- Añadir la curva/ruta de nodo `Path2D`.  
>- Instanciar nodo `PathFollow2D` como hijo del nodo `Path2D`.  
>- Instanciar nodo `RemoteTransform2D` como hijo del nodo `PathFollow2D`.  
>- Seleccionar nodo Enemigo a animar dentro del parámetro *`Remote Path`* en nodo `RemoteTransform2D`.


