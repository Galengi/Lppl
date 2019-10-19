/* A Bison parser, made by GNU Bison 3.0.4.  */

/* Bison interface for Yacc-like parsers in C

   Copyright (C) 1984, 1989-1990, 2000-2015 Free Software Foundation, Inc.

   This program is free software: you can redistribute it and/or modify
   it under the terms of the GNU General Public License as published by
   the Free Software Foundation, either version 3 of the License, or
   (at your option) any later version.

   This program is distributed in the hope that it will be useful,
   but WITHOUT ANY WARRANTY; without even the implied warranty of
   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
   GNU General Public License for more details.

   You should have received a copy of the GNU General Public License
   along with this program.  If not, see <http://www.gnu.org/licenses/>.  */

/* As a special exception, you may create a larger work that contains
   part or all of the Bison parser skeleton and distribute that work
   under terms of your choice, so long as that work isn't itself a
   parser generator using the skeleton or a modified version thereof
   as a parser skeleton.  Alternatively, if you modify or redistribute
   the parser skeleton itself, you may (at your option) remove this
   special exception, which will cause the skeleton and the resulting
   Bison output files to be licensed under the GNU General Public
   License without this special exception.

   This special exception was added by the Free Software Foundation in
   version 2.2 of Bison.  */

#ifndef YY_YY_ASIN_H_INCLUDED
# define YY_YY_ASIN_H_INCLUDED
/* Debug traces.  */
#ifndef YYDEBUG
# define YYDEBUG 0
#endif
#if YYDEBUG
extern int yydebug;
#endif

/* Token type.  */
#ifndef YYTOKENTYPE
# define YYTOKENTYPE
  enum yytokentype
  {
    ID_ = 258,
    STRUCT_ = 259,
    INT_ = 260,
    BOOL_ = 261,
    READ_ = 262,
    PRINT_ = 263,
    IF_ = 264,
    ELSE_ = 265,
    WHILE_ = 266,
    CTE_ = 267,
    TRUE_ = 268,
    FALSE_ = 269,
    PARA_ = 270,
    PARC_ = 271,
    ASIG_ = 272,
    MAS_ = 273,
    MENOS_ = 274,
    POR_ = 275,
    DIV_ = 276,
    PORCENT_ = 277,
    NEGACIO_ = 278,
    AND_ = 279,
    OR_ = 280,
    INCRE_ = 281,
    DECRE_ = 282,
    MASIGUAL_ = 283,
    MENOSIGUAL_ = 284,
    PORIGUAL_ = 285,
    DIVIGUAL_ = 286,
    IGUAL_ = 287,
    DISTINTO_ = 288,
    MAYOR_ = 289,
    MENOR_ = 290,
    MAYIGU_ = 291,
    MENIGU_ = 292,
    LLAVABI_ = 293,
    LLAVCER_ = 294,
    CORCHABI_ = 295,
    CORCHCER_ = 296,
    PARENABI_ = 297,
    PARENCER_ = 298,
    PUNTDECIM_ = 299
  };
#endif

/* Value type.  */
#if ! defined YYSTYPE && ! defined YYSTYPE_IS_DECLARED
typedef int YYSTYPE;
# define YYSTYPE_IS_TRIVIAL 1
# define YYSTYPE_IS_DECLARED 1
#endif


extern YYSTYPE yylval;

int yyparse (void);

#endif /* !YY_YY_ASIN_H_INCLUDED  */
