*BASE DE DATOS DE ESTUDIANTE DE 3 GRADO TERCE 2013 * 
* ------------------------------------------------------------------------------------------------------------------------ *.
*Reemplazar dir: XXX por ruta de acceso a las bases*.

GET DATA  /TYPE=TXT
  /FILE="XXX\QA3.csv"
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
  DQA3IT01 F1.0
  DQA3IT02 F1.0
  DQA3IT03_01 F2.0
  DQA3IT03_02 F2.0
  DQA3IT04_01 F1.0
  DQA3IT04_02 F1.0
  DQA3IT04_03 F1.0
  DQA3IT04_04 F1.0
  DQA3IT04_05 F1.0
  DQA3IT04_06 F1.0
  DQA3IT05 F1.0
  DQA3IT06_01 F1.0
  DQA3IT06_02 F1.0
  DQA3IT06_03 F1.0
  DQA3IT06_04 F1.0
  DQA3IT06_05 F1.0
  DQA3IT07_01 F1.0
  DQA3IT07_02 F1.0
  DQA3IT07_03 F1.0
  DQA3IT07_04 F1.0
  DQA3IT07_05 F1.0
  DQA3IT08_01 F1.0
  DQA3IT08_02 F1.0
  DQA3IT08_03 F1.0
  DQA3IT09 F1.0
  DQA3IT10 F1.0
  DQA3IT11 F1.0
  DQA3IT12_01 F1.0
  DQA3IT12_02 F1.0
  DQA3IT12_03 F1.0
  DQA3IT12_04 F1.0
  DQA3IT12_05 F1.0
  DQA3IT12_06 F1.0
  DQA3IT12_07 F1.0
  DQA3IT12_08 F1.0
  DQA3IT12_09 F1.0
  DQA3IT13 F1.0
  DQA3IT13a F1.0
  DQA3IT13b F1.0
  ASISDOA3 F7.4
  ORGANA3 F7.4
  REPITE F1.0
  TRABAJA F1.0
  NINA F1.0
  CUADERN F1.0
  LIBLENG F1.0
  LIBMATE F1.0
  Date.df EDATE10.
CACHE.
EXECUTE.

