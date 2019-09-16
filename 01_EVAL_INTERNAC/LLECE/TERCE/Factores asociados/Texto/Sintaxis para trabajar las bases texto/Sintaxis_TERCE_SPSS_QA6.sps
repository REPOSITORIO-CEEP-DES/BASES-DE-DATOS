*BASE DE DATOS DE ESTUDIANTE DE 6 GRADO TERCE 2013 * 
* ------------------------------------------------------------------------------------------------------------------------ *.
*Reemplazar dir: XXX por ruta de acceso a las bases*.

GET DATA  /TYPE=TXT
  /FILE="XXX\QA6.csv"
  /ENCODING='Locale'
  /DELCASE=LINE
  /DELIMITERS=";"
  /QUALIFIER='"'
  /ARRANGEMENT=DELIMITED
  /FIRSTCASE=2
  /IMPORTCASE=ALL
  /VARIABLES=
  IDst F11.0
  IDsc F7.0
  IDGRADE F1.0
  IDCNTRY F2.0
  NAME A10
  IDSCHOOL F4.0
  DEPENDENCIA F1.0
  RURALIDAD F1.0
  IDSTRAT F1.0
  IDSTUD F8.0
  SOBREM F1.0
  GENERO F1.0
  EDAD F2.0
  wgT F16.13
  wgT_sen F17.15
  IDPL F1.0
  IDPM F1.0
  IDPC F1.0
  DQA6IT01 F1.0
  DQA6IT02 F1.0
  DQA6IT03_01 F2.0
  DQA6IT03_02 F2.0
  DQA6IT04_01 F1.0
  DQA6IT04_02 F1.0
  DQA6IT04_03 F1.0
  DQA6IT04_04 F1.0
  DQA6IT04_05 F1.0
  DQA6IT04_06 F1.0
  DQA6IT04a F1.0
  DQA6IT04b F1.0
  DQA6IT05 F1.0
  DQA6IT06 F1.0
  DQA6IT06a F2.0
  DQA6IT07 F1.0
  DQA6IT07a F1.0
  DQA6IT08 F1.0
  DQA6IT09 F1.0
  DQA6IT10_01 F1.0
  DQA6IT10_02 F1.0
  DQA6IT11_01 F1.0
  DQA6IT11_02 F1.0
  DQA6IT11_03 F1.0
  DQA6IT11_04 F1.0
  DQA6IT11_05 F1.0
  DQA6IT11_06 F1.0
  DQA6IT11_07 F1.0
  DQA6IT12_01 F1.0
  DQA6IT12_02 F1.0
  DQA6IT12_03 F1.0
  DQA6IT12_04 F1.0
  DQA6IT12_05 F1.0
  DQA6IT12_06 F1.0
  DQA6IT12_07 F1.0
  DQA6IT12_08 F1.0
  DQA6IT13 F1.0
  DQA6IT14 F1.0
  DQA6IT15_01 F1.0
  DQA6IT15_02 F1.0
  DQA6IT15_03 F1.0
  DQA6IT15_04 F1.0
  DQA6IT15_05 F1.0
  DQA6IT16 F1.0
  DQA6IT16a F1.0
  DQA6IT17_01 F1.0
  DQA6IT17_02 F1.0
  DQA6IT17_03 F1.0
  DQA6IT17_04 F1.0
  DQA6IT17_05 F1.0
  DQA6IT17_06 F1.0
  DQA6IT17_07 F1.0
  DQA6IT17_08 F1.0
  DQA6IT17_09 F1.0
  DQA6IT17_10 F1.0
  DQA6IT17_11 F1.0
  DQA6IT17_12 F1.0
  DQA6IT17_13 F1.0
  DQA6IT17_14 F1.0
  DQA6IT17_15 F1.0
  DQA6IT17_16 F1.0
  DQA6IT17_17 F1.0
  DQA6IT17_18 F1.0
  DQA6IT17_19 F1.0
  DQA6IT17_20 F1.0
  DQA6IT17_21 F1.0
  DQA6IT17_22 F1.0
  DQA6IT17_23 F1.0
  DQA6IT17_24 F1.0
  DQA6IT17_25 F1.0
  DQA6IT17_26 F1.0
  DQA6IT17_27 F1.0
  DQA6IT17_28 F1.0
  DQA6IT17_29 F1.0
  DQA6IT18 F1.0
  DQA6IT19_01 F1.0
  DQA6IT19_02 F1.0
  DQA6IT19_03 F1.0
  DQA6IT19_04 F1.0
  DQA6IT19_05 F1.0
  DQA6IT19_06 F1.0
  DQA6IT20 F1.0
  DQA6IT21 F1.0
  DQA6IT22_01 F1.0
  DQA6IT22_02 F1.0
  DQA6IT22_03 F1.0
  DQA6IT22_04 F1.0
  DQA6IT23 F1.0
  DQA6IT24_01 F1.0
  DQA6IT24_02 F1.0
  DQA6IT24_03 F1.0
  DQA6IT24_04 F1.0
  DQA6IT25_01 F1.0
  DQA6IT25_02 F1.0
  DQA6IT25_03 F1.0
  DQA6IT25_04 F1.0
  DQA6IT25_05 F1.0
  DQA6IT25_06 F1.0
  DQA6IT25_07 F1.0
  DQA6IT25_08 F1.0
  DQA6IT26 F1.0
  DQA6IT26a F1.0
  DQA6IT26b F1.0
  DQA6IT27_01 F1.0
  DQA6IT27_02 F1.0
  DQA6IT27_03 F1.0
  DQA6IT27_04 F1.0
  DQA6IT27_05 F1.0
  DQA6IT28_01 F1.0
  DQA6IT28_02 F1.0
  DQA6IT28_03 F1.0
  DQA6IT28_04 F1.0
  DQA6IT28_05 F1.0
  DQA6IT29_01 F1.0
  DQA6IT29_02 F1.0
  DQA6IT30_01 F1.0
  DQA6IT30_02 F1.0
  DQA6IT31_01 F1.0
  DQA6IT31_02 F1.0
  DQA6IT31_03 F1.0
  DQA6IT31_04 F1.0
  DQA6IT31_05 F1.0
  DQA6IT31_06 F1.0
  DQA6IT32_01 F1.0
  DQA6IT32_02 F1.0
  DQA6IT32_03 F1.0
  DQA6IT32_04 F1.0
  DQA6IT32_05 F1.0
  DQA6IT32_06 F1.0
  DQA6IT32_07 F1.0
  DQA6IT32_08 F1.0
  ASISDOA6 F7.4
  PDORGA6 F7.4
  USOLIA6 F7.4
  PCRECRA6 F7.4
  TRABAJA F1.0
  REPITE F1.0
  NINA F1.0
  LIBLENG F1.0
  LIBMATE F1.0
  LIBCIEN F1.0
  CUADERN F1.0
  PCD1SCH6 F1.0
  PCD2SCH6 F1.0
  PCD3SCH6 F1.0
  PCF1SCH6 F1.0
  PCF2SCH6 F1.0
  PCF3SCH6 F1.0
  Date.df EDATE10.
CACHE.
EXECUTE.

