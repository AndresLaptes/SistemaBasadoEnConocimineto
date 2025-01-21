    ;;; ---------------------------------------------------------
;;; Ontologia.clp
;;; Translated by owl2clips
;;; Translated to CLIPS from ontology NuevaOntologia.ttl
;;; :Date 03/12/2024 21:08:59

(defclass Sala "Representa una sala que puede ser de diversos tipos"
    (is-a USER)
    (role concrete)
    (pattern-match reactive)
    ;;; Representa una relación de una sala que contiene obras
    (multislot contiene
        (type INSTANCE)
        (create-accessor read-write))
    (multislot número
        (type INTEGER)
        (create-accessor read-write))
)

(defclass S.O.Artista "Representa una sala organizada de manera que que solo hay obras de un solo artista famoso"
    (is-a Sala)
    (role concrete)
    (pattern-match reactive)
    ;;; Representa la relacion que una sala organizada por artista esta organizado segun un pintor famoso
    (multislot organizado_segun
        (type INSTANCE)
        (create-accessor read-write))
)

(defclass S.O.Cronologicaménte "Representa una instanica de una sala organizada de manera en que estan en un orden cronologico."
    (is-a Sala)
    (role concrete)
    (pattern-match reactive)
    ;;; Representa la relación de una sala organizada cronologicamente organizado por epocas
    (multislot organizado_por
        (type INSTANCE)
        (create-accessor read-write))
)

(defclass S.O.Temática "Representa una sala organizada de manera que sus obras de artes estan organizadas por tematicas"
    (is-a Sala)
    (role concrete)
    (pattern-match reactive)
    ;;; Representa una relación de manera que una sala organizada por una temática determinada
    (multislot organizada_por
        (type INSTANCE)
        (create-accessor read-write))
)

(defclass Museo "Representa una instancia de Museo"
    (is-a USER)
    (role concrete)
    (pattern-match reactive)
    ;;; Relaciona entre la manera que un museo tiene diferentes salas
    (multislot tiene
        (type INSTANCE)
        (create-accessor read-write))
    (multislot nombre
        (type STRING)
        (create-accessor read-write))
)

(defclass Obra "Representa una instacia de una Obra de arte"
    (is-a USER)
    (role concrete)
    (pattern-match reactive)
    ;;; Representa una relacion entre una obra que a sido dibujada por un pintor famoso
    (multislot dibujada_por
        (type INSTANCE)
        (create-accessor read-write))
    ;;; Representa una relacion entre un pintor que pertenece a una época
    (multislot pertenece_a
        (type INSTANCE)
        (create-accessor read-write))
    (multislot pertenece_a_la
        (type INSTANCE)
        (create-accessor read-write))
    (slot area
        (type INTEGER)
        (create-accessor read-write))
    (multislot año_creación
        (type INTEGER)
        (create-accessor read-write))
    (multislot nombre
        (type STRING)
        (create-accessor read-write))
    (slot relevancia
        (type INTEGER)
        (create-accessor read-write))
)

(defclass Pintor "Representa un pintor famoso"
    (is-a USER)
    (role concrete)
    (pattern-match reactive)
    ;;; Representa una relación de manera que este pintor famoso es de una determinada época.
    (multislot es_de
        (type INSTANCE)
        (create-accessor read-write))
    (multislot nacionalidad
        (type STRING)
        (create-accessor read-write))
    (multislot nombre
        (type STRING)
        (create-accessor read-write))
)

(defclass Temática "Representa la tematica de una obra de arte"
    (is-a USER)
    (role concrete)
    (pattern-match reactive)
    (multislot nombre
        (type STRING)
        (create-accessor read-write))
)

(defclass Visita "Representa la visita de hacia un museo"
    (is-a USER)
    (role concrete)
    (pattern-match reactive)
    (multislot se_realiza_en
        (type INSTANCE)
        (create-accessor read-write))
)

(defclass Visitante "Representa a un visitante"
    (is-a USER)
    (role concrete)
    (pattern-match reactive)
    ;;; Representa la relación que tiene un Visitante que acude a una visita
    (multislot acude
        (type INSTANCE)
        (create-accessor read-write))
    ;;; Representa la relación entre las diferentes preferencias de los visitantes
    (multislot prefiere
        (type INSTANCE)
        (create-accessor read-write))
    (multislot dias_de_visita
        (type INTEGER)
        (create-accessor read-write))
    (multislot duración
        (type INTEGER)
        (create-accessor read-write))
    (multislot niños
        (type INTEGER)
        (create-accessor read-write))
    (multislot número_personas
        (type INTEGER)
        (create-accessor read-write))
    (multislot preferecia_de_tematica
        (type STRING)
        (create-accessor read-write))
    (multislot preferencia_artista
        (type STRING)
        (create-accessor read-write))
    (multislot preferencia_de_epoca
        (type STRING)
        (create-accessor read-write))
    (multislot topDataProperty
        (type INSTANCE)
        (create-accessor read-write))
)

(defclass Época "Representa una época de la historia de la humanidad"
    (is-a USER)
    (role concrete)
    (pattern-match reactive)
    (multislot fin
        (type INTEGER)
        (create-accessor read-write))
    (multislot inicio
        (type INTEGER)
        (create-accessor read-write))
    (multislot nombre
        (type STRING)
        (create-accessor read-write))
)


