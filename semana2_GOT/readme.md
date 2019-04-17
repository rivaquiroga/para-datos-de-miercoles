# Semana 2 de `#datosdemiercoles`: Juego de Tronos

Conjuntos de datos para la semana 2 de [#datosdemiercoles](https://github.com/cienciadedatos/datos-de-miercoles). Esta versión tiene las variables traducidas, pero no los nombres de los personajes.

### Datos

* Cambio en las lealtades de los personajes a lo largo de las distintas temporadas de la serie (temporadas 1 a 7)
* Minutos de aparición y cantidad de capítulos en pantalla de los personajes de la series (temporadas 1 a 6)
* Información sobre los libros en los que aparece cada personaje y su estado vital (:skull:)


### Importar los datos

Puedes utilizar el siguiente código para importar los datos a R:
```
# install.packages(readr)

tiempo_pantalla <- readr::read_csv("https://raw.githubusercontent.com/rivaquiroga/para-datos-de-miercoles/master/semana2_GOT/tiempo_pantalla2.csv")

cambio_lealtades <- readr::read_csv("https://raw.githubusercontent.com/rivaquiroga/para-datos-de-miercoles/master/semana2_GOT/cambio_lealtades2.csv")

personajes_libros <- readr::read_csv("https://raw.githubusercontent.com/rivaquiroga/para-datos-de-miercoles/master/semana2_GOT/personajes_libro2.csv")

```

### Fuente de los datos:
* `character_deaths.csv` > [Kaggle](https://www.kaggle.com/mylesoneill/game-of-thrones)
* datos sobre tiempo en pantalla de los personajes > [data.world](https://data.world/aendrew/game-of-thrones-screen-times)
* datos sobre cambio en las lealtades > [Matthew Lunkes](https://github.com/MattLunkes/GoT_Affiliations)
