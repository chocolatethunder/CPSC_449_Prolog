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
	A = pelecanus_erythrorhynchos;
	A = pelecanus_occidentalis;
	A = botaurus_lentiginosus;
	A = ixobrychus_exilis;
	A = ardea_herodias;
	A = ardea_alba;
	A = egretta_thula;
	A = egretta_caerulea;
	A = egretta_tricolor;
	A = egretta_rufescens;
	A = bubulcus_ibis;
	A = butorides_virescens;
	A = nycticorax_nycticorax;
	A = nyctanassa_violacea;
	A = eudocimus_albus;
	A = plegadis_falcinellus;
	A = plegadis_chihi;
	A = platalea_ajaja.

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
	
hasParent(A,B):-
	isSpeciesOf(A,B); isGenusOf(A,B); isFamilyOf(A,B).
	
hasParent2(A, B):-
	isSpeciesOf_com(A,B); isGenusOf(A,B); isFamilyOf(A,B).

hasCommonName(N, C):-
	genus(N),
	!,
	hasCommonName_gen(N,C);
	hasCommonName_com(N,C).

hasCommonName(G,S,C):-
	isSpeciesOf(S,G), hasCommonName_raw(S,C).

hasSciName(C,N):-
	species_com(N),
	!,
	hasCommonName_com(N,C);
	hasCommonName_gen(N,C).

hasCompoundName(G,S,N):-
	isSpeciesOf(S,G),
	isSpeciesOf_com(N,G).

isaStrict(A,B):-
	hasCommonName(X,B), X = A;
	hasCommonName(A,X), X = B;
	isSpeciesOf_com(A,X),isGenusOf(X,Y),isFamilyOf(Y,B);
	isGenusOf(A,Y),isFamilyOf(Y,B);
	isSpeciesOf_com(A,X),isGenusOf(X,B);
	isFamilyOf(A,B);
	isGenusOf(A,B);
	isSpeciesOf_com(A,B).

isa(A,B):-
	hasCommonName(X, A),
	!,
	isaStrict(X,B);
	isaStrict(A,B).

/*

synonym(?A, ?B).

countSpecies(?A, -N).

rangesTo(?A, ?P).

habitat(?A, ?B).

food(?A, ?B).

nesting(?A, ?B).

behavior(?A, ?B).

conservation(?A, ?B).*/