VARIABLE LABELS
  IDst 'IDGRADE con IDCNTRY y IDSTUD concatenados'
  IDsc 'IDGRADE con IDCNTRY y IDSCHOOL concatenados'
  IDGRADE 'ID del grado'
  IDCNTRY 'C�digo del pa�s'
  NAME 'Pa�s'
  IDSCHOOL 'ID de la escuela'
  DEPENDENCIA 'Dependencia de la escuela'
  RURALIDAD 'Ruralidad de la escuela'
  IDSTRAT 'Estrato'
  IDSTUD 'ID del estudiante'
  SOBREM 'Sobremuestra'
  GENERO 'G�nero'
  EDAD 'Edad'
  wgT 'Peso estudiante en cuestionario'
  wgT_sen 'Peso senate estudiante en cuestionarios'
  IDPL 'Indicador de participaci�n en lectura'
  IDPM 'Indicador de participaci�n en matem�ticas'
  DQA3IT01 '�Cu�ntos a�os tienes?'
  DQA3IT02 'Eres ni�a o ni�o'
  DQA3IT03_01 '�Cu�ntas personas viven en tu casa, incluy�ndote?_�Cu�ntos adultos viven en tu casa?'
  DQA3IT03_02 '�Cu�ntas personas viven en tu casa, incluy�ndote?_�Cu�ntos ni�os viven en tu casa?'
  DQA3IT04_01 '�Con qui�n vives?_Mam�'
  DQA3IT04_02 '�Con qui�n vives?_Pap�'
  DQA3IT04_03 '�Con qui�n vives?_Hermanos'
  DQA3IT04_04 '�Con qui�n vives?_Abuelos'
  DQA3IT04_05 '�Con qui�n vives?_T�os'
  DQA3IT04_06 '�Con qui�n vives?_Otros'
  DQA3IT05 '�Naciste en este pa�s?'
  DQA3IT06_01 'Cu�ntanos sobre los materiales que utilizas en tu escuela: �Ten�s libro de lengua para usar en clase?'
  DQA3IT06_02 'Cu�ntanos sobre los materiales que utilizas en tu escuela: �Ten�s libro de matem�tica para usar en clase?'
  DQA3IT06_03 'Cu�ntanos sobre los materiales que utilizas en tu escuela: �Ten�s libro de ciencia para usar en clase?'
  DQA3IT06_04 'Cu�ntanos sobre los materiales que utilizas en tu escuela: �Ten�s cuadernos o carpetas para tomar notas en clase?'
  DQA3IT06_05 'En tu sala, �hay un estante o caja con libros para que ustedes lean?'
  DQA3IT07_01 'Durante tus clases... �Hay ruido y desorden en tu sala?'
  DQA3IT07_02 'Durante tus clases... �Hay burlas entre compa�eros?'
  DQA3IT07_03 'Durante tus clases... �Los profesores se molestan con ustedes?'
  DQA3IT07_04 'Durante tus clases... �Los alumnos nos quedamos sin nada que hacer?'
  DQA3IT07_05 'Durante tus clases... �Los profesores tienen que esperar largo rato a que los alumnos nos tranquilicemos?'
  DQA3IT08_01 'Cu�ntanos de tus profesores_Los profesores faltan a clases'
  DQA3IT08_02 'Cu�ntanos de tus profesores_Los profesores llegan tarde a clases'
  DQA3IT08_03 'Cu�ntanos de tus profesores_Los profesores se van m�s temprano'
  DQA3IT09 '�Has repetido de curso?'
  DQA3IT10 '�Cu�ntos d�as a la semana haces tareas de la escuela en tu casa?'
  DQA3IT11 '�Tu pap� o mam� te preguntan si hiciste las tareas de la escuela?'
  DQA3IT12_01 '�Que haces en tu tiempo libre?_Veo televisi�n'
  DQA3IT12_02 '�Que haces en tu tiempo libre?_Juego juegos de consola o de computador'
  DQA3IT12_03 '�Que haces en tu tiempo libre?_Navego por internet'
  DQA3IT12_04 '�Que haces en tu tiempo libre?_Juego con mis amigos'
  DQA3IT12_05 '�Que haces en tu tiempo libre?_Leo libros o revistas'
  DQA3IT12_06 '�Que haces en tu tiempo libre?_Escucho m�sica'
  DQA3IT12_07 '�Que haces en tu tiempo libre?_Voy al cine o al teatro'
  DQA3IT12_08 '�Que haces en tu tiempo libre?_Voy al museo o a la biblioteca'
  DQA3IT12_09 '�Que haces en tu tiempo libre?_Hago deportes'
  DQA3IT13 'Adem�s de asistir a la escuela, �trabajas?'
  DQA3IT13a '�D�nde trabajas?'
  DQA3IT13b '�Te pagan por trabajar?'
  ASISDOA3 '�ndice de asistencia y puntualidad docente'
  ORGANA3 '�ndice de clima de aula seg�n los estudiantes'
  REPITE 'Repetici�n de grado'
  TRABAJA 'Trabajo infantil remunerado'
  NINA 'G�nero'
  CUADERN 'Estudiante tiene cuaderno'
  LIBLENG 'Estudiante tiene libro para lenguaje'
  LIBMATE 'Estudiante tiene libro para matem�tica'
  Date.df 'Fecha de creaci�n datafile'
.
exe.

RECODE DQA3IT01 DQA3IT02 DQA3IT04_01 DQA3IT04_02 DQA3IT04_03 DQA3IT04_04
DQA3IT04_05 DQA3IT04_06 DQA3IT05 DQA3IT06_01 DQA3IT06_02 DQA3IT06_03 DQA3IT06_04 DQA3IT06_05 
DQA3IT07_01 DQA3IT07_02 DQA3IT07_03 DQA3IT07_04 DQA3IT07_05 DQA3IT08_01 DQA3IT08_02 DQA3IT08_03 DQA3IT09 DQA3IT10 
DQA3IT11 DQA3IT12_01 DQA3IT12_02 DQA3IT12_03 DQA3IT12_04 DQA3IT12_05 DQA3IT12_06 DQA3IT12_07 DQA3IT12_08 DQA3IT12_09 
DQA3IT13 DQA3IT13a DQA3IT13b ASISDOA3 ORGANA3 REPITE TRABAJA NINA CUADERN LIBLENG LIBMATE (SYSMIS=9).
EXECUTE.