(definstances obras
    ([Sueño_Cibernetico] of Obra
        (dibujada_por [Neo_Dali]) ;artista
        (pertenece_a [Era_de_Las_Maquinas]) ;epoca
        (pertenece_a_la [Futurismo]) ;tematica
        (nombre "Sueño Cibernético") ;nombre
        (año_creación 2160)
        (relevancia 9)
        (area 130)
    )
    ([Luz_de_Las_Sombras] of Obra
        (dibujada_por [Dark_Raphael]) ;artista
        (pertenece_a [Oscurantismo_Luminoso]) ;epoca
        (pertenece_a_la [Arte_Luminico]) ;tematica
        (nombre "Luz de Las Sombras") ;nombre
        (año_creación 1860)
        (relevancia 8)
        (area 110)
    )
    ([Explosión_Cristalina] of Obra
        (dibujada_por [Stella_Kandinsky]) ;artista
        (pertenece_a [Era_de_Los_Cristales]) ;epoca
        (pertenece_a_la [Arte_Cuantico]) ;tematica
        (nombre "Explosión Cristalina") ;nombre
        (año_creación 2330)
        (relevancia 7)
        (area 170)
    )
    ([La_Máquina_del_Tiempo] of Obra
        (dibujada_por [Quantum_Michelangelo]) ;artista
        (pertenece_a [Revolucion_Cuántica]) ;epoca
        (pertenece_a_la [Ingenieria_Espacial]) ;tematica
        (nombre "La Máquina del Tiempo") ;nombre
        (año_creación 2260)
        (relevancia 10)
        (area 200)
    )
    ([Sombras_Mágicas] of Obra
        (dibujada_por [Hecate_Sombria]) ;artista
        (pertenece_a [Oscurantismo_Magico]) ;epoca
        (pertenece_a_la [Simbolismo_Magico]) ;tematica
        (nombre "Sombras Mágicas") ;nombre
        (año_creación 1830)
        (relevancia 6)
        (area 150)
    )
    ([Caballeros_Luminosos] of Obra
        (dibujada_por [Sir_Arthur_Lancelot]) ;artista
        (pertenece_a [Edad_Medieval]) ;epoca
        (pertenece_a_la [Caballerosidad]) ;tematica
        (nombre "Caballeros Luminosos") ;nombre
        (año_creación 1200)
        (relevancia 10)
        (area 140)
    )
    ([Futuro_Simbolico] of Obra
        (dibujada_por [Solaris_Van_Gogh]) ;artista
        (pertenece_a [Futuro_Optimista]) ;epoca
        (pertenece_a_la [Arte_Simbolico_Mitico]) ;tematica
        (nombre "Futuro Simbólico") ;nombre
        (año_creación 2120)
        (relevancia 9)
        (area 190)
    )
    ([Revolución_Viva] of Obra
        (dibujada_por [Flora_Bosch]) ;artista
        (pertenece_a [Revolucion_Biopunk]) ;epoca
        (pertenece_a_la [Arte_Bio_Organico]) ;tematica
        (nombre "Revolución Viva") ;nombre
        (año_creación 2540)
        (relevancia 8)
        (area 95)
    )
    ([Retro_Paisajes] of Obra
        (dibujada_por [Juno_Warhol]) ;artista
        (pertenece_a [Paleofuturismo]) ;epoca
        (pertenece_a_la [Paisajismo_Intergalactico]) ;tematica
        (nombre "Retro Paisajes") ;nombre
        (año_creación 1940)
        (relevancia 7)
        (area 105)
    )
    ([El_Universo_Cristico] of Obra
        (dibujada_por [Chronos_El_Grande]) ;artista
        (pertenece_a [Neomedievalismo]) ;epoca
        (pertenece_a_la [Constructivismo_Cristico]) ;tematica
        (nombre "El Universo Crístico") ;nombre
        (año_creación 2410)
        (relevancia 9)
        (area 160)
    )
    ([Bosque_de_Sombras] of Obra
        (dibujada_por [Morpheus_Turner]) ;artista
        (pertenece_a [Edad_de_Las_Sombras]) ;epoca
        (pertenece_a_la [Arte_Simbolico_Mitico]) ;tematica
        (nombre "Bosque de Sombras") ;nombre
        (año_creación 1460)
        (relevancia 8)
        (area 135)
    )
    ([La_Estrella_Rota] of Obra
        (dibujada_por [Lucifer_Corot]) ;artista
        (pertenece_a [Oscurantismo_Magico]) ;epoca
        (pertenece_a_la [Futurismo]) ;tematica
        (nombre "La Estrella Rota") ;nombre
        (año_creación 1810)
        (relevancia 7)
        (area 155)
    )
    ([Tiempo_y_Espacio] of Obra
        (dibujada_por [Quantum_Michelangelo]) ;artista
        (pertenece_a [Revolucion_Cuántica]) ;epoca
        (pertenece_a_la [Impresionismo_Cibernetico]) ;tematica
        (nombre "Tiempo y Espacio") ;nombre
        (año_creación 2270)
        (relevancia 10)
        (area 180)
    )
    ([Luz_Verde] of Obra
        (dibujada_por [Artemis_Renoir]) ;artista
        (pertenece_a [Edad_de_La_Luz]) ;epoca
        (pertenece_a_la [Paisajismo_Intergalactico]) ;tematica
        (nombre "Luz Verde") ;nombre
        (año_creación 1670)
        (relevancia 6)
        (area 120)
    )
    ([Sombras_Futuristas] of Obra
        (dibujada_por [Neo_Dali]) ;artista
        (pertenece_a [Era_de_Las_Maquinas]) ;epoca
        (pertenece_a_la [Arte_Simbolico_Mitico]) ;tematica
        (nombre "Sombras Futuristas") ;nombre
        (año_creación 2180)
        (relevancia 8)
        (area 140)
    )
    ([La_Máquina_de_Sombras] of Obra
        (dibujada_por [Morpheus_Turner]) ;artista
        (pertenece_a [Edad_de_Las_Sombras]) ;epoca
        (pertenece_a_la [Futurismo]) ;tematica
        (nombre "La Máquina de Sombras") ;nombre
        (año_creación 1450)
        (relevancia 9)
        (area 120)
    )
    ([Caballeros_Ciberneticos] of Obra
        (dibujada_por [Neo_Dali]) ;artista
        (pertenece_a [Era_de_Las_Maquinas]) ;epoca
        (pertenece_a_la [Caballerosidad]) ;tematica
        (nombre "Caballeros Cibernéticos") ;nombre
        (año_creación 2175)
        (relevancia 8)
        (area 250)
    )
    ([La_Luz_Infinita] of Obra
        (dibujada_por [Artemis_Renoir]) ;artista
        (pertenece_a [Edad_de_La_Luz]) ;epoca
        (pertenece_a_la [Magia_Tenebrosa]) ;tematica
        (nombre "La Luz Infinita") ;nombre
        (año_creación 1650)
        (relevancia 10)
        (area 200)
    )
    ([El_Cristal_Sombrio] of Obra
        (dibujada_por [Stella_Kandinsky]) ;artista
        (pertenece_a [Era_de_Los_Cristales]) ;epoca
        (pertenece_a_la [Arte_Simbolico_Mitico]) ;tematica
        (nombre "El Cristal Sombrío") ;nombre
        (año_creación 2325)
        (relevancia 7)
        (area 180)
    )
    ([La_Explosión_Biótica] of Obra
        (dibujada_por [Flora_Bosch]) ;artista
        (pertenece_a [Revolucion_Biopunk]) ;epoca
        (pertenece_a_la [Arte_Luminico]) ;tematica
        (nombre "La Explosión Biótica") ;nombre
        (año_creación 2520)
        (relevancia 9)
        (area 95)
    )
    ([Retro_Vision] of Obra
        (dibujada_por [Juno_Warhol]) ;artista
        (pertenece_a [Paleofuturismo]) ;epoca
        (pertenece_a_la [Arte_Cuantico]) ;tematica
        (nombre "Retro Vision") ;nombre
        (año_creación 1935)
        (relevancia 6)
        (area 85)
    )
    ([El_Sol_Entre_Maquinas] of Obra
        (dibujada_por [Solaris_Van_Gogh]) ;artista
        (pertenece_a [Futuro_Optimista]) ;epoca
        (pertenece_a_la [Caballerosidad]) ;tematica
        (nombre "El Sol Entre Máquinas") ;nombre
        (año_creación 2115)
        (relevancia 10)
        (area 190)
    )
    ([El_Código_Mágico] of Obra
        (dibujada_por [Lucifer_Corot]) ;artista
        (pertenece_a [Oscurantismo_Magico]) ;epoca
        (pertenece_a_la [Ingenieria_Espacial]) ;tematica
        (nombre "El Código Mágico") ;nombre
        (año_creación 1825)
        (relevancia 9)
        (area 150)
    )

    ([Luz_Infinita_2] of Obra
        (dibujada_por [Artemis_Renoir]) ;artista
        (pertenece_a [Edad_de_La_Luz]) ;epoca
        (pertenece_a_la [Magia_Tenebrosa]) ;tematica
        (nombre "Luz Infinita 2") ;nombre
        (año_creación 1675)
        (relevancia 8)
        (area 125)
    )
    ([Sombras_Ciberneticas] of Obra
        (dibujada_por [Neo_Dali]) ;artista
        (pertenece_a [Era_de_Las_Maquinas]) ;epoca
        (pertenece_a_la [Futurismo]) ;tematica
        (nombre "Sombras Cibernéticas") ;nombre
        (año_creación 2190)
        (relevancia 9)
        (area 135)
    )
    ([Caballeros_Legendarios] of Obra
        (dibujada_por [Sir_Arthur_Lancelot]) ;artista
        (pertenece_a [Edad_Medieval]) ;epoca
        (pertenece_a_la [Caballerosidad]) ;tematica
        (nombre "Caballeros Legendarios") ;nombre
        (año_creación 1210)
        (relevancia 10)
        (area 145)
    )
    ([Futurismo_Sombras] of Obra
        (dibujada_por [Morpheus_Turner]) ;artista
        (pertenece_a [Edad_de_Las_Sombras]) ;epoca
        (pertenece_a_la [Arte_Simbolico_Mitico]) ;tematica
        (nombre "Futurismo Sombras") ;nombre
        (año_creación 1475)
        (relevancia 7)
        (area 150)
    )
    ([Universo_Biopunk] of Obra
        (dibujada_por [Flora_Bosch]) ;artista
        (pertenece_a [Revolucion_Biopunk]) ;epoca
        (pertenece_a_la [Arte_Bio_Organico]) ;tematica
        (nombre "Universo Biopunk") ;nombre
        (año_creación 2535)
        (relevancia 8)
        (area 90)
    )
    ([Paisajes_Retro_2] of Obra
        (dibujada_por [Juno_Warhol]) ;artista
        (pertenece_a [Paleofuturismo]) ;epoca
        (pertenece_a_la [Paisajismo_Intergalactico]) ;tematica
        (nombre "Paisajes Retro 2") ;nombre
        (año_creación 1945)
        (relevancia 6)
        (area 95)
    )
    ([Cristales_Luminosos] of Obra
        (dibujada_por [Stella_Kandinsky]) ;artista
        (pertenece_a [Era_de_Los_Cristales]) ;epoca
        (pertenece_a_la [Arte_Cuantico]) ;tematica
        (nombre "Cristales Luminosos") ;nombre
        (año_creación 2320)
        (relevancia 7)
        (area 165)
    )
    ([Estrella_Crística] of Obra
        (dibujada_por [Chronos_El_Grande]) ;artista
        (pertenece_a [Neomedievalismo]) ;epoca
        (pertenece_a_la [Constructivismo_Cristico]) ;tematica
        (nombre "Estrella Crística") ;nombre
        (año_creación 2420)
        (relevancia 9)
        (area 170)
    )
    ([Tiempo_y_Magia] of Obra
        (dibujada_por [Quantum_Michelangelo]) ;artista
        (pertenece_a [Revolucion_Cuántica]) ;epoca
        (pertenece_a_la [Impresionismo_Cibernetico]) ;tematica
        (nombre "Tiempo y Magia") ;nombre
        (año_creación 2275)
        (relevancia 10)
        (area 180)
    )
    ([Oscuridad_Lumínica] of Obra
        (dibujada_por [Dark_Raphael]) ;artista
        (pertenece_a [Oscurantismo_Luminoso]) ;epoca
        (pertenece_a_la [Magia_Tenebrosa]) ;tematica
        (nombre "Oscuridad Lumínica") ;nombre
        (año_creación 1855)
        (relevancia 8)
        (area 120)
    )
)

