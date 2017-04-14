/*
Course: 	CPSC 449
Professor: 	Rob Kremer
Assignment:	Prolog
Group #: 32
Group members: Kowther Hassan, Matthew Mullins, Kaylee Stelter, Saurabh Tomar and Alan Lam

A simple biological database about the order Pelecaniformes (Pelicans,
Herons, Ibises, and allies) in North America. This database is based on the
data given in the Cornell Lab on Ornithology.
*/

/*--------------------------------------Data-Base-Starts-----------------------------------*/
/* This predicate is used to determine if the input is a common name. Written in this
   non-standard format for ease of reading. */
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

/* This predicate checks if the input is a correct family under its order. */
isFamilyOf(A, B):-
	A = pelecanidae, B = pelecaniformes;
	A = ardeidae, B = pelecaniformes;
	A = threskiornithidae, B = pelecaniformes.

/* This predicate checks if the input is a correct genus under its family. */
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

/* This predicate checks if the input is a correct species RAW name under its genus.
   A is a species RAW name and B is the genus of that species. */
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

/* This predicate checks if the input is a correct species compound name under its genus.
   A is a species COMPOUND name and B is the genus of that species. */
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

/* This predicate checks if A is a correct COMPOUND name of species. */
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

/* This predicate checks if N (genus) has a common name C ( and vice versa ). */
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

/* This predicate checks if N (species compound name) has a common name C ( and vice versa ). */
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

/* This predicate checks if N (species raw name) has a common name C ( and vice versa ). */
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

/* Database used for rangesTo(A,B). N is the species compound name and C
   is the provincial/national range. */
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

/* Database used for habitat(A,B). N is the species compound name and
   C is the habitat. */
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

/* Database used for food(A,B). N is the species compound name and
   C is the typical diet of that species. */
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

/* Database used for nesting(A,B). N is the species compound name and
   C is the nesting ground for that species. */
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

/* Database used for behavior(A,B). N is the species compound name and
   C is the typical behavior for that species. */
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

/* Database used for conservation(A,B). N is the species compound name and
   and C is the conservation status of the species.

   lc -> least concern
   nt -> near threatened
   vl -> vulnerable
   en -> endangered
   ce -> critically endangered
   ew -> extinct in the wild
   ex -> extinct */
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

/*--------------------------------------Database-Ends-------------------------------------*/

/* A is the name of an order */
order(A):-
	A = pelecaniformes.

/* A is the name of a family */
family(A):-
	A = pelecanidae;
	A = ardeidae;
	A = threskiornithidae.

/* A is the name of genus */
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

/* A is the RAW name of species */
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

/* B (order, family, genus) is a direct parent of A (order, family, genus, or raw species name).
   This version optionally takes a raw species name, but not a compound species name. */
hasParent(A,B):-
	isSpeciesOf(A,B); isGenusOf(A,B); isFamilyOf(A,B).

/* B (order, family, genus) is a direct parent of A (order, family, genus, or compound species name).
   This version optionally takes a compound species name, but not a raw species name. */
hasParent2(A, B):-
	isSpeciesOf_com(A,B); isGenusOf(A,B); isFamilyOf(A,B).

/* N has a common name C. Allows for use of either a raw or compound species name. */
hasCommonName(N, C):-
	hasCommonName_gen(N,C);
	hasCommonName_com(N,C).

/* The species described by the genus G and raw species name S has a common name C. */
hasCommonName(G,S,C):-
	isSpeciesOf(S,G), hasCommonName_raw(S,C).

/* N is a compound taxonomical (scientific) name for some species that has a common name C
   or N is an order, family, or genus that has a common name C. */
hasSciName(C,N):-
	hasCommonName(N,C).

/* N is a the compound name for the genus G and species S. */
hasCompoundName(G,S,N):-
	hasCommonName(G,S,C),
	hasCommonName(N,C).

/* B is an ancestor of A. */
isaStrict(A,B):-
	(family(A); order(A); genus(A); species_com(A)), A = B;
	hasParent2(A,B);
	hasParent2(A,X), isaStrict(X,B).

