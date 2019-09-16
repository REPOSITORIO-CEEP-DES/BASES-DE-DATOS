clear all
set more off
version 12.0

cd "C:\Users\Adriana\Desktop\Bases4dic\Basescomparar"

*If you need to generate the national databases	
*forvalues id_int=1/16{
*use `id_int', clear

capture log close
log using "read_PL3.log", replace
use PL3.dta, clear

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
	label variable  w2lec3  "Peso del estudiante para PL3"
	label variable  ptje_eqserce_lec3 "Puntaje estándar equiparado con SERCE lectura 3ro"
	label variable  hab_eqserce_lec3 "Habilidad equiparada con SERCE lectura 3ro"
	label variable nivel_lec3 "Nivel proyectando puntos de corte SERCE lectura 3ro"
	label variable genero "Genero del estudiante"
	label define genero 1"Nina"0"Nino" 
	label values genero genero
	
** Ordenar la base de datos
	order  idcntry country idschool idstrat  oID idclass  idstud sID  ///
	genero w2lec3 hab_eqserce_lec3 ptje_eqserce_lec3 nivel_lec3
	
** Codebook

	codebook  idcntry country idschool idstrat  oID idclass  idstud sID  ///
	genero w2lec3 hab_eqserce_lec3 ptje_eqserce_lec3 nivel_lec3
	

** Summarize
	sum idcntry  idstrat genero w2lec3 hab_eqserce_lec3 ptje_eqserce_lec3 
	

**************************************************************************************************
** Análisis finales

	tabstat ptje_eqserce_lec3 [w=w2lec3], s(mean min p25 p50 p75 max sd) by(country) 

	tabstat ptje_eqserce_lec3 [w=w2lec3], s(mean min p25 p50 p75 max sd) by(nivel)
	

** Kernel para el puntake estandar equiparado con el SERCE

	kdensity ptje_eqserce_lec3, normal ///
		title("Puntaje estándar equiparado con SERCE")
		
** Análisis finales

	tabstat ptje_eqserce_lec [w=w2lec3], s(mean min p25 p50 p75 max sd) ///
	by(country) col(stat) f(%9.5g) 

** Un gráfico final para revisar la composición de resultados

	graph hbar (mean) ptje_eqserce_lec [w=w2lec3], over(country, ///
	sort(ptje_eqserce_lec) descending)stack ///
	title( "Resultados lenguaje tercer grado" ) ///
	subtitle(" ") note("Fuente:  UNESCO, Resultados TERCE 2014", span)
					
	save logfile.log, replace
	save PL3.dta, replace
		
	
/** Para generar las bases de datos individuales y libro de codigos
	
	outsheet dcntry country idschool idstrat  oID idclass  idstud sID  ///
	genero w2lec3 hab_eqserce_lec ptje_eqserce_lec nive ///
	using `id_int'_PL3.csv, comma
	
	save logfile.log, replace
	
	save `id_int'_PL3.dta, replace
	}
	
*** Rename los archivos en la carpeta.

	shell rename 1_PL3.dta ARG_PL3.dta
	shell rename 2_PL3.dta BRA_PL3.dta
	shell rename 3_PL3.dta CHI_PL3.dta
	shell rename 4_PL3.dta COL_PL3.dta
	shell rename 5_PL3.dta CR_PL3.dta
	shell rename 6_PL3.dta ECU_PL3.dta
	shell rename 7_PL3.dta GUA_PL3.dta
	shell rename 8_PL3.dta HON_PL3.dta
	shell rename 9_PL3.dta MEX_PL3.dta
	shell rename 10_PL3.dta NIC_PL3.dta
	shell rename 11_PL3.dta NVL_PL3.dta
	shell rename 12_PL3.dta PAN_PL3.dta
	shell rename 13_PL3.dta PAR_PL3.dta
	shell rename 14_PL3.dta PER_PL3.dta
	shell rename 15_PL3.dta RD_PL3.dta
	shell rename 16_PL3.dta URU_PL3.dta
	
	shell rename 1_PL3.csv ARG_PL3.csv
	shell rename 2_PL3.csv BRA_PL3.csv
	shell rename 3_PL3.csv CHI_PL3.csv
	shell rename 4_PL3.csv COL_PL3.csv
	shell rename 5_PL3.csv CR_PL3.csv
	shell rename 6_PL3.csv ECU_PL3.csv
	shell rename 7_PL3.csv GUA_PL3.csv
	shell rename 8_PL3.csv HON_PL3.csv
	shell rename 9_PL3.csv MEX_PL3.csv
	shell rename 10_PL3.csv NIC_PL3.csv
	shell rename 11_PL3.csv NVL_PL3.csv
	shell rename 12_PL3.csv PAN_PL3.csv
	shell rename 13_PL3.csv PAR_PL3.csv
	shell rename 14_PL3.csv PER_PL3.csv
	shell rename 15_PL3.csv RD_PL3.csv
	shell rename 16_PL3.csv URU_PL3.csv
	



	