(definstances epocas
    ([Edad_Medieval] of Época
        (inicio 1300)
        (fin 1450)
        (nombre "Edad_Medieval"))
    ([Edad_de_La_Luz] of Época
        (inicio 1450)
        (fin 1600)
        (nombre "Edad_de_La_Luz"))
    ([Edad_de_Las_Sombras] of Época
        (inicio 1600)
        (fin 1750)
        (nombre "Edad_de_Las_Sombras"))
    ([Era_de_Las_Maquinas] of Época
        (inicio 1750)
        (fin 1900)
        (nombre "Era_de_Las_Maquinas"))
    ([Era_de_Los_Cristales] of Época
        (inicio 1900)
        (fin 2050)
        (nombre "Era_de_Los_Cristales"))
    ([Futuro_Optimista] of Época
        (inicio 2050)
        (fin 2200)
        (nombre "Futuro_Optimista"))
    ([Neomedievalismo] of Época
        (inicio 2200)
        (fin 2350)
        (nombre "Neomedievalismo"))
    ([Oscurantismo_Luminoso] of Época
        (inicio 2350)
        (fin 2500)
        (nombre "Oscurantismo_Luminoso"))
    ([Oscurantismo_Magico] of Época
        (inicio 2500)
        (fin 2650)
        (nombre "Oscurantismo_Magico"))
    ([Paleofuturismo] of Época
        (inicio 2650)
        (fin 2800)
        (nombre "Paleofuturismo"))
    ([Revolucion_Biopunk] of Época
        (inicio 2800)
        (fin 2950)
        (nombre "Revolucion_Biopunk"))
    ([Revolucion_Cuántica] of Época
        (inicio 2950)
        (fin 3100)
        (nombre "Revolucion_Cuántica"))
)
(definstances temáticas
    ([Arte_Bio_Organico] of Temática (nombre "Arte_Bio_Organico"))
    ([Arte_Cuantico] of Temática (nombre "Arte_Cuantico"))
    ([Arte_Luminico] of Temática (nombre "Arte_Luminico"))
    ([Arte_Simbolico_Mitico] of Temática (nombre "Arte_Simbolico_Mitico"))
    ([Caballerosidad] of Temática (nombre "Caballerosidad"))
    ([Constructivismo_Cristico] of Temática (nombre "Constructivismo_Cristico"))
    ([Futurismo] of Temática (nombre "Futurismo"))
    ([Impresionismo_Cibernetico] of Temática (nombre "Impresionismo_Cibernetico"))
    ([Ingenieria_Espacial] of Temática (nombre "Ingenieria_Espacial"))
    ([Magia_Tenebrosa] of Temática (nombre "Magia_Tenebrosa"))
    ([Paisajismo_Intergalactico] of Temática (nombre "Paisajismo_Intergalactico"))
    ([Simbolismo_Magico] of Temática (nombre "Simbolismo_Magico"))
)
(definstances pintores
    ([Neo_Dali] of Pintor
        (es_de [Era_de_Las_Maquinas])
        (nombre "Neo Dali")
        (nacionalidad "Planeta Cybertron"))
    ([Dark_Raphael] of Pintor
        (es_de [Oscurantismo_Luminoso])
        (nombre "Dark Raphael")
        (nacionalidad "Mordor"))
    ([Stella_Kandinsky] of Pintor
        (es_de [Era_de_Los_Cristales])
        (nombre "Stella Kandinsky")
        (nacionalidad "Planeta Krypton"))
    ([Quantum_Michelangelo] of Pintor
        (es_de [Revolucion_Cuántica])
        (nombre "Quantum Michelangelo")
        (nacionalidad "Gallifrey"))
    ([Hecate_Sombria] of Pintor
        (es_de [Oscurantismo_Magico])
        (nombre "Hécate Sombria")
        (nacionalidad "Hogwarts"))
    ([Sir_Arthur_Lancelot] of Pintor
        (es_de [Edad_Medieval])
        (nombre "Sir Arthur Lancelot")
        (nacionalidad "Camelot"))
    ([Solaris_Van_Gogh] of Pintor
        (es_de [Futuro_Optimista])
        (nombre "Solaris Van Gogh")
        (nacionalidad "Planeta Solaris"))
    ([Flora_Bosch] of Pintor
        (es_de [Revolucion_Biopunk])
        (nombre "Flora Bosch")
        (nacionalidad "Pandora"))
    ([Juno_Warhol] of Pintor
        (es_de [Paleofuturismo])
        (nombre "Juno Warhol")
        (nacionalidad "Planeta Tatooine"))
    ([Chronos_El_Grande] of Pintor
        (es_de [Neomedievalismo])
        (nombre "Chronos El Grande")
        (nacionalidad "Asgard"))
    ([Morpheus_Turner] of Pintor
        (es_de [Edad_de_Las_Sombras])
        (nombre "Morpheus Turner")
        (nacionalidad "Planeta Arrakis"))
    ([Lucifer_Corot] of Pintor
        (es_de [Oscurantismo_Magico])
        (nombre "Lucifer Corot")
        (nacionalidad "Narnia"))
    ([Artemis_Renoir] of Pintor
        (es_de [Edad_de_La_Luz])
        (nombre "Artemis Renoir")
        (nacionalidad "Rivendell"))
)

