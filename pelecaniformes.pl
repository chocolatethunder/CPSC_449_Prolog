/*
Course: 	CPSC 449
Professor: 	Rob Kremer
Assignment:	Prolog
Group #: 32
Group members: Kowther Hassan, Alan Lam, Matthew Mullins, Kaylee Stelter, and Saurabh Tomar

A simple biological database about the order Pelecaniformes (Pelicans,
Herons, Ibises, and allies) in North America. This database is based on the
data given in the Cornell Lab on Ornithology.
*/

/*--------------------------------------Auxillary Methods Start-----------------------------------*/
/* This predicate is used to determine if the input is a common name. Written in this
   non-standard format for ease of reading. */
commonName(C):-
	C = pelican;
	C = americanWhitePelican;
	C = brownPelican;
	C = bittern;
	C = americanBittern;
	C = leastBittern;
	C = heron;
	C = greatBlueHeron;
	C = greatEgret;
	C = egret;
	C = snowyEgret;
	C = littleBlueHeron;
	C = tricoloredHeron;
	C = reddishEgret;
	C = cattleEgret;
	C = greenHeron;
	C = nightHeron;
	C = blackCrownedNightHeron;
	C = nightHeron;
	C = yellowCrownedNightHeron;
	C = ibis;
	C = whiteIbis;
	C = glossyIbis;
	C = whiteFacedIbis;
	C = spoonbill;
	C = roseateSpoonbill.

/* This predicate checks if the input is a correct family under its order.
Param F is the family.
Param O is the order.
*/
isFamilyOf(F,O):-
	F = pelecanidae, O = pelecaniformes;
	F = ardeidae, O = pelecaniformes;
	F = threskiornithidae, O = pelecaniformes.

/* This predicate checks if the input is a correct genus under its family.
Param G is the genus.
Param F is the family.
*/
isGenusOf(G,F):-
	G = pelecanus,F = pelecanidae;
	G = botaurus,F = ardeidae;
	G = ixobrychus,F = ardeidae;
	G = ardea,F = ardeidae;
	G = egretta,F = ardeidae;
	G = bubulcus,F = ardeidae;
	G = butorides,F = ardeidae;
	G = nycticorax,F = ardeidae;
	G = nyctanassa,F = ardeidae;
	G = eudocimus,F = threskiornithidae;
	G = plegadis,F = threskiornithidae;
	G = platalea,F = threskiornithidae.

/* This predicate checks if the input is a correct species RAW name under its genus.
Param S is a RAW species name.
Param G is the genus.
*/
isSpeciesOf(S,G):-
	S = erythrorhynchos,G = pelecanus;
	S = occidentalis,G = pelecanus;
	S = lentiginosus,G = botaurus;
	S = exilis,G = ixobrychus;
	S = herodias,G = ardea;
	S = alba,G = ardea;
	S = thula,G = egretta;
	S = caerulea,G = egretta;
	S = tricolor,G = egretta;
	S = rufescens,G = egretta;
	S = ibis,G = bubulcus;
	S = virescens,G = butorides;
	S = nycticorax,G = nycticorax;
	S = violacea,G = nyctanassa;
	S = albus,G = eudocimus;
	S = falcinellus,G = plegadis;
	S = chihi,G = plegadis;
	S = ajaja,G = platalea.

/* This predicate checks if the input is a correct species name under its genus.
Param ComName is the compound species name.
Param GenName is the genus.
Param SpecName is the raw species name.
*/
checkcom(ComName,GenName,SpecName):-
	nonvar(ComName) -> atom_concat(GenName,Remain,ComName), genus(GenName),atom_concat(_,SpecName,Remain), species(SpecName);
	atom_concat(GenName,'_',Temp),genus(GenName),species(SpecName),atom_concat(Temp,SpecName,ComName).

/* This predicate checks if the input is a correct species compound name under its genus.
Param C is the compound species name
Param G is the genus.
*/
isSpeciesOf_com(C,G):-
	genus(G),checkcom(C,G,SpecName),isSpeciesOf(SpecName,G).

