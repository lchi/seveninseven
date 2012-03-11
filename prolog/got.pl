lannister(tywin).
lannister(kevan).
lannister(jaime).
lannister(cersei).
lannister(tyrion).
lannister(lancel).
lannister(stafford).

stark(eddard).
stark(catelyn).
stark(robb).
stark(sansa).
stark(arya).
stark(bran).
stark(rickon).

snow(jon).

tyrell(mace).
tyrell(margery).
tyrell(willas).
tyrell(loras).

baratheon(stannis).
baratheon(robert).
baratheon(renly).

enemies(X, Y) :- (baratheon(X) ; stark(X)) , lannister(Y).
northman(X) :- stark(X) ; snow(X).
southron(Y) :- baratheon(Y) ; lannister(Y) ; tyrell(Y).