(definstances salas
    ([Sala_Neo_Dali] of S.O.Artista
        (número 1)
        (contiene [Sueño_Cibernetico] [Sombras_Futuristas] [Caballeros_Ciberneticos] [Sombras_Ciberneticas]))

    ([Sala_Quantum_Michelangelo] of S.O.Artista
        (número 2)
        (contiene [La_Máquina_del_Tiempo] [Tiempo_y_Espacio] [Tiempo_y_Magia]))

    ([Sala_Magia_y_Luz] of S.O.Temática
        (número 3)
        (contiene [Luz_de_Las_Sombras] [Oscuridad_Lumínica] [Sombras_Mágicas]
            [Luz_Verde] [La_Luz_Infinita] [Luz_Infinita_2] [El_Código_Mágico]))
    
    ([Sala_Naturaleza_y_Paisaje] of S.O.Temática
        (número 4)
        (contiene [Retro_Paisajes] [Paisajes_Retro_2] [Bosque_de_Sombras]
            [Explosión_Cristalina] [El_Cristal_Sombrio] [Cristales_Luminosos]))

    ([Sala_Epoca_Medieval] of S.O.Cronologicaménte
        (número 5)
        (contiene [Caballeros_Luminosos] [Caballeros_Legendarios] [La_Estrella_Rota]))
    ([Sala_Epoca_Industrial] of S.O.Cronologicaménte
        (número 6)
        (contiene [El_Sol_Entre_Maquinas] [Revolución_Viva] [La_Explosión_Biótica]))
    ([Sala_Epoca_Modernista] of S.O.Cronologicaménte
        (número 7)
        (contiene [Universo_Biopunk] [Retro_Vision] [El_Universo_Cristico] [Estrella_Crística]))
    ([Sala_Futurismo] of S.O.Cronologicaménte
        (número 8)
        (contiene [La_Máquina_de_Sombras] [Futurismo_Sombras] [Futuro_Simbolico]))
)

