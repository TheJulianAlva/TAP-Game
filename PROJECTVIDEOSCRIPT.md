# EVALUACIÓN UNIDAD 3
---

## 🎤 **Guión de video**
 
---


### 🎬 **[Inicio - Introducción]** JULIAN
> *[Música suave de fondo. Mostrar logo del juego y una vista general del mapa]*

Hola, soy Julian (nombrecompleto) y junto a mi compañera Ledesma (nombrecompleto), vamos a mostrar en este video el avance de nuestro videojuego RPG en pixel art, que hemos estado desarrollando como proyecto para la asignatura de Tópicos avanzados de programación.  
Este juego está ambientado en el Instituto Técnologico de Toluca, y busca representar una historia a través de una experiencia interactiva donde el usuario deberá recorrer el campus, cumplir con diferentes tareas y superar desafíos.

---

### 📖 **[Sección - Historia del videojuego]** LEDESMA
> *[Mostrar al personaje principal interactuando con NPCs, dentro del campus]*

Nuestro juego trata de la hazaña que tendrá que completar nuestro protagonista, el cual llega al Instituto Tecnológico de Toluca para conseguir
informes acerca de la carrera de tics, pero debido a la baja demanda la coordinadora lo inscribe y no podrá salir del instituto hasta terminar la carrera.
Para complicar aún más las cosas, los guardias de seguridad lo han confundido con un vendedor de gomitas y no dejan de perseguirlo,
y además no tiene dinero suficiente para el transporte de regreso a su casa.
Ahora su única alternativa es completar todo lo necesario para titularse y necesitará reunir el dinero suficiente para tomar su camión de regreso.

---

### 🛠️ **[Sección - Herramientas utilizadas]** JULIAN
> *[Mostrar editor de Godot y herramientas de pixel art]*

Para el desarrollo de este juego, estamos trabajando en el motor Godot, que permite trabajar de forma modular y eficiente con escenas reutilizables.  
También empleamos herramientas para diseñar y editar nuestras imagenes de pixel art, y manejamos el control de versiones con Git para organizar y respaldar el avance del proyecto.

---

### ⚙️ **[Sección - Funcionalidades implementadas]** LEDESMA

#### 🎮 Personaje principal JULIAN
> *[Mostrar al personaje moviéndose por el mapa]*

El personaje principal es totalmente original, cuenta con sprites animados y un sistema de movimiento fluido (solamente en las cuatro direcciones para una vista mas retro) y con colisiones implementadas que permiten recorrer el mapa de forma natural.
Para el movimiento del personaje por diferentes entradas, lo hemos configurado en el mapa de entrada de la configuración del proyecto donde solo indicando el nombre de la acción, el personaje la realiza con cualquiera de las llaves.

#### 🗺️ Mapa basado en la universidad LEDESMA
> *[Mostrar distintas zonas del campus y la exploración libre]*

El mapa del juego está inspirado en el campus del ITTol, busca representar la estructura de la forma más similar al croquis del Instituto, sin embargo expandimos nuestra aventura, ya que los interiores de cada edificio tienen un diseño pensado para la experiencia del usuario.  
Se puede explorar libremente cada zona del campus, lo que ayuda a crear una experiencia inmersiva.

#### 🖥️ Interfaz y pantallas del juego JULIAN
> *[Mostrar pantalla de inicio, menú de configuración, controles y pausa]*

También se han desarrollado las distintas pantallas del juego, incluyendo la de inicio, la introducción, la configuración, una sección de controles y un menú de pausa funcional.

#### 🏢 Edificios accesibles con cámaras fijas LEDESMA
> *[Mostrar entrada a edificios y cambio de cámara por habitaciones]*

Una de las particularidades que tiende nuestro juego es que cuando el personaje entra a un edificio, la cámara cambia para mostrar una vista fija de la habitación completa. Esto lo manejamos a partir de marcadores y areas 2d que permiten seguir el movimiento del personaje 
Este sistema permite visualizar salones, pasillos y espacios interiores de forma clara, y se actualiza automáticamente conforme el jugador avanza dentro del edificio.

#### 💡 Iluminación con shaders y oclusión JULIAN
> *[Mostrar efectos de luz en interiores]*

El juego también cuenta con iluminación dinámica mediante el uso de shaders y oclusionadores de luz, lo cual aporta una atmósfera más realista en interiores, resaltando detalles y creando contraste entre zonas iluminadas y oscuras.

#### 🔁 Componentes reutilizables JULIAN
> *[Mostrar escenas con scripts reutilizables]*

Para optimizar el desarrollo, hemos creado componentes personalizados que permiten reutilizar métodos y funcionalidades como la gestión de entrada, sistemas de diálogo y lógica de enemigos.

#### 🧠 Sistema de eventos global LEDESMA
> *[Mostrar activación de un evento personalizado]*

En nuestro SINGLETON de global hemos añadido nuevos marcadores para enlazar la pantalla de juego con los edificios, y además creamos un nuevo SINGLETON que se enfocará en el manejo de algunas funciones particulares de los edificios.


#### 🗂️ Archivos de configuración
> *[Mostrar archivos de texto o JSON cargándose]*

Además, se utilizan archivos externos para guardar configuraciones globales del juego, como volumen y controles, así como información específica de entidades del juego, lo que permite mantener los datos organizados y fácilmente modificables.

#### 👾 Enemigos y colisiones JULIAN
> *[Mostrar enemigos patrullando y persiguiendo al jugador]*

Actualmente, ya existen dos tipos de enemigos: unos que siguen rutas predefinidas, y otros que detectan al jugador y lo persiguen.  
La colisión entre jugador y enemigos ya está implementada, lo que permitirá más adelante incorporar combate o penalizaciones.

---

### 🔮 **[Sección - Futuras modificaciones]** JULIAN
> *[Mostrar conceptos o escenas no terminadas]*

En futuras versiones del proyecto planeamos incorporar más tipos de enemigos con comportamientos variados, un sistema básico de inventario, tener un sistema de dialogo y añadir NPCs con tareas específicas que guien al personaje principal en su aventura.  

---

### 🧾 **[Conclusión del video]** JULIAN
> *[Mostrar al personaje despidiéndose o recorriendo el campus con música de fondo]*

Este proyecto no solo ha sido una forma de aplicar conocimientos técnicos, sino también una manera divertida de rendir homenaje al entorno que vivimos como estudiantes.  
Aún hay mucho por hacer de lo que tenemos planeado, pero estoy muy entusiasmado con lo que se ha logrado hasta ahora.  
Gracias.

---
