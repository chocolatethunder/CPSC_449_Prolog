/*pelecaniformes

        pelecanidae
                pelecanus (pelican)
                        erythrorhynchos (americanWhitePelican)
                        occidentalis (brownPelican)

        ardeidae
                botaurus (bittern)
                        lentiginosus (americanBittern)
                ixobrychus (bittern)
                        exilis (leastBittern)
                ardea (heron)
                        herodias (greatBlueHeron)
                        alba (greatEgret)
                egretta (heron, egret)
                        thula (snowyEgret)
                        caerulea (littleBlueHeron)
                        tricolor (tricoloredHeron)
                        rufescens (reddishEgret)
                bubulcus (egret)
                        ibis (cattleEgret)
                butorides (heron)
                        virescens (greenHeron)
                nycticorax (nightHeron)
                        nycticorax (blackCrownedNightHeron)
                nyctanassa (nightHeron)
                        violacea (yellowCrownedNightHeron)

        threskiornithidae
                eudocimus (ibis)
                        albus (whiteIbis)
                plegadis (ibis)
                        falcinellus (glossyIbis)
                        chihi (whiteFacedIbis)
                platalea (spoonbill)
                        ajaja (roseateSpoonbill)*/
                        
/*

isFamilyOf(pelecanidae,pelecaniformes).
isFamilyOf(ardeidae,pelecaniformes).
isFamilyOf(threskiornithidae,pelecaniformes).

family(pelecanidae).
family(ardeidae).
family(threskiornithidae).

isGenusOf(pelecanus,pelecanidae).
isGenusOf(botaurus,ardeidae).
isGenusOf(ixobrychus,ardeidae).
isGenusOf(ardea,ardeidae).
isGenusOf(egretta,ardeidae).
isGenusOf(bubulcus,ardeidae).
isGenusOf(butorides,ardeidae).
isGenusOf(nycticorax,ardeidae).
isGenusOf(nyctanassa,ardeidae).
isGenusOf(eudocimus,threskiornithidae).
isGenusOf(plegadis,threskiornithidae).
isGenusOf(platalea,threskiornithidae).

genus(pelecanus).
genus(botaurus).
genus(ixobrychus).
genus(ardea).
genus(egretta).
genus(bubulcus).
genus(butorides).
genus(nycticorax).
genus(nyctanassa).
genus(eudocimus).
genus(plegadis).
genus(platalea).

isSpeciesOf(erythrorhynchos,pelecanus).
isSpeciesOf(occidentalis,pelecanus).
isSpeciesOf(lentiginosus,botaurus).
isSpeciesOf(exilis,ixobrychus).
isSpeciesOf(herodias,ardea).
isSpeciesOf(alba,ardea).
isSpeciesOf(thula,egretta).
isSpeciesOf(caerulea,egretta).
isSpeciesOf(tricolor,egretta).
isSpeciesOf(rufescens,egretta).
isSpeciesOf(ibis,bubulcus).
isSpeciesOf(virescens,butorides).
isSpeciesOf(nycticorax,nycticorax).
isSpeciesOf(violacea,nyctanassa).
isSpeciesOf(albus,eudocimus).
isSpeciesOf(falcinellus,plegadis).
isSpeciesOf(chihi,plegadis).
isSpeciesOf(ajaja,platalea).

species(erythrorhynchos).
species(occidentalis).
species(lentiginosus).
species(exilis).
species(herodias).
species(alba).
species(thula).
species(caerulea).
species(tricolor).
species(rufescens).
species(ibis).
species(virescens).
species(nycticorax).
species(violacea).
species(albus).
species(falcinellus).
species(chihi).
species(ajaja).
*/

% Data Base starts.