/* A is common name of scientific name B or vice versa. */
synonym(A,B):-
	(hasCommonName(B,A); hasCommonName(A,B)), \+(A=B);
	hasCommonName(X,A), hasCommonName(X,B), \+(A=B).

/* B (can be common name) is an ancestor of A (can be common name). */
isa(A,B):-
	var(A),\+commonName(B) -> isaStrict(A,B);
	\+commonName(A),var(B) -> isaStrict(A,B);
	\+commonName(A),\+commonName(B) -> isaStrict(A,B);
	commonName(A),var(B) -> hasCommonName(X,A),isaStrict(X,B);
	commonName(B),var(A) -> hasCommonName(X,B),isaStrict(A,X);
	commonName(A),\+commonName(B) -> hasCommonName(X,A),isaStrict(X,B);
	commonName(B),\+commonName(A) -> hasCommonName(X,B),isaStrict(A,X);
	hasCommonName(X,A),hasCommonName(Y,B),isaStrict(X,Y).

%-------------countSpecies(A, N)-Start-------------
/* Order, family, genus, or species A has N species */

%Input Name is not apart of the database
countSpecies(Name,0) :-
	\+order(Name),\+family(Name),\+genus(Name),\+species_com(Name).

%Input Name is a compound species name
countSpecies(Name,1) :-
	species_com(Name).

%Calls helper function
countSpecies(Name,Num) :-
	countSpecies([Name|[]],Num,0).

%Base case for helper function
countSpecies([],Num,Num).

%Helper function which creates a list of names, which are then replaced with all children belonging to that name, until a compound species name is found, at which point we increment our count.
countSpecies([H|T],Num,Count) :-
	order(H) -> findall(FamilyNames,isFamilyOf(FamilyNames,H),List), append(T,List,List2), countSpecies(List2,Num,Count);
	family(H) -> findall(GenusNames,isGenusOf(GenusNames,H),List), append(T,List,List2), countSpecies(List2,Num,Count);
	genus(H) -> findall(CompoundSpeciesNames,isSpeciesOf_com(CompoundSpeciesNames,H),List), append(T,List,List2), countSpecies(List2,Num,Count);
	species_com(H), Count2 is Count + 1, countSpecies(T,Num,Count2).

%-------------countSpecies(A, N)-end-------------

/* (bird) A's range extends to P, where P may be either Canada or Alberta. */
rangesTo(A,B):-
	var(A) -> rangesTo_db(A,B);
	var(B),species_com(A) -> rangesTo_db(A,B);
	species_com(A) -> rangesTo_db(A,B);
	hasParent2(X,A), rangesTo(X,B).

/* (bird) A prefers a habitat of B, where B is lakePond, ocean, or marsh. */
habitat(A,B):-
	var(A) -> habitat_db(A,B);
	var(B),species_com(A) -> habitat_db(A,B);
	species_com(A) -> habitat_db(A,B);
	hasParent2(X,A), habitat(X,B).

/* (bird) A prefers to eat B, where B is fish or insects. */
food(A,B):-
	var(A) -> food_db(A,B);
	var(B),species_com(A) -> food_db(A,B);
	species_com(A) -> food_db(A,B);
	hasParent2(X,A), food(X,B).

/* (bird) A prefers to nest in B, where B is ground or tree. */
nesting(A,B):-
	var(A) -> nesting_db(A,B);
	var(B),species_com(A) -> nesting_db(A,B);
	species_com(A) -> nesting_db(A,B);
	hasParent2(X,A), nesting(X,B).

/* (bird) A exhibits feeding behavior B, where B is surfaceDive, aerialDive, stalking, groundForager, or probing. */
behavior(A,B):-
	var(A) -> behavior_db(A,B);
	var(B),species_com(A) -> behavior_db(A,B);
	species_com(A) -> behavior_db(A,B);
	hasParent2(X,A), behavior(X,B).

/* (bird) A's conservation status is B, where B is lc (low concern) or nt (near threatened). */
conservation(A,B):-
	var(A) -> conservation_db(A,B);
	var(B),species_com(A) -> conservation_db(A,B);
	species_com(A) -> conservation_db(A,B);
	hasParent2(X,A), conservation(X,B).