/* This predicate checks if A is a correct compound name of species. */
species_com(A):-
	isSpeciesOf_com(A,B),genus(B).

/* This predicate checks if G (genus) has a common name C (and vice versa). */
hasCommonName_gen(G,C):-
	G = pelecanus,C = pelican;
	G = botaurus,C = bittern;
	G = ixobrychus,C = bittern;
	G = ardea,C = heron;
	G = egretta,C = heron;
	G = egretta,C = egret;
	G = bubulcus,C = egret;
	G = butorides,C = heron;
	G = nycticorax,C = nightHeron;
	G = nyctanassa,C = nightHeron;
	G = eudocimus,C = ibis;
	G = plegadis,C = ibis;
	G = platalea,C = spoonbill.

/* This predicate checks if N (species compound name) has a common name C (and vice versa). */
hasCommonName_com(N,C):-
	species_com(N),checkcom(N,GenName,SpecName),isSpeciesOf(SpecName,GenName),hasCommonName_raw(SpecName,C).

/* This predicate checks if S (species raw name) has a common name C (and vice versa). */
hasCommonName_raw(S,C):-
	S = erythrorhynchos,C = americanWhitePelican;
	S = occidentalis,C = brownPelican;
	S = lentiginosus,C = americanBittern;
	S = exilis,C = leastBittern;
	S = herodias,C = greatBlueHeron;
	S = alba,C = greatEgret;
	S = thula,C = snowyEgret;
	S = caerulea,C = littleBlueHeron;
	S = tricolor,C = tricoloredHeron;
	S = rufescens,C = reddishEgret;
	S = ibis,C = cattleEgret;
	S = virescens,C = greenHeron;
	S = nycticorax,C = blackCrownedNightHeron;
	S = violacea,C = yellowCrownedNightHeron;
	S = albus,C = whiteIbis;
	S = falcinellus,C = glossyIbis;
	S = chihi,C = whiteFacedIbis;
	S = ajaja,C = roseateSpoonbill.

/* Database used for rangesTo(A,B).
Param C is the species compound name
Param R is the provincial/national range. */
rangesTo_db(C,R):-
	C = pelecanus_erythrorhynchos,R = alberta;
	C = pelecanus_erythrorhynchos,R = canada;
	C = botaurus_lentiginosus,R = alberta;
	C = botaurus_lentiginosus,R = canada;
	C = ardea_herodias,R = alberta;
	C = ardea_herodias,R = canada;
	C = ardea_alba,R = canada;
	C = bubulcus_ibis,R = canada;
	C = butorides_virescens,R = canada;
	C = nycticorax_nycticorax,R = alberta;
	C = nycticorax_nycticorax,R = canada.

/* Database used for habitat(A,B).
Param C is the species compound name
Param H is the habitat. */
habitat_db(C,H):-
	C = pelecanus_erythrorhynchos,H = lakePond;
	C = pelecanus_occidentalis,H = ocean;
	C = botaurus_lentiginosus,H = marsh;
	C = ixobrychus_exilis,H = marsh;
	C = ardea_herodias,H = marsh;
	C = ardea_alba,H = marsh;
	C = egretta_thula,H = marsh;
	C = egretta_caerulea,H = marsh;
	C = egretta_tricolor,H = marsh;
	C = egretta_rufescens,H = marsh;
	C = bubulcus_ibis,H = marsh;
	C = butorides_virescens,H = marsh;
	C = nycticorax_nycticorax,H = marsh;
	C = nyctanassa_violacea,H = marsh;
	C = eudocimus_albus,H = marsh;
	C = plegadis_falcinellus,H = marsh;
	C = plegadis_chihi,H = marsh;
	C = platalea_ajaja,H = marsh.

