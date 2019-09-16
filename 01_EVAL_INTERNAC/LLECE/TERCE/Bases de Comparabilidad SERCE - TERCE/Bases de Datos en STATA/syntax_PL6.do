clear all
set more off
version 12.0

cd "C:\Users\Adriana\Desktop\Bases4dic\Basescomparar"

*If you need to generate the national databases	
*forvalues id_int=1/16{
*use `id_int', clear

capture log close
log using "read_PL6.log", replace
use PL6.dta, clear

**************************************************************************************************
***************************************** BDD SERCE -TERCE ***************************************
**************************************************************************************************

/* Fecha de entrega: 26 de noviembre de 2014 

**************************************************************************************************
**************************************************************************************************/
**************************** BASE DE DATOS LENGUAJE TERCER GRADO**********************************

** Verificación: sólo el archivo del país


**Para cambiar las variables de mayuscula a minuscula pero con nombres de variables combinadas 
foreach v of varlist _all  {
      local lowname=lower("`v'")
      capture rename `v' `lowname'
}

	tab idcntry
	tab country

** Se genera el identicador único para manejo en la BDD regional
	tostring  idstud, replace
	gen sID= country+ idstud

** Verificar que no existan registros duplicados por estudiante y país
	duplicates report sID
	tostring  idschool, replace
	gen oID= country+ idschool	

** Etiquetado simple de las variables, por favor conservar los
** nombres de variables así como las etiquetas

	label variable idcntry "Identificador del pais"
	label variable country "Acronimo usado para el pais"
	label variable idstud  "ID unico del estudiante"
	label variable sID "sID único del estudiante con pais"
	label variable oID "oID acronimo pais mas escuela"
	label variable idschool "Identificador de la escuela"
	label variable idclass "Identificador de la clase"
	label variable idstrat "Identificador del estrato"
	label variable  w2lec6  "Peso del estudiante para PL6"
	label variable  ptje_eqserce_lec6 "Puntaje estándar equiparado con SERCE Lec6"
	label variable  hab_eqserce_lec6 "Habilidad equiparada con SERCE Lec6"
	label variable nivel_lec6 "Nivel proyectando puntos de corte SERCE Lec6"
	label variable genero "Genero del estudiante"
	label define genero 1"Nina"0"Nino" 
	label values genero genero
	
** Ordenar la base de datos

	order  idcntry country idschool idstrat  oID idclass  idstud sID  ///
	genero w2lec6 hab_eqserce_lec6 ptje_eqserce_lec6 nivel
	
** Codebook

	codebook  idcntry country idschool idstrat  oID idclass  idstud sID  ///
	genero w2lec6 hab_eqserce_lec6 ptje_eqserce_lec6 nivel
	

** Summarize
	sum idcntry  idstrat ///
	genero w2lec6 hab_eqserce_lec6 ptje_eqserce_lec6 
	

**************************************************************************************************
** Análisis finales

	tabstat ptje_eqserce_lec6 [w=w2lec6], s(mean min p25 p50 p75 max sd) by(country) 

	tabstat ptje_eqserce_lec6 [w=w2lec6], s(mean min p25 p50 p75 max sd) by(nivel)
	

** Kernel para 5 valores plausibles

	kdensity ptje_eqserce_lec6, normal ///
		title("Puntaje estándar equiparado con SERCE")
		
		
** Análisis finales

	tabstat ptje_eqserce_lec6 [w=w2lec6], s(mean min p25 p50 p75 max sd) ///
	by(country) col(stat) f(%9.5g) 

** Un gráfico final para revisar la composición de resultados

	graph hbar (mean) ptje_eqserce_lec6 [w=w2lec6], over(country, ///
	sort(ptje_eqserce_lec6) descending)stack ///
	title( "Resultados lectura sexto grado" ) ///
	subtitle(" ") note("Fuente:  UNESCO, Resultados TERCE 2014", span)
					
	save logfile.log, replace
	save PL6.dta, replace
		
	
/** Para generar las bases de datos individuales y libro de codigos
	
	outsheet dcntry country idschool idstrat  oID idclass  idstud sID  ///
	genero w2lec3 hab_eqserce_lec ptje_eqserce_lec nive ///
	using `id_int'_PL6.csv, comma
	
	save logfile.log, replace
	
	save `id_int'_PL6.dta, replace
	}
	
*** Rename los archivos en la carpeta.

	shell rename 1_PL6.dta ARG_PL6.dta
	shell rename 2_PL6.dta BRA_PL6.dta
	shell rename 3_PL6.dta CHI_PL6.dta
	shell rename 4_PL6.dta COL_PL6.dta
	shell rename 5_PL6.dta CR_PL6.dta
	shell rename 6_PL6.dta ECU_PL6.dta
	shell rename 7_PL6.dta GUA_PL6.dta
	shell rename 8_PL6.dta HON_PL6.dta
	shell rename 9_PL6.dta MEX_PL6.dta
	shell rename 10_PL6.dta NIC_PL6.dta
	shell rename 11_PL6.dta NVL_PL6.dta
	shell rename 12_PL6.dta PAN_PL6.dta
	shell rename 13_PL6.dta PAR_PL6.dta
	shell rename 14_PL6.dta PER_PL6.dta
	shell rename 15_PL6.dta RD_PL6.dta
	shell rename 16_PL6.dta URU_PL6.dta
	
	shell rename 1_PL6.csv ARG_PL6.csv
	shell rename 2_PL6.csv BRA_PL6.csv
	shell rename 3_PL6.csv CHI_PL6.csv
	shell rename 4_PL6.csv COL_PL6.csv
	shell rename 5_PL6.csv CR_PL6.csv
	shell rename 6_PL6.csv ECU_PL6.csv
	shell rename 7_PL6.csv GUA_PL6.csv
	shell rename 8_PL6.csv HON_PL6.csv
	shell rename 9_PL6.csv MEX_PL6.csv
	shell rename 10_PL6.csv NIC_PL6.csv
	shell rename 11_PL6.csv NVL_PL6.csv
	shell rename 12_PL6.csv PAN_PL6.csv
	shell rename 13_PL6.csv PAR_PL6.csv
	shell rename 14_PL6.csv PER_PL6.csv
	shell rename 15_PL6.csv RD_PL6.csv
	shell rename 16_PL6.csv URU_PL6.csv
	



	
