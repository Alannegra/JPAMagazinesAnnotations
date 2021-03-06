--
-- PostgreSQL database dump
--

-- Dumped from database version 13.5 (Ubuntu 13.5-0ubuntu0.21.10.1)
-- Dumped by pg_dump version 13.5 (Ubuntu 13.5-0ubuntu0.21.10.1)

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: animal; Type: TABLE; Schema: public; Owner: alan
--

CREATE TABLE public.animal (
                               id integer NOT NULL,
                               nombre text NOT NULL,
                               especie text NOT NULL,
                               familia text NOT NULL,
                               orden text NOT NULL,
                               clase text NOT NULL,
                               habitat text NOT NULL,
                               dieta text NOT NULL,
                               gestacion text NOT NULL,
                               crias text NOT NULL,
                               vida text NOT NULL
);


ALTER TABLE public.animal OWNER TO alan;

--
-- Name: animal_id_seq; Type: SEQUENCE; Schema: public; Owner: alan
--

ALTER TABLE public.animal ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.animal_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: habitat; Type: TABLE; Schema: public; Owner: alan
--

CREATE TABLE public.habitat (
                                id integer NOT NULL,
                                habitat text NOT NULL,
                                description text NOT NULL
);


ALTER TABLE public.habitat OWNER TO alan;

--
-- Name: habitat_id_seq; Type: SEQUENCE; Schema: public; Owner: alan
--

ALTER TABLE public.habitat ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.habitat_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Data for Name: animal; Type: TABLE DATA; Schema: public; Owner: alan
--