VARIABLE LABELS
IDst	'IDGRADE con IDCNTRY y IDSTUD concatenados'
IDsc	'IDGRADE con IDCNTRY y IDSCHOOL concatenados'
IDCNTRY	'Código del país'
IDSTUD	'ID del Estudiante'
IDSCHOOL	'ID del Director'
IDGRADE	'Grado  o curso'
IDSTRAT	'Estrato'
DEPENDENCIA	'Dependencia de la escuela'
RURALIDAD	'Ruralidad de la escuela'
GENERO	'Género'
EDAD	'Edad'
SOBREM	'Sobremuestra'
NAME	'País'
wgT	'Peso estudiante en cuestionario'
wgT_sen	'Peso senate estudiante en cuestionario'
IDPL	'Indicador de participación en lectura'
IDPM	'Indicador de participación en matemáticas'
IDPC	'Indicador de participación en ciencias naturales'
DQA6IT01	'¿Cuántos años tienes?'
DQA6IT02	'¿Eres niña o niño?'
DQA6IT03_01	'¿Cuántas personas viven en tu casa incluyéndote?_Personas de 18 años o más'
DQA6IT03_02	'¿Cuántas personas viven en tu casa incluyéndote?_Personas menores de 18 años'
DQA6IT04_01	'¿Con quién vives?_Hermanos'
DQA6IT04_02	'¿Con quién vives?_Abuelos'
DQA6IT04_03	'¿Con quién vives?_Tíos'
DQA6IT04_04	'¿Con quién vives?_Otros'
DQA6IT04_05	'¿Con quién vives?_Madre'
DQA6IT04_06	'¿Con quién vives?_Padre'
DQA6IT04a	'Si no vives con tu madre, ¿ella vive en otro país o región lejana?'
DQA6IT04b	'Si no vives con tu padre, ¿él vive en otro país o región lejana?'
DQA6IT05	'En tu casa, ¿qué idioma hablan la mayor parte del tiempo?'
DQA6IT06	'¿Perteneces a alguna etnia indígena?'
DQA6IT06a	 'Si perteneces a una etnia o pueblo indígena, ¿a cuál de las siguientes perteneces?'
DQA6IT07	'¿Naciste en este país?'
DQA6IT07a	 'Si NO naciste en este país, ¿qué edad tenías cuando llegaste?'
DQA6IT08	'¿Tu madre nació en este país?'
DQA6IT09	'¿Tu padre nació en este país?'
DQA6IT10_01	'¿Cuál es el nivel educativo más alto que han completado tu madre y tu padre?_Madre'
DQA6IT10_02	'¿Cuál es el nivel educativo más alto que han completado tu madre y tu padre?_Padre'
DQA6IT11_01	'¿Cuál de estos servicios tienes en tu hogar?_Luz eléctrica'
DQA6IT11_02	'¿Cuál de estos servicios tienes en tu hogar?_Agua potable'
DQA6IT11_03	'¿Cuál de estos servicios tienes en tu hogar?_Desagüe o alcantarillado'
DQA6IT11_04	'¿Cuál de estos servicios tienes en tu hogar?_Teléfono fijo'
DQA6IT11_05	'¿Cuál de estos servicios tienes en tu hogar?_Televisión por cable o satelital'
DQA6IT11_06	'¿Cuál de estos servicios tienes en tu hogar?_Conexión a Internet'
DQA6IT11_07	'¿Cuál de estos servicios tienes en tu hogar?_Recolección de basura'
DQA6IT12_01	'¿Cuántos de los siguientes bienes tienes en tu hogar?_Televisor'
DQA6IT12_02	'¿Cuántos de los siguientes bienes tienes en tu hogar?_Radio o equipo de música'
DQA6IT12_03	'¿Cuántos de los siguientes bienes tienes en tu hogar?_Computador'
DQA6IT12_04	'¿Cuántos de los siguientes bienes tienes en tu hogar?_Refrigerador'
DQA6IT12_05	'¿Cuántos de los siguientes bienes tienes en tu hogar?_Lavadora de ropa'
DQA6IT12_06	'¿Cuántos de los siguientes bienes tienes en tu hogar?_Celular sin acceso a Internet'
DQA6IT12_07	'¿Cuántos de los siguientes bienes tienes en tu hogar?_Celular con acceso a Internet'
DQA6IT12_08	'¿Cuántos de los siguientes bienes tienes en tu hogar?_Vehículo con motor'
DQA6IT13	'¿De qué material es la mayor parte de los pisos de tu casa?'
DQA6IT14	'¿Cuántos libros hay en tu casa aproximadamente? Considera todos los tipos de libros...'
DQA6IT15_01	'En tu escuela..._¿Tienes libros de texto de lenguaje para usar en clase?'
DQA6IT15_02	'En tu escuela..._¿Tienes libros de texto de matemática para usar en clase?'
DQA6IT15_03	'En tu escuela..._¿Tienes libros de texto de ciencias para usar en clase?'
DQA6IT15_04	'En tu escuela..._¿Tienes cuadernos o libretas para tomar notas en clase?'
DQA6IT15_05	'En tu escuela..._¿Tienes lápices o lapiceros para usar en clase?'
DQA6IT16	'En tu sala de clases, ¿hay un estante con libros o una pequeño biblioteca para que tú y tus compañeros lean?'
DQA6IT16a	'¿Puedes llevarte alguno de esos libros para tu casa?'
DQA6IT17_01	'¿Con qué frecuencia ocurren estas cosas en tu clase?_Hay ruido y desorden'
DQA6IT17_02	'¿Con qué frecuencia ocurren estas cosas en tu clase?_Se pone atención cuando los profesores hablan'
DQA6IT17_03	'¿Con qué frecuencia ocurren estas cosas en tu clase?_Hay burlas entre compañeros'
DQA6IT17_04	'¿Con qué frecuencia ocurren estas cosas en tu clase?_Los profesores faltan a clases'
DQA6IT17_05	'¿Con qué frecuencia ocurren estas cosas en tu clase?_Los profesores llegan tarde a clases'
DQA6IT17_06	'¿Con qué frecuencia ocurren estas cosas en tu clase?_Los profesores se van temprano'
DQA6IT17_07	'¿Con qué frecuencia ocurren estas cosas en tu clase?_Los profesores están contentos de hacernos clase'
DQA6IT17_08	'¿Con qué frecuencia ocurren estas cosas en tu clase?_Los profesores nos felicitan cuando hacemos algo bien'
DQA6IT17_09	'¿Con qué frecuencia ocurren estas cosas en tu clase?_Los profesores nos motivan para que sigamos estudiando'
DQA6IT17_10	'¿Con qué frecuencia ocurren estas cosas en tu clase?_Los profesores me animan cuando encuentro difícil la materia'
DQA6IT17_11	'¿Con qué frecuencia ocurren estas cosas en tu clase?_Los profesores son simpáticos conmigo'
DQA6IT17_12	'¿Con qué frecuencia ocurren estas cosas en tu clase?_Los profesores escuchan con atención cuando hago algún...'
DQA6IT17_13	'¿Con qué frecuencia ocurren estas cosas en tu clase?_Los profesores nos explican con paciencia'
DQA6IT17_14	'¿Con qué frecuencia ocurren estas cosas en tu clase?_Los profesores llegan con las clases bien preparadas'
DQA6IT17_15	'¿Con qué frecuencia ocurren estas cosas en tu clase?_Los profesores tienen listos los materiales que usaremos...'
DQA6IT17_16	'¿Con qué frecuencia ocurren estas cosas en tu clase?_Los profesores se preocupan de que aprovechemos el tiempo...'
DQA6IT17_17	'¿Con qué frecuencia ocurren estas cosas en tu clase?_Cuando pasamos de una actividad a otra, se arma desorden...'
DQA6IT17_18	'¿Con qué frecuencia ocurren estas cosas en tu clase?_Al pasar un tema nuevo, los profesores preguntan qué cosas...'
DQA6IT17_19	'¿Con qué frecuencia ocurren estas cosas en tu clase?_Los profesores relacionan la materia con cosas de nuestra vida...'
DQA6IT17_20	'¿Con qué frecuencia ocurren estas cosas en tu clase?_Los profesores me preguntan qué entendí y qué no'
DQA6IT17_21	'¿Con qué frecuencia ocurren estas cosas en tu clase?_Si no entendemos algo, los profesores buscan otras formas de...'
DQA6IT17_22	'¿Con qué frecuencia ocurren estas cosas en tu clase?_Si me equivoco, los profesores me ayudan a ver mis errores'
DQA6IT17_23	'¿Con qué frecuencia ocurren estas cosas en tu clase?_Los profesores nos enseñan y nosotros escuchamos y tomamos...'
DQA6IT17_24	'¿Con qué frecuencia ocurren estas cosas en tu clase?_Los profesores nos dictan la materia'
DQA6IT17_25	'¿Con qué frecuencia ocurren estas cosas en tu clase?_Los profesores permiten que los alumnos expliquen al resto...'
DQA6IT17_26	'¿Con qué frecuencia ocurren estas cosas en tu clase?_Los profesores me piden que explique mis respuestas'
DQA6IT17_27	'¿Con qué frecuencia ocurren estas cosas en tu clase?_Los profesores usan nuestros propios ejercicios o...'
DQA6IT17_28	'¿Con qué frecuencia ocurren estas cosas en tu clase?_Cuando los profesores nos hacen preguntas esperan que les...'
DQA6IT17_29	'¿Con qué frecuencia ocurren estas cosas en tu clase?_Nuestros profesores esperan que hagamos los ejercicios de la...'
DQA6IT18	'¿Cuántas veces has repetido de curso?'
DQA6IT19_01	'¿Algunas de estas cosas te pasan cuando estás en la escuela_Tengo miedo de alguno de mis compañeros'
DQA6IT19_02	'¿Algunas de estas cosas te pasan cuando estás en la escuela_Me siento amenazado por alguno de mis compañeros'
DQA6IT19_03	'¿Algunas de estas cosas te pasan cuando estás en la escuela_Temo que uno de mis compañeros me golpee o me...'
DQA6IT19_04	'¿Algunas de estas cosas te pasan cuando estás en la escuela_Mis compañeros se burlan de mí'
DQA6IT19_05	'¿Algunas de estas cosas te pasan cuando estás en la escuela_Mis compañeros me dejan solo'
DQA6IT19_06	'¿Algunas de estas cosas te pasan cuando estás en la escuela_Mis compañeros me fuerzan a que haga cosas que yo...'
DQA6IT20	'En general, ¿cuántos días a la semana estudias o haces tareas para la escuela en tu casa?'
DQA6IT21	'En general, ¿cuánto tiempo al día dedicas a estudiar materias escolares o hacer tareas en la casa?'
DQA6IT22_01	'¿Cómo es tu espacio de estudio en la casa?_Tengo un lugar silencioso en el que puedo estudiar y hacer mis tareas'
DQA6IT22_02	'¿Cómo es tu espacio de estudio en la casa?_Tengo una mesa y una silla donde puedo estudiar y hacer mis tareas'
DQA6IT22_03	'¿Cómo es tu espacio de estudio en la casa?_Tengo buena iluminación para leer y estudiar'
DQA6IT22_04	'¿Cómo es tu espacio de estudio en la casa?_Tengo un espacio donde mantener ordenados mis materiales de la escuela'
DQA6IT23	'¿Tu padre o madre te preguntan si hiciste las tareas de la escuela?'
DQA6IT24_01	'Cuando lees, ¿para qué lo haces?_Para entretenerme'
DQA6IT24_02	'Cuando lees, ¿para qué lo haces?_Para saber cosas que están pasando'
DQA6IT24_03	'Cuando lees, ¿para qué lo haces?_Para saber más de cosas que me interesan'
DQA6IT24_04	'Cuando lees, ¿para qué lo haces?_Para hacer tareas o trabajos de la escuela'
DQA6IT25_01	'Cuando no estás en clases, ¿qué haces con tu tiempo libre?_Veo televisión'
DQA6IT25_02	'Cuando no estás en clases, ¿qué haces con tu tiempo libre?_Juego juegos de consola o juegos de computador'
DQA6IT25_03	'Cuando no estás en clases, ¿qué haces con tu tiempo libre?_Navego en Internet'
DQA6IT25_04	'Cuando no estás en clases, ¿qué haces con tu tiempo libre?_Juego con mis amigos'
DQA6IT25_05	'Cuando no estás en clases, ¿qué haces con tu tiempo libre?_Leo libros o revistas'
DQA6IT25_06	'Cuando no estás en clases, ¿qué haces con tu tiempo libre?_Voy al cine o al teatro'
DQA6IT25_07	'Cuando no estás en clases, ¿qué haces con tu tiempo libre?_Voy al museo o a la biblioteca'
DQA6IT25_08	'Cuando no estás en clases, ¿qué haces con tu tiempo libre?_Hago deportes'
DQA6IT26	'Además de asistir a la escuela, ¿trabajas?'
DQA6IT26a	'¿Cuándo trabajas?'
DQA6IT26b	'¿Te pagan por trabajar?'
DQA6IT27_01	'¿En cuál(es) de los siguientes lugares usas el computador?_En mi hogar'
DQA6IT27_02	'¿En cuál(es) de los siguientes lugares usas el computador?_En mi sala de clases'
DQA6IT27_03	'¿En cuál(es) de los siguientes lugares usas el computador?_En mi escuela pero fuera de mi sala de clases'
DQA6IT27_04	'¿En cuál(es) de los siguientes lugares usas el computador?_En un cibercafé'
DQA6IT27_05	'¿En cuál(es) de los siguientes lugares usas el computador?_En otros lugares'
DQA6IT28_01	'¿En cuál(es) de los siguientes lugares tienes conexión a Internet?_En mi hogar'
DQA6IT28_02	'¿En cuál(es) de los siguientes lugares tienes conexión a Internet?_En mi sala de clases'
DQA6IT28_03	'¿En cuál(es) de los siguientes lugares tienes conexión a Internet?_En mi escuela pero fuera de mi sala de clases'
DQA6IT28_04	'¿En cuál(es) de los siguientes lugares tienes conexión a Internet?_En un cibercafé'
DQA6IT28_05	'¿En cuál(es) de los siguientes lugares tienes conexión a Internet?_En otros lugares'
DQA6IT29_01	'En general, ¿cuántos días a la semana usas el computador con o sin Internet en los siguientes..._En la escuela'
DQA6IT29_02	'En general, ¿cuántos días a la semana usas el computador con o sin Internet en los siguientes..._Fuera de la escuela'
DQA6IT30_01	'En general, ¿cuántas horas al día usas el computador con o sin Internet en los siguientes..._En la escuela'
DQA6IT30_02	'En general, ¿cuántas horas al día usas el computador con o sin Internet en los siguientes..._Fuera de la escuela'
DQA6IT31_01	'En tu tiempo libre, ¿con qué frecuencia usas el computador..._Para hacer las tareas escolares'
DQA6IT31_02	'En tu tiempo libre, ¿con qué frecuencia usas el computador..._Para jugar juegos'
DQA6IT31_03	'En tu tiempo libre, ¿con qué frecuencia usas el computador..._Para escribir correos electrónicos o chatear'
DQA6IT31_04	'En tu tiempo libre, ¿con qué frecuencia usas el computador..._Para conectarme con mis amigos en redes sociales'
DQA6IT31_05	'En tu tiempo libre, ¿con qué frecuencia usas el computador..._Para buscar información en Internet'
DQA6IT31_06	'En tu tiempo libre, ¿con qué frecuencia usas el computador..._Para ver videos o escuchar música'
DQA6IT32_01	'Describe con qué regularidad usas el computador en tus clases de ciencias..._Para practicar ejercicios'
DQA6IT32_02	'Describe con qué regularidad usas el computador en tus clases de ciencias..._Para resolver problemas'
DQA6IT32_03	'Describe con qué regularidad usas el computador en tus clases de ciencias..._Para buscar materiales en Internet'
DQA6IT32_04	'Describe con qué regularidad usas el computador en tus clases de ciencias..._Para consultar los materiales de estudio..'
DQA6IT32_05	'Describe con qué regularidad usas el computador en tus clases de ciencias..._Para ver videos'
DQA6IT32_06	'Describe con qué regularidad usas el computador en tus clases de ciencias..._Para usar simulaciones y hacer...'
DQA6IT32_07	'Describe con qué regularidad usas el computador en tus clases de ciencias..._Para hacer trabajos y resolver...'
DQA6IT32_08	'Describe con qué regularidad usas el computador en tus clases de ciencias..._Lo usa el profesor para presentar...'
ASISDOA6	'Índice de asistencia  y puntualidad docente'
PDORGA6	'índice de prácticas docentes para el desarrollo del aprendizaje'
USOLIA6	'Índice de hábitos de lectura del estudiante'
PCRECRA6	'Índice de uso recreativo del computador'
TRABAJA	'Trabajo infantil remunerado'
REPITE	'Repetición de grado'
NINA	'Género'
LIBLENG	'Estudiante tiene libro para lenguaje'
LIBMATE	'Estudiante tiene libro para matemática'
LIBCIEN	'Estudiante tiene libro para ciencias naturales'
CUADERN	'Estudiante tiene cuaderno'
PCD1SCH6 'Uso computador dentro de la escuela, un día (Dicotomizada)'
PCD2SCH6 'Uso computador dentro de la escuela, dos días (Dicotomizada)'
PCD3SCH6 'Uso computador dentro de la escuela, mas de dos día (Dicotomizada)'
PCF1SCH6 'Uso computador fuera de la escuela, un día (Dicotomizada)'
PCF2SCH6 'Uso computador fuera de la escuela, dos días (Dicotomizada)'
PCF3SCH6 'Uso computador fuera de la escuela, mas de dos días (Dicotomizada)'
Date.df  'Fecha de creación datafile'
.
exe.

