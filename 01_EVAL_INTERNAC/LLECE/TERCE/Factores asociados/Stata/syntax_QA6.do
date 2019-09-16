clear all
set more off
version 12.0

cd "C:\Users\Adriana\Desktop\Bases_TERCE2015\UDP 15 de junio\Stata"

	capture log close
	log using "read_QA6_TERCE.log", replace
	use QA6.dta

*****************************************************************
******* VALIACION DE LA ENTREGA REALIZADA POR UDP **************
*****************************************************************

/* Fecha de validación: 15 de junio de de 2015

*****************************************************************/

	
**Para cambiar las variables de mayuscula a minuscula pero con nombres de variables combinadas 
foreach v of varlist _all  {
      local lowname=lower("`v'")
      capture rename `v' `lowname'
}
	tab idcntry
	
	
/* Generar los nombres de los páises como string */
	gen country="ARG" if idcntry==32
	replace country="BRA" if idcntry==76
	replace country="CHL" if idcntry==152
	replace country="COL" if idcntry==170
	replace country="CRI" if idcntry==188
	replace country="REP" if idcntry==214
	replace country="ECU" if idcntry==218
	replace country="GTM" if idcntry==320
	replace country="HON" if idcntry==340
	replace country="MEX" if idcntry==484
	replace country="NIC" if idcntry==558
	replace country="PAN" if idcntry==591
	replace country="PAR" if idcntry==600
	replace country="PER" if idcntry==604
	replace country="URU" if idcntry==858
	replace country="NLE" if idcntry==4841

	tab country

** Se genera el identicador único que maneja CITO en su trabajo
	tostring  idstud, replace
	gen sID= country+ idstud
** Verificar que no existan registros duplicados por estudiante y país
	duplicates report sID
	tostring  idschool, replace
	gen oID= country+ idschool
	
** Identificador de la clase
	gen idclass = substr(idstud, 1, 6)
	rename sobrem sobremuestra
	drop name 

** Etiquetado simple de las variables, por favor conservar los
** nombres de variables así como las etiquetas
	
	label variable idcntry "Identificador del pais"
	label variable country "Acronimo usado para el pais"
	label variable idstud  "ID unico del estudiante"
	label variable sID "sID único del estudiante con pais"
	label variable oID "oID acronimo pais mas escuela"
	label variable idschool "Identificador de la escuela"
	label variable idclass "Identificador de la clase"
	label variable sobremuestra "==1 si es sobremuestra"
	label variable idgrade "Identificador del grado"
	label variable edad "Edad del estudiante"
	label variable nina "==1 si es nina(Variable de la muestra )"
	
	*Variables Dummy
	label variable  libleng "==1 Tienes libro de lenguaje"
	label variable  libmate "==1 Tienes libro de matematicas"
	label variable  libcien "==1 Tienes libro de ciencias"
	label variable  cuadern "==1 Tienes cuaderno para tomar nota en clases"
	label variable  repite "==1 Has repetido de curso"
	label variable  trabaja "==1 Trabajas"
	
** Ordenar la base de datos
	order  idcntry country idschool  idst idsc sobremuestra oID idclass ///
	idstud sID idgrade idpl idpm edad  nina  wgt wgt_sen ///
	asisdoa6_std pdorga6_std usolia6_std pcrecra6_std
	
** Se genera la estadística descriptiva básica para verificar el contenido
** de las variables.

	sum   idcntry country idschool  idst idsc sobremuestra oID idclass ///
	idstud sID idgrade idpl idpm edad  nina  wgt wgt_sen ///
	asisdoa6_std pdorga6_std usolia6_std pcrecra6_std
	
	save QA6.dta, replace
	

*****************************************************************
********** 	MERGE CON LAS BASES DE APRENDIZAJE   ****************

clear all
cd "C:\Users\Adriana\Desktop\Bases_TERCE2015\UDP\Alumnos"

use QA3.dta

** Se va a realizar un match por ejemplo con base de datos de Lectura
** Este procedimiento se puede seguir para todas las materias

	merge 1:1 sID  using PL6_TERCE.dta

**  Se puede guardar la base de datos final
	save logfile.log, replace	
	save QA3__TERCE.dta, replace
		
 
