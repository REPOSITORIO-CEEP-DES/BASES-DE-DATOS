clear all
set more off
version 12.0

cd "C:\Users\Adriana\Desktop\Bases_TERCE2015\UDP 15 de junio\Stata"

	capture log close
	log using "read_QD3_TERCE.log", replace
	use QD3.dta

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

** Verificar que no existan registros duplicados por estudiante y país
	
	tostring  idschool, replace
	gen oID= country+ idschool
	duplicates report oID
	rename sobrem sobremuestra
	drop name 
	
** Etiquetado simple de las variables, por favor conservar los
** nombres de variables así como las etiquetas
	
	label variable idcntry "Identificador del pais"
	label variable country "Acronimo usado para el pais"
	label variable oID "oID acronimo pais mas escuela"
	label variable idschool "Identificador de la escuela"
	label variable idstrat "Identificador del estrato"
	label variable sobremuestra "==1 si es sobremuestra"
	label variable idgrade "Identificador del grado"
** Pesos muestrales
	label variable  bsw     	"Peso de la escuela"
	label variable  bsw_sen 	"Peso senate de la escuela"

		 
** Ordenar la base de datos
	order   idgrade idcntry country idschool oID   ///
	dependencia  sobremuestra  bsw ///
	bsw_sen   infrad_std morgana3_std misecf_std mviolenf_std

** Se genera la estadística descriptiva básica para verificar el contenido
** de las variables.

	sum   idgrade idcntry country idschool oID   ///
	dependencia  sobremuestra  bsw ///
	bsw_sen   infrad_std morgana3_std misecf_std mviolenf_std 
	
	save QD3.dta, replace
	

	