RECODE DQA6IT01 DQA6IT02 DQA6IT04_01 DQA6IT04_02 DQA6IT04_03 DQA6IT04_04 DQA6IT04_05 DQA6IT04_06 
  DQA6IT04a DQA6IT04b DQA6IT05 DQA6IT06 DQA6IT07 DQA6IT07a DQA6IT08 DQA6IT09 DQA6IT10_01 DQA6IT10_02 DQA6IT11_01 
  DQA6IT11_02 DQA6IT11_03 DQA6IT11_04 DQA6IT11_05 DQA6IT11_06 DQA6IT11_07 DQA6IT12_01 DQA6IT12_02 DQA6IT12_03 DQA6IT12_04 
  DQA6IT12_05 DQA6IT12_06 DQA6IT12_07 DQA6IT12_08 DQA6IT13 DQA6IT14 DQA6IT15_01 DQA6IT15_02 DQA6IT15_03 DQA6IT15_04 DQA6IT15_05 
  DQA6IT16 DQA6IT16a DQA6IT17_01 DQA6IT17_02 DQA6IT17_03 DQA6IT17_04 DQA6IT17_05 DQA6IT17_06 DQA6IT17_07 DQA6IT17_08 DQA6IT17_09 
  DQA6IT17_10 DQA6IT17_11 DQA6IT17_12 DQA6IT17_13 DQA6IT17_14 DQA6IT17_15 DQA6IT17_16 DQA6IT17_17 DQA6IT17_18 DQA6IT17_19 
  DQA6IT17_20 DQA6IT17_21 DQA6IT17_22 DQA6IT17_23 DQA6IT17_24 DQA6IT17_25 DQA6IT17_26 DQA6IT17_27 DQA6IT17_28 DQA6IT17_29 
  DQA6IT18 DQA6IT19_01 DQA6IT19_02 DQA6IT19_03 DQA6IT19_04 DQA6IT19_05 DQA6IT19_06 DQA6IT20 DQA6IT21 DQA6IT22_01 DQA6IT22_02 
  DQA6IT22_03 DQA6IT22_04 DQA6IT23 DQA6IT24_01 DQA6IT24_02 DQA6IT24_03 DQA6IT24_04 DQA6IT25_01 DQA6IT25_02 DQA6IT25_03 DQA6IT25_04 
  DQA6IT25_05 DQA6IT25_06 DQA6IT25_07 DQA6IT25_08 DQA6IT26 DQA6IT26a DQA6IT26b DQA6IT27_01 DQA6IT27_02 DQA6IT27_03 DQA6IT27_04 
  DQA6IT27_05 DQA6IT28_01 DQA6IT28_02 DQA6IT28_03 DQA6IT28_04 DQA6IT28_05 DQA6IT29_01 DQA6IT29_02 DQA6IT30_01 DQA6IT30_02 
  DQA6IT31_01 DQA6IT31_02 DQA6IT31_03 DQA6IT31_04 DQA6IT31_05 DQA6IT31_06 DQA6IT32_01 DQA6IT32_02 DQA6IT32_03 DQA6IT32_04 
  DQA6IT32_05 DQA6IT32_06 DQA6IT32_07 DQA6IT32_08 ASISDOA6 PDORGA6 USOLIA6 PCRECRA6 TRABAJA REPITE NINA LIBLENG LIBMATE 
  LIBCIEN CUADERN PCD1SCH6 PCD2SCH6 PCD3SCH6 PCF1SCH6 PCF2SCH6 PCF3SCH6 (SYSMIS=9).
