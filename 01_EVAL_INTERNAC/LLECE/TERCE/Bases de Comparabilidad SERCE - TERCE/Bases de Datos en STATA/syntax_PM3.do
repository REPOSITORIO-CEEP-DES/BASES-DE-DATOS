clear all
set more off
version 12.0

cd "C:\Users\Adriana\Desktop\Bases4dic\Basescomparar"

*If you need to generate the national databases	
*forvalues id_int=1/16{
*use `id_int', clear

capture log close
log using "read_PM3.log", replace
use PM3.dta, clear

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
	
	** internos
	rename  pais country
	tostring  idstud, replace
	gen idclass= substr(idstud, 1, 6)
	rename estrato idstrat
	rename nina genero
	rename  hab_eqserce_mat hab_eqserce_mat3
	rename  ptje_eqserce_mat  ptje_eqserce_mat3
	rename nivel nivel_mat3
	
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
	label variable  w2mat3  "Peso del estudiante para PM3"
	label variable  ptje_eqserce_mat3 "Puntaje estándar equiparado con SERCE Mat3"
	label variable  hab_eqserce_mat3 "Habilidad equiparada con SERCE Mat3"
	label variable nivel_mat3 "Nivel proyectando puntos de corte SERCE Mat3"
	label variable genero "Genero del estudiante"
	label define genero 1"Nina"0"Nino" 
	label values genero genero
	
** Ordenar la base de datos

	order  idcntry country idschool idstrat  oID idclass  idstud sID  ///
	genero w2mat3 hab_eqserce_mat3 ptje_eqserce_mat3 nivel
	
** Codebook

	codebook  idcntry country idschool idstrat  oID idclass  idstud sID  ///
	genero w2mat3 hab_eqserce_mat3 ptje_eqserce_mat3 nivel
	

** Summarize
	sum idcntry  idstrat ///
	genero w2mat3 hab_eqserce_mat3 ptje_eqserce_mat3 
	

**************************************************************************************************
** Análisis finales

	tabstat ptje_eqserce_mat3 [w=w2mat3], s(mean min p25 p50 p75 max sd) by(country) 

	tabstat ptje_eqserce_mat3 [w=w2mat3], s(mean min p25 p50 p75 max sd) by(nivel)
	

** Kernel para 5 valores plausibles

	kdensity ptje_eqserce_mat3, normal ///
		title("Puntaje estándar equiparado con SERCE")
		
		
** Análisis finales

	tabstat ptje_eqserce_mat3 [w=w2mat3], s(mean min p25 p50 p75 max sd) ///
	by(country) col(stat) f(%9.5g) 

** Un gráfico final para revisar la composición de resultados

	graph hbar (mean) ptje_eqserce_mat3 [w=w2mat3], over(country, ///
	sort(ptje_eqserce_mat3) descending)stack ///
	title( "Resultados matemática tercer grado" ) ///
	subtitle(" ") note("Fuente:  UNESCO, Resultados TERCE 2014", span)
					
	save logfile.log, replace
	save PM3.dta, replace
		
	
/** Para generar las bases de datos individuales y libro de codigos
	
	outsheet dcntry country idschool idstrat  oID idclass  idstud sID  ///
	genero w2lec3 hab_eqserce_lec ptje_eqserce_lec nive ///
	using `id_int'_PM3.csv, comma
	
	save logfile.log, replace
	
	save `id_int'_PM3.dta, replace
	}
	
*** Rename los archivos en la carpeta.

	shell rename 1_PM3.dta ARG_PM3.dta
	shell rename 2_PM3.dta BRA_PM3.dta
	shell rename 3_PM3.dta CHI_PM3.dta
	shell rename 4_PM3.dta COL_PM3.dta
	shell rename 5_PM3.dta CR_PM3.dta
	shell rename 6_PM3.dta ECU_PM3.dta
	shell rename 7_PM3.dta GUA_PM3.dta
	shell rename 8_PM3.dta HON_PM3.dta
	shell rename 9_PM3.dta MEX_PM3.dta
	shell rename 10_PM3.dta NIC_PM3.dta
	shell rename 11_PM3.dta NVL_PM3.dta
	shell rename 12_PM3.dta PAN_PM3.dta
	shell rename 13_PM3.dta PAR_PM3.dta
	shell rename 14_PM3.dta PER_PM3.dta
	shell rename 15_PM3.dta RD_PM3.dta
	shell rename 16_PM3.dta URU_PM3.dta
	
	shell rename 1_PM3.csv ARG_PM3.csv
	shell rename 2_PM3.csv BRA_PM3.csv
	shell rename 3_PM3.csv CHI_PM3.csv
	shell rename 4_PM3.csv COL_PM3.csv
	shell rename 5_PM3.csv CR_PM3.csv
	shell rename 6_PM3.csv ECU_PM3.csv
	shell rename 7_PM3.csv GUA_PM3.csv
	shell rename 8_PM3.csv HON_PM3.csv
	shell rename 9_PM3.csv MEX_PM3.csv
	shell rename 10_PM3.csv NIC_PM3.csv
	shell rename 11_PM3.csv NVL_PM3.csv
	shell rename 12_PM3.csv PAN_PM3.csv
	shell rename 13_PM3.csv PAR_PM3.csv
	shell rename 14_PM3.csv PER_PM3.csv
	shell rename 15_PM3.csv RD_PM3.csv
	shell rename 16_PM3.csv URU_PM3.csv
	



	