commonName(A):-
	A = pelican;
	A = americanWhitePelican;
	A = brownPelican;
	A = bittern;
	A = americanBittern;
	A = leastBittern;
	A = heron;
	A = greatBlueHeron;
	A = greatEgret;
	A = egret;
	A = snowyEgret;
	A = littleBlueHeron;
	A = tricoloredHeron;
	A = reddishEgret;
	A = cattleEgret;
	A = greenHeron;
	A = nightHeron;
	A = blackCrownedNightHeron;
	A = nightHeron;
	A = yellowCrownedNightHeron;
	A = ibis;
	A = whiteIbis;
	A = glossyIbis;
	A = whiteFacedIbis;
	A = spoonbill;
	A = roseateSpoonbill.
              
order(pelecaniformes).

isFamilyOf(A,B):-
	A = pelecanidae,B = pelecaniformes;
	A = ardeidae,B = pelecaniformes;
	A = threskiornithidae,B = pelecaniformes.

family(A):-
	A = pelecanidae;
	A = ardeidae;
	A = threskiornithidae.

isGenusOf(A,B):-
	A = pelecanus,B = pelecanidae;
	A = botaurus,B = ardeidae;
	A = ixobrychus,B = ardeidae;
	A = ardea,B = ardeidae;
	A = egretta,B = ardeidae;
	A = bubulcus,B = ardeidae;
	A = butorides,B = ardeidae;
	A = nycticorax,B = ardeidae;
	A = nyctanassa,B = ardeidae;
	A = eudocimus,B = threskiornithidae;
	A = plegadis,B = threskiornithidae;
	A = platalea,B = threskiornithidae.

genus(A):-
	A = pelecanus;
	A = botaurus;
	A = ixobrychus;
	A = ardea;
	A = egretta;
	A = bubulcus;
	A = butorides;
	A = nycticorax;
	A = nyctanassa;
	A = eudocimus;
	A = plegadis;
	A = platalea.

isSpeciesOf(A,B):-
	A = erythrorhynchos,B = pelecanus;
	A = occidentalis,B = pelecanus;
	A = lentiginosus,B = botaurus;
	A = exilis,B = ixobrychus;
	A = herodias,B = ardea;
	A = alba,B = ardea;
	A = thula,B = egretta;
	A = caerulea,B = egretta;
	A = tricolor,B = egretta;
	A = rufescens,B = egretta;
	A = ibis,B = bubulcus;
	A = virescens,B = butorides;
	A = nycticorax,B = nycticorax;
	A = violacea,B = nyctanassa;
	A = albus,B = eudocimus;
	A = falcinellus,B = plegadis;
	A = chihi,B = plegadis;
	A = ajaja,B = platalea.
	
isSpeciesOf_com(A,B):-
	A = pelecanus_erythrorhynchos,B = pelecanus;
	A = pelecanus_occidentalis,B = pelecanus;
	A = botaurus_lentiginosus,B = botaurus;
	A = ixobrychus_exilis,B = ixobrychus;
	A = ardea_herodias,B = ardea;
	A = ardea_alba,B = ardea;
	A = egretta_thula,B = egretta;
	A = egretta_caerulea,B = egretta;
	A = egretta_tricolor,B = egretta;
	A = egretta_rufescens,B = egretta;
	A = bubulcus_ibis,B = bubulcus;
	A = butorides_virescens,B = butorides;
	A = nycticorax_nycticorax,B = nycticorax;
	A = nyctanassa_violacea,B = nyctanassa;
	A = eudocimus_albus,B = eudocimus;
	A = plegadis_falcinellus,B = plegadis;
	A = plegadis_chihi,B = plegadis;
	A = platalea_ajaja,B = platalea.

species(A):-
	A = erythrorhynchos;
	A = occidentalis;
	A = lentiginosus;
	A = exilis;
	A = herodias;
	A = alba;
	A = thula;
	A = caerulea;
	A = tricolor;
	A = rufescens;
	A = ibis;
	A = virescens;
	A = nycticorax;
	A = violacea;
	A = albus;
	A = falcinellus;
	A = chihi;
	A = ajaja.
	
