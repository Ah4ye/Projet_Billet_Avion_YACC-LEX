%{
%}
%%

"DOSSIER" { return(DOSSIER);}
[A-Z]{6} { return(CODEDOSS);}
(([A-Z]+)|(([A-Z]+)[-]([A-Z]+)))[/](([A-Z]+)|(([A-Z]+)[-]([A-Z]+))) { return(NOMP);}
(([0-2][0-9])|([3][0-1]))[/](([0][0-9])|([1][0-2]))[/][0-9][0-9] { return(DATE);}
[\n] { return(RETOUR);}
[A-Z]{2}[0-9]{2,4} { return(NUMV);}
[A-Z]{3} { return(CODEA);}
(([0-9])|([0-1][0-9])|([2][0-3]))[:][0-5][0-9] { return(HEURE);}
([+](([0-1][0-9])|([2][0-3]))[:][0-5][0-9]) { return(HEUREARR);}
[ \t]* { return(ESP);}
.	{printf("erreur caracteres \n");}

%%