COPY public.animal (id, nombre, especie, familia, orden, clase, habitat, dieta, gestacion, crias, vida) FROM stdin;
2       Ant??lope acu??tico       Kobus ellipsiprymnus    Bovidae\n Antilopinae  aMammalia        SABANA AFRICANA El kobo es una animal muy dependiente del agua, se alimenta de una gran variedad de herb??ceas de diferentes medidas de longitud. Su dieta es muy rica en prote??nas.     Alrededor de 270-285 d??as.      1      18 a??os.
42      Boa de Dum??ril  Acrantophis dumerili    Boidae  Squamata        ReptiliaBOSQUE ECUATORIAL       Se alimenta de vertebrados terrestres silvestres y aves dom??sticas.     6 ??? 8 meses.    De 6 a 13 cr??as.        No encontrado.
43      Bongo oriental  Tragelaphus eurycerus isaaci    Bovidae\n Bovinae      Artiodactyla     Mammalia        BOSQUE ECUATORIAL       Ramoneador estricto, el bongo se alimenta principalmente de hojas y brotes de arbustos y de plantas trepadoras, aunque tambi??n busca la madera, corteza y frutas podridas.      285 d??as.       1       18 a??os en cautividad.
44      B??falo rojo     Syncerus caffer nanus   Bovidae\n Bovinae       Artiodactyla    Mammalia        BOSQUE ECUATORIAL       Hierba, ramitas y brotes tiernos.       300 d??as.       1       18-20 a??os en la naturaleza, hasta 28 en cautividad.
45      Camale??n pantera        Furcifer pardalis       Chamaeleonidae  SquamataReptilia        BOSQUE ECUATORIAL       Invertebrados terrestes, pocas veces materia vegetal.   3-6 semanas.    10-46 huevos    Cautividad 5-6 a??os, libertad 1-3 a??os.
46      Cercopiteco de Brazza   Cercopithecus neglectus Cercopithecidae PrimatesMammalia        BOSQUE ECUATORIAL       Aunque es omn??voro, el 50-75% de su dieta son frutos y semillas, compensa los d??ficits con hojas y flores y tambi??n puede alimentarse de hongos, escarabajos, termitas y gusanos.       168 d??as.      122 a??os en la naturaleza y hasta 30 a??os en cautividad.
47      Chimpanc??       Pan troglodytes Hominidae       Primates        MammaliaBOSQUE ECUATORIAL       Es omn??voro, aliment??ndose principalmente de frutas (la mitad de su dieta), hojas, cortezas y tallos. Tambi??n se nutre de termitas y otros insectos, aves, huevos y pollos, y ocasionalmente peque??os mam??feros (entre ellos otros primates).   240 d??as.       1       40-60 a??os.
48      Cocodrilo enano Osteolaemus tetraspis   Crocodylidae    Crocodylia     Reptilia BOSQUE ECUATORIAL       Se alimenta principalmente de peces, cangrejos y anfibios.      100 d??as.       11-20   70 a??os.
49      Cucaracha silbadora     Gromphadorhina portentosa       Blaberidae     Blattodea        Insecta BOSQUE ECUATORIAL       Son detrit??voros, se alimentan generalmente de restos de materia vegetal, incluida la fruta ca??da debido a su f??cil disponibilidad, tambi??n se alimentan de insectos m??s peque??os y de cuerpos y restos de otros animales.      60-70 d??as.     15-40   2-5 a??os.
50      Dril    Mandrillus leucophaeus  Cercopithecidae Primates        MammaliaBOSQUE ECUATORIAL       Omn??voro, ra??ces, tub??rculos, frutas, brotes y otras materias vegetales son complementados con caracoles, gusanos, insectos, ranas, lagartijas, culebras, ratones y otros peque??os mam??feros.   179-182 d??as.   1      Se estima que supera los 28 a??os.
51      Duiker rojo de Natal    Cephalophus natalensis  Bovidae\n Antilopinae  Artiodactyla     Mammalia        BOSQUE ECUATORIAL       Hojas, frutos y flores de diferentes especies ribere??as de ??rboles, arbustos y hierbas. 210 d??as.      1Hasta 15 a??os en cautividad.
52      Escorpi??n emperador     Pandinus imperator      Scorpionidae    Scorpiones      Arachnida       BOSQUE ECUATORIAL       Insectos y otros artr??podos, y en ocasiones peque??os vertebrados. Generalmente se alimenta de termitas. Ovoviv??paro.    10-12   5-8 a??os en cautividad, mucho menos en la naturaleza.
54      Gecko de Madagascar     Phelsuma madagascariensis       Gekkonidae     Squamata Reptilia        BOSQUE ECUATORIAL       Se alimenta principalmente de una amplia variedad de artr??podos, aunque ocasionalmente tambi??n se alimenta de frutos y n??ctar. Su principal fuente de agua es la se forma por condensaci??n sobre las hojas.     47-82 d??as.     2       15 a??os.
55      Gorila occidental de costa      Gorilla gorilla gorilla Hominidae      Primates Mammalia        BOSQUE ECUATORIAL       Un porcentaje muy alto en su dieta es vegetariana, ingiriendo una gran cantidad de plantas herb??ceas, fruta, matorrales, plantas trepadoras y savia. Tambi??n se alimentan de termitas, pero en un porcentaje m??s bajo en comparaci??n con los vegetales. 260 d??as.       1      Alrededor de 50 a??os.
57      Hipop??tamo pigmeo       Choeropsis liberiensis  Hippopotamidae  Artiodactyla    Mammalia        BOSQUE ECUATORIAL       Hojas, plantas acu??ticas, frutos ca??dos, ra??ces y tub??rculos. Usa sus gruesos labios llevarse la comida a la boca.      196-201 d??as.   1       Hasta 55 a??os en cautividad.
58      Leopardo        Panthera pardus\nPanthera pardus kotiya Felidae\n Pantherinae   Carnivora       Mammalia        BOSQUE ECUATORIAL       Generalmente cazan ungulados de tama??o medio, como ant??lopes, gacelas, ciervos, cerdos o ganado y tambi??n primates. Como buenos carn??voros oportunistas que son, se alimentan adem??s de aves, reptiles, roedores o artr??podos. Prefieren presas de entre 10-40 kg. Se ha observado tambi??n como sustraen comida a otros animales, como guepardos, hienas solitarias y otros peque??os carn??voros.        97 d??as.        2-3    10-12 a??os en la naturaleza, hasta 20-22 en cautividad.
59      Mangabey de coronilla blanca    Cercocebus atys lunulatus       Cercopithecidae Primates        Mammalia        BOSQUE ECUATORIAL       Los frutos, incluidos carne y c??scaras de frutos muy duros, son sus alimentos b??sicos. Tambi??n se alimentan de semillas, hojas y peque??os animales invertebrados.       163-167 d??as.   1       18 a??os en la naturaleza y 27 a??os en cautividad.
60      Nutria de cuello moteado        Hydrictis maculicollis  Mustelidae\n Lutrinae   Carnivora       Mammalia        BOSQUE ECUATORIAL       Peces (Barbus, Clarias, Haplochromis, Micropterus salmoides, Salmo trutta y Tilapia), cangrejos (Potomonautes) y ranas (Xenopus laevis y Rana). En primavera, verano y oto??o se alimenta principalmente de cangrejos mientras que en invierno predomina la ingesta de peces. Ocasionalmente tambi??n se alimenta de insectos y p??jaros.  60 d??as.2-3     22 a??os.
62      Potamoquero rojo        Potamochoerus porcus pictus     Suidae  Artiodactyla    Mammalia        BOSQUE ECUATORIAL       Omn??voro generalista, con marcada preferencia por ra??ces y tub??rculos, tambi??n incluye en su dieta frutos, hierbas, plantas acu??ticas, bulbos, insectos, huevos de aves, carro??a.       120-130 d??as.   1-4 (rara vez 6).       12-15 a??os.
63      Sitatunga occidental    Tragelaphus spekiigratus        Bovidae\n Bovinae       Artiodactyla    Mammalia        BOSQUE ECUATORIAL       Ca??as, plantas acu??ticas y hierbas, ocasionalmente ramonea.     247 d??as.       1       19 a??os.
64      Talapo??n norte??o        Miophitecus ogouensis   Cercopithecidae PrimatesMammalia        BOSQUE ECUATORIAL       Los frutos constituyen casi el 80% de su dienta, aunque tambi??n se alimenta de hojas, semillas e invertebrados. 158-166 d??as.   1       28 a??os.
65      Tortuga leopardo        Geochelone pardalis     Testudinidae    Testudines      Reptilia        BOSQUE ECUATORIAL       Estrictamente herb??vora, se alimentan generalmente de plantas suculentas, cardos y hierba.      140-180 d??as.  5-30     100 a??os.
66      Cocodrilo del Nilo      Crocodylus niloticus    Crocodylidae    Crocodylia      Reptilia        HUMEDALES AFRICANOS: LA CUEVA DE KITUM  Cuando son peque??os se alimentan de peque??os invertebrados acu??ticos e insectos. En la edad adulta, sus presas son principalmente grandes vertebrados, como ant??lopes, b??falos, cebras, ??us, etc. Los peces y los peque??os vertebrados tambi??n son parte importante de su dieta.        80-90 d??as.     40-60 huevos.   45 a??os.
68      Hipop??tamo com??n        Hippopotamus amphibius  Hippopotamidae  Artiodactyla    Mammalia        HUMEDALES AFRICANOS: LA CUEVA DE KITUM  Flor??voro, aunque principalmente pastan en las riberas de los r??os, han sido vistos aliment??ndose de vegetaci??n acu??tica y ocasionalmente de carro??a y peque??os animales en respuesta a sus restricciones nutricionales. Usa sus finos labios para llevarse la comida a la boca.        227-240 d??as.   1       40-50 a??os.
69      Mantela dorada  Mantella aurantiaca     Mantellidae     Anura   AnfibiosHUMEDALES AFRICANOS: LA CUEVA DE KITUM  Insect??vora a base de termitas, hormigas, moscas de la fruta y tambi??n cualquier otro artr??podo que quepa en su boca.  No hay informaci??n disponible.   No hay informaci??n disponible.  No hay informaci??n disponible.
71      Rana veneno azul        Dendrobates azureus     Dendrobatidae   Anura  Anfibios HUMEDALES AFRICANOS: LA CUEVA DE KITUM  Principalmente a base de hormigas, termitas y otros peque??os insectos, as?? como peque??as ara??as.        No hay informaci??n disponible.  No hay informaci??n disponible.  No hay informaci??n disponible.
72      Rana veneno fantasma    Epipedobates tricolor   Dendrobatidae   Anura  Anfibios HUMEDALES AFRICANOS: LA CUEVA DE KITUM  Insect??vora a base de peque??os insectos.        No hay informaci??n disponible.  No hay informaci??n disponible. No hay informaci??n disponible.
74      Fosa    Cryptoprocta ferox      Eupleridae\n Euplerinae Carnivora      Mammalia ISLA DE MADAGASCAR      Principal depredador de Madagascar, se alimenta de peque??os mam??feros, aves, reptiles, anfibios e insectos. Los l??mures constituyen m??s de la mitad de su dieta.        90 d??as.        2-4     20 a??os.
75      L??mur de cola anillada  Lemur catta     Lemuridae       Primates       Mammalia ISLA DE MADAGASCAR      Frutas, hojas, flores, hierbas y, ocasionalmente, insectos.     120-135 d??as.   1 individuo o gemelos.  Alrededor de 27 a??os en la naturaleza y 30 en cautividad.
76      L??mur frentirrojo       Eulemur rufus   Lemuridae       Primates       Mammalia ISLA DE MADAGASCAR      Altamente frug??voros, las frutas constituyen m??s del 50% de su dieta. Tambi??n se alimenta de hojas, flores, y ocasionalmente de insectos y otros artr??podos.    120 d??as.       1       En la naturaleza desconocida, en cautividad hasta 35 a??os.
77      L??mur mangosta  Eulemur mongoz  Lemuridae       Primates        MammaliaISLA DE MADAGASCAR      Se alimentan principalmente de frutos, hojas, flores y n??ctar.  128 d??as.       1       En la naturaleza desconocida, en cautividad hasta 30 a??os.
78      L??mur de vientre rojo   Eulemur rubriventer     Lemuridae       PrimatesMammalia        ISLA DE MADAGASCAR      Fruta, flores, n??ctar, hojas y ocasionalmente insectos. 127-130 d??as.   1       20-25 a??os.
80      Vari blanquinegro       Varecia variegata variegata     Lemuridae      Primates Mammalia        ISLA DE MADAGASCAR      Es el l??mur m??s frug??voro que existe, siendo su dieta principalmente a base de frutas, a??n as?? tambi??n se alimenta de hojas, n??ctar y semillas en funci??n de la estaci??n.       90-102 d??as.   2-6      19 a??os en la naturaleza, hasta 28-32 a??os en cautividad.
81      Vari rojo       Varecia rubra   Lemuridae       Primates        MammaliaISLA DE MADAGASCAR      Se alimentan principalmente de fruta, n??ctar y polen. Durante la estaci??n seca, cuando la comida escasea, se alimentan tambi??n de hojas, flores y semillas.     90-102 d??as.    3       18-20 a??os en naturaleza, hasta 25 a??os en cautividad.
5       Blesbok Damaliscus pygargus phillipsi   Bovidae\n Antilopinae   a      Mammalia SABANA AFRICANA Herb??vora a base principalmente de gram??neas del g??nero Themeda (en varias fases de crecimiento) y tambi??n de los g??neros Eragrostis y Chloromelas.     Alrededor de 240 d??as.  1       23 a??os.
6       Cebra de Grant  Equus burchelli boehmi  Equidae a       Mammalia       SABANA AFRICANA  Pasto de baja calidad, tallos duros y, en ocasiones, hojas o cortezas de ??rboles y arbustos, requieren de una gran cantidad de alimento por lo que no es raro que pasen en torno a 20 horas al d??a pastando.    360-370 d??as.  138-40 a??os.
9       Dam??n roquero   Procavia capensis       Procaviidae     a       MammaliaSABANA AFRICANA Incluye una gran variedad de hierbas y arbustos, prefieren los brotes, capullos, frutas y bayas, ocasionalmente tambi??n se alimentan de corteza de ??rbol.       De 212 a 240 d??as.      1-6     Alrededor de 12 a??os.
10      Dik-dik de Kirk Madoqua kirkii  Bovidae\n Antilopinae   a       MammaliaSABANA AFRICANA Herb??vora, a base de materia vegetal f??cilmente digerible y con poca cantidad de fibra. El 80% de su dieta consiste en hojas de ??rboles y arbustos, el 17% procede de pastos, y el resto de hierbas y juncos.   Alrededor de 170 d??as.  1       17 a??os.
11      Elefante africano de sabana     Loxodonta africana      Elephantidae   aMammalia        SABANA AFRICANA Herb??voros generalistas, se alimentan de una gran variedad de hierbas y material herb??ceo que incluye ra??ces, hojas, frutos, ramas, cortezas y semillas.        640-660 d??as.   1       50-70 a??os.
15      Facoquero       Phacochoerus africanus  Suidae  a       Mammalia       SABANA AFRICANA  Dieta omn??vora compuesta de hierbas, ra??ces, bayas, corteza y ocasionalmente de hongos, huevos y carro??a, as?? como peque??os mam??feros, reptiles y aves. El alimento ingerido var??a estacionalmente en funci??n de la disponibilidad, este oportunismo y la versatilidad de la dieta constituyen una excelente estrategia que garantiza su supervivencia. 170-175 d??as.   1-7     7-11 a??os.
16      Gacela Mhorr    Nanger dama mhorr       Bovidae\n Antilopinae   a      Mammalia SABANA AFRICANA Animal pastador, se alimenta principalmente de hojas de acacias, de duros y ??speros pastos, de matorrales y de granos de mijo.  Entre 174-202 d??as.     1       12 a??os en la naturaleza y hasta 19 en cautividad.
17      Gacela de Thomson       Eudorcas thomsonii      Bovidae\n Antilopinae  aMammalia        SABANA AFRICANA Herb??vora a base principalmente de pastos de peque??o tama??o, tambi??n se alimentan de ramitas, semillas y hojas de ??rboles, especialmente durante la estaci??n seca.      Alrededor de 180 d??as.  1       10 a??os.
19      Hiena manchada  Crocuta crocuta Hyaenidae\n Hyaeninae   a       MammaliaSABANA AFRICANA Diferentes especies de ant??lopes, cebras, b??falos, ??us, zorros, leones j??venes y en ocasiones carro??a.  117 d??as.       1-4, siendo la media 2.12 a??os.
21      Impala  Aepyceros melampus      Bovidae\n Antilopinae   a       MammaliaSABANA AFRICANA Pasta casi exclusivamente durante la estaci??n lluviosa, cuando llega la estaci??n seca el porcentaje de gram??neas disminuye hasta un 30% de su dieta y ramonea arbustos, herb??ceas, vainas y semillas.   Alrededor de 195-200 d??as.      1       13 a??os en la naturaleza y hasta 17 en cautividad.
23      Jirafa Baringo  Giraffa camelopardalis rothschildi\nGiraffa camelopardalis      Giraffidae      a       Mammalia        SABANA AFRICANA Hojas, ramas y flores principalmente de diferentes especies de acacia.  Alrededor de 450 d??as. 1De 10-15 a??os en la naturaleza y de 20-27 en cautividad.
24      Le??n africano   Panthera leo bleyenberghi\nPanthera leo Felidae\n Pantherinae   a       Mammalia        SABANA AFRICANA Carn??voros generalistas, aunque los ungulados de mediano y gran tama??o ocupan la mayor parte de su dieta, pueden alimentarse de una gran variedad de vertebrados, desde peque??os ratones hasta j??venes rinocerontes, hipop??tamos y elefantes, pasando por p??jaros, reptiles, peces e incluso insectos.  92-119 d??as.    1-4     12 a??os en la naturaleza, hasta 25 a??os en cautividad.
25      Mangosta enana  Helogale parvula undulata       Herpestidae\n Mungotinaea       Mammalia        SABANA AFRICANA Predominantemente insect??vora, especialmente a base de termitas y escarabajos, pero tambi??n ciempi??s, larvas de escarabajo y ocasionalmente peque??os vertebrados (peque??os mam??feros, geckos, serpientes y p??jaros).    55 d??as.        1-6     13 a??os en la naturaleza y hasta 18 a??os en cautividad.
26      Mangosta rayada Mungos mungo    Herpestidae\n Mungotinae        a      Mammalia SABANA AFRICANA Predominantemente insect??vora, especialmente a base de escarabajos y larvas de ciempi??s, y ocasionalmente peque??os vertebrados (incluyendo huevos, ratones, ratas, ranas, lagartos y serpientes).       60 d??as.       1-4      17 a??os.
28      Oricteropo      Orycteropus afer        Orycteropodidae a       MammaliaSABANA AFRICANA Hormigas, termitas y ocasionalmente larvas de insectos (principalmente escarabajos).    243 d??as.       1 y rara vez 2. 18 a??os.
31      Pit??n real      Python regius   Boidae  a       Reptilia        SABANA AFRICANA Se alimenta principalmente de roedores, tambi??n peque??os conejos y ocasionalmente de aves y reptiles.   44-54 d??as.     4-12    15-30 a??os en la naturaleza y por encima de 40 en cautividad.
32      Pit??n de Seba   Python sebae    Boidae  a       Reptilia        SABANA AFRICANA Se alimentan principalmente de vertebrados terrestres. Los individuos j??venes, se alimentan de peque??os mam??feros, especialmente ratas. Una vez son adultos, se alimentar??n de presas de mayor tama??o, como primates, cocodrilos, lagartos grandes, y ant??lopes 65-80 d??as.     20-50   20-30 a??os.
33      Puercoesp??n sudafricano Hystrix africaeaustralis        Hystricidae    aMammalia        SABANA AFRICANA Ra??ces, bulbos, tub??rculos y corteza de ??rboles. Ocasionalmente carro??a o esqueletos viejos, que roen en busca de sales minerales.      Alrededor de 94 d??as.   1-4     Hasta 15 a??os en la naturaleza y hasta 23 en cautividad.
34      Rata gambiana   Cricetomys gambianus    Nesomyidae      a       MammaliaSABANA AFRICANA Son omn??voras, se alimentan de una gran variedad de frutas, vegetales, nueces, ra??ces, tub??rculos, e incluso termitas o caracoles.      30-32 d??as.     1-5     5-7 a??os.
35      Rata topo desnuda       Heterocephalus glaber   Bathyergidae    a      Mammalia SABANA AFRICANA Se alimentan de ra??ces, bulbos y tub??rculos, que son accesibles bajo tierra. En ocasiones viajan grandes distancias para encontrar sus alimentos preferidos, suelen dejar partes de la planta intactas para que contin??en creciendo y puedan volver en futuras ocasiones. Una vez encontrada la comida vuelven al nido, donde la almacenan.     70 d??as.        7       25-30 a??os.
36      Rat??n espinoso  Acomys cahirinus        Muridae a       Mammalia       SABANA AFRICANA  Omn??voros y oportunistas, se alimentan de semillas, frutas, plantas secas, ara??as, peque??os insectos e incluso caracoles. En poblaciones que viven cerca de los humanos, se alimentan tambi??n de grano y comida almacenada.    35-42 d??as.      1-5     4 a??os.
37      Rat??n pigmeo africano   Mus minutoides  Muridae a       Mammalia       SABANA AFRICANA  Omn??voros y oportunistas, se alimentan de semillas, frutas, plantas secas, ara??as y peque??os insectos. En poblaciones que viven cerca de los humanos, se alimentan tambi??n de grano y comida almacenada.        20 d??as.       1-6      2 a??os.
40      Suricata        Suricata suricatta      Herpestidae\n Mungotinae       aMammalia        SABANA AFRICANA Insect??vora, especialmente escarabajos, ar??cnidos y larvas de ciempi??s, ocasionalmente tambi??n se alimentan de peque??os vertebrados (incluyendo lagartos y peque??as serpientes), huevos y fruta.        70-80 d??as.     3       10 a??os.
\.