species_com(A):-
	A = pelecanus_erythrorhynchos;	% Alberta
	A = pelecanus_occidentalis;		% not in Canada
	A = botaurus_lentiginosus;		% Alberta (Confirmed)
	A = ixobrychus_exilis;			% Canada ?
	A = ardea_herodias;				% Alberta
	A = ardea_alba;					% Canada (Confirmed)
	A = egretta_thula;				% Alberta
	A = egretta_caerulea;			% Alberta
	A = egretta_tricolor;			% Canada
	A = egretta_rufescens;			% not in Canada
	A = bubulcus_ibis;				% Alberta
	A = butorides_virescens;		% Canada
	A = nycticorax_nycticorax;		% Alberta
	A = nyctanassa_violacea;		% Canada
	A = eudocimus_albus;			% Canada
	A = plegadis_falcinellus;		% Canada
	A = plegadis_chihi;				% Alberta
	A = platalea_ajaja.				% not in Canada (Confirmed)

hasCommonName_gen(N,C):-
	N = pelecanus,C = pelican;
	N = botaurus,C = bittern;
	N = ixobrychus,C = bittern;
	N = ardea,C = heron;
	N = egretta,C = heron;
	N = egretta,C = egret;
	N = bubulcus,C = egret;
	N = butorides,C = heron;
	N = nycticorax,C = nightHeron;
	N = nyctanassa,C = nightHeron;
	N = eudocimus,C = ibis;
	N = plegadis,C = ibis;
	N = platalea,C = spoonbill.

hasCommonName_com(N,C):-
	N = pelecanus_erythrorhynchos,C = americanWhitePelican;
	N = pelecanus_occidentalis,C = brownPelican;
	N = botaurus_lentiginosus,C = americanBittern;
	N = ixobrychus_exilis,C = leastBittern;
	N = ardea_herodias,C = greatBlueHeron;
	N = ardea_alba,C = greatEgret;
	N = egretta_thula,C = snowyEgret;
	N = egretta_caerulea,C = littleBlueHeron;
	N = egretta_tricolor,C = tricoloredHeron;
	N = egretta_rufescens,C = reddishEgret;
	N = bubulcus_ibis,C = cattleEgret;
	N = butorides_virescens,C = greenHeron;
	N = nycticorax_nycticorax,C = blackCrownedNightHeron;
	N = nyctanassa_violacea,C = yellowCrownedNightHeron;
	N = eudocimus_albus,C = whiteIbis;
	N = plegadis_falcinellus,C = glossyIbis;
	N = plegadis_chihi,C = whiteFacedIbis;
	N = platalea_ajaja,C = roseateSpoonbill.

hasCommonName_raw(N,C):-
	N = erythrorhynchos,C = americanWhitePelican;
	N = occidentalis,C = brownPelican;
	N = lentiginosus,C = americanBittern;
	N = exilis,C = leastBittern;
	N = herodias,C = greatBlueHeron;
	N = alba,C = greatEgret;
	N = thula,C = snowyEgret;
	N = caerulea,C = littleBlueHeron;
	N = tricolor,C = tricoloredHeron;
	N = rufescens,C = reddishEgret;
	N = ibis,C = cattleEgret;
	N = virescens,C = greenHeron;
	N = nycticorax,C = blackCrownedNightHeron;
	N = violacea,C = yellowCrownedNightHeron;
	N = albus,C = whiteIbis;
	N = falcinellus,C = glossyIbis;
	N = chihi,C = whiteFacedIbis;
	N = ajaja,C = roseateSpoonbill.

% Data Base ends
	
%Test: Pass
hasParent(A,B):-
	isSpeciesOf(A,B); isGenusOf(A,B); isFamilyOf(A,B).

%Test: Pass
hasParent2(A, B):-
	isSpeciesOf_com(A,B); isGenusOf(A,B); isFamilyOf(A,B).

%Test: Pass
hasCommonName(N, C):-
	hasCommonName_gen(N,C);
	hasCommonName_com(N,C).

%Test: Pass
hasCommonName(G,S,C):-
	isSpeciesOf(S,G), hasCommonName_raw(S,C).

%Test: Pass
hasSciName(C,N):-
	hasCommonName_com(N,C);
	hasCommonName_gen(N,C).

