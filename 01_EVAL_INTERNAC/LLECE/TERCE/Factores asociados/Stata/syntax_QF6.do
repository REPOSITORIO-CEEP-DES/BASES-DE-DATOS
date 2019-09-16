clear all
set more off
version 12.0

cd "C:\Users\Adriana\Desktop\Bases_TERCE2015\UDP 15 de junio\Stata"

	capture log close
	log using "read_QF6_TERCE.log", replace
	use QF6.dta

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

	
	** Variables dummy utilizadas
	
	label variable  padinmif " ==1 si Padre inmigrante"
	label variable  madindig "== 1 si Madre índigena"
	label variable  prekfor6 "==1 si asistio a la educacion inicial entre los 4 y 6 años"
	label variable  hrsestuf "== si tiene horas de estudio al día familia"
	label variable  informf "==1 si usan la informacion entregada por la escuela"
	label variable  subsgobf "==1 si recibe la familia dinero del estado"
	label variable  inasclas "==1 si tiene inasistencia a clases"
	label variable  expectf "==1 si la expectativa del nivel educacional es nivel superior"
	
** Ordenar la base de datos
	order  idcntry country idschool sobremuestra oID idclass ///
	idstud sID idgrade 	wgt wgt_sen  isecf_std supervf_std violenf_std///
	subsgobf hrsestuf expectf informf ///
    prekfor6 inasclas padinmif madindig
	
	
** Se genera la estadística descriptiva básica para verificar el contenido
** de las variables.

	sum   idcntry country idschool sobremuestra oID idclass ///
	idstud sID idgrade 	wgt wgt_sen  isecf_std supervf_std violenf_std///
	subsgobf hrsestuf expectf informf ///
    prekfor6 inasclas padinmif madindig
	
	save QF6.dta, replace
	