/* Database used for food(A,B).
Param C is the species compound name
Param D is the typical diet of that species. */
food_db(C,D):-
	C = pelecanus_erythrorhynchos,D = fish;
	C = pelecanus_occidentalis,D = fish;
	C = botaurus_lentiginosus,D = fish;
	C = ixobrychus_exilis,D = fish;
	C = ardea_herodias,D = fish;
	C = ardea_alba,D = fish;
	C = egretta_thula,D = fish;
	C = egretta_caerulea,D = fish;
	C = egretta_tricolor,D = fish;
	C = egretta_rufescens,D = fish;
	C = bubulcus_ibis,D = insects;
	C = butorides_virescens,D = fish;
	C = nycticorax_nycticorax,D = fish;
	C = nyctanassa_violacea,D = insects;
	C = eudocimus_albus,D = insects;
	C = plegadis_falcinellus,D = insects;
	C = plegadis_chihi,D = insects;
	C = platalea_ajaja,D = fish.

/* Database used for nesting(A,B).
Param C is the species compound name
Param N is the nesting ground for that species. */
nesting_db(C,N):-
	C = pelecanus_erythrorhynchos,N = ground;
	C = pelecanus_occidentalis,N = tree;
	C = botaurus_lentiginosus,N = ground;
	C = ixobrychus_exilis,N = ground;
	C = ardea_herodias,N = tree;
	C = ardea_alba,N = tree;
	C = egretta_thula,N = tree;
	C = egretta_caerulea,N = tree;
	C = egretta_tricolor,N = tree;
	C = egretta_rufescens,N = tree;
	C = bubulcus_ibis,N = tree;
	C = butorides_virescens,N = tree;
	C = nycticorax_nycticorax,N = tree;
	C = nyctanassa_violacea,N = tree;
	C = eudocimus_albus,N = tree;
	C = plegadis_falcinellus,N = ground;
	C = plegadis_chihi,N = ground;
	C = platalea_ajaja,N = tree.

/* Database used for behavior(A,B).
Param C is the species compound name
Param B is the typical behavior for that species. */
behavior_db(C,B):-
	C = pelecanus_erythrorhynchos,B = surfaceDive;
	C = pelecanus_occidentalis,B = aerialDive;
	C = botaurus_lentiginosus,B = stalking;
	C = ixobrychus_exilis,B = stalking;
	C = ardea_herodias,B = stalking;
	C = ardea_alba,B = stalking;
	C = egretta_thula,B = stalking;
	C = egretta_caerulea,B = stalking;
	C = egretta_tricolor,B = stalking;
	C = egretta_rufescens,B = stalking;
	C = bubulcus_ibis,B = groundForager;
	C = butorides_virescens,B = stalking;
	C = nycticorax_nycticorax,B = stalking;
	C = nyctanassa_violacea,B = stalking;
	C = eudocimus_albus,B = probing;
	C = plegadis_falcinellus,B = probing;
	C = plegadis_chihi,B = probing;
	C = platalea_ajaja,B = probing.

/* Database used for conservation(A,B).
Param N is the species compound name
Param C is the conservation status of the species.

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

/*--------------------------------------Auxillary Methods End-------------------------------------*/

/* Checks if A is a valid order name.
Param A - Order name. Cannot be a common name.
*/
order(O):-
	O = pelecaniformes.

/* Checks if A is a valid family name.
Param A - Family name. Cannot be a common name.
*/
family(F):-
	F = pelecanidae;
	F = ardeidae;
	F = threskiornithidae.

/* Checks if A is a valid genus name.
Param A - Genus name. Cannot be a common name.
*/
genus(G):-
	G = pelecanus;
	G = botaurus;
	G = ixobrychus;
	G = ardea;
	G = egretta;
	G = bubulcus;
	G = butorides;
	G = nycticorax;
	G = nyctanassa;
	G = eudocimus;
	G = plegadis;
	G = platalea.

/* Checks if A is a valid species name.
Param A - RAW species name. Cannot be a common name or common name.
*/
species(S):-
	S = erythrorhynchos;
	S = occidentalis;
	S = lentiginosus;
	S = exilis;
	S = herodias;
	S = alba;
	S = thula;
	S = caerulea;
	S = tricolor;
	S = rufescens;
	S = ibis;
	S = virescens;
	S = nycticorax;
	S = violacea;
	S = albus;
	S = falcinellus;
	S = chihi;
	S = ajaja.