(definstances museos
    ([Museo_Futurista] of Museo
        (nombre "Museo Supremo")
        (tiene [Sala_Neo_Dali] [Sala_Quantum_Michelangelo] [Sala_Magia_y_Luz] [Sala_Naturaleza_y_Paisaje]
            [Sala_Epoca_Medieval] [Sala_Epoca_Industrial] [Sala_Epoca_Modernista] [Sala_Futurismo]))
)



; -----------------------------------------
; -----------------------------------------
; ---------------  CODIGO  ----------------
; -----------------------------------------
; -----------------------------------------

;NOTA: Aqui empieza el codigo. Esta dividido en modulos.

; ------------------------------------
; 				  MAIN 
; ------------------------------------

(defmodule MAIN (export ?ALL))

;Modulo de recopilacion de la informacion del visitante y sus preferencias
(defmodule recopilacion-informacion-visitante
	(import MAIN ?ALL)
	(export ?ALL)
)

(defmodule procesamiento-obras
    (import MAIN ?ALL)
    (export ?ALL)
)

(defmodule sintesis
    (import MAIN ?ALL)
    (export ?ALL)
)

(defrule MAIN::initialRule "regla inicial"
	(declare (salience 10))
	=>
	(printout t crlf)
	(printout t "--------------- Sistema de Recomendacion de Itinerario en un Museo ---------------" crlf)
	(printout t crlf)
	(focus recopilacion-informacion-visitante procesamiento-obras sintesis)
)

; -----------------------------------------
; 				 TEMPLATES 
; -----------------------------------------

; Para guardar la informacion del visitante
(deftemplate MAIN::informacion-visitante
    (slot numero-personas (type INTEGER)(default -1))
	(slot numero-niños (type INTEGER)(default -1))
    (slot dias-visita (type INTEGER)(default -1))
    (slot duracion-visita (type INTEGER)(default -1))
    (slot conocimiento (type INTEGER)(default -1))
	(multislot preferencia-tematica (type STRING))
    (multislot preferencia-artista (type STRING))
    (multislot preferencia-epoca (type STRING))
)

(deftemplate sintesis::obras-a-visitar
    (multislot obra (type INSTANCE))        ; Referencia a la instancia de la obra
    (slot sala (type INSTANCE))        ; Sala donde está ubicada la obra
    (slot museo (type INSTANCE))       ; Museo donde está ubicada la obra
    (slot dia-visita (type INTEGER))   ; Día asignado para visitar la obra
)

; --------------------------------------------------
; 					 FUNCIONES 
; --------------------------------------------------


; Funcion para hacer pregunta numerica 
(deffunction MAIN::pregunta-numerica (?pregunta ?rangini ?rangfi)
	(format t "%s [%d, %d] " ?pregunta ?rangini ?rangfi)
	(bind ?respuesta (read))
	(while (not(and(>= ?respuesta ?rangini)(<= ?respuesta ?rangfi))) do
		(format t "%s [%d, %d] " ?pregunta ?rangini ?rangfi)
		(bind ?respuesta (read))
	)
	?respuesta
)

(deffunction MAIN::pregunta-multiSelect (?pregunta $?valores-validos)
    (printout t crlf)
    (printout t ?pregunta "(valor en []) o escribe fin" crlf $?valores-validos crlf)
    (bind ?respuesta (read)) ; Lee la entrada del usuario
    (while (and (not (eq ?respuesta fin)) (not (member$ ?respuesta $?valores-validos))) do ; Verifica si la respuesta está en los valores válidos
        (printout t ?pregunta "(valor en []) o escribe fin" crlf $?valores-validos crlf)
        (bind ?respuesta (read))
    )
    ?respuesta ; Devuelve la respuesta válida
)



