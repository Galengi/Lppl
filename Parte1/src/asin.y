/*****************************************************************************/
/**  Ejercicio de BISON-I: S E M - 2                           	  2019-2020 **/
/**  V. 19                                                    		    **/
/*****************************************************************************/
%{
#include <stdio.h>
#include <string.h>
#include "header.h"
%}

%token ID_ STRUCT_ INT_ BOOL_ READ_ PRINT_ IF_ ELSE_ WHILE_ CTE_ TRUE_ FALSE_ 
%token PARA_ PARC_ ASIG_ MAS_ MENOS_ POR_ DIV_ PORCENT_ NEGACIO_  AND_ OR_
%token INCRE_ DECRE_ MASIGUAL_ MENOSIGUAL_ PORIGUAL_ DIVIGUAL_
%token IGUAL_ DISTINTO_ MAYOR_ MENOR_ MAYIGU_ MENIGU_ 
%token LLAVABI_ LLAVCER_ CORCHABI_ CORCHCER_ PARENABI_ PARENCER_ PUNTDECIM_

%%

programa 
	: LLAVABI_ secuenciaSentencias LLAVCER_
   	;
secuenciaSentencias	
	: sentencia
   	| secuenciaSentencias sentencia
   	;
sentencia 
	: declaracion
   	| instruccion   
   	;
declaracion 
	: tipoSimple ID_
   	| tipoSimple ID_ ASIG_ constante	 
   	| tipoSimple ID_ CORCHABI_ CTE_ CORCHCER_
   	| STRUCT_ LLAVABI_  listaCampos LLAVCER_ ID_  	 
   	;
tipoSimple 
	: INT_
   	| BOOL_
   	;
listaCampos 
	: tipoSimple ID_
   	| listaCampos tipoSimple ID_
   	;
instruccion 
	: LLAVABI_ LLAVCER_
   	| LLAVABI_ listaInstrucciones LLAVCER_
   	| instruccionEntradaSalida
   	| instruccionSeleccion
   	| instruccionIteracion
   	| instruccionExpresion
   	;
listaInstrucciones 
	: instruccion
   	| listaInstrucciones instruccion
   	;
instruccionEntradaSalida 
	: READ_ PARENABI_ ID_ PARENCER_
   	| PRINT_ PARENABI_ expresion PARENCER_
   	;
instruccionSeleccion
	: IF_ PARENABI_ expresion PARENCER_ instruccion ELSE_ instruccion
   	;
instruccionIteracion 
	: WHILE_ PARENABI_ expresion PARENCER_ instruccion
   	;
instruccionExpresion 
	: expresion
   	| 
   	;
expresion
	: expresionLogica
   	| ID_ operadorAsignacion expresion
   	| ID_  CORCHABI_ expresion CORCHCER_ operadorAsignacion expresion
   	| ID_ PUNTDECIM_ ID_ operadorAsignacion expresion
   	;
expresionLogica 
	: expresionIgualdad
   	| expresionLogica operadorLogico expresionIgualdad
   	;
expresionIgualdad 
	: expresionRelacional
   	| expresionIgualdad operadorIgualdad expresionRelacional
   	;
expresionRelacional 
	: expresionAditiva
   	| expresionRelacional operadorRelacional expresionAditiva
   	;
expresionAditiva 
	: expresionMultiplicativa
   	| expresionAditiva operadorAditivo expresionMultiplicativa
   	;
expresionMultiplicativa : expresionUnaria
   	| expresionMultiplicativa operadorMultiplicativo expresionUnaria
   	;
expresionUnaria 
	: expresionSufija
   	| operadorUnario expresionUnaria
   	| operadorIncremento ID_
   	;
expresionSufija 
	: PARENABI_ expresion PARENCER_
   	| ID_ operadorIncremento
   	| ID_ CORCHABI_ expresion CORCHCER_
   	| ID_
   	| ID_ PUNTDECIM_ ID_
   	| constante
   	;
constante
	: CTE_
   	| TRUE_
   	| FALSE_
   	;
operadorAsignacion 
	: ASIG_
   	| MASIGUAL_
   	| MENOSIGUAL_
   	| PORIGUAL_
   	| DIVIGUAL_
   	;
operadorLogico 
	: AND_
   	| OR_
   	;
operadorIgualdad 
	: IGUAL_
   	| DISTINTO_
   	;
operadorRelacional
	: MAYOR_
   	| MENOR_
   	| MAYIGU_
   	| MENIGU_
   	;
operadorAditivo 
	: MAS_
   	| MENOS_
   	;
operadorMultiplicativo 
	: POR_
   	| DIV_
   	| PORCENT_
   	;
operadorUnario 
	: MAS_
   	| MENOS_
   	| NEGACIO_
   	;
operadorIncremento 
	: INCRE_
   	| DECRE_
   	;

%%