/* This method checks if B is a direct parent of A. This version optionally takes a raw species name, but not a compound species name.
Param A - Child Name - order, family, genus, or raw species name
Param B - Parent Name - order, family, genus
*/
hasParent(A,B):-
	isSpeciesOf(A,B); isGenusOf(A,B); isFamilyOf(A,B).

/* This method checks if B is a direct parent of A.
Param A - Child Name - order, family, genus, or compound species name
Param B - Parent Name - order, family, genus
*/
hasParent2(A, B):-
	isSpeciesOf_com(A,B); isGenusOf(A,B); isFamilyOf(A,B).

/* This method checks N has a common name C.
Param N - Either a Taxanomical Name or compound name if it is a species name
Param C - The common name
*/
hasCommonName(N, C):-
	hasCommonName_gen(N,C);
	hasCommonName_com(N,C).

/* This method checks whether a given a raw species name has a common name.
Param G - Genus of the species
Param S - Raw species name for the species
Param C - Common name of the species
*/
hasCommonName(G,S,C):-
	isSpeciesOf(S,G), hasCommonName_raw(S,C).

/* This method checks if common name has a scientific name.
Param N - compound taxonomical (scientific) name, an order, family, or genus for some species
Param C - common name of the species.
*/
hasSciName(C,N):-
	hasCommonName(N,C).

/* This method checks if N is a the compound name for the genus G and species S.
Param G - Genus of the species
Param S - Species name for the species
Param N - The compound name being checked
*/
hasCompoundName(G,S,N):-
	hasCommonName(G,S,C),
	hasCommonName(N,C).

/* This method checks if B is an Ancestor of A. Different from isa(A,B) as it does not deal with common names of species.
Param A - Order names, family names, genus names, compound species names, or variables
Param B - Order names, family names, genus names, compound species names, or variables
*/
isaStrict(A,B):-
	(family(A); order(A); genus(A); species_com(A)), A = B;
	hasParent2(A,B);
	hasParent2(A,X), isaStrict(X,B).

/* This method checks if B is an Ancestor of A.
Param A - Order names, family names, genus names, compound species names, common names, or variables
Param B - Order names, family names, genus names, compound species names, common names, or variables
*/
isa(A,B):-
	var(A),\+commonName(B) -> isaStrict(A,B);
	\+commonName(A),var(B) -> isaStrict(A,B);
	\+commonName(A),\+commonName(B) -> isaStrict(A,B);
	commonName(A),var(B) -> hasCommonName(X,A),isaStrict(X,B);
	commonName(B),var(A) -> hasCommonName(X,B),isaStrict(A,X);
	commonName(A),\+commonName(B) -> hasCommonName(X,A),isaStrict(X,B);
	commonName(B),\+commonName(A) -> hasCommonName(X,B),isaStrict(A,X);
	hasCommonName(X,A),hasCommonName(Y,B),isaStrict(X,Y).

/* This method checks whether A is scientific name of B or vice versa. A and B cannot be the same.
Param A - Either a Common Name and B is a Scientific Name (an order name, a family name, a genus name, or a compound species name) to check against
Param B - Either a Common Name and A is a Scientific Name (an order name, a family name, a genus name, or a compound species name) to check against
*/
synonym(A,B):-
	(hasCommonName(B,A); hasCommonName(A,B)), \+(A=B);
	hasCommonName(X,A), hasCommonName(X,B), \+(A=B).

/* This method counts the number of species under the given input of order, family, genus, or raw species name.
Param Name - Input name to check number of species under, can be order, family, genus, or raw species.
Param Num - The number of species under given Name.
Param Count - Variable used to keep track of the number of species names that have been counted
*/
%-------------countSpecies/2-Start-------------
%Input Name is not apart of the database
countSpecies(Name,0) :-
	\+order(Name),\+family(Name),\+genus(Name),\+species_com(Name).

%Input Name is a compound species name
countSpecies(Name,1) :-
	species_com(Name).

%Calls helper function
countSpecies(Name,Num) :-
	countSpecies([Name|[]],Num,0).		%Count begins at 0