; Funcion para hacer pregunta numerica floats
(deffunction MAIN::pregunta-numerica-float (?pregunta ?rangini ?rangfi)
	(format t "%s [%f, %f] " ?pregunta ?rangini ?rangfi)
	(bind ?respuesta (read))
	(while (not(and(>= ?respuesta ?rangini)(<= ?respuesta ?rangfi))) do
		(format t "%s [%f, %f] " ?pregunta ?rangini ?rangfi)
		(bind ?respuesta (read))
	)
	?respuesta
)

; --------------------------------------------------
; 				 MODULO RECOPILACION 
; --------------------------------------------------

;Recopilacion de datos visitante

(defrule recopilacion-informacion-visitante::mensaje-inicial "Mensaje Inicial"
    (declare (salience 100)) ; Prioridad alta
    (not (informacion-visitante))    
    =>
    (printout t crlf)
	(printout t "--------------------------------------------------" crlf)
	(printout t "Responde las siguientes preguntas para generar tu itinerario personal:" crlf)
	(printout t crlf)
)

(defrule recopilacion-informacion-visitante::establecer-numero-personas "Recopilacion del numero de personas"
    (declare (salience 50)) ; Prioridad media
    =>
    (bind ?n (pregunta-numerica"Cuantas personas?(ninos incluidos)" 1 50))
    (assert (informacion-visitante (numero-personas ?n)))
)

(defrule recopilacion-informacion-visitante::establecer-numero-niños "Recopilacion del numero de niños"
    (declare (salience 49)) ; Prioridad media
    ?u <- (informacion-visitante (numero-niños ?p))
    (informacion-visitante (numero-personas ?nP))
	(test (< ?p 0))
    =>
    (bind ?n (pregunta-numerica"Cuantos ninos?" 0 ?nP))
	(modify ?u (numero-niños ?n))
)

(defrule recopilacion-informacion-visitante::establecer-dias-visita "Recopilacion del numero de dias de visita"
    (declare (salience 48)) ; Prioridad media
    ?u <- (informacion-visitante (dias-visita ?d))
	(test (< ?d 0))
    =>
    (bind ?n (pregunta-numerica"Cuantos dias de visita?" 1 7))
	(modify ?u (dias-visita ?n))
)

(defrule recopilacion-informacion-visitante::establecer-duracion-visita "Recopilacion del numero de dias de visita"
    (declare (salience 47)) ; Prioridad media
    ?u <- (informacion-visitante (duracion-visita ?d))
	(test (< ?d 0))
    =>
    (bind ?n (pregunta-numerica"Duracion de la visita por dia?(minutos (720min = 12h))" 1 720))
	(modify ?u (duracion-visita ?n))
)

(defrule recopilacion-informacion-visitante::establecer-preferencia-tematica "Recopilacion de la preferencia de tematica"
    (declare (salience 46)) ; Prioridad media
    ?u <- (informacion-visitante (preferencia-tematica $?existing))
    (test (not(member$ fin $?existing)))
    =>
    (bind $?listaTematica (find-all-instances ((?x Temática)) TRUE))
    (bind ?n (pregunta-multiSelect"Escoge entre las siguientes tematicas tu preferida?" $?listaTematica))
	(modify ?u (preferencia-tematica (create$ $?existing ?n)))
)

(defrule recopilacion-informacion-visitante::establecer-preferencia-artista "Recopilacion de la preferencia de artista"
    (declare (salience 45)) ; Prioridad media
    ?u <- (informacion-visitante (preferencia-artista $?existing))
	(test (not(member$ fin $?existing)))
    =>
    (bind $?listaArtista (find-all-instances ((?x Pintor)) TRUE))
    (bind ?n (pregunta-multiSelect"Escoge entre los siguientes artistas tu preferido?" $?listaArtista))
	(modify ?u (preferencia-artista (create$ $?existing ?n)))
)

(defrule recopilacion-informacion-visitante::establecer-preferencia-epoca "Recopilacion de la preferencia de epoca"
    (declare (salience 44)) ; Prioridad media
    ?u <- (informacion-visitante (preferencia-epoca $?existing))
	(test (not(member$ fin $?existing)))
    =>
    (bind $?listaEpoca (find-all-instances ((?x Época)) TRUE))
    (bind ?n (pregunta-multiSelect"Escoge entre las siguientes épocas tu preferida?" $?listaEpoca))
	(modify ?u (preferencia-epoca (create$ $?existing ?n)))
)

(defrule recopilacion-informacion-visitante::establecer-conocimiento "Recopilacion del conocimiento"
    (declare (salience 43)) ; Prioridad media
    ?u <- (informacion-visitante (conocimiento ?d))
	(test (< ?d 0))
    =>
    (bind ?n (pregunta-numerica"Nivel de conocimiento artisitico:" 1 100))
	(modify ?u (conocimiento ?n))
)


(deffunction procesamiento-obras::eliminar-Obra (?Obra)
    (bind ?nombre-obra (send ?Obra get-nombre))
    (printout t "Eliminando obra: " ?nombre-obra crlf)
    (send ?Obra delete)
)

(defrule procesamiento-obras::filtrar-obras-sin-preferencias
    (declare (salience -2))
    (informacion-visitante 
        (preferencia-tematica $?tematica-preferida)
        (preferencia-artista $?artista-preferido)
        (preferencia-epoca $?epoca-preferida)
    )
    ?obra <- (object (is-a Obra))
    (test 
        (and 
            (eq (length$ 
                (intersection$ 
                    (create$ (send ?obra get-pertenece_a_la))
                    $?tematica-preferida
                )
            ) 0)
            
            (eq (length$ 
                (intersection$ 
                    (create$ (send ?obra get-dibujada_por))
                    $?artista-preferido
                )
            ) 0)
            
            (eq (length$ 
                (intersection$ 
                    (create$ (send ?obra get-pertenece_a))
                    $?epoca-preferida
                )
            ) 0)
        )
    )
    =>
    (printout t "Intentando eliminar obra sin preferencias: " (send ?obra get-nombre) crlf)
    (eliminar-Obra ?obra)
)

