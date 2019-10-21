/*****************************************************************************/
/**  Ejercicio de FLEX: S E M - 1             			  2019-2020 **/
/*****************************************************************************/
%{
#include <stdio.h>
#include <string.h>
#include "header.h"
#include "asin.h"

#define  retornar(x) {if (verbosidad) ECHO; return x ;}
%}
/*-----------------------------------------------------------------------------
  Estas opciones evitan "warnings" innecesarios y permiten obtener el
  numero de linea actual en la variable global "yylineno".
-----------------------------------------------------------------------------*/
%option noinput       
%option nounput       
%option yylineno  

delimitador    [ \t\n]+
comentario     \/\/.*
letra          [a-zA-Z]
digito         [0-9]
constante      {digito}*(\.{digito}+)?
identificador  {letra}({letra}|{digito}|_)*

%%
{delimitador}   { if (verbosidad) ECHO;    }
{comentario}    { if (verbosidad) ECHO;    }


"struct"        { retornar(STRUCT_);       }
"read"          { retornar(READ_);         }
"print"         { retornar(PRINT_);        }
"if"            { retornar(IF_);           }
"else"          { retornar(ELSE_);         }
"while"         { retornar(WHILE_);        }
"int"           { retornar(INT_);          }
"bool"          { retornar(BOOL_);         }
"true"          { retornar(TRUE_);         }
"false"         { retornar(FALSE_);        }
"=="            { retornar(IGUAL_);        }
"!="            { retornar(DISTINTO_);     }
"+="            { retornar(MASIGUAL_);     }
"-="            { retornar(MENOSIGUAL_);   }
"*="            { retornar(PORIGUAL_);     }
"/="            { retornar(DIVIGUAL_);     }
"++"            { retornar(INCRE_);        }
"--"            { retornar(DECRE_);        }
"&&"            { retornar(AND_);          }
"||"            { retornar(OR_);           }
"<"             { retornar(MENOR_);        }
">"             { retornar(MAYOR_);        }
"<="            { retornar(MENIGU_);       }
">="            { retornar(MAYIGU_);       }
"="             { retornar(ASIG_);         }
"+"             { retornar(MAS_);          }
"-"             { retornar(MENOS_);        }
"*"             { retornar(POR_);          }
"/"             { retornar(DIV_);          }
"%"             { retornar(PORCENT_);      }
"!"             { retornar(NEGACIO_);      }
"("             { retornar(PARENABI_);     }
")"             { retornar(PARENCER_);     }
"{"             { retornar(LLAVABI_);      }
"}"             { retornar(LLAVCER_);      }
"["             { retornar(CORCHABI_);     }
"]"             { retornar(CORCHCER_);     }
";"             { retornar(PUNTDECIM_);    }
"."             { retornar(PUNTO_);        }
{constante}     { retornar(CTE_);          }
{identificador} { retornar(ID_);           }

.	       { yyerror("Caracter desconocido"); }

%%