%Base case for helper function
countSpecies([],Num,Num).

%Helper function which creates a list of names, which are then replaced with all children belonging to that name, until a compound species name is found, at which point we increment our count.
countSpecies([H|T],Num,Count) :-
	order(H) -> findall(FamilyNames,isFamilyOf(FamilyNames,H),List), append(T,List,List2), countSpecies(List2,Num,Count);
	family(H) -> findall(GenusNames,isGenusOf(GenusNames,H),List), append(T,List,List2), countSpecies(List2,Num,Count);
	genus(H) -> findall(CompoundSpeciesNames,isSpeciesOf_com(CompoundSpeciesNames,H),List), append(T,List,List2), countSpecies(List2,Num,Count);
	species_com(H), Count2 is Count + 1, countSpecies(T,Num,Count2).
%-------------countSpecies/2-end-------------

/* This method checks or returns the range of a bird can extend to.
A - (Variable or Atom) The compound species name, genus, family, or order or a bird (Not raw species name).
R - The range type R wher R is canada or alberta.
Returns the range if only Param A is provided.
Returns a check if both Param A and Param R are provided.
*/
rangesTo(A,R):-
	var(A) -> rangesTo_db(A,R);
	var(R),species_com(A) -> rangesTo_db(A,R);
	species_com(A) -> rangesTo_db(A,R);
	hasParent2(X,A), rangesTo(X,R).

/* This method checks or returns the a bird's habitat.
A - The compound species name, genus, family, or order or a bird (Not raw species name).
H - The habitat type H where H is lakePond, ocean, or marsh.
Returns habitat type if only Param A is provided.
Returns a check if both Param A and Param H are provided.
*/
habitat(A,H):-
	var(A) -> habitat_db(A,H);
	var(H),species_com(A) -> habitat_db(A,H);
	species_com(A) -> habitat_db(A,H);
	hasParent2(X,A), habitat(X,H).

/* This method checks or returns the prefered food for a bird.
A - The compound species name, genus, family, or order or a bird (Not raw species name).
F - The food type F where F is fish or insects.
Returns prefered food if only Param A is provided.
Returns a check if both Param A and Param F are provided.
*/
food(A,F):-
	var(A) -> food_db(A,F);
	var(F),species_com(A) -> food_db(A,F);
	species_com(A) -> food_db(A,F);
	hasParent2(X,A), food(X,F).

/* This method checks or returns the prefered nesting area for a bird.
Param A - The compound species name, genus, family, or order or a bird (Not raw species name).
Param N - The nesting area N where N is ground or tree.
Returns nesting area if only Param A is provided.
Returns a check if both Param A and Param N are provided.
*/
nesting(A,N):-
	var(A) -> nesting_db(A,N);
	var(N),species_com(A) -> nesting_db(A,N);
	species_com(A) -> nesting_db(A,N);
	hasParent2(X,A), nesting(X,N).

/* This method checks or returns what type of feeding behaviour a certain bird exhibits.
Param A - The compound species name, genus, family, or order or a bird (Not raw species name).
Param B - The feeding behavior B where B is surfaceDive, aerialDive, stalking, groundForager, or probing.
Returns feeding behavior if only Param A is provided.
Returns a check if both Param A and Param B are provided.
*/
behavior(A,B):-
	var(A) -> behavior_db(A,B);
	var(B),species_com(A) -> behavior_db(A,B);
	species_com(A) -> behavior_db(A,B);
	hasParent2(X,A), behavior(X,B).

/* This method checks or returns the conservation status of a given bird. Whether it is of low concern or near extinction.
Param A - The compound species name, genus, family, or order or a bird (Not raw species name).
Param B - It is the conservation status such as lc(low concern) or nt(near threatened)
Returns conservation status if only Param A is provided.
Returns a check if both Param A and Param B are provided.
*/
conservation(A,B):-
	var(A) -> conservation_db(A,B);
	var(B),species_com(A) -> conservation_db(A,B);
	species_com(A) -> conservation_db(A,B);
	hasParent2(X,A), conservation(X,B).