EXECUTE.

RECODE DQA6IT03_01  DQA6IT03_02 DQA6IT06a (SYSMIS=99).
EXECUTE.

VALUE LABELS
/DEPENDENCIA
   1 'Publico'
   2 'Privada'
/RURALIDAD
   1 'Urbana'
   2 'Rural'
/SOBREM
   0 'No'
   1 'Sí'
/GENERO
   1 'Niña'
   2 'Niño'
/IDPL
   0 'No participa'
   1 'Sí participa'
/IDPM
   0 'No participa'
   1 'Sí participa'
/IDPC
   0 'No participa'
   1 'Sí participa'
/DQA6IT01
   1 '10 años o menos'
   2 '11 años'
   3 '12 años'
   4 '13 años'
   5 '14 años'
   6 '15 años o más'
   9 'Perdido'
/DQA6IT02
   1 'Niña'
   2 'Niño'
   9 'Perdido'
/DQA6IT03_01
   1 '1'
   2 '2'
   3 '3'
   4 '4'
   5 '5'
   6 '6'
   7 '7'
   8 '8'
   9 '9'
   10 '10 o más'
   99 'Perdido'
/DQA6IT03_02
   1 '1'
   2 '2'
   3 '3'
   4 '4'
   5 '5'
   6 '6'
   7 '7'
   8 '8'
   9 '9'
   10 '10 o más'
   99 'Perdido'
