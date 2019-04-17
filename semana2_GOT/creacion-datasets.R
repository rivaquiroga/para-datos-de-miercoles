# 1. tiempo en pantalla

library(tidyverse)

tiempo_pantalla <- read_csv("https://query.data.world/s/uofrb6cq7rmwo5mlzhjyt32nznjphd")

tiempo_pantalla <- tiempo_pantalla %>% 
  mutate(episodios = as.numeric(episodes)) %>% 
  select(nombre = name, minutos_pantalla = screentime, episodios) %>% 
  write_csv("tiempo_pantalla2.csv")

# 2. personajes libros
#fuente: https://www.kaggle.com/mylesoneill/game-of-thrones

personajes_libro <- read_csv("character-deaths.csv")

personajes_libro <- personajes_libro %>% 
  mutate(Allegiances = str_replace_all(Allegiances, "House ", "")) %>% 
  mutate(Allegiances = case_when(
    Allegiances == "Night's Watch" ~ "Guardia de la Noche", Allegiances == "None" ~ "Ninguna",
    Allegiances == "Wildling" ~ "Salvajes",
    TRUE ~ Allegiances)) %>%
  mutate(Gender = case_when(
    Gender == "1" ~ "masculino", Gender == "0" ~ "femenino"))

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


write_csv(personajes_libro, "personajes_libro2.csv")


# tercer dataset

library(tidyverse)
cambio_lealtades <- readr::read_csv("https://raw.githubusercontent.com/MattLunkes/GoT_Affiliations/master/got_char.csv")

cambio_lealtades <- rename(cambio_lealtades, 
                           nombre = Name, 
                           origen = Origin,
                           lealtad_inicial = `Starting Affiliation`,
                           episodios = Episodes,
                           fin_t1 = `End of S1`,
                           fin_t2 = `End of S2`, 
                           fin_t3 = `End of S3`, 
                           fin_t4 = `End of S4`, 
                           fin_t5 = `End of S5`, 
                           fin_t6 = `End of S6`, 
                           fin_t7 = `End of S7`)

write_csv(cambio_lealtades, "cambio_lealtades2.csv")