--
-- Data for Name: habitat; Type: TABLE DATA; Schema: public; Owner: alan
--

COPY public.habitat (id, habitat, description) FROM stdin;
1       SABANA AFRICANA La sabana re??ne la mayor concentraci??n de grandes herb??voros del planeta y sus extensas planicies son el escenario de largas migraciones en busca de agua y alimento vinculadas al transcurrir de las dos estaciones de este bioma: la estaci??n seca y la estaci??n h??meda.
2       BOSQUE ECUATORIAL       Los bosques lluviosos primarios de ??frica ecuatorial albergan un gran n??mero de ecosistemas y h??bitats diferentes, pudiendo observar el contraste entre la vida en las b??vedas arb??reas y la bulliciosa actividad que tiene lugar en el suelo del bosque.
3       HUMEDALES AFRICANOS: LA CUEVA DE KITUM  La cueva de Kitum se adentra unos 200 metros en el interior del Monte Elgon, en el Parque Nacional del Monte Elgon, en Kenia. Ella y sus vecinas son las ??nicas cuevas conocidas formadas por rocas volc??nicas pirocl??sticas, cuya modificaci??n a lo largo del tiempo ha dado lugar a la formaci??n de sales minerales.
4       ISLA DE MADAGASCAR      La fauna y flora de esta isla del oc??ano ??ndico, separada del continente africano hace 160 millones de a??os, ha evolucionado aislada, de forma que el 80% de sus especies son end??micas, lo que implica que s??lo se encuentran en este punto del planeta.
\.