/DQA6IT04_01
   0 'No'
   1 'Sí'
   9 'Perdido'
/DQA6IT04_02
   0 'No'
   1 'Sí'
   9 'Perdido'
/DQA6IT04_03
   0 'No'
   1 'Sí'
   9 'Perdido'
/DQA6IT04_04
   0 'No'
   1 'Sí'
   9 'Perdido'
/DQA6IT04_05
   0 'No'
   1 'Sí'
   9 'Perdido'
/DQA6IT04_06
   0 'No'
   1 'Sí'
   9 'Perdido'
/DQA6IT04a
   0 'No'
   1 'Sí'
   9 'Perdido'
   6 'No aplica'
/DQA6IT04b
   0 'No'
   1 'Sí'
   9 'Perdido'
   6 'No aplica'
/DQA6IT05
   1 'Castellano o portugués'
   2 'Lengua extranjera'
   3 'Lengua indígena 1'
   4 'Lengua indígena 2'
   5 'Lengua indígena 3'
   6 'Otra lengua'
   9 'Perdido'
/DQA6IT06
   0 'No'
   1 'Sí'
   9 'Perdido'
/DQA6IT06a
   1 'Pueblo originario 1'
   2 'Pueblo originario 2'
   3 'Pueblo originario 3'
   4 'Pueblo originario 4'
   5 'Pueblo originario 5'
   6 'Otro'
   96 'No aplica'
   99 'Perdido'
/DQA6IT07
   0 'No'
   1 'Sí'
   9 'Perdido'
/DQA6IT07a
   1 'Menos de un año'
   2 'Entre 1 y 5 años'
   3 'Entre 6 y 8 años'
   4 'Más de 8 años'
   5 'No sé / No me acuerdo'
   9 'Perdido'
   6 'No aplica'
/DQA6IT08
   0 'No'
   1 'Sí'
   9 'Perdido'
/DQA6IT09
   0 'No'
   1 'Sí'
   9 'Perdido'
/DQA6IT10_01
   1 'No tiene estudios'
   2 '[CINE-P 1-2]'
   3 '[CINE-P 3]'
   4 '[CINE-P 4-5]'
   5 '[CINE-P 6-7-8]'
   6 'No sé'
   9 'Perdido'
/DQA6IT10_02
   1 'No tiene estudios'
   2 '[CINE-P 1-2]'
   3 '[CINE-P 3]'
   4 '[CINE-P 4-5]'
   5 '[CINE-P 6-7-8]'
   6 'No sé'
   9 'Perdido'
/DQA6IT11_01
   0 'No'
   1 'Sí'
   9 'Perdido'
/DQA6IT11_02
   0 'No'
   1 'Sí'
   9 'Perdido'
/DQA6IT11_03
   0 'No'
   1 'Sí'
   9 'Perdido'
/DQA6IT11_04
   0 'No'
   1 'Sí'
   9 'Perdido'
/DQA6IT11_05
   0 'No'
   1 'Sí'
   9 'Perdido'
/DQA6IT11_06
   0 'No'
   1 'Sí'
   9 'Perdido'
/DQA6IT11_07
   0 'No'
   1 'Sí'
   9 'Perdido'
/DQA6IT12_01
   1 'Cero (0)'
   2 'Uno (1)'
   3 'Dos (2)'
   4 'Tres o más (3 o más)'
   9 'Perdido'
/DQA6IT12_02
   1 'Cero (0)'
   2 'Uno (1)'
   3 'Dos (2)'
   4 'Tres o más (3 o más)'
   9 'Perdido'
/DQA6IT12_03
   1 'Cero (0)'
   2 'Uno (1)'
   3 'Dos (2)'
   4 'Tres o más (3 o más)'
   9 'Perdido'
/DQA6IT12_04
   1 'Cero (0)'
   2 'Uno (1)'
   3 'Dos (2)'
   4 'Tres o más (3 o más)'
   9 'Perdido'
/DQA6IT12_05
   1 'Cero (0)'
   2 'Uno (1)'
   3 'Dos (2)'
   4 'Tres o más (3 o más)'
   9 'Perdido'
/DQA6IT12_06
   1 'Cero (0)'
   2 'Uno (1)'
   3 'Dos (2)'
   4 'Tres o más (3 o más)'
   9 'Perdido'
/DQA6IT12_07
   1 'Cero (0)'
   2 'Uno (1)'
   3 'Dos (2)'
   4 'Tres o más (3 o más)'
   9 'Perdido'
/DQA6IT12_08
   1 'Cero (0)'
   2 'Uno (1)'
   3 'Dos (2)'
   4 'Tres o más (3 o más)'
   9 'Perdido'
/DQA6IT13
   1 'Tierra'
   2 'Cemento'
   3 'Tablas de madera sin pulir'
   4 'Baldosas, cerámica o similar'
   5 'Parquet, madera pulida o piso alfombrado'
   9 'Perdido'
/DQA6IT14
   1 'No hay libros'
   2 'Hay 10 o menos'
   3 'Hay entre 11 y 20'
   4 'Hay entre 21 y 30'
   5 'Hay entre 31 y 50'
   6 'Hay más de 50'
   9 'Perdido'
/DQA6IT15_01
   1 'No hay'
   2 'Sí, para usar entre varios'
   3 'Sí, para mí solo'
   9 'Perdido'
/DQA6IT15_02
   1 'No hay'
   2 'Sí, para usar entre varios'
   3 'Sí, para mí solo'
   9 'Perdido'
/DQA6IT15_03
   1 'No hay'
   2 'Sí, para usar entre varios'
   3 'Sí, para mí solo'
   9 'Perdido'
/DQA6IT15_04
   1 'No hay'
   2 'Sí, para usar entre varios'
   3 'Sí, para mí solo'
   9 'Perdido'
/DQA6IT15_05
   1 'No hay'
   2 'Sí, para usar entre varios'
   3 'Sí, para mí solo'
   9 'Perdido'
/DQA6IT16
   0 'No'
   1 'Sí'
   9 'Perdido'
/DQA6IT16a
   0 'No'
   1 'Sí'
   9 'Perdido'
   6 'No aplica'
/DQA6IT17_01
   1 'Nunca o casi nunca'
   2 'A veces'
   3 'Siempre o casi siempre'
   9 'Perdido'
/DQA6IT17_02
   1 'Nunca o casi nunca'
   2 'A veces'
   3 'Siempre o casi siempre'
   9 'Perdido'
/DQA6IT17_03
   1 'Nunca o casi nunca'
   2 'A veces'
   3 'Siempre o casi siempre'
   9 'Perdido'
/DQA6IT17_04
   1 'Nunca o casi nunca'
   2 'A veces'
   3 'Siempre o casi siempre'
   9 'Perdido'
/DQA6IT17_05
   1 'Nunca o casi nunca'
   2 'A veces'
   3 'Siempre o casi siempre'
   9 'Perdido'
/DQA6IT17_06
   1 'Nunca o casi nunca'
   2 'A veces'
   3 'Siempre o casi siempre'
   9 'Perdido'
/DQA6IT17_07
   1 'Nunca o casi nunca'
   2 'A veces'
   3 'Siempre o casi siempre'
   9 'Perdido'
/DQA6IT17_08
   1 'Nunca o casi nunca'
   2 'A veces'
   3 'Siempre o casi siempre'
   9 'Perdido'