RECODE DQA3IT03_01 DQA3IT03_02 (SYSMIS=99).
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
   1 'S�'
/GENERO
   1 'Ni�a'
   2 'Ni�o'
/IDPL
   0 'No participa'
   1 'S� participa'
/IDPM
   0 'No participa'
   1 'S� participa'
/DQA3IT01
   1 '7 a�os o menos'
   2 '8 a�os'
   3 '9 a�os'
   4 '10 a�os'
   5 '11 a�os'
   6 '12 a�os o m�s'
   9 'Perdido'
/DQA3IT02
   1 'Ni�a'
   2 'Ni�o'
   9 'Perdido'
/DQA3IT03_01
   1 '1'
   2 '2'
   3 '3'
   4 '4'
   5 '5'
   6 '6'
   7 '7'
   8 '8'
   9 '9'
   10 '10 o m�s'
   99 'Perdido'
/DQA3IT03_02
   1 '1'
   2 '2'
   3 '3'
   4 '4'
   5 '5'
   6 '6'
   7 '7'
   8 '8'
   9 '9'
   10 '10 o m�s'
   99 'Perdido'
/DQA3IT04_01
   0 'No'
   1 'S�'
   9 'Perdido'
/DQA3IT04_02
   0 'No'
   1 'S�'
   9 'Perdido'
/DQA3IT04_03
   0 'No'
   1 'S�'
   9 'Perdido'
/DQA3IT04_04
   0 'No'
   1 'S�'
   9 'Perdido'
/DQA3IT04_05
   0 'No'
   1 'S�'
   9 'Perdido'
/DQA3IT04_06
   0 'No'
   1 'S�'
   9 'Perdido'
/DQA3IT05
   0 'No'
   1 'S�'
   9 'Perdido'
/DQA3IT06_01
   0 'No'
   1 'S�'
   9 'Perdido'
/DQA3IT06_02
   0 'No'
   1 'S�'
   9 'Perdido'
/DQA3IT06_03
   0 'No'
   1 'S�'
   9 'Perdido'
/DQA3IT06_04
   0 'No'
   1 'S�'
   9 'Perdido'
/DQA3IT06_05
   0 'No'
   1 'S�'
   9 'Perdido'
/DQA3IT07_01
   1 'S�'
   2 'A veces'
   3 'No'
   9 'Perdido'
/DQA3IT07_02
   1 'S�'
   2 'A veces'
   3 'No'
   9 'Perdido'
/DQA3IT07_03
   1 'S�'
   2 'A veces'
   3 'No'
   9 'Perdido'
/DQA3IT07_04
   1 'S�'
   2 'A veces'
   3 'No'
   9 'Perdido'
/DQA3IT07_05
   1 'S�'
   2 'A veces'
   3 'No'
   9 'Perdido'
/DQA3IT08_01
   1 'S�'
   2 'A veces'
   3 'No'
   9 'Perdido'
/DQA3IT08_02
   1 'S�'
   2 'A veces'
   3 'No'
   9 'Perdido'
/DQA3IT08_03
   1 'S�'
   2 'A veces'
   3 'No'
   9 'Perdido'
/DQA3IT09
   0 'No'
   1 'S�'
   9 'Perdido'
/DQA3IT10
   1 'Todos los d�as'
   2 'Algunos d�as'
   3 'Ning�n d�a'
   9 'Perdido'
/DQA3IT11
   1 'S�'
   2 'A veces'
   3 'No'
   9 'Perdido'
/DQA3IT12_01
   1 'Mucho'
   2 'Poco'
   3 'Nada'
   9 'Perdido'
/DQA3IT12_02
   1 'Mucho'
   2 'Poco'
   3 'Nada'
   9 'Perdido'
/DQA3IT12_03
   1 'Mucho'
   2 'Poco'
   3 'Nada'
   9 'Perdido'
/DQA3IT12_04
   1 'Mucho'
   2 'Poco'
   3 'Nada'
   9 'Perdido'
/DQA3IT12_05
   1 'Mucho'
   2 'Poco'
   3 'Nada'
   9 'Perdido'
/DQA3IT12_06
   1 'Mucho'
   2 'Poco'
   3 'Nada'
   9 'Perdido'
/DQA3IT12_07
   1 'Mucho'
   2 'Poco'
   3 'Nada'
   9 'Perdido'