--
-- Name: animal_id_seq; Type: SEQUENCE SET; Schema: public; Owner: alan
--

SELECT pg_catalog.setval('public.animal_id_seq', 81, true);


--
-- Name: habitat_id_seq; Type: SEQUENCE SET; Schema: public; Owner: alan
--

SELECT pg_catalog.setval('public.habitat_id_seq', 4, true);


--
-- Name: animal animal_id; Type: CONSTRAINT; Schema: public; Owner: alan
--

ALTER TABLE ONLY public.animal
    ADD CONSTRAINT animal_id PRIMARY KEY (id);


--
-- Name: animal animal_name; Type: CONSTRAINT; Schema: public; Owner: alan
--

ALTER TABLE ONLY public.animal
    ADD CONSTRAINT animal_name UNIQUE (nombre);


--
-- Name: habitat habitat_habitat; Type: CONSTRAINT; Schema: public; Owner: alan
--

ALTER TABLE ONLY public.habitat
    ADD CONSTRAINT habitat_habitat UNIQUE (habitat);


--
-- Name: habitat habitat_id; Type: CONSTRAINT; Schema: public; Owner: alan
--

ALTER TABLE ONLY public.habitat
    ADD CONSTRAINT habitat_id PRIMARY KEY (id);


--
-- Name: animal animal_habitat_fkey; Type: FK CONSTRAINT; Schema: public; Owner: alan
--

ALTER TABLE ONLY public.animal
    ADD CONSTRAINT animal_habitat_fkey FOREIGN KEY (habitat) REFERENCES public.habitat(habitat);


--
-- PostgreSQL database dump complete
--