/DQA6IT17_09
   1 'Nunca o casi nunca'
   2 'A veces'
   3 'Siempre o casi siempre'
   9 'Perdido'
/DQA6IT17_10
   1 'Nunca o casi nunca'
   2 'A veces'
   3 'Siempre o casi siempre'
   9 'Perdido'
/DQA6IT17_11
   1 'Nunca o casi nunca'
   2 'A veces'
   3 'Siempre o casi siempre'
   9 'Perdido'
/DQA6IT17_12
   1 'Nunca o casi nunca'
   2 'A veces'
   3 'Siempre o casi siempre'
   9 'Perdido'
/DQA6IT17_13
   1 'Nunca o casi nunca'
   2 'A veces'
   3 'Siempre o casi siempre'
   9 'Perdido'
/DQA6IT17_14
   1 'Nunca o casi nunca'
   2 'A veces'
   3 'Siempre o casi siempre'
   9 'Perdido'
/DQA6IT17_15
   1 'Nunca o casi nunca'
   2 'A veces'
   3 'Siempre o casi siempre'
   9 'Perdido'
/DQA6IT17_16
   1 'Nunca o casi nunca'
   2 'A veces'
   3 'Siempre o casi siempre'
   9 'Perdido'
/DQA6IT17_17
   1 'Nunca o casi nunca'
   2 'A veces'
   3 'Siempre o casi siempre'
   9 'Perdido'
/DQA6IT17_18
   1 'Nunca o casi nunca'
   2 'A veces'
   3 'Siempre o casi siempre'
   9 'Perdido'
/DQA6IT17_19
   1 'Nunca o casi nunca'
   2 'A veces'
   3 'Siempre o casi siempre'
   9 'Perdido'
/DQA6IT17_20
   1 'Nunca o casi nunca'
   2 'A veces'
   3 'Siempre o casi siempre'
   9 'Perdido'
/DQA6IT17_21
   1 'Nunca o casi nunca'
   2 'A veces'
   3 'Siempre o casi siempre'
   9 'Perdido'
/DQA6IT17_22
   1 'Nunca o casi nunca'
   2 'A veces'
   3 'Siempre o casi siempre'
   9 'Perdido'
/DQA6IT17_23
   1 'Nunca o casi nunca'
   2 'A veces'
   3 'Siempre o casi siempre'
   9 'Perdido'
/DQA6IT17_24
   1 'Nunca o casi nunca'
   2 'A veces'
   3 'Siempre o casi siempre'
   9 'Perdido'
/DQA6IT17_25
   1 'Nunca o casi nunca'
   2 'A veces'
   3 'Siempre o casi siempre'
   9 'Perdido'
/DQA6IT17_26
   1 'Nunca o casi nunca'
   2 'A veces'
   3 'Siempre o casi siempre'
   9 'Perdido'
/DQA6IT17_27
   1 'Nunca o casi nunca'
   2 'A veces'
   3 'Siempre o casi siempre'
   9 'Perdido'
/DQA6IT17_28
   1 'Nunca o casi nunca'
   2 'A veces'
   3 'Siempre o casi siempre'
   9 'Perdido'
/DQA6IT17_29
   1 'Nunca o casi nunca'
   2 'A veces'
   3 'Siempre o casi siempre'
   9 'Perdido'
/DQA6IT18
   1 'Nunca he repetido'
   2 'Una vez'
   3 'Dos veces o más'
   4 'No sé, no recuerdo'
   9 'Perdido'
/DQA6IT19_01
   0 'No'
   1 'Sí'
   9 'Perdido'
/DQA6IT19_02
   0 'No'
   1 'Sí'
   9 'Perdido'
/DQA6IT19_03
   0 'No'
   1 'Sí'
   9 'Perdido'
/DQA6IT19_04
   0 'No'
   1 'Sí'
   9 'Perdido'
/DQA6IT19_05
   0 'No'
   1 'Sí'
   9 'Perdido'
/DQA6IT19_06
   0 'No'
   1 'Sí'
   9 'Perdido'
/DQA6IT20 
   1 'Cero (0)'
   2 'Un día (1)'
   3 'Dos días (2)'
   4 'Tres días (3)'
   5 'Cuatro días (4)'
   6 'Cinco días (5)'
   7 'Seis días (6)'
   8 'Siete días (7)'
   9 'Perdido'
/DQA6IT21
   1 'No estudio ni hago tareas'
   2 'Menos de una hora al día'
   3 'De 1 a 2 horas por día'
   4 'Más de 2 horas por día'
   9 'Perdido'
/DQA6IT22_01
   0 'No'
   1 'Sí'
   9 'Perdido'
/DQA6IT22_02
   0 'No'
   1 'Sí'
   9 'Perdido'
/DQA6IT22_03
   0 'No'
   1 'Sí'
   9 'Perdido'
/DQA6IT22_04
   0 'No'
   1 'Sí'
   9 'Perdido'
/DQA6IT23
   1 'Sí, me preguntan todos los días'
   2 'Algunos días me preguntan y otros días no'
   3 'No, casi nunca me preguntan'
   4 'No, nunca me preguntan'
   9 'Perdido'
/DQA6IT24_01
   1 'Nunca o casi nunca'
   2 'Una o dos veces al mes'
   3 'Una o dos veces a la semana'
   4 'Todos o casi todos los días'
   9 'Perdido'
/DQA6IT24_02
   1 'Nunca o casi nunca'
   2 'Una o dos veces al mes'
   3 'Una o dos veces a la semana'
   4 'Todos o casi todos los días'
   9 'Perdido'
/DQA6IT24_03
   1 'Nunca o casi nunca'
   2 'Una o dos veces al mes'
   3 'Una o dos veces a la semana'
   4 'Todos o casi todos los días'
   9 'Perdido'
/DQA6IT24_04
   1 'Nunca o casi nunca'
   2 'Una o dos veces al mes'
   3 'Una o dos veces a la semana'
   4 'Todos o casi todos los días'
   9 'Perdido'
/DQA6IT25_01
   1 'Nunca o casi nunca'
   2 'A veces'
   3 'Siempre o casi siempre'
   9 'Perdido'
/DQA6IT25_02
   1 'Nunca o casi nunca'
   2 'A veces'
   3 'Siempre o casi siempre'
   9 'Perdido'
/DQA6IT25_03
   1 'Nunca o casi nunca'
   2 'A veces'
   3 'Siempre o casi siempre'
   9 'Perdido'
/DQA6IT25_04
   1 'Nunca o casi nunca'
   2 'A veces'
   3 'Siempre o casi siempre'
   9 'Perdido'
/DQA6IT25_05
   1 'Nunca o casi nunca'
   2 'A veces'
   3 'Siempre o casi siempre'
   9 'Perdido'
/DQA6IT25_06
   1 'Nunca o casi nunca'
   2 'A veces'
   3 'Siempre o casi siempre'
   9 'Perdido'
/DQA6IT25_07
   1 'Nunca o casi nunca'
   2 'A veces'
   3 'Siempre o casi siempre'
   9 'Perdido'
/DQA6IT25_08
   1 'Nunca o casi nunca'
   2 'A veces'
   3 'Siempre o casi siempre'
   9 'Perdido'
/DQA6IT26
   1 'No'
   2 'Sí, en casa'
   3 'Sí, fuera de la casa'
   9 'Perdido'