/DQA3IT12_08
   1 'Mucho'
   2 'Poco'
   3 'Nada'
   9 'Perdido'
/DQA3IT12_09
   1 'Mucho'
   2 'Poco'
   3 'Nada'
   9 'Perdido'
/DQA3IT13
   0 'No'
   1 'S�'
   9 'Perdido'
/DQA3IT13a
   1 'En casa'
   2 'Fuera de casa'
   9 'Perdido'
   6 'No aplica'
/DQA3IT13b
   0 'No'
   1 'S�'
   9 'Perdido'
   6 'No aplica'
 /REPITE 
   0 'No'
   1 'S�'
   9 'Perdido'
 /TRABAJA
   0 'No'
   1 'S�'
   9 'Perdido'
 /NINA
   0 'No'
   1 'S�'
   9 'Perdido'
 /CUADERN
   0 'No'
   1 'S�'
   9 'Perdido'
 /LIBLENG
   0 'No'
   1 'S�'
   9 'Perdido'
 /LIBMATE
   0 'No'
   1 'S�'
   9 'Perdido'
/.
exe.

MISSING VALUES DQA3IT01 DQA3IT02 DQA3IT04_01 DQA3IT04_02 DQA3IT04_03 DQA3IT04_04
DQA3IT04_05 DQA3IT04_06 DQA3IT05 DQA3IT06_01 DQA3IT06_02 DQA3IT06_03 DQA3IT06_04 DQA3IT06_05 
DQA3IT07_01 DQA3IT07_02 DQA3IT07_03 DQA3IT07_04 DQA3IT07_05 DQA3IT08_01 DQA3IT08_02 DQA3IT08_03 DQA3IT09 DQA3IT10 
DQA3IT11 DQA3IT12_01 DQA3IT12_02 DQA3IT12_03 DQA3IT12_04 DQA3IT12_05 DQA3IT12_06 DQA3IT12_07 DQA3IT12_08 DQA3IT12_09 
DQA3IT13 ASISDOA3 ORGANA3 REPITE TRABAJA NINA CUADERN LIBLENG LIBMATE
(9)
DQA3IT13a DQA3IT13b 
(6,9)
DQA3IT03_01 DQA3IT03_02 
(99)
.
exe.
DATASET NAME QA3 WINDOW=FRONT.

SAVE TRANSLATE OUTFILE='XXX\QA3.dta'
  /TYPE=STATA
  /VERSION=7
  /MAP
  /REPLACE.


SAVE OUTFILE='XXX\QA3.sav'
/COMPRESSED.


DATASET ACTIVATE QA3.
CODEBOOK  DQA3IT01 [n] DQA3IT02 [n] DQA3IT03_01 [n] DQA3IT03_02 [n] DQA3IT04_01 [n] DQA3IT04_02 [n] 
    DQA3IT04_03 [n] DQA3IT04_04 [n] DQA3IT04_05 [n] DQA3IT04_06 [n] DQA3IT05 [n] DQA3IT06_01 [n] 
    DQA3IT06_02 [n] DQA3IT06_03 [n] DQA3IT06_04 [n] DQA3IT06_05 [n] DQA3IT07_01 [n] DQA3IT07_02 [n] 
    DQA3IT07_03 [n] DQA3IT07_04 [n] DQA3IT07_05 [n] DQA3IT08_01 [n] DQA3IT08_02 [n] DQA3IT08_03 [n] 
    DQA3IT09 [n] DQA3IT10 [n] DQA3IT11 [n] DQA3IT12_01 [n] DQA3IT12_02 [n] DQA3IT12_03 [n] DQA3IT12_04 
    [n] DQA3IT12_05 [n] DQA3IT12_06 [n] DQA3IT12_07 [n] DQA3IT12_08 [n] DQA3IT12_09 [n] DQA3IT13 [n] 
    DQA3IT13a [n] DQA3IT13b [n]
  /VARINFO POSITION LABEL TYPE FORMAT MEASURE ROLE VALUELABELS MISSING ATTRIBUTES
  /FILEINFO NAME CASECOUNT LABEL DOCUMENTS WEIGHT ATTRIBUTES
  /OPTIONS VARORDER=VARLIST SORT=ASCENDING MAXCATS=200
  /STATISTICS COUNT PERCENT MEAN STDDEV QUARTILES.
