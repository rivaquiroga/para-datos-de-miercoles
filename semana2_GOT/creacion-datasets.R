# tiempo en pantalla


library(tidyverse)
tiempo_pantalla <- read_csv("https://query.data.world/s/uofrb6cq7rmwo5mlzhjyt32nznjphd")

tiempo_pantalla %>% 
  mutate(episodios = as.numeric(episodes)) %>% 
  select(nombre = name, minutos_pantalla = screentime, episodios) %>% 
  readr::write_csv("tiempo_en_pantalla.csv")

# personajes libros
#fuente: https://www.kaggle.com/mylesoneill/game-of-thrones

personajes_libro <- read_csv("character-deaths.csv")

personajes_libro <- personajes_libro %>% 
  mutate(Allegiances = str_replace_all(Allegiances, "House ", "")) %>% 
  mutate(Allegiances = case_when(
    Allegiances == "Night's Watch" ~ "Guardia de la Noche",                      Allegiances == "None" ~ "Ninguna",
    Allegiances == "Wilding" ~ "Salvaje",
    TRUE ~ Allegiances))

# traducción variables
personajes_libro <- select(personajes_libro, nombre = Name, 
         lealtad = Allegiances, 
         genero = Gender, 
         noble = Nobility,
         juego_de_tronos = GoT, 
         choque_de_reyes = CoK, 
         tormenta_de_espadas = SoS, 
         festin_de_cuervos = FfC, 
         danza_de_dragones = DwD,
         capitulo_presentacion = `Book Intro Chapter`, 
         anio_muerte = `Death Year`, 
         libro_muerte = `Book of Death`, 
         capitulo_muerte = `Death Chapter`)

write_csv(personajes_libro, "personajes_libro.csv")



                         

       