/DQA6IT26a
   1 'Lo hago solo los fines de semana'
   2 'La hago la mayor parte del tiempo en que no estoy en la escuela'
   3 'Lo hago por poco rato cuando no estoy en la escuela'
   9 'Perdido'
   6 'No aplica'
/DQA6IT26b
   1 'Sí'
   2 'No'
   3 'No, pero me dan cosas'
   9 'Perdido'
   6 'No aplica'
/DQA6IT27_01
   0 'No'
   1 'Sí'
   9 'Perdido'
/DQA6IT27_02
   0 'No'
   1 'Sí'
   9 'Perdido'
/DQA6IT27_03
   0 'No'
   1 'Sí'
   9 'Perdido'
/DQA6IT27_04
   0 'No'
   1 'Sí'
   9 'Perdido'
/DQA6IT27_05
   0 'No'
   1 'Sí'
   9 'Perdido'
/DQA6IT28_01
   0 'No'
   1 'Sí'
   9 'Perdido'
/DQA6IT28_02
   0 'No'
   1 'Sí'
   9 'Perdido'
/DQA6IT28_03
   0 'No'
   1 'Sí'
   9 'Perdido'
/DQA6IT28_04
   0 'No'
   1 'Sí'
   9 'Perdido'
/DQA6IT28_05
   0 'No'
   1 'Sí'
   9 'Perdido'
/DQA6IT29_01
   1 'Cero (0)'
   2 'Un día (1)'
   3 'Dos días (2)'
   4 'Tres días (3)'
   5 'Cuatro días (4)'
   6 'Cinco días (5)'
   7 'Seis días (6)'
   8 'Siete días (7)'
   9 'Perdido'
/DQA6IT29_02
   1 'Cero (0)'
   2 'Un día (1)'
   3 'Dos días (2)'
   4 'Tres días (3)'
   5 'Cuatro días (4)'
   6 'Cinco días (5)'
   7 'Seis días (6)'
   8 'Siete días (7)'
   9 'Perdido'
/DQA6IT30_01
   1 'No uso el computador'
   2 'Menos de una hora al día'
   3 'De 1 a 2 horas por día'
   4 'Más de 2 horas por día'
   9 'Perdido'
/DQA6IT30_02
   1 'No uso el computador'
   2 'Menos de una hora al día'
   3 'De 1 a 2 horas por día'
   4 'Más de 2 horas por día'
   9 'Perdido'
/DQA6IT31_01
   1 'Nunca o casi nunca'
   2 'A veces'
   3 'Siempre o casi siempre'
   9 'Perdido'
/DQA6IT31_02
   1 'Nunca o casi nunca'
   2 'A veces'
   3 'Siempre o casi siempre'
   9 'Perdido'
/DQA6IT31_03
   1 'Nunca o casi nunca'
   2 'A veces'
   3 'Siempre o casi siempre'
   9 'Perdido'
/DQA6IT31_04
   1 'Nunca o casi nunca'
   2 'A veces'
   3 'Siempre o casi siempre'
   9 'Perdido'
/DQA6IT31_05
   1 'Nunca o casi nunca'
   2 'A veces'
   3 'Siempre o casi siempre'
   9 'Perdido'
/DQA6IT31_06
   1 'Nunca o casi nunca'
   2 'A veces'
   3 'Siempre o casi siempre'
   9 'Perdido'
/DQA6IT32_01
   1 'En ninguna clase'
   2 'En algunas clases'
   3 'En la mayoría de las clases'
   4 'En todas las clases'
   9 'Perdido'
/DQA6IT32_02
   1 'En ninguna clase'
   2 'En algunas clases'
   3 'En la mayoría de las clases'
   4 'En todas las clases'
   9 'Perdido'
/DQA6IT32_03
   1 'En ninguna clase'
   2 'En algunas clases'
   3 'En la mayoría de las clases'
   4 'En todas las clases'
   9 'Perdido'
/DQA6IT32_04
   1 'En ninguna clase'
   2 'En algunas clases'
   3 'En la mayoría de las clases'
   4 'En todas las clases'
   9 'Perdido'
/DQA6IT32_05
   1 'En ninguna clase'
   2 'En algunas clases'
   3 'En la mayoría de las clases'
   4 'En todas las clases'
   9 'Perdido'
/DQA6IT32_06
   1 'En ninguna clase'
   2 'En algunas clases'
   3 'En la mayoría de las clases'
   4 'En todas las clases'
   9 'Perdido'
/DQA6IT32_07
   1 'En ninguna clase'
   2 'En algunas clases'
   3 'En la mayoría de las clases'
   4 'En todas las clases'
   9 'Perdido'
/DQA6IT32_08
   1 'En ninguna clase'
   2 'En algunas clases'
   3 'En la mayoría de las clases'
   4 'En todas las clases'
   9 'Perdido'
/ASISDOA6
   9 'Perdido'
/PDORGA6
   9 'Perdido'
/USOLIA6
   9 'Perdido'
/PCRECRA6
   9 'Perdido'
/TRABAJA
   0 'No'
   1 'Si'
   9 'Perdido'
/REPITE
   0 'No'
   1 'Si'
   9 'Perdido'
/NINA
   0 'No'
   1 'Si'
   9 'Perdido'
/LIBLENG
   0 'No'
   1 'Si'
   9 'Perdido'
/LIBMATE
   0 'No'
   1 'Si'
   9 'Perdido'
/LIBCIEN
   0 'No'
   1 'Si'
   9 'Perdido'
/CUADERN
   0 'No'
   1 'Si'
   9 'Perdido'
/PCD1SCH6
   0 'No lo usa un día'  
   1 'Lo usa un día'
   9 'Perdido'
/PCD2SCH6
   0 'No lo usa dos días'  
   1 'Lo usa dos días'
   9 'Perdido'
/PCD3SCH6
   0 'No lo usa más de 2 días'  
   1 'Lo usa más de 2 días'
   9 'Perdido'
/PCF1SCH6
0 'No lo usa un día'  
   1 'Lo usa un día'
   9 'Perdido'
/PCF2SCH6
   0 'No lo usa dos días'  
   1 'Lo usa dos días'
   9 'Perdido'
/PCF3SCH6
   0 'No lo usa más de 2 días'  
   1 'Lo usa más de 2 días'
   9 'Perdido'
.
exe.