(defrule procesamiento-obras::print-remaining-obras
    (declare (salience -2))
    =>
    (bind ?obras (find-all-instances ((?obra Obra)) TRUE))
    (printout t crlf "---------------" crlf)
    (printout t "Obras restantes después del filtrado:" crlf)
    (if (= (length$ ?obras) 0)
        then 
        (printout t "No quedan obras después del filtrado." crlf)
        else
        (foreach ?obra ?obras
            (printout t "- " (send ?obra get-nombre) crlf)
        )
    )
    (printout t "---------------" crlf)
)

(deffunction sintesis::calcular-tiempo-obra (?obra ?conocimiento ?num-personas ?num-niños)
    (bind ?area (float (send ?obra get-area)))
    (bind ?relevancia (float (send ?obra get-relevancia)))
    (bind ?time (* 0.5
   (+ 1.0 (* 0.8 ?relevancia)) ; Relevancia ajustada
   (* 0.004 ?area)             ; Área ajustada
   (+ 1.0 (* 0.15 (/ (float ?conocimiento) 10))) ; Peso mayor para conocimiento
   (+ 1.0 (* 0.08 (float ?num-personas))) ; Peso menor para personas
   (+ 1.0 (* 0.05 (float ?num-niños)))    ; Peso menor para niños
))
    ?time
)

(deffunction sintesis::distribucion-inicial (?obras ?dias-visita)
    (bind ?distribucion (create$))
    (bind ?puntero 1)
    (bind ?dia 1)
    
    (bind ?obras-dia 0)
    (bind ?max-obras-dia (+ 1 (div (length$ ?obras) ?dias-visita)))
    ; Mientras queden obras por distribuir
    (while (!= 0 (length$ ?obras))        
        (bind ?indice-obra (random ?puntero (length$ ?obras))) 
        (bind ?obra (nth$ ?indice-obra ?obras))
        (bind ?obras (delete$ ?obras ?indice-obra ?indice-obra))

        (bind ?distribucion (insert$ ?distribucion (+ 1 (length$ ?distribucion)) ?obra ?dia))

        (bind ?obras-dia (+ ?obras-dia 1))

        (if (and (< ?dia ?dias-visita) (>= ?obras-dia ?max-obras-dia))
            then
            (bind ?dia (+ ?dia 1))
            (bind ?obras-dia 0)
        )
    )
    
    ?distribucion
)


(deffunction sintesis::evaluar-distribucion (?distribucion ?duracion-visita ?dias-visita ?conocimiento ?num-personas ?num-niños)

    (bind ?total-score 0)
    (bind ?rango-distribucion (create$))

    ; Inicializar tiempos de cada día
    (bind ?i 1)
    (while (<= ?i ?dias-visita)
        (bind ?rango-distribucion (insert$ ?rango-distribucion ?i 0))
        (bind ?i (+ ?i 1))
    )

    (bind ?i 1)
    (while (<= ?i (length$ ?distribucion))
        (bind ?obra (nth$ ?i ?distribucion)) 
        (bind ?dia (nth$ (+ ?i 1) ?distribucion))  

        (bind ?tiempo-obra (calcular-tiempo-obra ?obra ?conocimiento ?num-personas ?num-niños))
        
        ; Actualizar tiempo del día
        (bind ?tiempo-actual (nth$ ?dia ?rango-distribucion))
        (bind ?nuevo-tiempo (+ ?tiempo-actual ?tiempo-obra))
        (bind ?rango-distribucion (replace$ ?rango-distribucion ?dia ?dia ?nuevo-tiempo))
        
        ; Penalizar si se excede la duración de la visita
        (if (> ?nuevo-tiempo ?duracion-visita) then
            (bind ?total-score (- ?total-score (+ 1000 (* 100 (- ?nuevo-tiempo ?duracion-visita)))))
        )
        (bind ?i (+ ?i 2)) 
    )

    (bind ?max-tiempo 0)
    (bind ?min-tiempo 99999)
    (bind ?i 1)
    (while (<= ?i ?dias-visita)
        (bind ?tiempo (nth$ ?i ?rango-distribucion))  ; Obtener el tiempo de cada día
        
        (if (> ?tiempo ?max-tiempo) then
            (bind ?max-tiempo ?tiempo)
        )

        (if (< ?tiempo ?min-tiempo) then
            (bind ?min-tiempo ?tiempo)
        )

        (bind ?i (+ ?i 1))
    )

    (bind ?obras (find-all-instances ((?obra Obra)) TRUE))
    (if (< (length$ ?distribucion) (* (length$ ?obras) 2)) then
            (bind ?total-score (- ?total-score (* 50 (- (* (length$ ?obras) 2) (length$ ?distribucion)))))
    )

    (bind ?total-score (- ?total-score (* (- ?max-tiempo ?min-tiempo) 10)))

    ?total-score
)

