NOM=ex4

# La liste des dependances 
$(NOM) : lex.yy.c $(NOM).tab.c 
	cc -o $(NOM) 	y.tab.c -lfl -ly

lex.yy.c : $(NOM).lex 
	flex $(NOM).lex 

$(NOM).tab.c : $(NOM).yac
	tr -d '\r' <$(NOM).yac>$(NOM).yac.nocrlf
	yacc $(NOM).yac.nocrlf 


# Les ordres speciaux
clean : 
	rm -rf y.tab.c lex.yy.c $(NOM)

# Le all pour savoir ce que je dois faire au final 

all : $(NOM)

