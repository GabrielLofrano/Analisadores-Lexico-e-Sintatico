package codigo;
import static codigo.Tokens.*;
%%
%class Lexer
%type Tokens
L=[a-zA-Z_]+
D=[0-9]+
espaco=[ ]+
%{
    public String lexeme;
%}
%%
{espaco} {/*Ignore*/}
"//".* {/*Ignore*/}
"#" {return Hash;}
"include" {lexeme=yytext();return Include;}
"define" {lexeme=yytext();return Const;}
"int" {lexeme=yytext();return Inteiro;}
"double" {lexeme=yytext();return Double;}
"char" {lexeme=yytext();return Caractere;}
"float" {lexeme=yytext();return Float;}
"if" {lexeme=yytext();return Se;}
"else" {lexeme=yytext();return SeNao;}
"scanf" {lexeme=yytext();return Ler;}
"printf" {lexeme=yytext();return Escrever;}
"main" {lexeme=yytext();return Principal;}
"return" {lexeme=yytext();return Retorna;}
"<stdio.h>" {lexeme=yytext();return Lib;}
"while" {lexeme=yytext();return Enquanto;}
"for" {lexeme=yytext();return Para;}
"&&" {lexeme=yytext();return Uniao;}
"||" {lexeme=yytext();return Ou;}
"==" {lexeme=yytext();return Equivalente;}
"=" {lexeme=yytext();return Igual;}
"_" {lexeme=yytext();return Underline;}
"(" {lexeme=yytext();return AbreP;}
")" {lexeme=yytext();return FechaP;}
"[" {lexeme=yytext();return AbreCO;}
"]" {lexeme=yytext();return FechaCO;}
"{" {lexeme=yytext();return AbreCH;}
"}" {lexeme=yytext();return FechaCH;}
"+" {lexeme=yytext();return Mais;}
"-" {lexeme=yytext();return Menos;}
"'" {lexeme=yytext();return AbreAspasS;}
"'" {lexeme=yytext();return FechaAspasS;}


"!" {lexeme=yytext();return Exclamacao;}
"<" {lexeme=yytext();return Menor;}
">" {lexeme=yytext();return Maior;}
"%" {lexeme=yytext();return Porcentagem;}
"*" {lexeme=yytext();return Multiplicacao;}
"/" {lexeme=yytext();return Divisao;}
"\n" {lexeme=yytext();return QuebraL;}
"\t" {lexeme=yytext();return QuebraC;}
"!=" {lexeme=yytext();return Diferente;}
">=" {lexeme=yytext();return MaiorIgual;}
"<=" {lexeme=yytext();return MenorIgual;}
"." {lexeme=yytext();return Ponto;}
"," {lexeme=yytext();return Virgula;}
";" {lexeme=yytext();return Pv;}
"&" {lexeme=yytext();return Comercial;}
"/" {lexeme=yytext();return Divisao;}
{L}({L}|{D})* {lexeme=yytext(); return Id;}
("(-"{D}+")")|{D}+ {lexeme=yytext(); return Numero;}
 . {return ERROR;}