MISSING VALUES DQA6IT01 DQA6IT02 DQA6IT04_01 DQA6IT04_02 DQA6IT04_03 DQA6IT04_04 DQA6IT04_05 DQA6IT04_06 
  DQA6IT05 DQA6IT06 DQA6IT07 DQA6IT08 DQA6IT09 DQA6IT10_01 DQA6IT10_02 DQA6IT11_01 
  DQA6IT11_02 DQA6IT11_03 DQA6IT11_04 DQA6IT11_05 DQA6IT11_06 DQA6IT11_07 DQA6IT12_01 DQA6IT12_02 DQA6IT12_03 DQA6IT12_04 
  DQA6IT12_05 DQA6IT12_06 DQA6IT12_07 DQA6IT12_08 DQA6IT13 DQA6IT14 DQA6IT15_01 DQA6IT15_02 DQA6IT15_03 DQA6IT15_04 DQA6IT15_05 
  DQA6IT16 DQA6IT17_01 DQA6IT17_02 DQA6IT17_03 DQA6IT17_04 DQA6IT17_05 DQA6IT17_06 DQA6IT17_07 DQA6IT17_08 DQA6IT17_09 
  DQA6IT17_10 DQA6IT17_11 DQA6IT17_12 DQA6IT17_13 DQA6IT17_14 DQA6IT17_15 DQA6IT17_16 DQA6IT17_17 DQA6IT17_18 DQA6IT17_19 
  DQA6IT17_20 DQA6IT17_21 DQA6IT17_22 DQA6IT17_23 DQA6IT17_24 DQA6IT17_25 DQA6IT17_26 DQA6IT17_27 DQA6IT17_28 DQA6IT17_29 
  DQA6IT18 DQA6IT19_01 DQA6IT19_02 DQA6IT19_03 DQA6IT19_04 DQA6IT19_05 DQA6IT19_06 DQA6IT20 DQA6IT21 DQA6IT22_01 DQA6IT22_02 
  DQA6IT22_03 DQA6IT22_04 DQA6IT23 DQA6IT24_01 DQA6IT24_02 DQA6IT24_03 DQA6IT24_04 DQA6IT25_01 DQA6IT25_02 DQA6IT25_03 DQA6IT25_04 
  DQA6IT25_05 DQA6IT25_06 DQA6IT25_07 DQA6IT25_08 DQA6IT26 DQA6IT27_01 DQA6IT27_02 DQA6IT27_03 DQA6IT27_04 
  DQA6IT27_05 DQA6IT28_01 DQA6IT28_02 DQA6IT28_03 DQA6IT28_04 DQA6IT28_05 DQA6IT29_01 DQA6IT29_02 DQA6IT30_01 DQA6IT30_02 
  DQA6IT31_01 DQA6IT31_02 DQA6IT31_03 DQA6IT31_04 DQA6IT31_05 DQA6IT31_06 DQA6IT32_01 DQA6IT32_02 DQA6IT32_03 DQA6IT32_04 
  DQA6IT32_05 DQA6IT32_06 DQA6IT32_07 DQA6IT32_08 ASISDOA6 PDORGA6 USOLIA6 PCRECRA6 TRABAJA REPITE NINA LIBLENG LIBMATE 
  LIBCIEN CUADERN PCD1SCH6 PCD2SCH6 PCD3SCH6 PCF1SCH6 PCF2SCH6 PCF3SCH6
(9)
DQA6IT04a DQA6IT04b DQA6IT07a DQA6IT16a DQA6IT26a DQA6IT26b 
(6,9)
DQA6IT06a 
(96,99)
DQA6IT03_01  DQA6IT03_02 
(99).
.
exe.

DATASET NAME QA6 WINDOW=FRONT.

SAVE TRANSLATE OUTFILE='XXX\QA6.dta'
  /TYPE=STATA
  /VERSION=7
  /MAP
  /REPLACE.

SAVE OUTFILE='XXX\QA6.sav'
/COMPRESSED.


DATASET ACTIVATE QA6.
CODEBOOK  DQA6IT01 [n] DQA6IT02 [n] DQA6IT03_01 [n] DQA6IT03_02 [n] DQA6IT04_01 [n] DQA6IT04_02 [n] 
    DQA6IT04_03 [n] DQA6IT04_04 [n] DQA6IT04_05 [n] DQA6IT04_06 [n] DQA6IT04a [n] DQA6IT04b [n] 
    DQA6IT05 [n] DQA6IT06 [n] DQA6IT06a [n] DQA6IT07 [n] DQA6IT07a [n] DQA6IT08 [n] DQA6IT09 [n] 
    DQA6IT10_01 [n] DQA6IT10_02 [n] DQA6IT11_01 [n] DQA6IT11_02 [n] DQA6IT11_03 [n] DQA6IT11_04 [n] 
    DQA6IT11_05 [n] DQA6IT11_06 [n] DQA6IT11_07 [n] DQA6IT12_01 [n] DQA6IT12_02 [n] DQA6IT12_03 [n] 
    DQA6IT12_04 [n] DQA6IT12_05 [n] DQA6IT12_06 [n] DQA6IT12_07 [n] DQA6IT12_08 [n] DQA6IT13 [n] 
    DQA6IT14 [n] DQA6IT15_01 [n] DQA6IT15_02 [n] DQA6IT15_03 [n] DQA6IT15_04 [n] DQA6IT15_05 [n] 
    DQA6IT16 [n] DQA6IT16a [n] DQA6IT17_01 [n] DQA6IT17_02 [n] DQA6IT17_03 [n] DQA6IT17_04 [n] 
    DQA6IT17_05 [n] DQA6IT17_06 [n] DQA6IT17_07 [n] DQA6IT17_08 [n] DQA6IT17_09 [n] DQA6IT17_10 [n] 
    DQA6IT17_11 [n] DQA6IT17_12 [n] DQA6IT17_13 [n] DQA6IT17_14 [n] DQA6IT17_15 [n] DQA6IT17_16 [n] 
    DQA6IT17_17 [n] DQA6IT17_18 [n] DQA6IT17_19 [n] DQA6IT17_20 [n] DQA6IT17_21 [n] DQA6IT17_22 [n] 
    DQA6IT17_23 [n] DQA6IT17_24 [n] DQA6IT17_25 [n] DQA6IT17_26 [n] DQA6IT17_27 [n] DQA6IT17_28 [n] 
    DQA6IT17_29 [n] DQA6IT18 [n] DQA6IT19_01 [n] DQA6IT19_02 [n] DQA6IT19_03 [n] DQA6IT19_04 [n] 
    DQA6IT19_05 [n] DQA6IT19_06 [n] DQA6IT20 [n] DQA6IT21 [n] DQA6IT22_01 [n] DQA6IT22_02 [n] 
    DQA6IT22_03 [n] DQA6IT22_04 [n] DQA6IT23 [n] DQA6IT24_01 [n] DQA6IT24_02 [n] DQA6IT24_03 [n] 
    DQA6IT24_04 [n] DQA6IT25_01 [n] DQA6IT25_02 [n] DQA6IT25_03 [n] DQA6IT25_04 [n] DQA6IT25_05 [n] 
    DQA6IT25_06 [n] DQA6IT25_07 [n] DQA6IT25_08 [n] DQA6IT26 [n] DQA6IT26a [n] DQA6IT26b [n] 
    DQA6IT27_01 [n] DQA6IT27_02 [n] DQA6IT27_03 [n] DQA6IT27_04 [n] DQA6IT27_05 [n] DQA6IT28_01 [n] 
    DQA6IT28_02 [n] DQA6IT28_03 [n] DQA6IT28_04 [n] DQA6IT28_05 [n] DQA6IT29_01 [n] DQA6IT29_02 [n] 
    DQA6IT30_01 [n] DQA6IT30_02 [n] DQA6IT31_01 [n] DQA6IT31_02 [n] DQA6IT31_03 [n] DQA6IT31_04 [n] 
    DQA6IT31_05 [n] DQA6IT31_06 [n] DQA6IT32_01 [n] DQA6IT32_02 [n] DQA6IT32_03 [n] DQA6IT32_04 [n] 
    DQA6IT32_05 [n] DQA6IT32_06 [n] DQA6IT32_07 [n] DQA6IT32_08 [n]
  /VARINFO POSITION LABEL TYPE FORMAT MEASURE ROLE VALUELABELS MISSING ATTRIBUTES
  /FILEINFO NAME CASECOUNT LABEL WEIGHT
  /OPTIONS VARORDER=VARLIST SORT=ASCENDING MAXCATS=200
  /STATISTICS COUNT PERCENT MEAN STDDEV QUARTILES.
DATASET NAME Conjunto_de_datos3 WINDOW=FRONT.