%Test: Pass
hasCompoundName(G,S,N):-
	isSpeciesOf(S,G),
	hasCommonName(G,S,C),
	hasCommonName(N,C).

%Test: Pass
isaStrict(A,B):-
	family(A),family(B),A = B;
	order(A),order(B),A = B;
	species_com(A),species_com(B),A = B;
	genus(A),genus(B),A = B;
	isSpeciesOf_com(A,X),isGenusOf(X,Y),isFamilyOf(Y,B);
	isGenusOf(A,Y),isFamilyOf(Y,B);
	isSpeciesOf_com(A,X),isGenusOf(X,B);
	isFamilyOf(A,B);
	isGenusOf(A,B);
	isSpeciesOf_com(A,B).

%Test: Pass
synonym(A,B):-
	hasCommonName(B,A), \+(A=B);
	hasCommonName(A,B), \+(A=B);
	hasCommonName(X,A), hasCommonName(X,B), \+(A=B).

%Test: Pass/*Fail(partially fail)
isa(A,B):-
	var(A),\+commonName(B)-> isaStrict(A,B);
	\+commonName(A),var(B) -> isaStrict(A,B);
	\+commonName(A),\+commonName(B),nonvar(A),nonvar(B) -> isaStrict(A,B);
	isa2(A,B).
	
isa2(A,B):-
	commonName(A),var(B) -> hasCommonName(X,A),isaStrict(X,B);
	commonName(B),var(A) -> hasCommonName(X,B),isaStrict(A,X);
	commonName(A),\+commonName(B),nonvar(B) -> hasCommonName(X,A),isaStrict(X,B);
	commonName(B),\+commonName(A),nonvar(A) -> hasCommonName(X,B),isaStrict(A,X);
	commonName(A),commonName(B),nonvar(A),nonvar(B), A=B -> hasCommonName(X,A),hasCommonName(Y,B),X = Y;
	hasCommonName(X,A),hasCommonName(Y,B),isaStrict(X,Y).
 
%Test: Pass
%-------------countSpecies(A, N)-Start-------------
countSpecies(A, 0):-
	\+(order(A)),\+(family(A)),\+(genus(A)),\+(species_com(A)).
	
countSpecies(A, 1):-
	species_com(A).
	
countSpecies(A, N):-
	order(A) -> loop_order(A, N);
	family(A) -> loop_family(A, N);
	genus(A),
	findall(X,isSpeciesOf_com(X,A),Z),
	len(Z,N).

len([],0).
len([_|T],X):-
	len(T,X1),
	X is X1 + 1.

loop_order(A,N):-
	findall(X,isFamilyOf(X,A),Z),
	loop_st(Z,N).

loop_st([],0).
loop_st([H|T],N):-
	loop_family(H,A),
	loop_st(T,B),
	N is B + A.

loop_family(A,N):-
	findall(X,isGenusOf(X,A),Z),
	loop_list(Z,N).

loop_list([],0).
loop_list([H|T],N):-
	countSpecies(H, B),
	loop_list(T,A),
	N is B + A.
%-------------countSpecies(A, N)-end-------------

rangesTo2(A,B):-
	isSpeciesOf_com(X,A), rangesTo_db(X,B);
	isGenusOf(X,A),isSpeciesOf_com(Y,X),rangesTo_db(Y,B);
	isFamilyOf(X,A),isGenusOf(Y,X),isSpeciesOf_com(Z,Y),rangesTo_db(Z,B).

rangesTo_db(N,C):-
	N = pelecanus_erythrorhynchos,C = alberta;
	N = pelecanus_erythrorhynchos,C = canada;
	N = botaurus_lentiginosus,C = alberta;
	N = botaurus_lentiginosus,C = canada;
	N = ardea_herodias,C = alberta; 
	N = ardea_herodias,C = canada;
	N = ardea_alba,C = canada;
	N = bubulcus_ibis,C = canada;
	N = butorides_virescens,C = canada;
	N = nycticorax_nycticorax,C = alberta;
	N = nycticorax_nycticorax,C = canada.
	
rangesTo(A,B):-
	var(A) -> rangesTo_db(A,B);
	var(B),species_com(A) -> rangesTo_db(A,B);
	species_com(A),nonvar(A),nonvar(B) -> rangesTo_db(A,B);
	rangesTo2(A,B).	
	
habitat2(A, B):-
	isSpeciesOf_com(X,A), habitat_db(X,B);
	isGenusOf(X,A),isSpeciesOf_com(Y,X),habitat_db(Y,B);
	isFamilyOf(X,A),isGenusOf(Y,X),isSpeciesOf_com(Z,Y),habitat_db(Z,B).

habitat_db(N,C):-
	N = pelecanus_erythrorhynchos,C = lakePond;
	N = pelecanus_occidentalis,C = ocean;
	N = botaurus_lentiginosus,C = marsh;
	N = ixobrychus_exilis,C = marsh;
	N = ardea_herodias,C = marsh;
	N = ardea_alba,C = marsh;
	N = egretta_thula,C = marsh;
	N = egretta_caerulea,C = marsh;
	N = egretta_tricolor,C = marsh;
	N = egretta_rufescens,C = marsh;
	N = bubulcus_ibis,C = marsh;
	N = butorides_virescens,C = marsh;
	N = nycticorax_nycticorax,C = marsh;
	N = nyctanassa_violacea,C = marsh;
	N = eudocimus_albus,C = marsh;
	N = plegadis_falcinellus,C = marsh;
	N = plegadis_chihi,C = marsh;
	N = platalea_ajaja,C = marsh.

habitat(A,B):-
	var(A) -> habitat_db(A,B);
	var(B),species_com(A) -> habitat_db(A,B);
	species_com(A),nonvar(A),nonvar(B) -> habitat_db(A,B);
	habitat2(A,B).

%Test: Partially Fail
food2(A,B):-
	isSpeciesOf_com(X,A), food_db(X,B);
	isGenusOf(X,A),isSpeciesOf_com(Y,X),food_db(Y,B);
	isFamilyOf(X,A),isGenusOf(Y,X),isSpeciesOf_com(Z,Y),food_db(Z,B).

% DONE
% fish or insects
food_db(N,C):-
	N = pelecanus_erythrorhynchos,C = fish;
	N = pelecanus_occidentalis,C = fish;
	N = botaurus_lentiginosus,C = fish;
	N = ixobrychus_exilis,C = fish;
	N = ardea_herodias,C = fish;
	N = ardea_alba,C = fish;
	N = egretta_thula,C = fish;
	N = egretta_caerulea,C = fish;
	N = egretta_tricolor,C = fish;
	N = egretta_rufescens,C = fish;
	N = bubulcus_ibis,C = insects;
	N = butorides_virescens,C = fish;
	N = nycticorax_nycticorax,C = fish;
	N = nyctanassa_violacea,C = insects;
	N = eudocimus_albus,C = insects;
	N = plegadis_falcinellus,C = insects;
	N = plegadis_chihi,C = insects;
	N = platalea_ajaja,C = fish.

food(A,B):-
	var(A) -> food_db(A,B);
	var(B),species_com(A) -> food_db(A,B);
	species_com(A),nonvar(A),nonvar(B) -> food_db(A,B);
	food2(A,B).

%Test: Partially Fail
nesting2(A, B):-
	isSpeciesOf_com(X,A), nesting_db(X,B);
	isGenusOf(X,A),isSpeciesOf_com(Y,X),nesting_db(Y,B);
	isFamilyOf(X,A),isGenusOf(Y,X),isSpeciesOf_com(Z,Y),nesting_db(Z,B).

% DONE
% ground or tree
nesting_db(N,C):-
	N = pelecanus_erythrorhynchos,C = ground;
	N = pelecanus_occidentalis,C = tree;
	N = botaurus_lentiginosus,C = ground;
	N = ixobrychus_exilis,C = ground;
	N = ardea_herodias,C = tree;
	N = ardea_alba,C = tree;
	N = egretta_thula,C = tree;
	N = egretta_caerulea,C = tree;
	N = egretta_tricolor,C = tree;
	N = egretta_rufescens,C = tree;
	N = bubulcus_ibis,C = tree;
	N = butorides_virescens,C = tree;
	N = nycticorax_nycticorax,C = tree;
	N = nyctanassa_violacea,C = tree;
	N = eudocimus_albus,C = tree;
	N = plegadis_falcinellus,C = ground;
	N = plegadis_chihi,C = ground;
	N = platalea_ajaja,C = tree.
	
nesting(A,B):-
	var(A) -> nesting_db(A,B);
	var(B),species_com(A) -> nesting_db(A,B);
	species_com(A),nonvar(A),nonvar(B) -> nesting_db(A,B);
	nesting2(A,B).

%Test: Partially Fail
behavior2(A, B):-
	isSpeciesOf_com(X,A), behavior_db(X,B);
	isGenusOf(X,A),isSpeciesOf_com(Y,X),behavior_db(Y,B);
	isFamilyOf(X,A),isGenusOf(Y,X),isSpeciesOf_com(Z,Y),behavior_db(Z,B).
	
% DONE
% surfaceDive, aerialDive, stalking, groundForager, or probing
behavior_db(N,C):-
	N = pelecanus_erythrorhynchos,C = surfaceDive;
	N = pelecanus_occidentalis,C = aerialDive;
	N = botaurus_lentiginosus,C = stalking;
	N = ixobrychus_exilis,C = stalking;
	N = ardea_herodias,C = stalking;
	N = ardea_alba,C = stalking;
	N = egretta_thula,C = stalking;
	N = egretta_caerulea,C = stalking;
	N = egretta_tricolor,C = stalking;
	N = egretta_rufescens,C = stalking;
	N = bubulcus_ibis,C = groundForager;
	N = butorides_virescens,C = stalking;
	N = nycticorax_nycticorax,C = stalking;
	N = nyctanassa_violacea,C = stalking;
	N = eudocimus_albus,C = probing;
	N = plegadis_falcinellus,C = probing;
	N = plegadis_chihi,C = probing;
	N = platalea_ajaja,C = probing.
	
behavior(A,B):-
	var(A) -> behavior_db(A,B);
	var(B),species_com(A) -> behavior_db(A,B);
	species_com(A),nonvar(A),nonvar(B) -> behavior_db(A,B);
	behavior2(A,B).

%Test: Partially Fail
conservation2(A,B):-
	isSpeciesOf_com(X,A), conservation_db(X,B);
	isGenusOf(X,A),isSpeciesOf_com(Y,X),conservation_db(Y,B);
	isFamilyOf(X,A),isGenusOf(Y,X),isSpeciesOf_com(Z,Y),conservation_db(Z,B).

% DONE
% lc (low concern) or nt (near threatened)
conservation_db(N,C):-
	N = pelecanus_erythrorhynchos,C = lc;
	N = pelecanus_occidentalis,C = lc;
	N = botaurus_lentiginosus,C = lc;
	N = ixobrychus_exilis,C = lc;
	N = ardea_herodias,C = lc;
	N = ardea_alba,C = lc;
	N = egretta_thula,C = lc;
	N = egretta_caerulea,C = lc;
	N = egretta_tricolor,C = lc;
	N = egretta_rufescens,C = nt;
	N = bubulcus_ibis,C = lc;
	N = butorides_virescens,C = lc;
	N = nycticorax_nycticorax,C = lc;
	N = nyctanassa_violacea,C = lc;
	N = eudocimus_albus,C = lc;
	N = plegadis_falcinellus,C = lc;
	N = plegadis_chihi,C = lc;
	N = platalea_ajaja,C = lc.

conservation(A,B):-
	var(A) -> conservation_db(A,B);
	var(B),species_com(A) -> conservation_db(A,B);
	species_com(A),nonvar(A),nonvar(B) -> conservation_db(A,B);
	conservation2(A,B).
