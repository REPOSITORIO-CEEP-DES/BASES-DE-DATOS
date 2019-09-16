clear all
set more off
version 12.0

cd "C:\Users\Adriana\Desktop\Bases4dic\Basescomparar"

*If you need to generate the national databases	
*forvalues id_int=1/16{
*use `id_int', clear

capture log close
log using "read_PM6.log", replace
use PM6.dta, clear

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
	label variable  w2mat6  "Peso del estudiante para PM6"
	label variable  ptje_eqserce_mat6 "Puntaje estándar equiparado con SERCE Mat6"
	label variable  hab_eqserce_mat6 "Habilidad equiparada con SERCE Mat6"
	label variable nivel_mat6 "Nivel proyectando puntos de corte SERCE Mat6"
	label variable genero "Genero del estudiante"
	label define genero 1"Nina"0"Nino" 
	label values genero genero
	
** Ordenar la base de datos

	order  idcntry country idschool idstrat  oID idclass  idstud sID  ///
	genero w2mat6 hab_eqserce_mat6 ptje_eqserce_mat6 nivel_mat6
	
** Codebook

	codebook  idcntry country idschool idstrat  oID idclass  idstud sID  ///
	genero w2mat6 hab_eqserce_mat6 ptje_eqserce_mat6 nivel_mat6

** Summarize
	sum idcntry  idstrat ///
	genero w2mat6 hab_eqserce_mat6 ptje_eqserce_mat6 
	

**************************************************************************************************
** Análisis finales

	tabstat ptje_eqserce_mat6 [w=w2mat6], s(mean min p25 p50 p75 max sd) by(country) 

	tabstat ptje_eqserce_mat6 [w=w2mat6], s(mean min p25 p50 p75 max sd) by(nivel)
	

** Kernel para 5 valores plausibles

	kdensity ptje_eqserce_mat6, normal ///
		title("Puntaje estándar equiparado con SERCE")
		
		
** Análisis finales

	tabstat ptje_eqserce_mat6 [w=w2mat6], s(mean min p25 p50 p75 max sd) ///
	by(country) col(stat) f(%9.5g) 

** Un gráfico final para revisar la composición de resultados

	graph hbar (mean) ptje_eqserce_mat [w=w2mat6], over(country, ///
	sort(ptje_eqserce_mat6) descending)stack ///
	title( "Resultados matemática sexto grado" ) ///
	subtitle(" ") note("Fuente:  UNESCO, Resultados TERCE 2014", span)
					
	save logfile.log, replace
	save PM6.dta, replace
		
	
/** Para generar las bases de datos individuales y libro de codigos
	
	outsheet idcntry country idschool idstrat  oID idclass  idstud sID  ///
	genero w2mat6 hab_eqserce_mat6 ptje_eqserce_mat6 nivel_mat6 ///
	using `id_int'_PM6.csv, comma
	
	save logfile.log, replace
	
	save `id_int'_PM6.dta, replace
	}
	
*** Rename los archivo en la carpeta.

	shell rename 1_PM6.dta ARG_PM6.dta
	shell rename 2_PM6.dta BRA_PM6
	shell rename 3_PM6.dta CHI_PM6.dta
	shell rename 4_PM6.dta COL_PM6.dta
	shell rename 5_PM6.dta CR_PM6.dta
	shell rename 6_PM6.dta ECU_PM6.dta
	shell rename 7_PM6.dta GUA_PM6.dta
	shell rename 8_PM6.dta HON_PM6.dta
	shell rename 9_PM6.dta MEX_PM6.dta
	shell rename 10_PM6.dta NIC_PM6.dta
	shell rename 11_PM6.dta NVL_PM6.dta
	shell rename 12_PM6.dta PAN_PM6.dta
	shell rename 13_PM6.dta PAR_PM6.dta
	shell rename 14_PM6.dta PER_PM6.dta
	shell rename 15_PM6.dta RD_PM6.dta
	shell rename 16_PM6.dta URU_PM6.dta
	
	shell rename 1_PM6.csv ARG_PM6.csv
	shell rename 2_PM6.csv BRA_PM6.csv
	shell rename 3_PM6.csv CHI_PM6.csv
	shell rename 4_PM6.csv COL_PM6.csv
	shell rename 5_PM6.csv CR_PM6.csv
	shell rename 6_PM6.csv ECU_PM6.csv
	shell rename 7_PM6.csv GUA_PM6.csv
	shell rename 8_PM6.csv HON_PM6.csv
	shell rename 9_PM6.csv MEX_PM6.csv
	shell rename 10_PM6.csv NIC_PM6.csv
	shell rename 11_PM6.csv NVL_PM6.csv
	shell rename 12_PM6.csv PAN_PM6.csv
	shell rename 13_PM6.csv PAR_PM6.csv
	shell rename 14_PM6.csv PER_PM6.csv
	shell rename 15_PM6.csv RD_PM6.csv
	shell rename 16_PM6.csv URU_PM6.csv
	



	