(deffunction sintesis::hill-climbing (?obras ?duracion-visita ?dias-visita ?conocimiento ?num-personas ?num-niños)
    (bind ?mejor-distribucion (distribucion-inicial ?obras ?dias-visita))
    (bind ?mejor-score (evaluar-distribucion 
        ?mejor-distribucion 
        ?duracion-visita 
        ?dias-visita 
        ?conocimiento 
        ?num-personas 
        ?num-niños
    ))
    
    (bind ?mejora-encontrada TRUE)
    
    (while ?mejora-encontrada do
        (bind ?mejora-encontrada FALSE)
        
        (bind ?num-distribuciones (/ (length$ ?mejor-distribucion) 2))
        
        (bind ?i 1)
        (while (<= ?i ?num-distribuciones) do
            (bind ?nuevo-dia 1)
            (while (<= ?nuevo-dia ?dias-visita) do
                (bind ?distribucion-vecina ?mejor-distribucion)
                
                (bind ?indice (* 2 ?i))
                
                (bind ?distribucion-vecina (replace$ 
                    ?distribucion-vecina 
                    ?indice 
                    ?indice 
                    ?nuevo-dia
                ))
                
                (bind ?score-vecino (evaluar-distribucion 
                    ?distribucion-vecina 
                    ?duracion-visita 
                    ?dias-visita 
                    ?conocimiento 
                    ?num-personas 
                    ?num-niños
                ))
                
                (if (> ?score-vecino ?mejor-score) then
                    (bind ?mejor-distribucion ?distribucion-vecina)
                    (bind ?mejor-score ?score-vecino)
                    
                    (bind ?mejora-encontrada TRUE)
                    
                    (printout t "Mejorando la Distribución actual: " 
                        (round ?mejor-score) " de score" crlf)
                    
                    (break)
                )
                (bind ?nuevo-dia (+ ?nuevo-dia 1))
            )
            
            (bind ?i (+ ?i 1))
        )
        (bind ?indice 1)
    (while (<= ?indice ?num-distribuciones) do
            (bind ?distribucion-vecina ?mejor-distribucion)
            
            (bind ?distribucion-vecina (delete$ 
                ?distribucion-vecina 
                ?indice 
                (+ 1 ?indice)
            ))
            (bind ?score-vecino (evaluar-distribucion 
                ?distribucion-vecina 
                ?duracion-visita 
                ?dias-visita 
                ?conocimiento 
                ?num-personas 
                ?num-niños
            ))
            
            (if (> ?score-vecino ?mejor-score) then
                (bind ?mejor-distribucion ?distribucion-vecina)
                (bind ?mejor-score ?score-vecino)
                
                (bind ?mejora-encontrada TRUE)
                
                (printout t "Mejorando la Distribución actual: " 
                    (round ?mejor-score) " de score" crlf)
                
                (break)
        )
        (bind ?indice (+ 2 ?indice))
        )
    )
    (if (not ?mejora-encontrada) then
        (printout t "La distribución no se puede mejorar, distribución óptima" crlf)
    )
    ?mejor-distribucion
)

(deffunction sintesis::ImprimirInfoObra (?obra ?conocimiento ?num-personas ?num-niños)
	(bind ?salas (find-all-instances ((?s Sala)) TRUE)) ; Get all Sala instances
    (bind ?num-salas (length$ ?salas)) ; Get the number of Sala instances
    (loop-for-count (?j 1 ?num-salas) do
        (bind ?sala (nth$ ?j ?salas)) ; Get the current Sala instance
        (if (member$ ?obra (send ?sala get-contiene)) then
            (bind ?nombre (send ?obra get-nombre))
            (bind ?numero-sala(send ?sala get-número))
            (printout t "Obra: " ?nombre crlf "Sala: " ?sala  crlf "Número de Sala: " ?numero-sala crlf)
            (bind ?tiempo-obra (calcular-tiempo-obra ?obra ?conocimiento ?num-personas ?num-niños))
            (printout t "Tiempo estimado para la obra: " ?tiempo-obra " minutos" crlf crlf)
        
        ))
)


(defrule sintesis::organizar-e-imprimir-obras
 (declare (salience -5))
    (informacion-visitante (numero-personas ?num-personas))
    (informacion-visitante (numero-niños ?num-niños))
    (informacion-visitante (dias-visita ?dias-visita))
    (informacion-visitante (duracion-visita ?duracion-visita)) 
    (informacion-visitante (conocimiento ?conocimiento)) 
    =>
 (bind ?obras (find-all-instances ((?o Obra)) TRUE))

 ; Aplicar hill climbing
 (bind ?distribucion-optimizada 
    (hill-climbing 
        ?obras 
        ?duracion-visita 
        ?dias-visita 
        ?conocimiento 
        ?num-personas 
        ?num-niños
    )
 )

    (printout t "Obras: " crlf)
    (loop-for-count (?d 1 ?dias-visita) do
        (printout t crlf "Día " ?d ": " crlf)
        (bind ?i 2)
        (while (<= ?i (length$ ?distribucion-optimizada)) do
            (bind ?obra (nth$ (- ?i 1) ?distribucion-optimizada))
            (bind ?obra-dia (nth$ ?i ?distribucion-optimizada))
            (if (eq ?obra-dia ?d) then
                (progn
                    (ImprimirInfoObra ?obra ?conocimiento ?num-personas ?num-niños)
                    
                )
            )
            (bind ?i (+ ?i 2))
        )
    )
)

(defrule recopilacion-informacion-visitante::imprimir-informacion-visitante"Mensaje con la informacion del visitante"
    (declare (salience -1)) ; Prioridad alta
    (informacion-visitante (numero-personas ?nP))
    (informacion-visitante (numero-niños ?nN))
    (informacion-visitante (dias-visita ?d))
    (informacion-visitante (duracion-visita ?dV)) ;duracion visita por día
    (informacion-visitante (preferencia-tematica $?pfT)) ;preferencia
    (informacion-visitante (preferencia-artista $?pfA)) ;preferencia
    (informacion-visitante (preferencia-epoca $?pfE)) ;preferencia
    (informacion-visitante (conocimiento ?c)) ;conocimiento
    =>
    (printout t crlf)
	(printout t "--------------------------------------------------" crlf)
	(printout t "Datos del visitante:" crlf)
    (printout t crlf)
    (printout t "Numero de personas: " ?nP " personas" crlf)
    (printout t "Numero de ninos: " ?nN " ninos" crlf)
    (printout t "Dias de visita: " ?d " dias"crlf)
    (printout t "Duracion de la visita por dia: " ?dV " minutos" crlf)
    (printout t "Preferencia tematica: " ?pfT crlf)
    (printout t "Preferencia artista: " ?pfA crlf)
    (printout t "Preferencia epoca: " ?pfE crlf)
    (printout t "Nivel de conocimiento artisitico: " ?c crlf)
	(printout t crlf)
)