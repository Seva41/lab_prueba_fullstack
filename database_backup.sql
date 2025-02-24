--
-- PostgreSQL database dump
--

-- Dumped from database version 17.2 (Debian 17.2-1.pgdg120+1)
-- Dumped by pg_dump version 17.2 (Ubuntu 17.2-1.pgdg22.04+1)

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET transaction_timeout = 0;
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
-- Name: card; Type: TABLE; Schema: public; Owner: ash
--

CREATE TABLE public.card (
    id text NOT NULL,
    name text NOT NULL,
    supertype text NOT NULL,
    subtypes text[],
    types text[],
    set_id text NOT NULL,
    number text NOT NULL,
    rarity text
);


ALTER TABLE public.card OWNER TO ash;

--
-- Name: image; Type: TABLE; Schema: public; Owner: ash
--

CREATE TABLE public.image (
    id bigint NOT NULL,
    card_id text NOT NULL,
    url text NOT NULL,
    type text NOT NULL
);


ALTER TABLE public.image OWNER TO ash;

--
-- Name: image_id_seq; Type: SEQUENCE; Schema: public; Owner: ash
--

ALTER TABLE public.image ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.image_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: market; Type: TABLE; Schema: public; Owner: ash
--

CREATE TABLE public.market (
    id bigint NOT NULL,
    card_id text NOT NULL,
    url text NOT NULL,
    updated_at date NOT NULL,
    market text NOT NULL
);


ALTER TABLE public.market OWNER TO ash;

--
-- Name: market_id_seq; Type: SEQUENCE; Schema: public; Owner: ash
--

ALTER TABLE public.market ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.market_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: set; Type: TABLE; Schema: public; Owner: ash
--

CREATE TABLE public.set (
    id text NOT NULL,
    name text NOT NULL,
    series text NOT NULL,
    printed_total integer,
    total integer,
    ptcgo_code text,
    release_date date,
    updated_at timestamp with time zone,
    symbol_url text,
    logo_url text
);


ALTER TABLE public.set OWNER TO ash;

--
-- Data for Name: card; Type: TABLE DATA; Schema: public; Owner: ash
--

COPY public.card (id, name, supertype, subtypes, types, set_id, number, rarity) FROM stdin;
sv8-1	Exeggcute	Pokémon	{Basic}	{Grass}	sv8	1	Common
sv8-2	Exeggcute	Pokémon	{Basic}	{Grass}	sv8	2	Common
sv8-3	Exeggutor	Pokémon	{"Stage 1"}	{Grass}	sv8	3	Uncommon
sv8-11	Zarude	Pokémon	{Basic}	{Grass}	sv8	11	Rare
sv8-14	Rabsca	Pokémon	{"Stage 1"}	{Grass}	sv8	14	Rare
sv8-16	Vulpix	Pokémon	{Basic}	{Fire}	sv8	16	Common
sv8-17	Ninetales	Pokémon	{"Stage 1"}	{Fire}	sv8	17	Uncommon
sv8-24	Larvesta	Pokémon	{Basic}	{Fire}	sv8	24	Common
sv8-27	Sizzlipede	Pokémon	{Basic}	{Fire}	sv8	27	Common
sv8-30	Crocalor	Pokémon	{"Stage 1"}	{Fire}	sv8	30	Common
sv8-31	Skeledirge	Pokémon	{"Stage 2"}	{Fire}	sv8	31	Rare
sv8-29	Fuecoco	Pokémon	{Basic}	{Fire}	sv8	29	Common
sv8-25	Volcarona	Pokémon	{"Stage 1"}	{Fire}	sv8	25	Common
sv8-4	Durant ex	Pokémon	{Basic,ex}	{Grass}	sv8	4	Double Rare
sv8-6	Spewpa	Pokémon	{"Stage 1"}	{Grass}	sv8	6	Common
sv8-5	Scatterbug	Pokémon	{Basic}	{Grass}	sv8	5	Common
sv8-8	Morelull	Pokémon	{Basic}	{Grass}	sv8	8	Common
sv8-9	Shiinotic	Pokémon	{"Stage 1"}	{Grass}	sv8	9	Uncommon
sv8-10	Dhelmise	Pokémon	{Basic}	{Grass}	sv8	10	Common
sv8-15	Wo-Chien	Pokémon	{Basic}	{Grass}	sv8	15	Uncommon
sv8-28	Centiskorch	Pokémon	{"Stage 1"}	{Fire}	sv8	28	Common
sv8-7	Vivillon	Pokémon	{"Stage 2"}	{Grass}	sv8	7	Uncommon
sv8-13	Rellor	Pokémon	{Basic}	{Grass}	sv8	13	Common
sv8-18	Paldean Tauros	Pokémon	{Basic}	{Fire}	sv8	18	Uncommon
sv8-19	Ho-Oh	Pokémon	{Basic}	{Fire}	sv8	19	Uncommon
sv8-21	Victini	Pokémon	{Basic}	{Fire}	sv8	21	Uncommon
sv8-23	Simisear	Pokémon	{"Stage 1"}	{Fire}	sv8	23	Common
sv8-20	Castform Sunny Form	Pokémon	{Basic}	{Fire}	sv8	20	Common
sv8-22	Pansear	Pokémon	{Basic}	{Fire}	sv8	22	Common
sv8-12	Capsakid	Pokémon	{Basic}	{Grass}	sv8	12	Common
sv8-26	Oricorio	Pokémon	{Basic}	{Fire}	sv8	26	Common
sv8-36	Ceruledge ex	Pokémon	{"Stage 1",Tera,ex}	{Fire}	sv8	36	Double Rare
sv8-38	Gouging Fire	Pokémon	{Basic,Ancient}	{Fire}	sv8	38	Rare
sv8-34	Armarouge	Pokémon	{"Stage 1"}	{Fire}	sv8	34	Uncommon
sv8-39	Paldean Tauros	Pokémon	{Basic}	{Water}	sv8	39	Uncommon
sv8-40	Mantine	Pokémon	{Basic}	{Water}	sv8	40	Common
sv8-43	Spheal	Pokémon	{Basic}	{Water}	sv8	43	Common
sv8-45	Walrein	Pokémon	{"Stage 2"}	{Water}	sv8	45	Uncommon
sv8-46	Shellos	Pokémon	{Basic}	{Water}	sv8	46	Common
sv8-32	Charcadet	Pokémon	{Basic}	{Fire}	sv8	32	Common
sv8-37	Scovillain ex	Pokémon	{"Stage 1",ex}	{Fire}	sv8	37	Double Rare
sv8-47	Cryogonal	Pokémon	{Basic}	{Water}	sv8	47	Common
sv8-42	Milotic ex	Pokémon	{"Stage 1",ex}	{Water}	sv8	42	Double Rare
sv8-44	Sealeo	Pokémon	{"Stage 1"}	{Water}	sv8	44	Common
sv8-33	Charcadet	Pokémon	{Basic}	{Fire}	sv8	33	Common
sv8-35	Ceruledge	Pokémon	{"Stage 1"}	{Fire}	sv8	35	Uncommon
sv8-41	Feebas	Pokémon	{Basic}	{Water}	sv8	41	Common
sv8-48	Black Kyurem ex	Pokémon	{Basic,ex}	{Water}	sv8	48	Double Rare
sv8-49	Bruxish	Pokémon	{Basic}	{Water}	sv8	49	Uncommon
sv8-52	Quaquaval	Pokémon	{"Stage 2"}	{Water}	sv8	52	Uncommon
sv8-51	Quaxwell	Pokémon	{"Stage 1"}	{Water}	sv8	51	Common
sv8-54	Cetitan	Pokémon	{"Stage 1"}	{Water}	sv8	54	Common
sv8-50	Quaxly	Pokémon	{Basic}	{Water}	sv8	50	Common
sv8-53	Cetoddle	Pokémon	{Basic}	{Water}	sv8	53	Common
sv8-57	Pikachu ex	Pokémon	{Basic,Tera,ex}	{Lightning}	sv8	57	Double Rare
sv8-56	Chien-Pao	Pokémon	{Basic}	{Water}	sv8	56	Rare
sv8-55	Iron Bundle	Pokémon	{Basic,Future}	{Water}	sv8	55	Uncommon
sv8-58	Magnemite	Pokémon	{Basic}	{Lightning}	sv8	58	Common
sv8-59	Magneton	Pokémon	{"Stage 1"}	{Lightning}	sv8	59	Uncommon
sv8-60	Magnezone	Pokémon	{"Stage 2"}	{Lightning}	sv8	60	Uncommon
sv8-61	Rotom	Pokémon	{Basic}	{Lightning}	sv8	61	Common
sv8-62	Blitzle	Pokémon	{Basic}	{Lightning}	sv8	62	Common
sv8-68	Kilowattrel ex	Pokémon	{"Stage 1",ex}	{Lightning}	sv8	68	Double Rare
sv8-71	Togetic	Pokémon	{"Stage 1"}	{Psychic}	sv8	71	Common
sv8-69	Miraidon	Pokémon	{Basic,Future}	{Lightning}	sv8	69	Uncommon
sv8-66	Wattrel	Pokémon	{Basic}	{Lightning}	sv8	66	Common
sv8-63	Zebstrika	Pokémon	{"Stage 1"}	{Lightning}	sv8	63	Common
sv8-67	Kilowattrel	Pokémon	{"Stage 1"}	{Lightning}	sv8	67	Uncommon
sv8-72	Togekiss	Pokémon	{"Stage 2"}	{Psychic}	sv8	72	Rare
sv8-70	Togepi	Pokémon	{Basic}	{Psychic}	sv8	70	Common
sv8-64	Stunfisk	Pokémon	{Basic}	{Lightning}	sv8	64	Common
sv8-65	Tapu Koko	Pokémon	{Basic}	{Lightning}	sv8	65	Rare
sv8-73	Marill	Pokémon	{Basic}	{Psychic}	sv8	73	Common
sv8-74	Azumarill	Pokémon	{"Stage 1"}	{Psychic}	sv8	74	Uncommon
sv8-75	Smoochum	Pokémon	{Basic}	{Psychic}	sv8	75	Common
sv8-76	Latias ex	Pokémon	{Basic,ex}	{Psychic}	sv8	76	Double Rare
sv8-77	Latios	Pokémon	{Basic}	{Psychic}	sv8	77	Uncommon
sv8-78	Uxie	Pokémon	{Basic}	{Psychic}	sv8	78	Common
sv8-79	Mesprit	Pokémon	{Basic}	{Psychic}	sv8	79	Common
sv8-80	Azelf	Pokémon	{Basic}	{Psychic}	sv8	80	Common
sv8-81	Sigilyph	Pokémon	{Basic}	{Psychic}	sv8	81	Common
sv8-82	Yamask	Pokémon	{Basic}	{Psychic}	sv8	82	Common
sv8-83	Cofagrigus	Pokémon	{"Stage 1"}	{Psychic}	sv8	83	Rare
sv8-84	Espurr	Pokémon	{Basic}	{Psychic}	sv8	84	Common
sv8-85	Meowstic	Pokémon	{"Stage 1"}	{Psychic}	sv8	85	Uncommon
sv8-86	Sylveon ex	Pokémon	{"Stage 1",Tera,ex}	{Psychic}	sv8	86	Double Rare
sv8-87	Dedenne	Pokémon	{Basic}	{Psychic}	sv8	87	Common
sv8-88	Xerneas	Pokémon	{Basic}	{Psychic}	sv8	88	Uncommon
sv8-89	Oricorio	Pokémon	{Basic}	{Psychic}	sv8	89	Common
sv8-90	Sandygast	Pokémon	{Basic}	{Psychic}	sv8	90	Common
sv8-91	Palossand ex	Pokémon	{"Stage 1",Tera,ex}	{Psychic}	sv8	91	Double Rare
sv8-92	Tapu Lele	Pokémon	{Basic}	{Psychic}	sv8	92	Rare
sv8-95	Espathra	Pokémon	{"Stage 1"}	{Psychic}	sv8	95	Uncommon
sv8-97	Gimmighoul	Pokémon	{Basic}	{Psychic}	sv8	97	Common
sv8-94	Flittle	Pokémon	{Basic}	{Psychic}	sv8	94	Common
sv8-96	Flutter Mane	Pokémon	{Basic,Ancient}	{Psychic}	sv8	96	Uncommon
sv8-99	Primeape	Pokémon	{"Stage 1"}	{Fighting}	sv8	99	Common
sv8-93	Indeedee	Pokémon	{Basic}	{Psychic}	sv8	93	Uncommon
sv8-98	Mankey	Pokémon	{Basic}	{Fighting}	sv8	98	Common
sv8-100	Annihilape	Pokémon	{"Stage 2"}	{Fighting}	sv8	100	Uncommon
sv8-101	Paldean Tauros	Pokémon	{Basic}	{Fighting}	sv8	101	Uncommon
sv8-102	Phanpy	Pokémon	{Basic}	{Fighting}	sv8	102	Common
sv8-103	Donphan	Pokémon	{"Stage 1"}	{Fighting}	sv8	103	Common
sv8-104	Trapinch	Pokémon	{Basic}	{Fighting}	sv8	104	Common
sv8-105	Vibrava	Pokémon	{"Stage 1"}	{Fighting}	sv8	105	Common
sv8-106	Flygon ex	Pokémon	{"Stage 2",Tera,ex}	{Fighting}	sv8	106	Double Rare
sv8-107	Gastrodon	Pokémon	{"Stage 1"}	{Fighting}	sv8	107	Rare
sv8-108	Drilbur	Pokémon	{Basic}	{Fighting}	sv8	108	Common
sv8-109	Excadrill	Pokémon	{"Stage 1"}	{Fighting}	sv8	109	Common
sv8-110	Landorus	Pokémon	{Basic}	{Fighting}	sv8	110	Rare
sv8-111	Passimian	Pokémon	{Basic}	{Fighting}	sv8	111	Uncommon
sv8-112	Clobbopus	Pokémon	{Basic}	{Fighting}	sv8	112	Common
sv8-113	Grapploct	Pokémon	{"Stage 1"}	{Fighting}	sv8	113	Common
sv8-114	Glimmet	Pokémon	{Basic}	{Fighting}	sv8	114	Common
sv8-115	Glimmora	Pokémon	{"Stage 1"}	{Fighting}	sv8	115	Common
sv8-117	Deino	Pokémon	{Basic}	{Darkness}	sv8	117	Common
sv8-120	Shroodle	Pokémon	{Basic}	{Darkness}	sv8	120	Common
sv8-119	Hydreigon ex	Pokémon	{"Stage 2",Tera,ex}	{Darkness}	sv8	119	Double Rare
sv8-121	Grafaiai	Pokémon	{"Stage 1"}	{Darkness}	sv8	121	Uncommon
sv8-118	Zweilous	Pokémon	{"Stage 1"}	{Darkness}	sv8	118	Common
sv8-116	Koraidon	Pokémon	{Basic,Ancient}	{Fighting}	sv8	116	Uncommon
sv8-122	Alolan Diglett	Pokémon	{Basic}	{Metal}	sv8	122	Common
sv8-123	Alolan Dugtrio	Pokémon	{"Stage 1"}	{Metal}	sv8	123	Uncommon
sv8-124	Skarmory	Pokémon	{Basic}	{Metal}	sv8	124	Common
sv8-125	Registeel	Pokémon	{Basic}	{Metal}	sv8	125	Uncommon
sv8-126	Bronzor	Pokémon	{Basic}	{Metal}	sv8	126	Common
sv8-127	Bronzong	Pokémon	{"Stage 1"}	{Metal}	sv8	127	Common
sv8-128	Klefki	Pokémon	{Basic}	{Metal}	sv8	128	Common
sv8-129	Duraludon	Pokémon	{Basic}	{Metal}	sv8	129	Common
sv8-130	Archaludon ex	Pokémon	{"Stage 1",ex}	{Metal}	sv8	130	Double Rare
sv8-131	Gholdengo	Pokémon	{"Stage 1"}	{Metal}	sv8	131	Uncommon
sv8-132	Iron Crown	Pokémon	{Basic,Future}	{Metal}	sv8	132	Rare
sv8-134	Altaria	Pokémon	{"Stage 1"}	{Dragon}	sv8	134	Uncommon
sv8-139	Flapple	Pokémon	{"Stage 1"}	{Dragon}	sv8	139	Uncommon
sv8-148	Swablu	Pokémon	{Basic}	{Colorless}	sv8	148	Common
sv8-149	Zangoose	Pokémon	{Basic}	{Colorless}	sv8	149	Common
sv8-150	Kecleon	Pokémon	{Basic}	{Colorless}	sv8	150	Common
sv8-133	Alolan Exeggutor ex	Pokémon	{"Stage 1",Tera,ex}	{Dragon}	sv8	133	Double Rare
sv8-140	Appletun	Pokémon	{"Stage 1"}	{Dragon}	sv8	140	Uncommon
sv8-142	Tatsugiri ex	Pokémon	{Basic,Tera,ex}	{Dragon}	sv8	142	Double Rare
sv8-146	Vigoroth	Pokémon	{"Stage 1"}	{Colorless}	sv8	146	Common
sv8-141	Eternatus	Pokémon	{Basic}	{Dragon}	sv8	141	Rare
sv8-135	Dialga	Pokémon	{Basic}	{Dragon}	sv8	135	Rare
sv8-147	Slaking ex	Pokémon	{"Stage 2",ex}	{Colorless}	sv8	147	Double Rare
sv8-136	Palkia	Pokémon	{Basic}	{Dragon}	sv8	136	Rare
sv8-138	Applin	Pokémon	{Basic}	{Dragon}	sv8	138	Common
sv8-143	Eevee	Pokémon	{Basic}	{Colorless}	sv8	143	Common
sv8-144	Snorlax	Pokémon	{Basic}	{Colorless}	sv8	144	Common
sv8-137	Turtonator	Pokémon	{Basic}	{Dragon}	sv8	137	Uncommon
sv8-145	Slakoth	Pokémon	{Basic}	{Colorless}	sv8	145	Common
sv8-155	Heliolisk	Pokémon	{"Stage 1"}	{Colorless}	sv8	155	Common
sv8-153	Braviary	Pokémon	{"Stage 1"}	{Colorless}	sv8	153	Uncommon
sv8-163	Babiri Berry	Trainer	{"Pokémon Tool"}	{}	sv8	163	Uncommon
sv8-159	Cyclizar ex	Pokémon	{Basic,Tera,ex}	{Colorless}	sv8	159	Double Rare
sv8-168	Colbur Berry	Trainer	{"Pokémon Tool"}	{}	sv8	168	Uncommon
sv8-157	Tandemaus	Pokémon	{Basic}	{Colorless}	sv8	157	Common
sv8-162	Amulet of Hope	Trainer	{"Pokémon Tool","ACE SPEC"}	{}	sv8	162	ACE SPEC Rare
sv8-166	Chill Teaser Toy	Trainer	{Item}	{}	sv8	166	Uncommon
sv8-151	Bouffalant	Pokémon	{Basic}	{Colorless}	sv8	151	Common
sv8-165	Call Bell	Trainer	{Item}	{}	sv8	165	Uncommon
sv8-154	Helioptile	Pokémon	{Basic}	{Colorless}	sv8	154	Common
sv8-152	Rufflet	Pokémon	{Basic}	{Colorless}	sv8	152	Common
sv8-158	Maushold	Pokémon	{"Stage 1"}	{Colorless}	sv8	158	Uncommon
sv8-160	Flamigo ex	Pokémon	{Basic,ex}	{Colorless}	sv8	160	Double Rare
sv8-167	Clemont's Quick Wit	Trainer	{Supporter}	{}	sv8	167	Uncommon
sv8-156	Oranguru	Pokémon	{Basic}	{Colorless}	sv8	156	Common
sv8-161	Terapagos	Pokémon	{Basic}	{Colorless}	sv8	161	Rare
sv8-164	Brilliant Blender	Trainer	{Item,"ACE SPEC"}	{}	sv8	164	ACE SPEC Rare
sv8-169	Counter Gain	Trainer	{"Pokémon Tool"}	{}	sv8	169	Uncommon
sv8-170	Cyrano	Trainer	{Supporter}	{}	sv8	170	Uncommon
sv8-180	Lively Stadium	Trainer	{Stadium}	{}	sv8	180	Uncommon
sv8-177	Gravity Mountain	Trainer	{Stadium}	{}	sv8	177	Uncommon
sv8-172	Dragon Elixir	Trainer	{Item}	{}	sv8	172	Uncommon
sv8-171	Deduction Kit	Trainer	{Item}	{}	sv8	171	Uncommon
sv8-178	Jasmine's Gaze	Trainer	{Supporter}	{}	sv8	178	Uncommon
sv8-179	Lisia's Appeal	Trainer	{Supporter}	{}	sv8	179	Uncommon
sv8-173	Drasna	Trainer	{Supporter}	{}	sv8	173	Common
sv8-174	Drayton	Trainer	{Supporter}	{}	sv8	174	Uncommon
sv8-175	Dusk Ball	Trainer	{Item}	{}	sv8	175	Uncommon
sv8-176	Energy Search Pro	Trainer	{Item,"ACE SPEC"}	{}	sv8	176	ACE SPEC Rare
sv8-181	Meddling Memo	Trainer	{Item}	{}	sv8	181	Uncommon
sv8-182	Megaton Blower	Trainer	{Item,"ACE SPEC"}	{}	sv8	182	ACE SPEC Rare
sv8-194	Shiinotic	Pokémon	{"Stage 1"}	{Grass}	sv8	194	Illustration Rare
sv8-187	Surfer	Trainer	{Supporter}	{}	sv8	187	Uncommon
sv8-188	Technical Machine: Fluorite	Trainer	{"Pokémon Tool"}	{}	sv8	188	Uncommon
sv8-186	Scramble Switch	Trainer	{Item,"ACE SPEC"}	{}	sv8	186	ACE SPEC Rare
sv8-191	Enriching Energy	Energy	{Special,"ACE SPEC"}	{}	sv8	191	ACE SPEC Rare
sv8-195	Castform Sunny Form	Pokémon	{Basic}	{Fire}	sv8	195	Illustration Rare
sv8-183	Miracle Headset	Trainer	{Item,"ACE SPEC"}	{}	sv8	183	ACE SPEC Rare
sv8-185	Precious Trolley	Trainer	{Item,"ACE SPEC"}	{}	sv8	185	ACE SPEC Rare
sv8-189	Tera Orb	Trainer	{Item}	{}	sv8	189	Uncommon
sv8-184	Passho Berry	Trainer	{"Pokémon Tool"}	{}	sv8	184	Uncommon
sv8-190	Tyme	Trainer	{Supporter}	{}	sv8	190	Uncommon
sv8-192	Exeggcute	Pokémon	{Basic}	{Grass}	sv8	192	Illustration Rare
sv8-193	Vivillon	Pokémon	{"Stage 2"}	{Grass}	sv8	193	Illustration Rare
sv8-199	Spheal	Pokémon	{Basic}	{Water}	sv8	199	Illustration Rare
sv8-201	Cetitan	Pokémon	{"Stage 1"}	{Water}	sv8	201	Illustration Rare
sv8-206	Vibrava	Pokémon	{"Stage 1"}	{Fighting}	sv8	206	Illustration Rare
sv8-209	Skarmory	Pokémon	{Basic}	{Metal}	sv8	209	Illustration Rare
sv8-203	Latios	Pokémon	{Basic}	{Psychic}	sv8	203	Illustration Rare
sv8-212	Slakoth	Pokémon	{Basic}	{Colorless}	sv8	212	Illustration Rare
sv8-205	Phanpy	Pokémon	{Basic}	{Fighting}	sv8	205	Illustration Rare
sv8-204	Mesprit	Pokémon	{Basic}	{Psychic}	sv8	204	Illustration Rare
sv8-213	Kecleon	Pokémon	{Basic}	{Colorless}	sv8	213	Illustration Rare
sv8-207	Clobbopus	Pokémon	{Basic}	{Fighting}	sv8	207	Illustration Rare
sv8-208	Alolan Dugtrio	Pokémon	{"Stage 1"}	{Metal}	sv8	208	Illustration Rare
sv8-197	Ceruledge	Pokémon	{"Stage 1"}	{Fire}	sv8	197	Illustration Rare
sv8-196	Larvesta	Pokémon	{Basic}	{Fire}	sv8	196	Illustration Rare
sv8-198	Feebas	Pokémon	{Basic}	{Water}	sv8	198	Illustration Rare
sv8-200	Bruxish	Pokémon	{Basic}	{Water}	sv8	200	Illustration Rare
sv8-202	Stunfisk	Pokémon	{Basic}	{Lightning}	sv8	202	Illustration Rare
sv8-210	Flapple	Pokémon	{"Stage 1"}	{Dragon}	sv8	210	Illustration Rare
sv8-211	Appletun	Pokémon	{"Stage 1"}	{Dragon}	sv8	211	Illustration Rare
sv8-214	Braviary	Pokémon	{"Stage 1"}	{Colorless}	sv8	214	Illustration Rare
sv8-215	Durant ex	Pokémon	{Basic,ex}	{Grass}	sv8	215	Ultra Rare
sv8-220	Latias ex	Pokémon	{Basic,ex}	{Psychic}	sv8	220	Ultra Rare
sv8-216	Scovillain ex	Pokémon	{"Stage 1",ex}	{Fire}	sv8	216	Ultra Rare
sv8-222	Flygon ex	Pokémon	{"Stage 2",Tera,ex}	{Fighting}	sv8	222	Ultra Rare
sv8-223	Hydreigon ex	Pokémon	{"Stage 2",Tera,ex}	{Darkness}	sv8	223	Ultra Rare
sv8-217	Milotic ex	Pokémon	{"Stage 1",ex}	{Water}	sv8	217	Ultra Rare
sv8-221	Palossand ex	Pokémon	{"Stage 1",Tera,ex}	{Psychic}	sv8	221	Ultra Rare
sv8-218	Black Kyurem ex	Pokémon	{Basic,ex}	{Water}	sv8	218	Ultra Rare
sv8-219	Pikachu ex	Pokémon	{Basic,Tera,ex}	{Lightning}	sv8	219	Ultra Rare
sv8-225	Alolan Exeggutor ex	Pokémon	{"Stage 1",Tera,ex}	{Dragon}	sv8	225	Ultra Rare
sv8-224	Archaludon ex	Pokémon	{"Stage 1",ex}	{Metal}	sv8	224	Ultra Rare
sv8-226	Tatsugiri ex	Pokémon	{Basic,Tera,ex}	{Dragon}	sv8	226	Ultra Rare
sv8-230	Cyrano	Trainer	{Supporter}	{}	sv8	230	Ultra Rare
sv8-232	Drayton	Trainer	{Supporter}	{}	sv8	232	Ultra Rare
sv8-234	Lisia's Appeal	Trainer	{Supporter}	{}	sv8	234	Ultra Rare
sv8-238	Pikachu ex	Pokémon	{Basic,Tera,ex}	{Lightning}	sv8	238	Special Illustration Rare
sv8-236	Durant ex	Pokémon	{Basic,ex}	{Grass}	sv8	236	Special Illustration Rare
sv8-237	Milotic ex	Pokémon	{"Stage 1",ex}	{Water}	sv8	237	Special Illustration Rare
sv8-231	Drasna	Trainer	{Supporter}	{}	sv8	231	Ultra Rare
sv8-227	Slaking ex	Pokémon	{"Stage 2",ex}	{Colorless}	sv8	227	Ultra Rare
sv8-228	Cyclizar ex	Pokémon	{Basic,Tera,ex}	{Colorless}	sv8	228	Ultra Rare
sv8-229	Clemont's Quick Wit	Trainer	{Supporter}	{}	sv8	229	Ultra Rare
sv8-233	Jasmine's Gaze	Trainer	{Supporter}	{}	sv8	233	Ultra Rare
sv8-235	Surfer	Trainer	{Supporter}	{}	sv8	235	Ultra Rare
sv8-239	Latias ex	Pokémon	{Basic,ex}	{Psychic}	sv8	239	Special Illustration Rare
sv8-240	Hydreigon ex	Pokémon	{"Stage 2",Tera,ex}	{Darkness}	sv8	240	Special Illustration Rare
sv8-241	Archaludon ex	Pokémon	{"Stage 1",ex}	{Metal}	sv8	241	Special Illustration Rare
sv8-245	Jasmine's Gaze	Trainer	{Supporter}	{}	sv8	245	Special Illustration Rare
sv8-244	Drayton	Trainer	{Supporter}	{}	sv8	244	Special Illustration Rare
sv8-247	Pikachu ex	Pokémon	{Basic,Tera,ex}	{Lightning}	sv8	247	Hyper Rare
sv8-249	Counter Gain	Trainer	{"Pokémon Tool"}	{}	sv8	249	Hyper Rare
sv8-242	Alolan Exeggutor ex	Pokémon	{"Stage 1",Tera,ex}	{Dragon}	sv8	242	Special Illustration Rare
sv8-243	Clemont's Quick Wit	Trainer	{Supporter}	{}	sv8	243	Special Illustration Rare
sv8-246	Lisia's Appeal	Trainer	{Supporter}	{}	sv8	246	Special Illustration Rare
sv8-248	Alolan Exeggutor ex	Pokémon	{"Stage 1",Tera,ex}	{Dragon}	sv8	248	Hyper Rare
sv8-250	Gravity Mountain	Trainer	{Stadium}	{}	sv8	250	Hyper Rare
sve-1	Basic Grass Energy	Energy	{Basic}	{}	sve	1	Common
sve-2	Basic Fire Energy	Energy	{Basic}	{}	sve	2	Common
sve-3	Basic Water Energy	Energy	{Basic}	{}	sve	3	Common
sve-4	Basic Lightning Energy	Energy	{Basic}	{}	sve	4	Common
sve-5	Basic Psychic Energy	Energy	{Basic}	{}	sve	5	Common
sve-6	Basic Fighting Energy	Energy	{Basic}	{}	sve	6	Common
sve-7	Basic Darkness Energy	Energy	{Basic}	{}	sve	7	Common
sve-8	Basic Metal Energy	Energy	{Basic}	{}	sve	8	Common
sve-9	Basic Grass Energy	Energy	{Basic}	{Grass}	sve	9	
sve-10	Basic Fire Energy	Energy	{Basic}	{Fire}	sve	10	
sve-11	Basic Water Energy	Energy	{Basic}	{Water}	sve	11	
sve-12	Basic Lightning Energy	Energy	{Basic}	{Lightning}	sve	12	
sve-13	Basic Psychic Energy	Energy	{Basic}	{Psychic}	sve	13	
sve-14	Basic Fighting Energy	Energy	{Basic}	{Fighting}	sve	14	
sve-15	Basic Darkness Energy	Energy	{Basic}	{Darkness}	sve	15	
sve-16	Basic Metal Energy	Energy	{Basic}	{Metal}	sve	16	
sv3-1	Oddish	Pokémon	{Basic}	{Grass}	sv3	1	Common
sv3-2	Gloom	Pokémon	{"Stage 1"}	{Grass}	sv3	2	Common
sv3-3	Bellossom	Pokémon	{"Stage 2"}	{Grass}	sv3	3	Uncommon
sv3-4	Scyther	Pokémon	{Basic}	{Grass}	sv3	4	Common
sv3-5	Shuckle	Pokémon	{Basic}	{Grass}	sv3	5	Common
sv3-6	Surskit	Pokémon	{Basic}	{Grass}	sv3	6	Common
sv3-7	Masquerain	Pokémon	{"Stage 1"}	{Grass}	sv3	7	Uncommon
sv3-8	Combee	Pokémon	{Basic}	{Grass}	sv3	8	Common
sv3-9	Foongus	Pokémon	{Basic}	{Grass}	sv3	9	Common
sv3-10	Amoonguss	Pokémon	{"Stage 1"}	{Grass}	sv3	10	Uncommon
sv3-11	Phantump	Pokémon	{Basic}	{Grass}	sv3	11	Common
sv3-12	Trevenant	Pokémon	{"Stage 1"}	{Grass}	sv3	12	Uncommon
sv3-13	Rowlet	Pokémon	{Basic}	{Grass}	sv3	13	Common
sv3-14	Dartrix	Pokémon	{"Stage 1"}	{Grass}	sv3	14	Uncommon
sv3-15	Decidueye ex	Pokémon	{"Stage 2",ex}	{Grass}	sv3	15	Double Rare
sv3-16	Bounsweet	Pokémon	{Basic}	{Grass}	sv3	16	Common
sv3-17	Steenee	Pokémon	{"Stage 1"}	{Grass}	sv3	17	Common
sv3-18	Tsareena	Pokémon	{"Stage 2"}	{Grass}	sv3	18	Uncommon
sv3-19	Smoliv	Pokémon	{Basic}	{Grass}	sv3	19	Common
sv3-20	Dolliv	Pokémon	{"Stage 1"}	{Grass}	sv3	20	Common
sv3-21	Arboliva	Pokémon	{"Stage 2"}	{Grass}	sv3	21	Uncommon
sv3-80	Cleffa	Pokémon	{Basic}	{Psychic}	sv3	80	Common
sv3-22	Toedscruel ex	Pokémon	{"Stage 1",ex}	{Grass}	sv3	22	Double Rare
sv3-23	Capsakid	Pokémon	{Basic}	{Grass}	sv3	23	Common
sv3-24	Capsakid	Pokémon	{Basic}	{Grass}	sv3	24	Common
sv3-25	Scovillain	Pokémon	{"Stage 1"}	{Grass}	sv3	25	Rare
sv3-26	Charmander	Pokémon	{Basic}	{Fire}	sv3	26	Common
sv3-27	Charmeleon	Pokémon	{"Stage 1"}	{Fire}	sv3	27	Uncommon
sv3-28	Vulpix	Pokémon	{Basic}	{Fire}	sv3	28	Common
sv3-29	Ninetales	Pokémon	{"Stage 1"}	{Fire}	sv3	29	Uncommon
sv3-30	Entei	Pokémon	{Basic}	{Fire}	sv3	30	Rare
sv3-31	Numel	Pokémon	{Basic}	{Fire}	sv3	31	Common
sv3-32	Camerupt	Pokémon	{"Stage 1"}	{Fire}	sv3	32	Uncommon
sv3-33	Victini ex	Pokémon	{Basic,ex}	{Fire}	sv3	33	Double Rare
sv3-34	Darumaka	Pokémon	{Basic}	{Fire}	sv3	34	Common
sv3-35	Darmanitan	Pokémon	{"Stage 1"}	{Fire}	sv3	35	Uncommon
sv3-36	Litwick	Pokémon	{Basic}	{Fire}	sv3	36	Common
sv3-37	Lampent	Pokémon	{"Stage 1"}	{Fire}	sv3	37	Common
sv3-38	Chandelure	Pokémon	{"Stage 2"}	{Fire}	sv3	38	Uncommon
sv3-39	Heatmor	Pokémon	{Basic}	{Fire}	sv3	39	Common
sv3-40	Larvesta	Pokémon	{Basic}	{Fire}	sv3	40	Common
sv3-41	Volcarona	Pokémon	{"Stage 1"}	{Fire}	sv3	41	Uncommon
sv3-42	Eiscue ex	Pokémon	{Basic,ex,Tera}	{Fire}	sv3	42	Double Rare
sv3-43	Charcadet	Pokémon	{Basic}	{Fire}	sv3	43	Common
sv3-44	Armarouge	Pokémon	{"Stage 1"}	{Fire}	sv3	44	Uncommon
sv3-45	Lapras	Pokémon	{Basic}	{Water}	sv3	45	Uncommon
sv3-46	Carvanha	Pokémon	{Basic}	{Water}	sv3	46	Common
sv3-47	Sharpedo	Pokémon	{"Stage 1"}	{Water}	sv3	47	Uncommon
sv3-48	Buizel	Pokémon	{Basic}	{Water}	sv3	48	Common
sv3-49	Floatzel	Pokémon	{"Stage 1"}	{Water}	sv3	49	Uncommon
sv3-50	Tympole	Pokémon	{Basic}	{Water}	sv3	50	Common
sv3-51	Palpitoad	Pokémon	{"Stage 1"}	{Water}	sv3	51	Common
sv3-52	Seismitoad	Pokémon	{"Stage 2"}	{Water}	sv3	52	Uncommon
sv3-53	Cubchoo	Pokémon	{Basic}	{Water}	sv3	53	Common
sv3-54	Beartic	Pokémon	{"Stage 1"}	{Water}	sv3	54	Uncommon
sv3-55	Cryogonal	Pokémon	{Basic}	{Water}	sv3	55	Common
sv3-56	Froakie	Pokémon	{Basic}	{Water}	sv3	56	Common
sv3-57	Frogadier	Pokémon	{"Stage 1"}	{Water}	sv3	57	Uncommon
sv3-58	Wiglett	Pokémon	{Basic}	{Water}	sv3	58	Common
sv3-59	Wugtrio	Pokémon	{"Stage 1"}	{Water}	sv3	59	Uncommon
sv3-60	Finizen	Pokémon	{Basic}	{Water}	sv3	60	Common
sv3-61	Finizen	Pokémon	{Basic}	{Water}	sv3	61	Common
sv3-62	Palafin	Pokémon	{"Stage 1"}	{Water}	sv3	62	Rare
sv3-63	Magnemite	Pokémon	{Basic}	{Lightning}	sv3	63	Common
sv3-64	Magneton	Pokémon	{"Stage 1"}	{Lightning}	sv3	64	Common
sv3-65	Magnezone	Pokémon	{"Stage 2"}	{Lightning}	sv3	65	Uncommon
sv3-66	Tyranitar ex	Pokémon	{"Stage 2",ex,Tera}	{Lightning}	sv3	66	Double Rare
sv3-67	Tynamo	Pokémon	{Basic}	{Lightning}	sv3	67	Common
sv3-68	Eelektrik	Pokémon	{"Stage 1"}	{Lightning}	sv3	68	Common
sv3-69	Eelektross	Pokémon	{"Stage 2"}	{Lightning}	sv3	69	Uncommon
sv3-70	Thundurus	Pokémon	{Basic}	{Lightning}	sv3	70	Rare
sv3-71	Toxel	Pokémon	{Basic}	{Lightning}	sv3	71	Common
sv3-72	Toxtricity	Pokémon	{"Stage 1"}	{Lightning}	sv3	72	Rare
sv3-73	Pawmot ex	Pokémon	{"Stage 2",ex}	{Lightning}	sv3	73	Double Rare
sv3-74	Tadbulb	Pokémon	{Basic}	{Lightning}	sv3	74	Common
sv3-75	Tadbulb	Pokémon	{Basic}	{Lightning}	sv3	75	Common
sv3-76	Tadbulb	Pokémon	{Basic}	{Lightning}	sv3	76	Common
sv3-77	Bellibolt	Pokémon	{"Stage 1"}	{Lightning}	sv3	77	Uncommon
sv3-78	Bellibolt	Pokémon	{"Stage 1"}	{Lightning}	sv3	78	Uncommon
sv3-79	Miraidon ex	Pokémon	{Basic,ex}	{Lightning}	sv3	79	Double Rare
sv3-81	Clefairy	Pokémon	{Basic}	{Psychic}	sv3	81	Common
sv3-82	Clefable ex	Pokémon	{"Stage 1",ex}	{Psychic}	sv3	82	Double Rare
sv3-83	Togepi	Pokémon	{Basic}	{Psychic}	sv3	83	Common
sv3-84	Togetic	Pokémon	{"Stage 1"}	{Psychic}	sv3	84	Uncommon
sv3-85	Togekiss	Pokémon	{"Stage 2"}	{Psychic}	sv3	85	Rare
sv3-86	Espeon	Pokémon	{"Stage 1"}	{Psychic}	sv3	86	Uncommon
sv3-87	Snubbull	Pokémon	{Basic}	{Psychic}	sv3	87	Common
sv3-88	Granbull	Pokémon	{"Stage 1"}	{Psychic}	sv3	88	Uncommon
sv3-89	Mawile	Pokémon	{Basic}	{Psychic}	sv3	89	Common
sv3-90	Spoink	Pokémon	{Basic}	{Psychic}	sv3	90	Common
sv3-91	Grumpig	Pokémon	{"Stage 1"}	{Psychic}	sv3	91	Uncommon
sv3-92	Lunatone	Pokémon	{Basic}	{Psychic}	sv3	92	Uncommon
sv3-93	Solrock	Pokémon	{Basic}	{Psychic}	sv3	93	Uncommon
sv3-94	Baltoy	Pokémon	{Basic}	{Psychic}	sv3	94	Common
sv3-95	Claydol	Pokémon	{"Stage 1"}	{Psychic}	sv3	95	Rare
sv3-96	Vespiquen ex	Pokémon	{"Stage 1",ex,Tera}	{Psychic}	sv3	96	Double Rare
sv3-97	Sinistea	Pokémon	{Basic}	{Psychic}	sv3	97	Common
sv3-98	Polteageist	Pokémon	{"Stage 1"}	{Psychic}	sv3	98	Uncommon
sv3-99	Greavard	Pokémon	{Basic}	{Psychic}	sv3	99	Common
sv3-100	Greavard	Pokémon	{Basic}	{Psychic}	sv3	100	Common
sv3-101	Houndstone	Pokémon	{"Stage 1"}	{Psychic}	sv3	101	Uncommon
sv3-102	Houndstone ex	Pokémon	{"Stage 1",ex}	{Psychic}	sv3	102	Double Rare
sv3-103	Diglett	Pokémon	{Basic}	{Fighting}	sv3	103	Common
sv3-104	Dugtrio	Pokémon	{"Stage 1"}	{Fighting}	sv3	104	Uncommon
sv3-105	Larvitar	Pokémon	{Basic}	{Fighting}	sv3	105	Common
sv3-106	Pupitar	Pokémon	{"Stage 1"}	{Fighting}	sv3	106	Uncommon
sv3-107	Nosepass	Pokémon	{Basic}	{Fighting}	sv3	107	Common
sv3-108	Barboach	Pokémon	{Basic}	{Fighting}	sv3	108	Common
sv3-109	Whiscash	Pokémon	{"Stage 1"}	{Fighting}	sv3	109	Uncommon
sv3-110	Bonsly	Pokémon	{Basic}	{Fighting}	sv3	110	Common
sv3-111	Drilbur	Pokémon	{Basic}	{Fighting}	sv3	111	Common
sv3-112	Stunfisk	Pokémon	{Basic}	{Fighting}	sv3	112	Uncommon
sv3-113	Diggersby	Pokémon	{"Stage 1"}	{Fighting}	sv3	113	Uncommon
sv3-114	Crabrawler	Pokémon	{Basic}	{Fighting}	sv3	114	Common
sv3-115	Crabominable	Pokémon	{"Stage 1"}	{Fighting}	sv3	115	Uncommon
sv3-116	Rockruff	Pokémon	{Basic}	{Fighting}	sv3	116	Common
sv3-117	Lycanroc	Pokémon	{"Stage 1"}	{Fighting}	sv3	117	Uncommon
sv3-118	Toedscool	Pokémon	{Basic}	{Fighting}	sv3	118	Common
sv3-119	Toedscruel	Pokémon	{"Stage 1"}	{Fighting}	sv3	119	Uncommon
sv3-120	Klawf ex	Pokémon	{Basic,ex}	{Fighting}	sv3	120	Double Rare
sv3-121	Glimmet	Pokémon	{Basic}	{Fighting}	sv3	121	Common
sv3-122	Glimmet	Pokémon	{Basic}	{Fighting}	sv3	122	Common
sv3-123	Glimmora ex	Pokémon	{"Stage 1",ex}	{Fighting}	sv3	123	Double Rare
sv3-124	Koraidon ex	Pokémon	{Basic,ex}	{Fighting}	sv3	124	Double Rare
sv3-125	Charizard ex	Pokémon	{"Stage 2",ex,Tera}	{Darkness}	sv3	125	Double Rare
sv3-126	Paldean Wooper	Pokémon	{Basic}	{Darkness}	sv3	126	Common
sv3-127	Paldean Wooper	Pokémon	{Basic}	{Darkness}	sv3	127	Common
sv3-128	Paldean Clodsire	Pokémon	{"Stage 1"}	{Darkness}	sv3	128	Uncommon
sv3-129	Paldean Clodsire	Pokémon	{"Stage 1"}	{Darkness}	sv3	129	Uncommon
sv3-130	Umbreon	Pokémon	{"Stage 1"}	{Darkness}	sv3	130	Uncommon
sv3-131	Houndour	Pokémon	{Basic}	{Darkness}	sv3	131	Common
sv3-132	Houndour	Pokémon	{Basic}	{Darkness}	sv3	132	Common
sv3-133	Houndoom	Pokémon	{"Stage 1"}	{Darkness}	sv3	133	Uncommon
sv3-134	Houndoom ex	Pokémon	{"Stage 1",ex}	{Darkness}	sv3	134	Double Rare
sv3-135	Absol ex	Pokémon	{Basic,ex}	{Darkness}	sv3	135	Double Rare
sv3-136	Darkrai	Pokémon	{Basic}	{Darkness}	sv3	136	Rare
sv3-137	Inkay	Pokémon	{Basic}	{Darkness}	sv3	137	Common
sv3-138	Malamar	Pokémon	{"Stage 1"}	{Darkness}	sv3	138	Uncommon
sv3-139	Salandit	Pokémon	{Basic}	{Darkness}	sv3	139	Common
sv3-140	Salazzle	Pokémon	{"Stage 1"}	{Darkness}	sv3	140	Uncommon
sv3-141	Scizor	Pokémon	{"Stage 1"}	{Metal}	sv3	141	Rare
sv3-142	Skarmory	Pokémon	{Basic}	{Metal}	sv3	142	Uncommon
sv3-143	Mawile	Pokémon	{Basic}	{Metal}	sv3	143	Uncommon
sv3-144	Bronzor	Pokémon	{Basic}	{Metal}	sv3	144	Common
sv3-145	Bronzong	Pokémon	{"Stage 1"}	{Metal}	sv3	145	Uncommon
sv3-146	Probopass	Pokémon	{"Stage 1"}	{Metal}	sv3	146	Uncommon
sv3-147	Excadrill	Pokémon	{"Stage 1"}	{Metal}	sv3	147	Uncommon
sv3-148	Pawniard	Pokémon	{Basic}	{Metal}	sv3	148	Common
sv3-149	Bisharp	Pokémon	{"Stage 1"}	{Metal}	sv3	149	Common
sv3-150	Kingambit	Pokémon	{"Stage 2"}	{Metal}	sv3	150	Uncommon
sv3-151	Togedemaru	Pokémon	{Basic}	{Metal}	sv3	151	Common
sv3-152	Meltan	Pokémon	{Basic}	{Metal}	sv3	152	Common
sv3-153	Melmetal ex	Pokémon	{"Stage 1",ex}	{Metal}	sv3	153	Double Rare
sv3-154	Varoom	Pokémon	{Basic}	{Metal}	sv3	154	Common
sv3-155	Varoom	Pokémon	{Basic}	{Metal}	sv3	155	Common
sv3-156	Revavroom ex	Pokémon	{"Stage 1",ex}	{Metal}	sv3	156	Double Rare
sv3-157	Dratini	Pokémon	{Basic}	{Dragon}	sv3	157	Common
sv3-158	Dragonair	Pokémon	{"Stage 1"}	{Dragon}	sv3	158	Uncommon
sv3-159	Dragonite ex	Pokémon	{"Stage 2",ex,Tera}	{Dragon}	sv3	159	Double Rare
sv3-160	Altaria	Pokémon	{"Stage 1"}	{Dragon}	sv3	160	Uncommon
sv3-161	Drampa	Pokémon	{Basic}	{Dragon}	sv3	161	Uncommon
sv3-162	Pidgey	Pokémon	{Basic}	{Colorless}	sv3	162	Common
sv3-163	Pidgeotto	Pokémon	{"Stage 1"}	{Colorless}	sv3	163	Uncommon
sv3-164	Pidgeot ex	Pokémon	{"Stage 2",ex}	{Colorless}	sv3	164	Double Rare
sv3-165	Kangaskhan	Pokémon	{Basic}	{Colorless}	sv3	165	Uncommon
sv3-166	Eevee	Pokémon	{Basic}	{Colorless}	sv3	166	Common
sv3-167	Zigzagoon	Pokémon	{Basic}	{Colorless}	sv3	167	Common
sv3-168	Linoone	Pokémon	{"Stage 1"}	{Colorless}	sv3	168	Uncommon
sv3-169	Swablu	Pokémon	{Basic}	{Colorless}	sv3	169	Common
sv3-170	Lillipup	Pokémon	{Basic}	{Colorless}	sv3	170	Common
sv3-171	Herdier	Pokémon	{"Stage 1"}	{Colorless}	sv3	171	Common
sv3-172	Stoutland	Pokémon	{"Stage 2"}	{Colorless}	sv3	172	Uncommon
sv3-173	Audino	Pokémon	{Basic}	{Colorless}	sv3	173	Common
sv3-174	Bouffalant	Pokémon	{Basic}	{Colorless}	sv3	174	Uncommon
sv3-175	Bunnelby	Pokémon	{Basic}	{Colorless}	sv3	175	Common
sv3-176	Yungoos	Pokémon	{Basic}	{Colorless}	sv3	176	Common
sv3-177	Gumshoos	Pokémon	{"Stage 1"}	{Colorless}	sv3	177	Uncommon
sv3-178	Skwovet	Pokémon	{Basic}	{Colorless}	sv3	178	Common
sv3-179	Greedent ex	Pokémon	{"Stage 1",ex,Tera}	{Colorless}	sv3	179	Double Rare
sv3-180	Lechonk	Pokémon	{Basic}	{Colorless}	sv3	180	Common
sv3-181	Lechonk	Pokémon	{Basic}	{Colorless}	sv3	181	Common
sv3-182	Lechonk	Pokémon	{Basic}	{Colorless}	sv3	182	Common
sv3-183	Oinkologne	Pokémon	{"Stage 1"}	{Colorless}	sv3	183	Uncommon
sv3-184	Oinkologne	Pokémon	{"Stage 1"}	{Colorless}	sv3	184	Uncommon
sv3-185	Flamigo	Pokémon	{Basic}	{Colorless}	sv3	185	Uncommon
sv3-186	Arven	Trainer	{Supporter}	{}	sv3	186	Uncommon
sv3-187	Brassius	Trainer	{Supporter}	{}	sv3	187	Uncommon
sv3-188	Geeta	Trainer	{Supporter}	{}	sv3	188	Rare
sv3-189	Letter of Encouragement	Trainer	{Item}	{}	sv3	189	Uncommon
sv3-190	Ortega	Trainer	{Supporter}	{}	sv3	190	Uncommon
sv3-191	Patrol Cap	Trainer	{"Pokémon Tool"}	{}	sv3	191	Uncommon
sv3-192	Pokémon League Headquarters	Trainer	{Stadium}	{}	sv3	192	Uncommon
sv3-193	Poppy	Trainer	{Supporter}	{}	sv3	193	Uncommon
sv3-194	Ryme	Trainer	{Supporter}	{}	sv3	194	Common
sv3-195	Team Star Grunt	Trainer	{Supporter}	{}	sv3	195	Uncommon
sv3-196	Town Store	Trainer	{Stadium}	{}	sv3	196	Common
sv3-197	Vengeful Punch	Trainer	{"Pokémon Tool"}	{}	sv3	197	Uncommon
sv3-198	Gloom	Pokémon	{"Stage 1"}	{Grass}	sv3	198	Illustration Rare
sv3-199	Ninetales	Pokémon	{"Stage 1"}	{Fire}	sv3	199	Illustration Rare
sv3-200	Palafin	Pokémon	{"Stage 1"}	{Water}	sv3	200	Illustration Rare
sv3-201	Bellibolt	Pokémon	{"Stage 1"}	{Lightning}	sv3	201	Illustration Rare
sv3-202	Cleffa	Pokémon	{Basic}	{Psychic}	sv3	202	Illustration Rare
sv3-203	Larvitar	Pokémon	{Basic}	{Fighting}	sv3	203	Illustration Rare
sv3-204	Houndour	Pokémon	{Basic}	{Darkness}	sv3	204	Illustration Rare
sv3-205	Scizor	Pokémon	{"Stage 1"}	{Metal}	sv3	205	Illustration Rare
sv3-206	Varoom	Pokémon	{Basic}	{Metal}	sv3	206	Illustration Rare
sv3-207	Pidgey	Pokémon	{Basic}	{Colorless}	sv3	207	Illustration Rare
sv3-208	Pidgeotto	Pokémon	{"Stage 1"}	{Colorless}	sv3	208	Illustration Rare
sv3-209	Lechonk	Pokémon	{Basic}	{Colorless}	sv3	209	Illustration Rare
sv3-210	Eiscue ex	Pokémon	{Basic,ex,Tera}	{Fire}	sv3	210	Ultra Rare
sv3-211	Tyranitar ex	Pokémon	{"Stage 2",ex,Tera}	{Lightning}	sv3	211	Ultra Rare
sv3-212	Vespiquen ex	Pokémon	{"Stage 1",ex,Tera}	{Psychic}	sv3	212	Ultra Rare
sv3-213	Glimmora ex	Pokémon	{"Stage 1",ex}	{Fighting}	sv3	213	Ultra Rare
sv3-214	Absol ex	Pokémon	{Basic,ex}	{Darkness}	sv3	214	Ultra Rare
sv3-215	Charizard ex	Pokémon	{"Stage 2",ex,Tera}	{Darkness}	sv3	215	Ultra Rare
sv3-216	Revavroom ex	Pokémon	{"Stage 1",ex}	{Metal}	sv3	216	Ultra Rare
sv3-217	Pidgeot ex	Pokémon	{"Stage 2",ex}	{Colorless}	sv3	217	Ultra Rare
sv3-218	Geeta	Trainer	{Supporter}	{}	sv3	218	Ultra Rare
sv3-219	Ortega	Trainer	{Supporter}	{}	sv3	219	Ultra Rare
sv3-220	Poppy	Trainer	{Supporter}	{}	sv3	220	Ultra Rare
sv3-221	Ryme	Trainer	{Supporter}	{}	sv3	221	Ultra Rare
sv3-222	Eiscue ex	Pokémon	{Basic,ex,Tera}	{Fire}	sv3	222	Special Illustration Rare
sv3-223	Charizard ex	Pokémon	{"Stage 2",ex,Tera}	{Darkness}	sv3	223	Special Illustration Rare
sv3-224	Revavroom ex	Pokémon	{"Stage 1",ex}	{Metal}	sv3	224	Special Illustration Rare
sv3-225	Pidgeot ex	Pokémon	{"Stage 2",ex}	{Colorless}	sv3	225	Special Illustration Rare
sv3-226	Geeta	Trainer	{Supporter}	{}	sv3	226	Special Illustration Rare
sv3-227	Poppy	Trainer	{Supporter}	{}	sv3	227	Special Illustration Rare
sv3-228	Charizard ex	Pokémon	{"Stage 2",ex,Tera}	{Darkness}	sv3	228	Hyper Rare
sv3-229	Artazon	Trainer	{Stadium}	{}	sv3	229	Hyper Rare
sv3-230	Basic Fire Energy	Energy	{Basic}	{}	sv3	230	Hyper Rare
sv3pt5-1	Bulbasaur	Pokémon	{Basic}	{Grass}	sv3pt5	1	Common
sv3pt5-2	Ivysaur	Pokémon	{"Stage 1"}	{Grass}	sv3pt5	2	Uncommon
sv3pt5-3	Venusaur ex	Pokémon	{"Stage 2",ex}	{Grass}	sv3pt5	3	Double Rare
sv3pt5-4	Charmander	Pokémon	{Basic}	{Fire}	sv3pt5	4	Common
sv3pt5-5	Charmeleon	Pokémon	{"Stage 1"}	{Fire}	sv3pt5	5	Uncommon
sv3pt5-6	Charizard ex	Pokémon	{"Stage 2",ex}	{Fire}	sv3pt5	6	Double Rare
sv3pt5-7	Squirtle	Pokémon	{Basic}	{Water}	sv3pt5	7	Common
sv3pt5-8	Wartortle	Pokémon	{"Stage 1"}	{Water}	sv3pt5	8	Uncommon
sv3pt5-9	Blastoise ex	Pokémon	{"Stage 2",ex}	{Water}	sv3pt5	9	Double Rare
sv3pt5-10	Caterpie	Pokémon	{Basic}	{Grass}	sv3pt5	10	Common
sv3pt5-11	Metapod	Pokémon	{"Stage 1"}	{Grass}	sv3pt5	11	Common
sv3pt5-12	Butterfree	Pokémon	{"Stage 2"}	{Grass}	sv3pt5	12	Uncommon
sv3pt5-13	Weedle	Pokémon	{Basic}	{Grass}	sv3pt5	13	Common
sv3pt5-14	Kakuna	Pokémon	{"Stage 1"}	{Grass}	sv3pt5	14	Common
sv3pt5-15	Beedrill	Pokémon	{"Stage 2"}	{Grass}	sv3pt5	15	Rare
sv3pt5-16	Pidgey	Pokémon	{Basic}	{Colorless}	sv3pt5	16	Common
sv3pt5-17	Pidgeotto	Pokémon	{"Stage 1"}	{Colorless}	sv3pt5	17	Common
sv3pt5-18	Pidgeot	Pokémon	{"Stage 2"}	{Colorless}	sv3pt5	18	Uncommon
sv3pt5-19	Rattata	Pokémon	{Basic}	{Colorless}	sv3pt5	19	Common
sv3pt5-20	Raticate	Pokémon	{"Stage 1"}	{Colorless}	sv3pt5	20	Uncommon
sv3pt5-21	Spearow	Pokémon	{Basic}	{Colorless}	sv3pt5	21	Common
sv3pt5-22	Fearow	Pokémon	{"Stage 1"}	{Colorless}	sv3pt5	22	Uncommon
sv3pt5-23	Ekans	Pokémon	{Basic}	{Darkness}	sv3pt5	23	Common
sv3pt5-24	Arbok ex	Pokémon	{"Stage 1",ex}	{Darkness}	sv3pt5	24	Double Rare
sv3pt5-25	Pikachu	Pokémon	{Basic}	{Lightning}	sv3pt5	25	Common
sv3pt5-26	Raichu	Pokémon	{"Stage 1"}	{Lightning}	sv3pt5	26	Rare
sv3pt5-27	Sandshrew	Pokémon	{Basic}	{Fighting}	sv3pt5	27	Common
sv3pt5-28	Sandslash	Pokémon	{"Stage 1"}	{Fighting}	sv3pt5	28	Uncommon
sv3pt5-29	Nidoran ♀	Pokémon	{Basic}	{Darkness}	sv3pt5	29	Common
sv3pt5-30	Nidorina	Pokémon	{"Stage 1"}	{Darkness}	sv3pt5	30	Uncommon
sv3pt5-31	Nidoqueen	Pokémon	{"Stage 2"}	{Darkness}	sv3pt5	31	Uncommon
sv3pt5-32	Nidoran ♂	Pokémon	{Basic}	{Darkness}	sv3pt5	32	Common
sv3pt5-33	Nidorino	Pokémon	{"Stage 1"}	{Darkness}	sv3pt5	33	Uncommon
sv3pt5-34	Nidoking	Pokémon	{"Stage 2"}	{Darkness}	sv3pt5	34	Rare
sv3pt5-35	Clefairy	Pokémon	{Basic}	{Psychic}	sv3pt5	35	Common
sv3pt5-36	Clefable	Pokémon	{"Stage 1"}	{Psychic}	sv3pt5	36	Uncommon
sv3pt5-37	Vulpix	Pokémon	{Basic}	{Fire}	sv3pt5	37	Common
sv3pt5-38	Ninetales ex	Pokémon	{"Stage 1",ex}	{Fire}	sv3pt5	38	Double Rare
sv3pt5-39	Jigglypuff	Pokémon	{Basic}	{Colorless}	sv3pt5	39	Common
sv3pt5-40	Wigglytuff ex	Pokémon	{"Stage 1",ex}	{Colorless}	sv3pt5	40	Double Rare
sv3pt5-41	Zubat	Pokémon	{Basic}	{Darkness}	sv3pt5	41	Common
sv3pt5-42	Golbat	Pokémon	{"Stage 1"}	{Darkness}	sv3pt5	42	Uncommon
sv3pt5-43	Oddish	Pokémon	{Basic}	{Grass}	sv3pt5	43	Common
sv3pt5-44	Gloom	Pokémon	{"Stage 1"}	{Grass}	sv3pt5	44	Uncommon
sv3pt5-45	Vileplume	Pokémon	{"Stage 2"}	{Grass}	sv3pt5	45	Rare
sv3pt5-46	Paras	Pokémon	{Basic}	{Grass}	sv3pt5	46	Common
sv3pt5-47	Parasect	Pokémon	{"Stage 1"}	{Grass}	sv3pt5	47	Uncommon
sv3pt5-48	Venonat	Pokémon	{Basic}	{Grass}	sv3pt5	48	Common
sv3pt5-49	Venomoth	Pokémon	{"Stage 1"}	{Grass}	sv3pt5	49	Uncommon
sv3pt5-50	Diglett	Pokémon	{Basic}	{Fighting}	sv3pt5	50	Common
sv3pt5-51	Dugtrio	Pokémon	{"Stage 1"}	{Fighting}	sv3pt5	51	Uncommon
sv3pt5-52	Meowth	Pokémon	{Basic}	{Colorless}	sv3pt5	52	Common
sv3pt5-53	Persian	Pokémon	{"Stage 1"}	{Colorless}	sv3pt5	53	Uncommon
sv3pt5-54	Psyduck	Pokémon	{Basic}	{Water}	sv3pt5	54	Common
sv3pt5-55	Golduck	Pokémon	{"Stage 1"}	{Water}	sv3pt5	55	Uncommon
sv3pt5-56	Mankey	Pokémon	{Basic}	{Fighting}	sv3pt5	56	Common
sv3pt5-57	Primeape	Pokémon	{"Stage 1"}	{Fighting}	sv3pt5	57	Uncommon
sv3pt5-58	Growlithe	Pokémon	{Basic}	{Fire}	sv3pt5	58	Common
sv3pt5-59	Arcanine	Pokémon	{"Stage 1"}	{Fire}	sv3pt5	59	Uncommon
sv3pt5-60	Poliwag	Pokémon	{Basic}	{Water}	sv3pt5	60	Common
sv3pt5-61	Poliwhirl	Pokémon	{"Stage 1"}	{Water}	sv3pt5	61	Common
sv3pt5-62	Poliwrath	Pokémon	{"Stage 2"}	{Water}	sv3pt5	62	Uncommon
sv3pt5-63	Abra	Pokémon	{Basic}	{Psychic}	sv3pt5	63	Common
sv3pt5-64	Kadabra	Pokémon	{"Stage 1"}	{Psychic}	sv3pt5	64	Uncommon
sv3pt5-65	Alakazam ex	Pokémon	{"Stage 2",ex}	{Psychic}	sv3pt5	65	Double Rare
sv3pt5-66	Machop	Pokémon	{Basic}	{Fighting}	sv3pt5	66	Common
sv3pt5-67	Machoke	Pokémon	{"Stage 1"}	{Fighting}	sv3pt5	67	Uncommon
sv3pt5-68	Machamp	Pokémon	{"Stage 2"}	{Fighting}	sv3pt5	68	Rare
sv3pt5-69	Bellsprout	Pokémon	{Basic}	{Grass}	sv3pt5	69	Common
sv3pt5-70	Weepinbell	Pokémon	{"Stage 1"}	{Grass}	sv3pt5	70	Common
sv3pt5-71	Victreebel	Pokémon	{"Stage 2"}	{Grass}	sv3pt5	71	Uncommon
sv3pt5-72	Tentacool	Pokémon	{Basic}	{Water}	sv3pt5	72	Common
sv3pt5-73	Tentacruel	Pokémon	{"Stage 1"}	{Water}	sv3pt5	73	Uncommon
sv3pt5-74	Geodude	Pokémon	{Basic}	{Fighting}	sv3pt5	74	Common
sv3pt5-75	Graveler	Pokémon	{"Stage 1"}	{Fighting}	sv3pt5	75	Uncommon
sv3pt5-76	Golem ex	Pokémon	{"Stage 2",ex}	{Fighting}	sv3pt5	76	Double Rare
sv3pt5-77	Ponyta	Pokémon	{Basic}	{Fire}	sv3pt5	77	Common
sv3pt5-78	Rapidash	Pokémon	{"Stage 1"}	{Fire}	sv3pt5	78	Uncommon
sv3pt5-79	Slowpoke	Pokémon	{Basic}	{Psychic}	sv3pt5	79	Common
sv3pt5-80	Slowbro	Pokémon	{"Stage 1"}	{Psychic}	sv3pt5	80	Uncommon
sv3pt5-81	Magnemite	Pokémon	{Basic}	{Lightning}	sv3pt5	81	Common
sv3pt5-82	Magneton	Pokémon	{"Stage 1"}	{Lightning}	sv3pt5	82	Uncommon
sv3pt5-83	Farfetch'd	Pokémon	{Basic}	{Colorless}	sv3pt5	83	Common
sv3pt5-84	Doduo	Pokémon	{Basic}	{Colorless}	sv3pt5	84	Common
sv3pt5-85	Dodrio	Pokémon	{"Stage 1"}	{Colorless}	sv3pt5	85	Rare
sv3pt5-86	Seel	Pokémon	{Basic}	{Water}	sv3pt5	86	Common
sv3pt5-87	Dewgong	Pokémon	{"Stage 1"}	{Water}	sv3pt5	87	Uncommon
sv3pt5-88	Grimer	Pokémon	{Basic}	{Darkness}	sv3pt5	88	Common
sv3pt5-89	Muk	Pokémon	{"Stage 1"}	{Darkness}	sv3pt5	89	Uncommon
sv3pt5-90	Shellder	Pokémon	{Basic}	{Water}	sv3pt5	90	Common
sv3pt5-91	Cloyster	Pokémon	{"Stage 1"}	{Water}	sv3pt5	91	Uncommon
sv3pt5-92	Gastly	Pokémon	{Basic}	{Psychic}	sv3pt5	92	Common
sv3pt5-93	Haunter	Pokémon	{"Stage 1"}	{Psychic}	sv3pt5	93	Uncommon
sv3pt5-94	Gengar	Pokémon	{"Stage 2"}	{Psychic}	sv3pt5	94	Rare
sv3pt5-95	Onix	Pokémon	{Basic}	{Fighting}	sv3pt5	95	Uncommon
sv3pt5-96	Drowzee	Pokémon	{Basic}	{Psychic}	sv3pt5	96	Common
sv3pt5-97	Hypno	Pokémon	{"Stage 1"}	{Psychic}	sv3pt5	97	Uncommon
sv3pt5-98	Krabby	Pokémon	{Basic}	{Water}	sv3pt5	98	Common
sv3pt5-99	Kingler	Pokémon	{"Stage 1"}	{Water}	sv3pt5	99	Uncommon
sv3pt5-100	Voltorb	Pokémon	{Basic}	{Lightning}	sv3pt5	100	Common
sv3pt5-101	Electrode	Pokémon	{"Stage 1"}	{Lightning}	sv3pt5	101	Rare
sv3pt5-102	Exeggcute	Pokémon	{Basic}	{Grass}	sv3pt5	102	Common
sv3pt5-103	Exeggutor	Pokémon	{"Stage 1"}	{Grass}	sv3pt5	103	Uncommon
sv3pt5-104	Cubone	Pokémon	{Basic}	{Fighting}	sv3pt5	104	Common
sv3pt5-105	Marowak	Pokémon	{"Stage 1"}	{Fighting}	sv3pt5	105	Rare
sv3pt5-106	Hitmonlee	Pokémon	{Basic}	{Fighting}	sv3pt5	106	Uncommon
sv3pt5-107	Hitmonchan	Pokémon	{Basic}	{Fighting}	sv3pt5	107	Uncommon
sv3pt5-108	Lickitung	Pokémon	{Basic}	{Colorless}	sv3pt5	108	Common
sv3pt5-109	Koffing	Pokémon	{Basic}	{Darkness}	sv3pt5	109	Common
sv3pt5-110	Weezing	Pokémon	{"Stage 1"}	{Darkness}	sv3pt5	110	Rare
sv3pt5-111	Rhyhorn	Pokémon	{Basic}	{Fighting}	sv3pt5	111	Common
sv3pt5-112	Rhydon	Pokémon	{"Stage 1"}	{Fighting}	sv3pt5	112	Uncommon
sv3pt5-113	Chansey	Pokémon	{Basic}	{Colorless}	sv3pt5	113	Rare
sv3pt5-114	Tangela	Pokémon	{Basic}	{Grass}	sv3pt5	114	Common
sv3pt5-115	Kangaskhan ex	Pokémon	{Basic,ex}	{Colorless}	sv3pt5	115	Double Rare
sv3pt5-116	Horsea	Pokémon	{Basic}	{Water}	sv3pt5	116	Common
sv3pt5-117	Seadra	Pokémon	{"Stage 1"}	{Water}	sv3pt5	117	Uncommon
sv3pt5-118	Goldeen	Pokémon	{Basic}	{Water}	sv3pt5	118	Common
sv3pt5-119	Seaking	Pokémon	{"Stage 1"}	{Water}	sv3pt5	119	Uncommon
sv3pt5-120	Staryu	Pokémon	{Basic}	{Water}	sv3pt5	120	Common
sv3pt5-121	Starmie	Pokémon	{"Stage 1"}	{Water}	sv3pt5	121	Rare
sv3pt5-122	Mr. Mime	Pokémon	{Basic}	{Psychic}	sv3pt5	122	Rare
sv3pt5-123	Scyther	Pokémon	{Basic}	{Grass}	sv3pt5	123	Uncommon
sv3pt5-124	Jynx ex	Pokémon	{Basic,ex}	{Water}	sv3pt5	124	Double Rare
sv3pt5-125	Electabuzz	Pokémon	{Basic}	{Lightning}	sv3pt5	125	Common
sv3pt5-126	Magmar	Pokémon	{Basic}	{Fire}	sv3pt5	126	Common
sv3pt5-127	Pinsir	Pokémon	{Basic}	{Grass}	sv3pt5	127	Uncommon
sv3pt5-128	Tauros	Pokémon	{Basic}	{Colorless}	sv3pt5	128	Uncommon
sv3pt5-129	Magikarp	Pokémon	{Basic}	{Water}	sv3pt5	129	Common
sv3pt5-130	Gyarados	Pokémon	{"Stage 1"}	{Water}	sv3pt5	130	Rare
sv3pt5-131	Lapras	Pokémon	{Basic}	{Water}	sv3pt5	131	Uncommon
sv3pt5-132	Ditto	Pokémon	{Basic}	{Colorless}	sv3pt5	132	Rare
sv3pt5-133	Eevee	Pokémon	{Basic}	{Colorless}	sv3pt5	133	Common
sv3pt5-134	Vaporeon	Pokémon	{"Stage 1"}	{Water}	sv3pt5	134	Rare
sv3pt5-135	Jolteon	Pokémon	{"Stage 1"}	{Lightning}	sv3pt5	135	Rare
sv3pt5-136	Flareon	Pokémon	{"Stage 1"}	{Fire}	sv3pt5	136	Rare
sv3pt5-137	Porygon	Pokémon	{Basic}	{Colorless}	sv3pt5	137	Common
sv3pt5-138	Omanyte	Pokémon	{"Stage 1"}	{Water}	sv3pt5	138	Uncommon
sv3pt5-139	Omastar	Pokémon	{"Stage 2"}	{Water}	sv3pt5	139	Rare
sv3pt5-140	Kabuto	Pokémon	{"Stage 1"}	{Fighting}	sv3pt5	140	Uncommon
sv3pt5-141	Kabutops	Pokémon	{"Stage 2"}	{Fighting}	sv3pt5	141	Rare
sv3pt5-142	Aerodactyl	Pokémon	{"Stage 1"}	{Colorless}	sv3pt5	142	Rare
sv3pt5-143	Snorlax	Pokémon	{Basic}	{Colorless}	sv3pt5	143	Uncommon
sv3pt5-144	Articuno	Pokémon	{Basic}	{Water}	sv3pt5	144	Rare
sv3pt5-145	Zapdos ex	Pokémon	{Basic,ex}	{Lightning}	sv3pt5	145	Double Rare
sv3pt5-146	Moltres	Pokémon	{Basic}	{Fire}	sv3pt5	146	Rare
sv3pt5-147	Dratini	Pokémon	{Basic}	{Dragon}	sv3pt5	147	Common
sv3pt5-148	Dragonair	Pokémon	{"Stage 1"}	{Dragon}	sv3pt5	148	Uncommon
sv3pt5-149	Dragonite	Pokémon	{"Stage 2"}	{Dragon}	sv3pt5	149	Rare
sv3pt5-150	Mewtwo	Pokémon	{Basic}	{Psychic}	sv3pt5	150	Rare
sv3pt5-151	Mew ex	Pokémon	{Basic,ex}	{Psychic}	sv3pt5	151	Double Rare
sv3pt5-152	Antique Dome Fossil	Trainer	{Item}	{}	sv3pt5	152	Common
sv3pt5-153	Antique Helix Fossil	Trainer	{Item}	{}	sv3pt5	153	Common
sv3pt5-154	Antique Old Amber	Trainer	{Item}	{}	sv3pt5	154	Common
sv3pt5-155	Big Air Balloon	Trainer	{"Pokémon Tool"}	{}	sv3pt5	155	Uncommon
sv3pt5-156	Bill's Transfer	Trainer	{Supporter}	{}	sv3pt5	156	Uncommon
sv3pt5-157	Cycling Road	Trainer	{Stadium}	{}	sv3pt5	157	Uncommon
sv3pt5-158	Daisy's Help	Trainer	{Supporter}	{}	sv3pt5	158	Uncommon
sv3pt5-159	Energy Sticker	Trainer	{Item}	{}	sv3pt5	159	Uncommon
sv3pt5-160	Erika's Invitation	Trainer	{Supporter}	{}	sv3pt5	160	Uncommon
sv3pt5-161	Giovanni's Charisma	Trainer	{Supporter}	{}	sv3pt5	161	Uncommon
sv3pt5-162	Grabber	Trainer	{Item}	{}	sv3pt5	162	Uncommon
sv3pt5-163	Leftovers	Trainer	{"Pokémon Tool"}	{}	sv3pt5	163	Uncommon
sv3pt5-164	Protective Goggles	Trainer	{"Pokémon Tool"}	{}	sv3pt5	164	Uncommon
sv3pt5-165	Rigid Band	Trainer	{"Pokémon Tool"}	{}	sv3pt5	165	Uncommon
sv3pt5-166	Bulbasaur	Pokémon	{Basic}	{Grass}	sv3pt5	166	Illustration Rare
sv3pt5-167	Ivysaur	Pokémon	{"Stage 1"}	{Grass}	sv3pt5	167	Illustration Rare
sv3pt5-168	Charmander	Pokémon	{Basic}	{Fire}	sv3pt5	168	Illustration Rare
sv3pt5-169	Charmeleon	Pokémon	{"Stage 1"}	{Fire}	sv3pt5	169	Illustration Rare
sv3pt5-170	Squirtle	Pokémon	{Basic}	{Water}	sv3pt5	170	Illustration Rare
sv3pt5-171	Wartortle	Pokémon	{"Stage 1"}	{Water}	sv3pt5	171	Illustration Rare
sv3pt5-172	Caterpie	Pokémon	{Basic}	{Grass}	sv3pt5	172	Illustration Rare
sv3pt5-173	Pikachu	Pokémon	{Basic}	{Lightning}	sv3pt5	173	Illustration Rare
sv3pt5-174	Nidoking	Pokémon	{"Stage 2"}	{Darkness}	sv3pt5	174	Illustration Rare
sv3pt5-175	Psyduck	Pokémon	{Basic}	{Water}	sv3pt5	175	Illustration Rare
sv3pt5-176	Poliwhirl	Pokémon	{"Stage 1"}	{Water}	sv3pt5	176	Illustration Rare
sv3pt5-177	Machoke	Pokémon	{"Stage 1"}	{Fighting}	sv3pt5	177	Illustration Rare
sv3pt5-178	Tangela	Pokémon	{Basic}	{Grass}	sv3pt5	178	Illustration Rare
sv3pt5-179	Mr. Mime	Pokémon	{Basic}	{Psychic}	sv3pt5	179	Illustration Rare
sv3pt5-180	Omanyte	Pokémon	{"Stage 1"}	{Water}	sv3pt5	180	Illustration Rare
sv3pt5-181	Dragonair	Pokémon	{"Stage 1"}	{Dragon}	sv3pt5	181	Illustration Rare
sv3pt5-182	Venusaur ex	Pokémon	{"Stage 2",ex}	{Grass}	sv3pt5	182	Ultra Rare
sv3pt5-183	Charizard ex	Pokémon	{"Stage 2",ex}	{Fire}	sv3pt5	183	Ultra Rare
sv3pt5-184	Blastoise ex	Pokémon	{"Stage 2",ex}	{Water}	sv3pt5	184	Ultra Rare
sv3pt5-185	Arbok ex	Pokémon	{"Stage 1",ex}	{Darkness}	sv3pt5	185	Ultra Rare
sv3pt5-186	Ninetales ex	Pokémon	{"Stage 1",ex}	{Fire}	sv3pt5	186	Ultra Rare
sv3pt5-187	Wigglytuff ex	Pokémon	{"Stage 1",ex}	{Colorless}	sv3pt5	187	Ultra Rare
sv3pt5-188	Alakazam ex	Pokémon	{"Stage 2",ex}	{Psychic}	sv3pt5	188	Ultra Rare
sv3pt5-189	Golem ex	Pokémon	{"Stage 2",ex}	{Fighting}	sv3pt5	189	Ultra Rare
sv3pt5-190	Kangaskhan ex	Pokémon	{Basic,ex}	{Colorless}	sv3pt5	190	Ultra Rare
sv3pt5-191	Jynx ex	Pokémon	{Basic,ex}	{Water}	sv3pt5	191	Ultra Rare
sv3pt5-192	Zapdos ex	Pokémon	{Basic,ex}	{Lightning}	sv3pt5	192	Ultra Rare
sv3pt5-193	Mew ex	Pokémon	{Basic,ex}	{Psychic}	sv3pt5	193	Ultra Rare
sv3pt5-194	Bill's Transfer	Trainer	{Supporter}	{}	sv3pt5	194	Ultra Rare
sv3pt5-195	Daisy's Help	Trainer	{Supporter}	{}	sv3pt5	195	Ultra Rare
sv3pt5-196	Erika's Invitation	Trainer	{Supporter}	{}	sv3pt5	196	Ultra Rare
sv3pt5-197	Giovanni's Charisma	Trainer	{Supporter}	{}	sv3pt5	197	Ultra Rare
sv3pt5-198	Venusaur ex	Pokémon	{"Stage 2",ex}	{Grass}	sv3pt5	198	Special Illustration Rare
sv3pt5-199	Charizard ex	Pokémon	{"Stage 2",ex}	{Fire}	sv3pt5	199	Special Illustration Rare
sv3pt5-200	Blastoise ex	Pokémon	{"Stage 2",ex}	{Water}	sv3pt5	200	Special Illustration Rare
sv3pt5-201	Alakazam ex	Pokémon	{"Stage 2",ex}	{Psychic}	sv3pt5	201	Special Illustration Rare
sv3pt5-202	Zapdos ex	Pokémon	{Basic,ex}	{Lightning}	sv3pt5	202	Special Illustration Rare
sv3pt5-203	Erika's Invitation	Trainer	{Supporter}	{}	sv3pt5	203	Special Illustration Rare
sv3pt5-204	Giovanni's Charisma	Trainer	{Supporter}	{}	sv3pt5	204	Special Illustration Rare
sv3pt5-205	Mew ex	Pokémon	{Basic,ex}	{Psychic}	sv3pt5	205	Hyper Rare
sv3pt5-206	Switch	Trainer	{Item}	{}	sv3pt5	206	Hyper Rare
sv3pt5-207	Basic Psychic Energy	Energy	{Basic}	{Psychic}	sv3pt5	207	Hyper Rare
sv4-1	Surskit	Pokémon	{Basic}	{Grass}	sv4	1	Common
sv4-2	Masquerain	Pokémon	{"Stage 1"}	{Grass}	sv4	2	Uncommon
sv4-4	Pansage	Pokémon	{Basic}	{Grass}	sv4	4	Common
sv4-5	Simisage	Pokémon	{"Stage 1"}	{Grass}	sv4	5	Uncommon
sv4-3	Froslass ex	Pokémon	{"Stage 1",Tera,ex}	{Grass}	sv4	3	Double Rare
sv4-6	Dwebble	Pokémon	{Basic}	{Grass}	sv4	6	Common
sv4-7	Crustle	Pokémon	{"Stage 1"}	{Grass}	sv4	7	Common
sv4-8	Bounsweet	Pokémon	{Basic}	{Grass}	sv4	8	Common
sv4-10	Blipbug	Pokémon	{Basic}	{Grass}	sv4	10	Common
sv4-9	Steenee	Pokémon	{"Stage 1"}	{Grass}	sv4	9	Uncommon
sv4-14	Nymble	Pokémon	{Basic}	{Grass}	sv4	14	Common
sv4-11	Dottler	Pokémon	{"Stage 1"}	{Grass}	sv4	11	Common
sv4-24	Crocalor	Pokémon	{"Stage 1"}	{Fire}	sv4	24	Uncommon
sv4-26	Charcadet	Pokémon	{Basic}	{Fire}	sv4	26	Common
sv4-27	Armarouge ex	Pokémon	{"Stage 1",ex}	{Fire}	sv4	27	Double Rare
sv4-35	Feebas	Pokémon	{Basic}	{Water}	sv4	35	Common
sv4-12	Orbeetle	Pokémon	{"Stage 2"}	{Grass}	sv4	12	Uncommon
sv4-13	Nymble	Pokémon	{Basic}	{Grass}	sv4	13	Common
sv4-17	Toedscruel	Pokémon	{"Stage 1"}	{Grass}	sv4	17	Uncommon
sv4-21	Simisear	Pokémon	{"Stage 1"}	{Fire}	sv4	21	Uncommon
sv4-22	Volcanion	Pokémon	{Basic}	{Fire}	sv4	22	Rare
sv4-31	Seadra	Pokémon	{"Stage 1"}	{Water}	sv4	31	Common
sv4-32	Kingdra	Pokémon	{"Stage 2"}	{Water}	sv4	32	Rare
sv4-16	Toedscool	Pokémon	{Basic}	{Grass}	sv4	16	Common
sv4-20	Pansear	Pokémon	{Basic}	{Fire}	sv4	20	Common
sv4-25	Charcadet	Pokémon	{Basic}	{Fire}	sv4	25	Common
sv4-28	Iron Moth	Pokémon	{Basic,Future}	{Fire}	sv4	28	Rare
sv4-30	Horsea	Pokémon	{Basic}	{Water}	sv4	30	Common
sv4-33	Remoraid	Pokémon	{Basic}	{Water}	sv4	33	Common
sv4-15	Toedscool	Pokémon	{Basic}	{Grass}	sv4	15	Common
sv4-18	Wo-Chien	Pokémon	{Basic}	{Grass}	sv4	18	Rare
sv4-19	Magby	Pokémon	{Basic}	{Fire}	sv4	19	Common
sv4-23	Fuecoco	Pokémon	{Basic}	{Fire}	sv4	23	Common
sv4-29	Chi-Yu	Pokémon	{Basic}	{Fire}	sv4	29	Rare
sv4-34	Octillery	Pokémon	{"Stage 1"}	{Water}	sv4	34	Common
sv4-36	Milotic	Pokémon	{"Stage 1"}	{Water}	sv4	36	Rare
sv4-38	Garchomp ex	Pokémon	{"Stage 2",Tera,ex}	{Water}	sv4	38	Double Rare
sv4-39	Mantyke	Pokémon	{Basic}	{Water}	sv4	39	Common
sv4-57	Chien-Pao	Pokémon	{Basic}	{Water}	sv4	57	Rare
sv4-60	Plusle	Pokémon	{Basic}	{Lightning}	sv4	60	Common
sv4-62	Blitzle	Pokémon	{Basic}	{Lightning}	sv4	62	Common
sv4-65	Galvantula	Pokémon	{"Stage 1"}	{Lightning}	sv4	65	Common
sv4-67	Oricorio	Pokémon	{Basic}	{Lightning}	sv4	67	Common
sv4-68	Tapu Koko ex	Pokémon	{Basic,ex}	{Lightning}	sv4	68	Double Rare
sv4-70	Iron Hands ex	Pokémon	{Basic,ex,Future}	{Lightning}	sv4	70	Double Rare
sv4-73	Latios	Pokémon	{Basic}	{Psychic}	sv4	73	Rare
sv4-42	Simipour	Pokémon	{"Stage 1"}	{Water}	sv4	42	Uncommon
sv4-44	Vanillish	Pokémon	{"Stage 1"}	{Water}	sv4	44	Common
sv4-47	Wimpod	Pokémon	{Basic}	{Water}	sv4	47	Common
sv4-54	Veluza	Pokémon	{Basic}	{Water}	sv4	54	Uncommon
sv4-56	Iron Bundle	Pokémon	{Basic,Future}	{Water}	sv4	56	Uncommon
sv4-40	Palkia	Pokémon	{Basic}	{Water}	sv4	40	Rare
sv4-45	Vanilluxe	Pokémon	{"Stage 2"}	{Water}	sv4	45	Uncommon
sv4-48	Wimpod	Pokémon	{Basic}	{Water}	sv4	48	Common
sv4-51	Wiglett	Pokémon	{Basic}	{Water}	sv4	51	Common
sv4-52	Wiglett	Pokémon	{Basic}	{Water}	sv4	52	Common
sv4-59	Elekid	Pokémon	{Basic}	{Lightning}	sv4	59	Common
sv4-61	Minun	Pokémon	{Basic}	{Lightning}	sv4	61	Common
sv4-63	Zebstrika	Pokémon	{"Stage 1"}	{Lightning}	sv4	63	Uncommon
sv4-64	Joltik	Pokémon	{Basic}	{Lightning}	sv4	64	Common
sv4-66	Zekrom	Pokémon	{Basic}	{Lightning}	sv4	66	Rare
sv4-69	Toxel	Pokémon	{Basic}	{Lightning}	sv4	69	Common
sv4-72	Xatu	Pokémon	{"Stage 1"}	{Psychic}	sv4	72	Rare
sv4-37	Snorunt	Pokémon	{Basic}	{Water}	sv4	37	Common
sv4-41	Panpour	Pokémon	{Basic}	{Water}	sv4	41	Common
sv4-43	Vanillite	Pokémon	{Basic}	{Water}	sv4	43	Common
sv4-46	Tsareena ex	Pokémon	{"Stage 2",Tera,ex}	{Water}	sv4	46	Double Rare
sv4-49	Golisopod	Pokémon	{"Stage 1"}	{Water}	sv4	49	Rare
sv4-50	Golisopod ex	Pokémon	{"Stage 1",ex}	{Water}	sv4	50	Double Rare
sv4-53	Wugtrio	Pokémon	{"Stage 1"}	{Water}	sv4	53	Uncommon
sv4-55	Dondozo	Pokémon	{Basic}	{Water}	sv4	55	Uncommon
sv4-58	Mewtwo ex	Pokémon	{Basic,Tera,ex}	{Lightning}	sv4	58	Double Rare
sv4-71	Natu	Pokémon	{Basic}	{Psychic}	sv4	71	Common
sv4-75	Yamask	Pokémon	{Basic}	{Psychic}	sv4	75	Common
sv4-77	Pumpkaboo	Pokémon	{Basic}	{Psychic}	sv4	77	Common
sv4-84	Tinkatuff	Pokémon	{"Stage 1"}	{Psychic}	sv4	84	Common
sv4-85	Tinkaton	Pokémon	{"Stage 2"}	{Psychic}	sv4	85	Uncommon
sv4-74	Deoxys	Pokémon	{Basic}	{Psychic}	sv4	74	Rare
sv4-76	Cofagrigus ex	Pokémon	{"Stage 1",ex}	{Psychic}	sv4	76	Double Rare
sv4-78	Gourgeist	Pokémon	{"Stage 1"}	{Psychic}	sv4	78	Uncommon
sv4-79	Flittle	Pokémon	{Basic}	{Psychic}	sv4	79	Common
sv4-80	Flittle	Pokémon	{Basic}	{Psychic}	sv4	80	Common
sv4-83	Tinkatink	Pokémon	{Basic}	{Psychic}	sv4	83	Common
sv4-81	Espathra	Pokémon	{"Stage 1"}	{Psychic}	sv4	81	Rare
sv4-82	Tinkatink	Pokémon	{Basic}	{Psychic}	sv4	82	Common
sv4-86	Scream Tail	Pokémon	{Basic,Ancient}	{Psychic}	sv4	86	Uncommon
sv4-99	Minior	Pokémon	{Basic}	{Fighting}	sv4	99	Uncommon
sv4-106	Flamigo	Pokémon	{Basic}	{Fighting}	sv4	106	Common
sv4-110	Zubat	Pokémon	{Basic}	{Darkness}	sv4	110	Common
sv4-116	Trubbish	Pokémon	{Basic}	{Darkness}	sv4	116	Common
sv4-88	Gimmighoul	Pokémon	{Basic}	{Psychic}	sv4	88	Common
sv4-87	Gimmighoul	Pokémon	{Basic}	{Psychic}	sv4	87	Common
sv4-92	Gliscor	Pokémon	{"Stage 1"}	{Fighting}	sv4	92	Uncommon
sv4-94	Gible	Pokémon	{Basic}	{Fighting}	sv4	94	Common
sv4-96	Mienfoo	Pokémon	{Basic}	{Fighting}	sv4	96	Common
sv4-100	Toxtricity ex	Pokémon	{"Stage 1",Tera,ex}	{Fighting}	sv4	100	Double Rare
sv4-105	Klawf	Pokémon	{Basic}	{Fighting}	sv4	105	Uncommon
sv4-108	Sandy Shocks ex	Pokémon	{Basic,ex,Ancient}	{Fighting}	sv4	108	Double Rare
sv4-111	Golbat	Pokémon	{"Stage 1"}	{Darkness}	sv4	111	Common
sv4-112	Crobat	Pokémon	{"Stage 2"}	{Darkness}	sv4	112	Uncommon
sv4-113	Absol	Pokémon	{Basic}	{Darkness}	sv4	113	Uncommon
sv4-118	Yveltal	Pokémon	{Basic}	{Darkness}	sv4	118	Rare
sv4-120	Thievul	Pokémon	{"Stage 1"}	{Darkness}	sv4	120	Rare
sv4-89	Iron Valiant ex	Pokémon	{Basic,ex,Future}	{Psychic}	sv4	89	Double Rare
sv4-90	Onix	Pokémon	{Basic}	{Fighting}	sv4	90	Common
sv4-114	Purrloin	Pokémon	{Basic}	{Darkness}	sv4	114	Common
sv4-115	Liepard	Pokémon	{"Stage 1"}	{Darkness}	sv4	115	Common
sv4-121	Morpeko	Pokémon	{Basic}	{Darkness}	sv4	121	Rare
sv4-91	Gligar	Pokémon	{Basic}	{Fighting}	sv4	91	Common
sv4-93	Groudon	Pokémon	{Basic}	{Fighting}	sv4	93	Rare
sv4-95	Gabite	Pokémon	{"Stage 1"}	{Fighting}	sv4	95	Common
sv4-97	Mienshao	Pokémon	{"Stage 1"}	{Fighting}	sv4	97	Uncommon
sv4-98	Hoopa ex	Pokémon	{Basic,Tera,ex}	{Fighting}	sv4	98	Double Rare
sv4-101	Nacli	Pokémon	{Basic}	{Fighting}	sv4	101	Common
sv4-102	Nacli	Pokémon	{Basic}	{Fighting}	sv4	102	Common
sv4-103	Naclstack	Pokémon	{"Stage 1"}	{Fighting}	sv4	103	Common
sv4-104	Garganacl	Pokémon	{"Stage 2"}	{Fighting}	sv4	104	Rare
sv4-107	Slither Wing	Pokémon	{Basic,Ancient}	{Fighting}	sv4	107	Uncommon
sv4-109	Ting-Lu	Pokémon	{Basic}	{Fighting}	sv4	109	Rare
sv4-117	Garbodor	Pokémon	{"Stage 1"}	{Darkness}	sv4	117	Uncommon
sv4-119	Nickit	Pokémon	{Basic}	{Darkness}	sv4	119	Common
sv4-122	Lokix	Pokémon	{"Stage 1"}	{Darkness}	sv4	122	Rare
sv4-123	Brute Bonnet	Pokémon	{Basic,Ancient}	{Darkness}	sv4	123	Rare
sv4-124	Roaring Moon ex	Pokémon	{Basic,ex,Ancient}	{Darkness}	sv4	124	Double Rare
sv4-125	Steelix	Pokémon	{"Stage 1"}	{Metal}	sv4	125	Rare
sv4-126	Jirachi	Pokémon	{Basic}	{Metal}	sv4	126	Common
sv4-128	Ferrothorn	Pokémon	{"Stage 1"}	{Metal}	sv4	128	Uncommon
sv4-127	Ferroseed	Pokémon	{Basic}	{Metal}	sv4	127	Common
sv4-130	Honedge	Pokémon	{Basic}	{Metal}	sv4	130	Common
sv4-131	Honedge	Pokémon	{Basic}	{Metal}	sv4	131	Common
sv4-129	Durant	Pokémon	{Basic}	{Metal}	sv4	129	Uncommon
sv4-132	Doublade	Pokémon	{"Stage 1"}	{Metal}	sv4	132	Common
sv4-133	Doublade	Pokémon	{"Stage 1"}	{Metal}	sv4	133	Common
sv4-135	Aegislash ex	Pokémon	{"Stage 2",ex}	{Metal}	sv4	135	Double Rare
sv4-136	Zacian	Pokémon	{Basic}	{Metal}	sv4	136	Rare
sv4-137	Skeledirge ex	Pokémon	{"Stage 2",Tera,ex}	{Metal}	sv4	137	Double Rare
sv4-139	Gholdengo ex	Pokémon	{"Stage 1",ex}	{Metal}	sv4	139	Double Rare
sv4-142	Porygon	Pokémon	{Basic}	{Colorless}	sv4	142	Common
sv4-143	Porygon2	Pokémon	{"Stage 1"}	{Colorless}	sv4	143	Common
sv4-144	Porygon-Z	Pokémon	{"Stage 2"}	{Colorless}	sv4	144	Rare
sv4-138	Orthworm	Pokémon	{Basic}	{Metal}	sv4	138	Uncommon
sv4-140	Altaria ex	Pokémon	{"Stage 1",ex}	{Dragon}	sv4	140	Double Rare
sv4-145	Aipom	Pokémon	{Basic}	{Colorless}	sv4	145	Common
sv4-134	Aegislash	Pokémon	{"Stage 2"}	{Metal}	sv4	134	Rare
sv4-141	Tatsugiri	Pokémon	{Basic}	{Dragon}	sv4	141	Uncommon
sv4-146	Ambipom	Pokémon	{"Stage 1"}	{Colorless}	sv4	146	Uncommon
sv4-147	Miltank	Pokémon	{Basic}	{Colorless}	sv4	147	Common
sv4-148	Whismur	Pokémon	{Basic}	{Colorless}	sv4	148	Common
sv4-149	Loudred	Pokémon	{"Stage 1"}	{Colorless}	sv4	149	Common
sv4-152	Swablu	Pokémon	{Basic}	{Colorless}	sv4	152	Common
sv4-159	Ancient Booster Energy Capsule	Trainer	{"Pokémon Tool",Ancient}	{}	sv4	159	Uncommon
sv4-166	Luxurious Cape	Trainer	{"Pokémon Tool"}	{}	sv4	166	Uncommon
sv4-176	Technical Machine: Blindside	Trainer	{"Pokémon Tool"}	{}	sv4	176	Uncommon
sv4-177	Technical Machine: Devolution	Trainer	{"Pokémon Tool"}	{}	sv4	177	Uncommon
sv4-151	Spinda	Pokémon	{Basic}	{Colorless}	sv4	151	Common
sv4-167	Mela	Trainer	{Supporter}	{}	sv4	167	Uncommon
sv4-170	Professor Sada's Vitality	Trainer	{Supporter,Ancient}	{}	sv4	170	Uncommon
sv4-174	Shauntal	Trainer	{Supporter}	{}	sv4	174	Uncommon
sv4-175	Snorlax Doll	Trainer	{Item}	{}	sv4	175	Uncommon
sv4-179	Technical Machine: Turbo Energize	Trainer	{"Pokémon Tool"}	{}	sv4	179	Uncommon
sv4-150	Exploud	Pokémon	{"Stage 2"}	{Colorless}	sv4	150	Uncommon
sv4-153	Tandemaus	Pokémon	{Basic}	{Colorless}	sv4	153	Common
sv4-155	Maushold ex	Pokémon	{"Stage 1",ex}	{Colorless}	sv4	155	Double Rare
sv4-156	Bombirdier ex	Pokémon	{Basic,ex}	{Colorless}	sv4	156	Double Rare
sv4-160	Counter Catcher	Trainer	{Item}	{}	sv4	160	Uncommon
sv4-162	Defiance Vest	Trainer	{"Pokémon Tool"}	{}	sv4	162	Uncommon
sv4-163	Earthen Vessel	Trainer	{Item,Ancient}	{}	sv4	163	Uncommon
sv4-172	Rika	Trainer	{Supporter}	{}	sv4	172	Uncommon
sv4-154	Tandemaus	Pokémon	{Basic}	{Colorless}	sv4	154	Common
sv4-157	Cyclizar	Pokémon	{Basic}	{Colorless}	sv4	157	Uncommon
sv4-158	Iron Jugulis	Pokémon	{Basic,Future}	{Colorless}	sv4	158	Rare
sv4-161	Cursed Duster	Trainer	{"Pokémon Tool"}	{}	sv4	161	Uncommon
sv4-164	Future Booster Energy Capsule	Trainer	{"Pokémon Tool",Future}	{}	sv4	164	Uncommon
sv4-165	Larry	Trainer	{Supporter}	{}	sv4	165	Common
sv4-168	Norman	Trainer	{Supporter}	{}	sv4	168	Uncommon
sv4-169	Parasol Lady	Trainer	{Supporter}	{}	sv4	169	Common
sv4-171	Professor Turo's Scenario	Trainer	{Supporter,Future}	{}	sv4	171	Uncommon
sv4-173	Roark	Trainer	{Supporter}	{}	sv4	173	Uncommon
sv4-178	Technical Machine: Evolution	Trainer	{"Pokémon Tool"}	{}	sv4	178	Uncommon
sv4-182	Medical Energy	Energy	{Special}	{}	sv4	182	Uncommon
sv4-183	Crustle	Pokémon	{"Stage 1"}	{Grass}	sv4	183	Illustration Rare
sv4-184	Dottler	Pokémon	{"Stage 1"}	{Grass}	sv4	184	Illustration Rare
sv4-180	Techno Radar	Trainer	{Item,Future}	{}	sv4	180	Uncommon
sv4-181	Tulip	Trainer	{Supporter}	{}	sv4	181	Uncommon
sv4-186	Magby	Pokémon	{Basic}	{Fire}	sv4	186	Illustration Rare
sv4-190	Vanillish	Pokémon	{"Stage 1"}	{Water}	sv4	190	Illustration Rare
sv4-185	Toedscruel	Pokémon	{"Stage 1"}	{Grass}	sv4	185	Illustration Rare
sv4-187	Iron Moth	Pokémon	{Basic,Future}	{Fire}	sv4	187	Illustration Rare
sv4-189	Mantyke	Pokémon	{Basic}	{Water}	sv4	189	Illustration Rare
sv4-191	Wimpod	Pokémon	{Basic}	{Water}	sv4	191	Illustration Rare
sv4-193	Plusle	Pokémon	{Basic}	{Lightning}	sv4	193	Illustration Rare
sv4-188	Snorunt	Pokémon	{Basic}	{Water}	sv4	188	Illustration Rare
sv4-194	Minun	Pokémon	{Basic}	{Lightning}	sv4	194	Illustration Rare
sv4-192	Veluza	Pokémon	{Basic}	{Water}	sv4	192	Illustration Rare
sv4-197	Espathra	Pokémon	{"Stage 1"}	{Psychic}	sv4	197	Illustration Rare
sv4-203	Slither Wing	Pokémon	{Basic,Ancient}	{Fighting}	sv4	203	Illustration Rare
sv4-213	Swablu	Pokémon	{Basic}	{Colorless}	sv4	213	Illustration Rare
sv4-218	Armarouge ex	Pokémon	{"Stage 1",ex}	{Fire}	sv4	218	Ultra Rare
sv4-216	Iron Jugulis	Pokémon	{Basic,Future}	{Colorless}	sv4	216	Illustration Rare
sv4-226	Hoopa ex	Pokémon	{Basic,Tera,ex}	{Fighting}	sv4	226	Ultra Rare
sv4-220	Tsareena ex	Pokémon	{"Stage 2",Tera,ex}	{Water}	sv4	220	Ultra Rare
sv4-227	Toxtricity ex	Pokémon	{"Stage 1",Tera,ex}	{Fighting}	sv4	227	Ultra Rare
sv4-225	Iron Valiant ex	Pokémon	{Basic,ex,Future}	{Psychic}	sv4	225	Ultra Rare
sv4-228	Sandy Shocks ex	Pokémon	{Basic,ex,Ancient}	{Fighting}	sv4	228	Ultra Rare
sv4-230	Aegislash ex	Pokémon	{"Stage 2",ex}	{Metal}	sv4	230	Ultra Rare
sv4-232	Altaria ex	Pokémon	{"Stage 1",ex}	{Dragon}	sv4	232	Ultra Rare
sv4-196	Joltik	Pokémon	{Basic}	{Lightning}	sv4	196	Illustration Rare
sv4-200	Mienshao	Pokémon	{"Stage 1"}	{Fighting}	sv4	200	Illustration Rare
sv4-201	Minior	Pokémon	{Basic}	{Fighting}	sv4	201	Illustration Rare
sv4-204	Garbodor	Pokémon	{"Stage 1"}	{Darkness}	sv4	204	Illustration Rare
sv4-205	Yveltal	Pokémon	{Basic}	{Darkness}	sv4	205	Illustration Rare
sv4-209	Ferrothorn	Pokémon	{"Stage 1"}	{Metal}	sv4	209	Illustration Rare
sv4-210	Aegislash	Pokémon	{"Stage 2"}	{Metal}	sv4	210	Illustration Rare
sv4-211	Aipom	Pokémon	{Basic}	{Colorless}	sv4	211	Illustration Rare
sv4-212	Loudred	Pokémon	{"Stage 1"}	{Colorless}	sv4	212	Illustration Rare
sv4-219	Garchomp ex	Pokémon	{"Stage 2",Tera,ex}	{Water}	sv4	219	Ultra Rare
sv4-223	Iron Hands ex	Pokémon	{Basic,ex,Future}	{Lightning}	sv4	223	Ultra Rare
sv4-224	Cofagrigus ex	Pokémon	{"Stage 1",ex}	{Psychic}	sv4	224	Ultra Rare
sv4-195	Blitzle	Pokémon	{Basic}	{Lightning}	sv4	195	Illustration Rare
sv4-198	Gimmighoul	Pokémon	{Basic}	{Psychic}	sv4	198	Illustration Rare
sv4-199	Groudon	Pokémon	{Basic}	{Fighting}	sv4	199	Illustration Rare
sv4-202	Garganacl	Pokémon	{"Stage 2"}	{Fighting}	sv4	202	Illustration Rare
sv4-206	Morpeko	Pokémon	{Basic}	{Darkness}	sv4	206	Illustration Rare
sv4-207	Brute Bonnet	Pokémon	{Basic,Ancient}	{Darkness}	sv4	207	Illustration Rare
sv4-208	Steelix	Pokémon	{"Stage 1"}	{Metal}	sv4	208	Illustration Rare
sv4-214	Porygon-Z	Pokémon	{"Stage 2"}	{Colorless}	sv4	214	Illustration Rare
sv4-215	Cyclizar	Pokémon	{Basic}	{Colorless}	sv4	215	Illustration Rare
sv4-217	Froslass ex	Pokémon	{"Stage 1",Tera,ex}	{Grass}	sv4	217	Ultra Rare
sv4-221	Golisopod ex	Pokémon	{"Stage 1",ex}	{Water}	sv4	221	Ultra Rare
sv4-222	Tapu Koko ex	Pokémon	{Basic,ex}	{Lightning}	sv4	222	Ultra Rare
sv4-229	Roaring Moon ex	Pokémon	{Basic,ex,Ancient}	{Darkness}	sv4	229	Ultra Rare
sv4-231	Gholdengo ex	Pokémon	{"Stage 1",ex}	{Metal}	sv4	231	Ultra Rare
sv4-233	Maushold ex	Pokémon	{"Stage 1",ex}	{Colorless}	sv4	233	Ultra Rare
sv4-237	Norman	Trainer	{Supporter}	{}	sv4	237	Ultra Rare
sv4-234	Bombirdier ex	Pokémon	{Basic,ex}	{Colorless}	sv4	234	Ultra Rare
sv4-235	Larry	Trainer	{Supporter}	{}	sv4	235	Ultra Rare
sv4-236	Mela	Trainer	{Supporter}	{}	sv4	236	Ultra Rare
sv4-238	Parasol Lady	Trainer	{Supporter}	{}	sv4	238	Ultra Rare
sv4-239	Professor Sada's Vitality	Trainer	{Supporter,Ancient}	{}	sv4	239	Ultra Rare
sv4-240	Professor Turo's Scenario	Trainer	{Supporter,Future}	{}	sv4	240	Ultra Rare
sv4-241	Rika	Trainer	{Supporter}	{}	sv4	241	Ultra Rare
sv4-242	Roark	Trainer	{Supporter}	{}	sv4	242	Ultra Rare
sv4-247	Tapu Koko ex	Pokémon	{Basic,ex}	{Lightning}	sv4	247	Special Illustration Rare
sv4-249	Iron Valiant ex	Pokémon	{Basic,ex,Future}	{Psychic}	sv4	249	Special Illustration Rare
sv4-250	Sandy Shocks ex	Pokémon	{Basic,ex,Ancient}	{Fighting}	sv4	250	Special Illustration Rare
sv4-248	Iron Hands ex	Pokémon	{Basic,ex,Future}	{Lightning}	sv4	248	Special Illustration Rare
sv4-243	Shauntal	Trainer	{Supporter}	{}	sv4	243	Ultra Rare
sv4-245	Garchomp ex	Pokémon	{"Stage 2",Tera,ex}	{Water}	sv4	245	Special Illustration Rare
sv4-246	Golisopod ex	Pokémon	{"Stage 1",ex}	{Water}	sv4	246	Special Illustration Rare
sv4-251	Roaring Moon ex	Pokémon	{Basic,ex,Ancient}	{Darkness}	sv4	251	Special Illustration Rare
sv4pt5-1	Pineco	Pokémon	{Basic}	{Grass}	sv4pt5	1	Common
sv4pt5-2	Forretress ex	Pokémon	{"Stage 1",Tera,ex}	{Grass}	sv4pt5	2	Double Rare
sv4pt5-3	Maractus	Pokémon	{Basic}	{Grass}	sv4pt5	3	Common
sv4pt5-4	Toedscool	Pokémon	{Basic}	{Grass}	sv4pt5	4	Common
sv4pt5-5	Toedscruel ex	Pokémon	{"Stage 1",ex}	{Grass}	sv4pt5	5	Double Rare
sv4pt5-6	Espathra ex	Pokémon	{"Stage 1",Tera,ex}	{Grass}	sv4pt5	6	Double Rare
sv4pt5-7	Charmander	Pokémon	{Basic}	{Fire}	sv4pt5	7	Common
sv4pt5-8	Charmeleon	Pokémon	{"Stage 1"}	{Fire}	sv4pt5	8	Uncommon
sv4pt5-9	Magmar	Pokémon	{Basic}	{Fire}	sv4pt5	9	Common
sv4pt5-10	Magmortar	Pokémon	{"Stage 1"}	{Fire}	sv4pt5	10	Rare
sv4pt5-11	Numel	Pokémon	{Basic}	{Fire}	sv4pt5	11	Common
sv4pt5-12	Camerupt	Pokémon	{"Stage 1"}	{Fire}	sv4pt5	12	Uncommon
sv4pt5-13	Heat Rotom	Pokémon	{Basic}	{Fire}	sv4pt5	13	Rare
sv4pt5-14	Charcadet	Pokémon	{Basic}	{Fire}	sv4pt5	14	Common
sv4pt5-15	Armarouge	Pokémon	{"Stage 1"}	{Fire}	sv4pt5	15	Rare
sv4pt5-16	Lapras	Pokémon	{Basic}	{Water}	sv4pt5	16	Common
sv4pt5-17	Frigibax	Pokémon	{Basic}	{Water}	sv4pt5	17	Common
sv4pt5-18	Pikachu	Pokémon	{Basic}	{Lightning}	sv4pt5	18	Common
sv4pt5-19	Raichu	Pokémon	{"Stage 1"}	{Lightning}	sv4pt5	19	Rare
sv4pt5-20	Chinchou	Pokémon	{Basic}	{Lightning}	sv4pt5	20	Common
sv4pt5-21	Lanturn	Pokémon	{"Stage 1"}	{Lightning}	sv4pt5	21	Uncommon
sv4pt5-22	Kilowattrel	Pokémon	{"Stage 1"}	{Lightning}	sv4pt5	22	Uncommon
sv4pt5-23	Exeggcute	Pokémon	{Basic}	{Psychic}	sv4pt5	23	Common
sv4pt5-24	Exeggutor	Pokémon	{"Stage 1"}	{Psychic}	sv4pt5	24	Rare
sv4pt5-25	Natu	Pokémon	{Basic}	{Psychic}	sv4pt5	25	Common
sv4pt5-26	Xatu	Pokémon	{"Stage 1"}	{Psychic}	sv4pt5	26	Rare
sv4pt5-27	Ralts	Pokémon	{Basic}	{Psychic}	sv4pt5	27	Common
sv4pt5-28	Kirlia	Pokémon	{"Stage 1"}	{Psychic}	sv4pt5	28	Uncommon
sv4pt5-29	Gardevoir ex	Pokémon	{"Stage 2",ex}	{Psychic}	sv4pt5	29	Double Rare
sv4pt5-30	Chimecho	Pokémon	{Basic}	{Psychic}	sv4pt5	30	Common
sv4pt5-31	Mime Jr.	Pokémon	{Basic}	{Psychic}	sv4pt5	31	Common
sv4pt5-32	Woobat	Pokémon	{Basic}	{Psychic}	sv4pt5	32	Common
sv4pt5-33	Swoobat	Pokémon	{"Stage 1"}	{Psychic}	sv4pt5	33	Uncommon
sv4pt5-34	Cottonee	Pokémon	{Basic}	{Psychic}	sv4pt5	34	Common
sv4pt5-35	Whimsicott	Pokémon	{"Stage 1"}	{Psychic}	sv4pt5	35	Uncommon
sv4pt5-36	Dedenne	Pokémon	{Basic}	{Psychic}	sv4pt5	36	Common
sv4pt5-37	Mimikyu	Pokémon	{Basic}	{Psychic}	sv4pt5	37	Rare
sv4pt5-38	Fidough	Pokémon	{Basic}	{Psychic}	sv4pt5	38	Common
sv4pt5-39	Dachsbun	Pokémon	{"Stage 1"}	{Psychic}	sv4pt5	39	Uncommon
sv4pt5-40	Ceruledge	Pokémon	{"Stage 1"}	{Psychic}	sv4pt5	40	Rare
sv4pt5-41	Flittle	Pokémon	{Basic}	{Psychic}	sv4pt5	41	Common
sv4pt5-42	Greavard	Pokémon	{Basic}	{Psychic}	sv4pt5	42	Common
sv4pt5-43	Houndstone	Pokémon	{"Stage 1"}	{Psychic}	sv4pt5	43	Rare
sv4pt5-44	Gimmighoul	Pokémon	{Basic}	{Psychic}	sv4pt5	44	Common
sv4pt5-45	Mankey	Pokémon	{Basic}	{Fighting}	sv4pt5	45	Common
sv4pt5-46	Primeape	Pokémon	{"Stage 1"}	{Fighting}	sv4pt5	46	Uncommon
sv4pt5-47	Annihilape	Pokémon	{"Stage 2"}	{Fighting}	sv4pt5	47	Rare
sv4pt5-48	Phanpy	Pokémon	{Basic}	{Fighting}	sv4pt5	48	Common
sv4pt5-49	Donphan	Pokémon	{"Stage 1"}	{Fighting}	sv4pt5	49	Uncommon
sv4pt5-50	Barboach	Pokémon	{Basic}	{Fighting}	sv4pt5	50	Common
sv4pt5-51	Clobbopus	Pokémon	{Basic}	{Fighting}	sv4pt5	51	Common
sv4pt5-52	Grapploct	Pokémon	{"Stage 1"}	{Fighting}	sv4pt5	52	Uncommon
sv4pt5-53	Great Tusk ex	Pokémon	{Basic,ex,Ancient}	{Fighting}	sv4pt5	53	Double Rare
sv4pt5-54	Charizard ex	Pokémon	{"Stage 2",Tera,ex}	{Darkness}	sv4pt5	54	Double Rare
sv4pt5-55	Gastly	Pokémon	{Basic}	{Darkness}	sv4pt5	55	Common
sv4pt5-56	Haunter	Pokémon	{"Stage 1"}	{Darkness}	sv4pt5	56	Common
sv4pt5-57	Gengar	Pokémon	{"Stage 2"}	{Darkness}	sv4pt5	57	Uncommon
sv4pt5-58	Paldean Wooper	Pokémon	{Basic}	{Darkness}	sv4pt5	58	Common
sv4pt5-59	Paldean Clodsire ex	Pokémon	{"Stage 1",ex}	{Darkness}	sv4pt5	59	Double Rare
sv4pt5-60	Scraggy	Pokémon	{Basic}	{Darkness}	sv4pt5	60	Common
sv4pt5-61	Scrafty	Pokémon	{"Stage 1"}	{Darkness}	sv4pt5	61	Uncommon
sv4pt5-62	Maschiff	Pokémon	{Basic}	{Darkness}	sv4pt5	62	Common
sv4pt5-63	Mabosstiff	Pokémon	{"Stage 1"}	{Darkness}	sv4pt5	63	Rare
sv4pt5-64	Varoom	Pokémon	{Basic}	{Metal}	sv4pt5	64	Common
sv4pt5-65	Revavroom	Pokémon	{"Stage 1"}	{Metal}	sv4pt5	65	Rare
sv4pt5-66	Iron Treads ex	Pokémon	{Basic,ex,Future}	{Metal}	sv4pt5	66	Double Rare
sv4pt5-67	Gholdengo	Pokémon	{"Stage 1"}	{Metal}	sv4pt5	67	Rare
sv4pt5-68	Noibat	Pokémon	{Basic}	{Dragon}	sv4pt5	68	Common
sv4pt5-69	Noivern ex	Pokémon	{"Stage 1",ex}	{Dragon}	sv4pt5	69	Double Rare
sv4pt5-70	Cyclizar	Pokémon	{Basic}	{Dragon}	sv4pt5	70	Rare
sv4pt5-71	Lechonk	Pokémon	{Basic}	{Colorless}	sv4pt5	71	Common
sv4pt5-72	Oinkologne	Pokémon	{"Stage 1"}	{Colorless}	sv4pt5	72	Uncommon
sv4pt5-73	Tandemaus	Pokémon	{Basic}	{Colorless}	sv4pt5	73	Common
sv4pt5-74	Maushold	Pokémon	{"Stage 1"}	{Colorless}	sv4pt5	74	Uncommon
sv4pt5-75	Squawkabilly ex	Pokémon	{Basic,ex}	{Colorless}	sv4pt5	75	Double Rare
sv4pt5-76	Artazon	Trainer	{Stadium}	{}	sv4pt5	76	Uncommon
sv4pt5-77	Atticus	Trainer	{Supporter}	{}	sv4pt5	77	Uncommon
sv4pt5-78	Clive	Trainer	{Supporter}	{}	sv4pt5	78	Uncommon
sv4pt5-79	Electric Generator	Trainer	{Item}	{}	sv4pt5	79	Uncommon
sv4pt5-80	Iono	Trainer	{Supporter}	{}	sv4pt5	80	Uncommon
sv4pt5-81	Moonlit Hill	Trainer	{Stadium}	{}	sv4pt5	81	Uncommon
sv4pt5-82	Nemona	Trainer	{Supporter}	{}	sv4pt5	82	Common
sv4pt5-83	Nemona's Backpack	Trainer	{Item}	{}	sv4pt5	83	Uncommon
sv4pt5-84	Nest Ball	Trainer	{Item}	{}	sv4pt5	84	Uncommon
sv4pt5-85	Paldean Student	Trainer	{Supporter}	{}	sv4pt5	85	Common
sv4pt5-86	Paldean Student	Trainer	{Supporter}	{}	sv4pt5	86	Common
sv4pt5-87	Professor's Research	Trainer	{Supporter}	{}	sv4pt5	87	Rare
sv4pt5-88	Professor's Research	Trainer	{Supporter}	{}	sv4pt5	88	Rare
sv4pt5-89	Rare Candy	Trainer	{Item}	{}	sv4pt5	89	Common
sv4pt5-90	Technical Machine: Crisis Punch	Trainer	{"Pokémon Tool"}	{}	sv4pt5	90	Uncommon
sv4pt5-91	Ultra Ball	Trainer	{Item}	{}	sv4pt5	91	Uncommon
sv4pt5-92	Oddish	Pokémon	{Basic}	{Grass}	sv4pt5	92	Shiny Rare
sv4pt5-93	Gloom	Pokémon	{"Stage 1"}	{Grass}	sv4pt5	93	Shiny Rare
sv4pt5-94	Vileplume	Pokémon	{"Stage 2"}	{Grass}	sv4pt5	94	Shiny Rare
sv4pt5-95	Scyther	Pokémon	{Basic}	{Grass}	sv4pt5	95	Shiny Rare
sv4pt5-96	Hoppip	Pokémon	{Basic}	{Grass}	sv4pt5	96	Shiny Rare
sv4pt5-97	Skiploom	Pokémon	{"Stage 1"}	{Grass}	sv4pt5	97	Shiny Rare
sv4pt5-98	Jumpluff	Pokémon	{"Stage 2"}	{Grass}	sv4pt5	98	Shiny Rare
sv4pt5-99	Pineco	Pokémon	{Basic}	{Grass}	sv4pt5	99	Shiny Rare
sv4pt5-100	Snover	Pokémon	{Basic}	{Grass}	sv4pt5	100	Shiny Rare
sv4pt5-101	Abomasnow	Pokémon	{"Stage 1"}	{Grass}	sv4pt5	101	Shiny Rare
sv4pt5-102	Smoliv	Pokémon	{Basic}	{Grass}	sv4pt5	102	Shiny Rare
sv4pt5-103	Dolliv	Pokémon	{"Stage 1"}	{Grass}	sv4pt5	103	Shiny Rare
sv4pt5-104	Arboliva	Pokémon	{"Stage 2"}	{Grass}	sv4pt5	104	Shiny Rare
sv4pt5-105	Toedscool	Pokémon	{Basic}	{Grass}	sv4pt5	105	Shiny Rare
sv4pt5-106	Capsakid	Pokémon	{Basic}	{Grass}	sv4pt5	106	Shiny Rare
sv4pt5-107	Scovillain	Pokémon	{"Stage 1"}	{Grass}	sv4pt5	107	Shiny Rare
sv4pt5-108	Rellor	Pokémon	{Basic}	{Grass}	sv4pt5	108	Shiny Rare
sv4pt5-109	Charmander	Pokémon	{Basic}	{Fire}	sv4pt5	109	Shiny Rare
sv4pt5-110	Charmeleon	Pokémon	{"Stage 1"}	{Fire}	sv4pt5	110	Shiny Rare
sv4pt5-111	Paldean Tauros	Pokémon	{Basic}	{Fire}	sv4pt5	111	Shiny Rare
sv4pt5-112	Entei	Pokémon	{Basic}	{Fire}	sv4pt5	112	Shiny Rare
sv4pt5-113	Oricorio	Pokémon	{Basic}	{Fire}	sv4pt5	113	Shiny Rare
sv4pt5-114	Charcadet	Pokémon	{Basic}	{Fire}	sv4pt5	114	Shiny Rare
sv4pt5-115	Armarouge	Pokémon	{"Stage 1"}	{Fire}	sv4pt5	115	Shiny Rare
sv4pt5-116	Slowpoke	Pokémon	{Basic}	{Water}	sv4pt5	116	Shiny Rare
sv4pt5-117	Slowbro	Pokémon	{"Stage 1"}	{Water}	sv4pt5	117	Shiny Rare
sv4pt5-118	Staryu	Pokémon	{Basic}	{Water}	sv4pt5	118	Shiny Rare
sv4pt5-119	Starmie	Pokémon	{"Stage 1"}	{Water}	sv4pt5	119	Shiny Rare
sv4pt5-120	Paldean Tauros	Pokémon	{Basic}	{Water}	sv4pt5	120	Shiny Rare
sv4pt5-121	Wiglett	Pokémon	{Basic}	{Water}	sv4pt5	121	Shiny Rare
sv4pt5-122	Wugtrio	Pokémon	{"Stage 1"}	{Water}	sv4pt5	122	Shiny Rare
sv4pt5-123	Finizen	Pokémon	{Basic}	{Water}	sv4pt5	123	Shiny Rare
sv4pt5-124	Palafin	Pokémon	{"Stage 1"}	{Water}	sv4pt5	124	Shiny Rare
sv4pt5-125	Veluza	Pokémon	{Basic}	{Water}	sv4pt5	125	Shiny Rare
sv4pt5-126	Dondozo	Pokémon	{Basic}	{Water}	sv4pt5	126	Shiny Rare
sv4pt5-127	Tatsugiri	Pokémon	{Basic}	{Water}	sv4pt5	127	Shiny Rare
sv4pt5-128	Frigibax	Pokémon	{Basic}	{Water}	sv4pt5	128	Shiny Rare
sv4pt5-129	Arctibax	Pokémon	{"Stage 1"}	{Water}	sv4pt5	129	Shiny Rare
sv4pt5-130	Baxcalibur	Pokémon	{"Stage 2"}	{Water}	sv4pt5	130	Shiny Rare
sv4pt5-131	Pikachu	Pokémon	{Basic}	{Lightning}	sv4pt5	131	Shiny Rare
sv4pt5-132	Raichu	Pokémon	{"Stage 1"}	{Lightning}	sv4pt5	132	Shiny Rare
sv4pt5-133	Voltorb	Pokémon	{Basic}	{Lightning}	sv4pt5	133	Shiny Rare
sv4pt5-134	Electrode	Pokémon	{"Stage 1"}	{Lightning}	sv4pt5	134	Shiny Rare
sv4pt5-135	Shinx	Pokémon	{Basic}	{Lightning}	sv4pt5	135	Shiny Rare
sv4pt5-136	Luxio	Pokémon	{"Stage 1"}	{Lightning}	sv4pt5	136	Shiny Rare
sv4pt5-137	Luxray	Pokémon	{"Stage 2"}	{Lightning}	sv4pt5	137	Shiny Rare
sv4pt5-138	Pachirisu	Pokémon	{Basic}	{Lightning}	sv4pt5	138	Shiny Rare
sv4pt5-139	Thundurus	Pokémon	{Basic}	{Lightning}	sv4pt5	139	Shiny Rare
sv4pt5-140	Toxel	Pokémon	{Basic}	{Lightning}	sv4pt5	140	Shiny Rare
sv4pt5-141	Toxtricity	Pokémon	{"Stage 1"}	{Lightning}	sv4pt5	141	Shiny Rare
sv4pt5-142	Pawmi	Pokémon	{Basic}	{Lightning}	sv4pt5	142	Shiny Rare
sv4pt5-143	Pawmo	Pokémon	{"Stage 1"}	{Lightning}	sv4pt5	143	Shiny Rare
sv4pt5-144	Pawmot	Pokémon	{"Stage 2"}	{Lightning}	sv4pt5	144	Shiny Rare
sv4pt5-145	Wattrel	Pokémon	{Basic}	{Lightning}	sv4pt5	145	Shiny Rare
sv4pt5-146	Kilowattrel	Pokémon	{"Stage 1"}	{Lightning}	sv4pt5	146	Shiny Rare
sv4pt5-147	Wigglytuff	Pokémon	{"Stage 1"}	{Psychic}	sv4pt5	147	Shiny Rare
sv4pt5-148	Abra	Pokémon	{Basic}	{Psychic}	sv4pt5	148	Shiny Rare
sv4pt5-149	Kadabra	Pokémon	{"Stage 1"}	{Psychic}	sv4pt5	149	Shiny Rare
sv4pt5-150	Cleffa	Pokémon	{Basic}	{Psychic}	sv4pt5	150	Shiny Rare
sv4pt5-151	Natu	Pokémon	{Basic}	{Psychic}	sv4pt5	151	Shiny Rare
sv4pt5-152	Xatu	Pokémon	{"Stage 1"}	{Psychic}	sv4pt5	152	Shiny Rare
sv4pt5-153	Ralts	Pokémon	{Basic}	{Psychic}	sv4pt5	153	Shiny Rare
sv4pt5-154	Kirlia	Pokémon	{"Stage 1"}	{Psychic}	sv4pt5	154	Shiny Rare
sv4pt5-155	Drifloon	Pokémon	{Basic}	{Psychic}	sv4pt5	155	Shiny Rare
sv4pt5-156	Drifblim	Pokémon	{"Stage 1"}	{Psychic}	sv4pt5	156	Shiny Rare
sv4pt5-157	Mime Jr.	Pokémon	{Basic}	{Psychic}	sv4pt5	157	Shiny Rare
sv4pt5-158	Spiritomb	Pokémon	{Basic}	{Psychic}	sv4pt5	158	Shiny Rare
sv4pt5-159	Klefki	Pokémon	{Basic}	{Psychic}	sv4pt5	159	Shiny Rare
sv4pt5-160	Mimikyu	Pokémon	{Basic}	{Psychic}	sv4pt5	160	Shiny Rare
sv4pt5-161	Dachsbun	Pokémon	{"Stage 1"}	{Psychic}	sv4pt5	161	Shiny Rare
sv4pt5-162	Ceruledge	Pokémon	{"Stage 1"}	{Psychic}	sv4pt5	162	Shiny Rare
sv4pt5-163	Rabsca	Pokémon	{"Stage 1"}	{Psychic}	sv4pt5	163	Shiny Rare
sv4pt5-164	Flittle	Pokémon	{Basic}	{Psychic}	sv4pt5	164	Shiny Rare
sv4pt5-165	Tinkatink	Pokémon	{Basic}	{Psychic}	sv4pt5	165	Shiny Rare
sv4pt5-166	Tinkatuff	Pokémon	{"Stage 1"}	{Psychic}	sv4pt5	166	Shiny Rare
sv4pt5-167	Tinkaton	Pokémon	{"Stage 2"}	{Psychic}	sv4pt5	167	Shiny Rare
sv4pt5-168	Houndstone	Pokémon	{"Stage 1"}	{Psychic}	sv4pt5	168	Shiny Rare
sv4pt5-169	Mankey	Pokémon	{Basic}	{Fighting}	sv4pt5	169	Shiny Rare
sv4pt5-170	Primeape	Pokémon	{"Stage 1"}	{Fighting}	sv4pt5	170	Shiny Rare
sv4pt5-171	Annihilape	Pokémon	{"Stage 2"}	{Fighting}	sv4pt5	171	Shiny Rare
sv4pt5-172	Paldean Tauros	Pokémon	{Basic}	{Fighting}	sv4pt5	172	Shiny Rare
sv4pt5-173	Riolu	Pokémon	{Basic}	{Fighting}	sv4pt5	173	Shiny Rare
sv4pt5-174	Lucario	Pokémon	{"Stage 1"}	{Fighting}	sv4pt5	174	Shiny Rare
sv4pt5-175	Hawlucha	Pokémon	{Basic}	{Fighting}	sv4pt5	175	Shiny Rare
sv4pt5-176	Nacli	Pokémon	{Basic}	{Fighting}	sv4pt5	176	Shiny Rare
sv4pt5-177	Naclstack	Pokémon	{"Stage 1"}	{Fighting}	sv4pt5	177	Shiny Rare
sv4pt5-178	Garganacl	Pokémon	{"Stage 2"}	{Fighting}	sv4pt5	178	Shiny Rare
sv4pt5-179	Glimmet	Pokémon	{Basic}	{Fighting}	sv4pt5	179	Shiny Rare
sv4pt5-180	Paldean Wooper	Pokémon	{Basic}	{Darkness}	sv4pt5	180	Shiny Rare
sv4pt5-181	Murkrow	Pokémon	{Basic}	{Darkness}	sv4pt5	181	Shiny Rare
sv4pt5-182	Sneasel	Pokémon	{Basic}	{Darkness}	sv4pt5	182	Shiny Rare
sv4pt5-183	Weavile	Pokémon	{"Stage 1"}	{Darkness}	sv4pt5	183	Shiny Rare
sv4pt5-184	Sableye	Pokémon	{Basic}	{Darkness}	sv4pt5	184	Shiny Rare
sv4pt5-185	Pawniard	Pokémon	{Basic}	{Darkness}	sv4pt5	185	Shiny Rare
sv4pt5-186	Bisharp	Pokémon	{"Stage 1"}	{Darkness}	sv4pt5	186	Shiny Rare
sv4pt5-187	Kingambit	Pokémon	{"Stage 2"}	{Darkness}	sv4pt5	187	Shiny Rare
sv4pt5-188	Mabosstiff	Pokémon	{"Stage 1"}	{Darkness}	sv4pt5	188	Shiny Rare
sv4pt5-189	Shroodle	Pokémon	{Basic}	{Darkness}	sv4pt5	189	Shiny Rare
sv4pt5-190	Grafaiai	Pokémon	{"Stage 1"}	{Darkness}	sv4pt5	190	Shiny Rare
sv4pt5-191	Scizor	Pokémon	{"Stage 1"}	{Metal}	sv4pt5	191	Shiny Rare
sv4pt5-192	Varoom	Pokémon	{Basic}	{Metal}	sv4pt5	192	Shiny Rare
sv4pt5-193	Revavroom	Pokémon	{"Stage 1"}	{Metal}	sv4pt5	193	Shiny Rare
sv4pt5-194	Noibat	Pokémon	{Basic}	{Dragon}	sv4pt5	194	Shiny Rare
sv4pt5-195	Cyclizar	Pokémon	{Basic}	{Dragon}	sv4pt5	195	Shiny Rare
sv4pt5-196	Pidgey	Pokémon	{Basic}	{Colorless}	sv4pt5	196	Shiny Rare
sv4pt5-197	Pidgeotto	Pokémon	{"Stage 1"}	{Colorless}	sv4pt5	197	Shiny Rare
sv4pt5-198	Jigglypuff	Pokémon	{Basic}	{Colorless}	sv4pt5	198	Shiny Rare
sv4pt5-199	Doduo	Pokémon	{Basic}	{Colorless}	sv4pt5	199	Shiny Rare
sv4pt5-200	Dodrio	Pokémon	{"Stage 1"}	{Colorless}	sv4pt5	200	Shiny Rare
sv4pt5-201	Ditto	Pokémon	{Basic}	{Colorless}	sv4pt5	201	Shiny Rare
sv4pt5-202	Snorlax	Pokémon	{Basic}	{Colorless}	sv4pt5	202	Shiny Rare
sv4pt5-203	Wingull	Pokémon	{Basic}	{Colorless}	sv4pt5	203	Shiny Rare
sv4pt5-204	Pelipper	Pokémon	{"Stage 1"}	{Colorless}	sv4pt5	204	Shiny Rare
sv4pt5-205	Skwovet	Pokémon	{Basic}	{Colorless}	sv4pt5	205	Shiny Rare
sv4pt5-206	Greedent	Pokémon	{"Stage 1"}	{Colorless}	sv4pt5	206	Shiny Rare
sv4pt5-207	Lechonk	Pokémon	{Basic}	{Colorless}	sv4pt5	207	Shiny Rare
sv4pt5-208	Oinkologne	Pokémon	{"Stage 1"}	{Colorless}	sv4pt5	208	Shiny Rare
sv4pt5-209	Tandemaus	Pokémon	{Basic}	{Colorless}	sv4pt5	209	Shiny Rare
sv4pt5-210	Maushold	Pokémon	{"Stage 1"}	{Colorless}	sv4pt5	210	Shiny Rare
sv4pt5-211	Flamigo	Pokémon	{Basic}	{Colorless}	sv4pt5	211	Shiny Rare
sv4pt5-212	Forretress ex	Pokémon	{"Stage 1",Tera,ex}	{Grass}	sv4pt5	212	Shiny Ultra Rare
sv4pt5-213	Toedscruel ex	Pokémon	{"Stage 1",ex}	{Grass}	sv4pt5	213	Shiny Ultra Rare
sv4pt5-214	Espathra ex	Pokémon	{"Stage 1",Tera,ex}	{Grass}	sv4pt5	214	Shiny Ultra Rare
sv4pt5-215	Alakazam ex	Pokémon	{"Stage 2",ex}	{Psychic}	sv4pt5	215	Shiny Ultra Rare
sv4pt5-216	Mew ex	Pokémon	{Basic,ex}	{Psychic}	sv4pt5	216	Shiny Ultra Rare
sv4pt5-217	Gardevoir ex	Pokémon	{"Stage 2",ex}	{Psychic}	sv4pt5	217	Shiny Ultra Rare
sv4pt5-218	Glimmora ex	Pokémon	{"Stage 1",ex}	{Fighting}	sv4pt5	218	Shiny Ultra Rare
sv4pt5-219	Paldean Clodsire ex	Pokémon	{"Stage 1",ex}	{Darkness}	sv4pt5	219	Shiny Ultra Rare
sv4pt5-220	Noivern ex	Pokémon	{"Stage 1",ex}	{Dragon}	sv4pt5	220	Shiny Ultra Rare
sv4pt5-221	Pidgeot ex	Pokémon	{"Stage 2",ex}	{Colorless}	sv4pt5	221	Shiny Ultra Rare
sv4pt5-222	Wigglytuff ex	Pokémon	{"Stage 1",ex}	{Colorless}	sv4pt5	222	Shiny Ultra Rare
sv4pt5-223	Squawkabilly ex	Pokémon	{Basic,ex}	{Colorless}	sv4pt5	223	Shiny Ultra Rare
sv4pt5-224	Wugtrio	Pokémon	{"Stage 1"}	{Water}	sv4pt5	224	Illustration Rare
sv4pt5-225	Palafin	Pokémon	{"Stage 1"}	{Water}	sv4pt5	225	Illustration Rare
sv4pt5-226	Pawmi	Pokémon	{Basic}	{Lightning}	sv4pt5	226	Illustration Rare
sv4pt5-227	Clive	Trainer	{Supporter}	{}	sv4pt5	227	Ultra Rare
sv4pt5-228	Judge	Trainer	{Supporter}	{}	sv4pt5	228	Ultra Rare
sv4pt5-229	Nemona	Trainer	{Supporter}	{}	sv4pt5	229	Ultra Rare
sv4pt5-230	Paldean Student	Trainer	{Supporter}	{}	sv4pt5	230	Ultra Rare
sv4pt5-231	Paldean Student	Trainer	{Supporter}	{}	sv4pt5	231	Ultra Rare
sv4pt5-232	Mew ex	Pokémon	{Basic,ex}	{Psychic}	sv4pt5	232	Special Illustration Rare
sv4pt5-233	Gardevoir ex	Pokémon	{"Stage 2",ex}	{Psychic}	sv4pt5	233	Special Illustration Rare
sv4pt5-234	Charizard ex	Pokémon	{"Stage 2",Tera,ex}	{Darkness}	sv4pt5	234	Special Illustration Rare
sv4pt5-235	Arven	Trainer	{Supporter}	{}	sv4pt5	235	Special Illustration Rare
sv4pt5-236	Clive	Trainer	{Supporter}	{}	sv4pt5	236	Special Illustration Rare
sv4pt5-237	Iono	Trainer	{Supporter}	{}	sv4pt5	237	Special Illustration Rare
sv4pt5-238	Nemona	Trainer	{Supporter}	{}	sv4pt5	238	Special Illustration Rare
sv4pt5-239	Penny	Trainer	{Supporter}	{}	sv4pt5	239	Special Illustration Rare
sv4pt5-240	Wo-Chien ex	Pokémon	{Basic,ex}	{Grass}	sv4pt5	240	Hyper Rare
sv4pt5-241	Chi-Yu ex	Pokémon	{Basic,ex}	{Fire}	sv4pt5	241	Hyper Rare
sv4pt5-242	Chien-Pao ex	Pokémon	{Basic,ex}	{Water}	sv4pt5	242	Hyper Rare
sv4pt5-243	Miraidon ex	Pokémon	{Basic,ex}	{Lightning}	sv4pt5	243	Hyper Rare
sv4pt5-244	Ting-Lu ex	Pokémon	{Basic,ex}	{Fighting}	sv4pt5	244	Hyper Rare
sv4pt5-245	Koraidon ex	Pokémon	{Basic,ex}	{Fighting}	sv4pt5	245	Hyper Rare
sv5-1	Scyther	Pokémon	{Basic}	{Grass}	sv5	1	Common
sv5-2	Pineco	Pokémon	{Basic}	{Grass}	sv5	2	Common
sv5-3	Seedot	Pokémon	{Basic}	{Grass}	sv5	3	Common
sv5-4	Nuzleaf	Pokémon	{"Stage 1"}	{Grass}	sv5	4	Common
sv5-5	Shiftry	Pokémon	{"Stage 2"}	{Grass}	sv5	5	Uncommon
sv5-6	Shroomish	Pokémon	{Basic}	{Grass}	sv5	6	Common
sv5-7	Breloom	Pokémon	{"Stage 1"}	{Grass}	sv5	7	Common
sv5-8	Roselia	Pokémon	{Basic}	{Grass}	sv5	8	Common
sv5-9	Roserade	Pokémon	{"Stage 1"}	{Grass}	sv5	9	Uncommon
sv5-10	Turtwig	Pokémon	{Basic}	{Grass}	sv5	10	Common
sv5-11	Grotle	Pokémon	{"Stage 1"}	{Grass}	sv5	11	Common
sv5-12	Torterra ex	Pokémon	{"Stage 2",ex}	{Grass}	sv5	12	Double Rare
sv5-13	Shaymin	Pokémon	{Basic}	{Grass}	sv5	13	Uncommon
sv5-14	Cottonee	Pokémon	{Basic}	{Grass}	sv5	14	Common
sv5-15	Whimsicott	Pokémon	{"Stage 1"}	{Grass}	sv5	15	Rare
sv5-16	Deerling	Pokémon	{Basic}	{Grass}	sv5	16	Common
sv5-17	Sawsbuck	Pokémon	{"Stage 1"}	{Grass}	sv5	17	Uncommon
sv5-18	Grubbin	Pokémon	{Basic}	{Grass}	sv5	18	Common
sv5-19	Dhelmise	Pokémon	{Basic}	{Grass}	sv5	19	Uncommon
sv5-20	Bramblin	Pokémon	{Basic}	{Grass}	sv5	20	Common
sv5-21	Brambleghast	Pokémon	{"Stage 1"}	{Grass}	sv5	21	Rare
sv5-22	Scovillain ex	Pokémon	{"Stage 1",ex}	{Grass}	sv5	22	Double Rare
sv5-23	Rellor	Pokémon	{Basic}	{Grass}	sv5	23	Common
sv5-24	Rabsca	Pokémon	{"Stage 1"}	{Grass}	sv5	24	Uncommon
sv5-25	Iron Leaves ex	Pokémon	{Basic,ex,Future}	{Grass}	sv5	25	Double Rare
sv5-26	Ponyta	Pokémon	{Basic}	{Fire}	sv5	26	Common
sv5-27	Rapidash	Pokémon	{"Stage 1"}	{Fire}	sv5	27	Uncommon
sv5-28	Slugma	Pokémon	{Basic}	{Fire}	sv5	28	Common
sv5-29	Magcargo	Pokémon	{"Stage 1"}	{Fire}	sv5	29	Rare
sv5-30	Victini	Pokémon	{Basic}	{Fire}	sv5	30	Common
sv5-31	Heatmor	Pokémon	{Basic}	{Fire}	sv5	31	Common
sv5-32	Litten	Pokémon	{Basic}	{Fire}	sv5	32	Common
sv5-33	Torracat	Pokémon	{"Stage 1"}	{Fire}	sv5	33	Common
sv5-34	Incineroar ex	Pokémon	{"Stage 2",ex}	{Fire}	sv5	34	Double Rare
sv5-35	Turtonator	Pokémon	{Basic}	{Fire}	sv5	35	Common
sv5-36	Sizzlipede	Pokémon	{Basic}	{Fire}	sv5	36	Common
sv5-37	Centiskorch	Pokémon	{"Stage 1"}	{Fire}	sv5	37	Uncommon
sv5-38	Gouging Fire ex	Pokémon	{Basic,ex,Ancient}	{Fire}	sv5	38	Double Rare
sv5-39	Totodile	Pokémon	{Basic}	{Water}	sv5	39	Common
sv5-40	Croconaw	Pokémon	{"Stage 1"}	{Water}	sv5	40	Common
sv5-41	Feraligatr	Pokémon	{"Stage 2"}	{Water}	sv5	41	Rare
sv5-42	Carvanha	Pokémon	{Basic}	{Water}	sv5	42	Common
sv5-43	Sharpedo	Pokémon	{"Stage 1"}	{Water}	sv5	43	Uncommon
sv5-44	Keldeo	Pokémon	{Basic}	{Water}	sv5	44	Uncommon
sv5-45	Snom	Pokémon	{Basic}	{Water}	sv5	45	Common
sv5-46	Frosmoth	Pokémon	{"Stage 1"}	{Water}	sv5	46	Common
sv5-47	Wiglett	Pokémon	{Basic}	{Water}	sv5	47	Common
sv5-48	Finizen	Pokémon	{Basic}	{Water}	sv5	48	Common
sv5-49	Palafin	Pokémon	{"Stage 1"}	{Water}	sv5	49	Uncommon
sv5-50	Walking Wake ex	Pokémon	{Basic,ex,Ancient}	{Water}	sv5	50	Double Rare
sv5-51	Pikachu	Pokémon	{Basic}	{Lightning}	sv5	51	Common
sv5-52	Raichu	Pokémon	{"Stage 1"}	{Lightning}	sv5	52	Common
sv5-53	Electabuzz	Pokémon	{Basic}	{Lightning}	sv5	53	Common
sv5-54	Electivire	Pokémon	{"Stage 1"}	{Lightning}	sv5	54	Uncommon
sv5-55	Charjabug	Pokémon	{"Stage 1"}	{Lightning}	sv5	55	Common
sv5-56	Vikavolt	Pokémon	{"Stage 2"}	{Lightning}	sv5	56	Uncommon
sv5-57	Zeraora	Pokémon	{Basic}	{Lightning}	sv5	57	Uncommon
sv5-58	Yamper	Pokémon	{Basic}	{Lightning}	sv5	58	Common
sv5-59	Boltund	Pokémon	{"Stage 1"}	{Lightning}	sv5	59	Uncommon
sv5-60	Wugtrio ex	Pokémon	{"Stage 1",Tera,ex}	{Lightning}	sv5	60	Double Rare
sv5-61	Iron Hands	Pokémon	{Basic,Future}	{Lightning}	sv5	61	Uncommon
sv5-62	Iron Thorns	Pokémon	{Basic,Future}	{Lightning}	sv5	62	Rare
sv5-63	Mr. Mime	Pokémon	{Basic}	{Psychic}	sv5	63	Common
sv5-64	Marill	Pokémon	{Basic}	{Psychic}	sv5	64	Common
sv5-65	Azumarill	Pokémon	{"Stage 1"}	{Psychic}	sv5	65	Common
sv5-66	Girafarig	Pokémon	{Basic}	{Psychic}	sv5	66	Common
sv5-67	Latias	Pokémon	{Basic}	{Psychic}	sv5	67	Uncommon
sv5-68	Bronzor	Pokémon	{Basic}	{Psychic}	sv5	68	Common
sv5-69	Bronzong	Pokémon	{"Stage 1"}	{Psychic}	sv5	69	Uncommon
sv5-70	Solosis	Pokémon	{Basic}	{Psychic}	sv5	70	Common
sv5-71	Duosion	Pokémon	{"Stage 1"}	{Psychic}	sv5	71	Common
sv5-72	Reuniclus	Pokémon	{"Stage 2"}	{Psychic}	sv5	72	Uncommon
sv5-73	Elgyem	Pokémon	{Basic}	{Psychic}	sv5	73	Common
sv5-74	Beheeyem	Pokémon	{"Stage 1"}	{Psychic}	sv5	74	Uncommon
sv5-75	Cutiefly	Pokémon	{Basic}	{Psychic}	sv5	75	Common
sv5-76	Ribombee	Pokémon	{"Stage 1"}	{Psychic}	sv5	76	Uncommon
sv5-77	Scream Tail	Pokémon	{Basic,Ancient}	{Psychic}	sv5	77	Uncommon
sv5-78	Flutter Mane	Pokémon	{Basic,Ancient}	{Psychic}	sv5	78	Rare
sv5-79	Iron Valiant	Pokémon	{Basic,Future}	{Psychic}	sv5	79	Uncommon
sv5-80	Iron Valiant	Pokémon	{Basic,Future}	{Psychic}	sv5	80	Rare
sv5-81	Iron Crown ex	Pokémon	{Basic,ex,Future}	{Psychic}	sv5	81	Double Rare
sv5-82	Meditite	Pokémon	{Basic}	{Fighting}	sv5	82	Common
sv5-83	Medicham	Pokémon	{"Stage 1"}	{Fighting}	sv5	83	Common
sv5-84	Relicanth	Pokémon	{Basic}	{Fighting}	sv5	84	Rare
sv5-85	Drilbur	Pokémon	{Basic}	{Fighting}	sv5	85	Common
sv5-86	Excadrill	Pokémon	{"Stage 1"}	{Fighting}	sv5	86	Uncommon
sv5-87	Golett	Pokémon	{Basic}	{Fighting}	sv5	87	Common
sv5-88	Golurk	Pokémon	{"Stage 1"}	{Fighting}	sv5	88	Uncommon
sv5-89	Rockruff	Pokémon	{Basic}	{Fighting}	sv5	89	Common
sv5-90	Lycanroc	Pokémon	{"Stage 1"}	{Fighting}	sv5	90	Uncommon
sv5-91	Mudbray	Pokémon	{Basic}	{Fighting}	sv5	91	Common
sv5-92	Mudsdale	Pokémon	{"Stage 1"}	{Fighting}	sv5	92	Uncommon
sv5-93	Rolycoly	Pokémon	{Basic}	{Fighting}	sv5	93	Common
sv5-94	Carkol	Pokémon	{"Stage 1"}	{Fighting}	sv5	94	Common
sv5-95	Coalossal	Pokémon	{"Stage 2"}	{Fighting}	sv5	95	Uncommon
sv5-96	Great Tusk	Pokémon	{Basic,Ancient}	{Fighting}	sv5	96	Uncommon
sv5-97	Great Tusk	Pokémon	{Basic,Ancient}	{Fighting}	sv5	97	Uncommon
sv5-98	Sandy Shocks	Pokémon	{Basic,Ancient}	{Fighting}	sv5	98	Uncommon
sv5-99	Iron Boulder ex	Pokémon	{Basic,ex,Future}	{Fighting}	sv5	99	Double Rare
sv5-100	Ekans	Pokémon	{Basic}	{Darkness}	sv5	100	Common
sv5-101	Arbok	Pokémon	{"Stage 1"}	{Darkness}	sv5	101	Common
sv5-102	Gastly	Pokémon	{Basic}	{Darkness}	sv5	102	Common
sv5-103	Haunter	Pokémon	{"Stage 1"}	{Darkness}	sv5	103	Common
sv5-104	Gengar ex	Pokémon	{"Stage 2",ex}	{Darkness}	sv5	104	Double Rare
sv5-105	Poochyena	Pokémon	{Basic}	{Darkness}	sv5	105	Common
sv5-106	Mightyena	Pokémon	{"Stage 1"}	{Darkness}	sv5	106	Common
sv5-107	Sableye	Pokémon	{Basic}	{Darkness}	sv5	107	Uncommon
sv5-108	Farigiraf ex	Pokémon	{"Stage 1",Tera,ex}	{Darkness}	sv5	108	Double Rare
sv5-109	Roaring Moon	Pokémon	{Basic,Ancient}	{Darkness}	sv5	109	Rare
sv5-110	Forretress	Pokémon	{"Stage 1"}	{Metal}	sv5	110	Uncommon
sv5-111	Scizor ex	Pokémon	{"Stage 1",ex}	{Metal}	sv5	111	Double Rare
sv5-112	Mawile	Pokémon	{Basic}	{Metal}	sv5	112	Common
sv5-113	Beldum	Pokémon	{Basic}	{Metal}	sv5	113	Common
sv5-114	Metang	Pokémon	{"Stage 1"}	{Metal}	sv5	114	Common
sv5-115	Metagross	Pokémon	{"Stage 2"}	{Metal}	sv5	115	Uncommon
sv5-116	Meltan	Pokémon	{Basic}	{Metal}	sv5	116	Common
sv5-117	Melmetal	Pokémon	{"Stage 1"}	{Metal}	sv5	117	Rare
sv5-118	Iron Treads	Pokémon	{Basic,Future}	{Metal}	sv5	118	Uncommon
sv5-119	Koraidon	Pokémon	{Basic,Ancient}	{Dragon}	sv5	119	Rare
sv5-120	Koraidon ex	Pokémon	{Basic,ex,Ancient}	{Dragon}	sv5	120	Double Rare
sv5-121	Miraidon	Pokémon	{Basic,Future}	{Dragon}	sv5	121	Rare
sv5-122	Miraidon ex	Pokémon	{Basic,ex,Future}	{Dragon}	sv5	122	Double Rare
sv5-123	Raging Bolt ex	Pokémon	{Basic,ex,Ancient}	{Dragon}	sv5	123	Double Rare
sv5-124	Lickitung	Pokémon	{Basic}	{Colorless}	sv5	124	Common
sv5-125	Lickilicky	Pokémon	{"Stage 1"}	{Colorless}	sv5	125	Common
sv5-126	Hoothoot	Pokémon	{Basic}	{Colorless}	sv5	126	Common
sv5-127	Noctowl	Pokémon	{"Stage 1"}	{Colorless}	sv5	127	Common
sv5-128	Dunsparce	Pokémon	{Basic}	{Colorless}	sv5	128	Common
sv5-129	Dudunsparce	Pokémon	{"Stage 1"}	{Colorless}	sv5	129	Rare
sv5-130	Skitty	Pokémon	{Basic}	{Colorless}	sv5	130	Common
sv5-131	Delcatty	Pokémon	{"Stage 1"}	{Colorless}	sv5	131	Uncommon
sv5-132	Chatot	Pokémon	{Basic}	{Colorless}	sv5	132	Common
sv5-133	Pidove	Pokémon	{Basic}	{Colorless}	sv5	133	Common
sv5-134	Tranquill	Pokémon	{"Stage 1"}	{Colorless}	sv5	134	Common
sv5-135	Unfezant	Pokémon	{"Stage 2"}	{Colorless}	sv5	135	Uncommon
sv5-136	Minccino	Pokémon	{Basic}	{Colorless}	sv5	136	Common
sv5-137	Cinccino	Pokémon	{"Stage 1"}	{Colorless}	sv5	137	Uncommon
sv5-138	Drampa	Pokémon	{Basic}	{Colorless}	sv5	138	Rare
sv5-139	Iron Jugulis	Pokémon	{Basic,Future}	{Colorless}	sv5	139	Uncommon
sv5-140	Ancient Booster Energy Capsule	Trainer	{"Pokémon Tool",Ancient}	{}	sv5	140	Uncommon
sv5-141	Awakening Drum	Trainer	{Item,Ancient,"ACE SPEC"}	{}	sv5	141	ACE SPEC Rare
sv5-142	Bianca's Devotion	Trainer	{Supporter}	{}	sv5	142	Uncommon
sv5-143	Boxed Order	Trainer	{Item}	{}	sv5	143	Uncommon
sv5-144	Buddy-Buddy Poffin	Trainer	{Item}	{}	sv5	144	Uncommon
sv5-145	Ciphermaniac's Codebreaking	Trainer	{Supporter,Future}	{}	sv5	145	Uncommon
sv5-146	Eri	Trainer	{Supporter}	{}	sv5	146	Uncommon
sv5-147	Explorer's Guidance	Trainer	{Supporter,Ancient}	{}	sv5	147	Uncommon
sv5-148	Full Metal Lab	Trainer	{Stadium}	{}	sv5	148	Uncommon
sv5-149	Future Booster Energy Capsule	Trainer	{"Pokémon Tool",Future}	{}	sv5	149	Uncommon
sv5-150	Hand Trimmer	Trainer	{Item}	{}	sv5	150	Uncommon
sv5-151	Heavy Baton	Trainer	{"Pokémon Tool"}	{}	sv5	151	Uncommon
sv5-152	Hero's Cape	Trainer	{"Pokémon Tool","ACE SPEC"}	{}	sv5	152	ACE SPEC Rare
sv5-153	Master Ball	Trainer	{Item,"ACE SPEC"}	{}	sv5	153	ACE SPEC Rare
sv5-154	Maximum Belt	Trainer	{"Pokémon Tool","ACE SPEC"}	{}	sv5	154	ACE SPEC Rare
sv5-155	Morty's Conviction	Trainer	{Supporter}	{}	sv5	155	Uncommon
sv5-156	Perilous Jungle	Trainer	{Stadium}	{}	sv5	156	Uncommon
sv5-157	Prime Catcher	Trainer	{Item,"ACE SPEC"}	{}	sv5	157	ACE SPEC Rare
sv5-158	Reboot Pod	Trainer	{Item,Future,"ACE SPEC"}	{}	sv5	158	ACE SPEC Rare
sv5-159	Rescue Board	Trainer	{"Pokémon Tool"}	{}	sv5	159	Uncommon
sv5-160	Salvatore	Trainer	{Supporter}	{}	sv5	160	Uncommon
sv5-161	Mist Energy	Energy	{Special}	{}	sv5	161	Uncommon
sv5-162	Neo Upper Energy	Energy	{Special,"ACE SPEC"}	{}	sv5	162	ACE SPEC Rare
sv5-163	Shiftry	Pokémon	{"Stage 2"}	{Grass}	sv5	163	Illustration Rare
sv5-164	Grotle	Pokémon	{"Stage 1"}	{Grass}	sv5	164	Illustration Rare
sv5-165	Deerling	Pokémon	{Basic}	{Grass}	sv5	165	Illustration Rare
sv5-166	Sawsbuck	Pokémon	{"Stage 1"}	{Grass}	sv5	166	Illustration Rare
sv5-167	Litten	Pokémon	{Basic}	{Fire}	sv5	167	Illustration Rare
sv5-168	Snom	Pokémon	{Basic}	{Water}	sv5	168	Illustration Rare
sv5-169	Charjabug	Pokémon	{"Stage 1"}	{Lightning}	sv5	169	Illustration Rare
sv5-170	Bronzor	Pokémon	{Basic}	{Psychic}	sv5	170	Illustration Rare
sv5-171	Reuniclus	Pokémon	{"Stage 2"}	{Psychic}	sv5	171	Illustration Rare
sv5-172	Cutiefly	Pokémon	{Basic}	{Psychic}	sv5	172	Illustration Rare
sv5-173	Relicanth	Pokémon	{Basic}	{Fighting}	sv5	173	Illustration Rare
sv5-174	Excadrill	Pokémon	{"Stage 1"}	{Fighting}	sv5	174	Illustration Rare
sv5-175	Mudsdale	Pokémon	{"Stage 1"}	{Fighting}	sv5	175	Illustration Rare
sv5-176	Arbok	Pokémon	{"Stage 1"}	{Darkness}	sv5	176	Illustration Rare
sv5-177	Gastly	Pokémon	{Basic}	{Darkness}	sv5	177	Illustration Rare
sv5-178	Metagross	Pokémon	{"Stage 2"}	{Metal}	sv5	178	Illustration Rare
sv5-179	Meltan	Pokémon	{Basic}	{Metal}	sv5	179	Illustration Rare
sv5-180	Lickitung	Pokémon	{Basic}	{Colorless}	sv5	180	Illustration Rare
sv5-181	Chatot	Pokémon	{Basic}	{Colorless}	sv5	181	Illustration Rare
sv5-182	Minccino	Pokémon	{Basic}	{Colorless}	sv5	182	Illustration Rare
sv5-183	Cinccino	Pokémon	{"Stage 1"}	{Colorless}	sv5	183	Illustration Rare
sv5-184	Drampa	Pokémon	{Basic}	{Colorless}	sv5	184	Illustration Rare
sv5-185	Torterra ex	Pokémon	{"Stage 2",ex}	{Grass}	sv5	185	Ultra Rare
sv5-186	Iron Leaves ex	Pokémon	{Basic,ex,Future}	{Grass}	sv5	186	Ultra Rare
sv5-187	Incineroar ex	Pokémon	{"Stage 2",ex}	{Fire}	sv5	187	Ultra Rare
sv5-188	Gouging Fire ex	Pokémon	{Basic,ex,Ancient}	{Fire}	sv5	188	Ultra Rare
sv5-189	Walking Wake ex	Pokémon	{Basic,ex,Ancient}	{Water}	sv5	189	Ultra Rare
sv5-190	Wugtrio ex	Pokémon	{"Stage 1",Tera,ex}	{Lightning}	sv5	190	Ultra Rare
sv5-191	Iron Crown ex	Pokémon	{Basic,ex,Future}	{Psychic}	sv5	191	Ultra Rare
sv5-192	Iron Boulder ex	Pokémon	{Basic,ex,Future}	{Fighting}	sv5	192	Ultra Rare
sv5-193	Gengar ex	Pokémon	{"Stage 2",ex}	{Darkness}	sv5	193	Ultra Rare
sv5-194	Farigiraf ex	Pokémon	{"Stage 1",Tera,ex}	{Darkness}	sv5	194	Ultra Rare
sv5-195	Scizor ex	Pokémon	{"Stage 1",ex}	{Metal}	sv5	195	Ultra Rare
sv5-196	Raging Bolt ex	Pokémon	{Basic,ex,Ancient}	{Dragon}	sv5	196	Ultra Rare
sv5-197	Bianca's Devotion	Trainer	{Supporter}	{}	sv5	197	Ultra Rare
sv5-198	Ciphermaniac's Codebreaking	Trainer	{Supporter,Future}	{}	sv5	198	Ultra Rare
sv5-199	Eri	Trainer	{Supporter}	{}	sv5	199	Ultra Rare
sv5-200	Explorer's Guidance	Trainer	{Supporter,Ancient}	{}	sv5	200	Ultra Rare
sv5-201	Morty's Conviction	Trainer	{Supporter}	{}	sv5	201	Ultra Rare
sv5-202	Salvatore	Trainer	{Supporter}	{}	sv5	202	Ultra Rare
sv5-203	Iron Leaves ex	Pokémon	{Basic,ex,Future}	{Grass}	sv5	203	Special Illustration Rare
sv5-204	Gouging Fire ex	Pokémon	{Basic,ex,Ancient}	{Fire}	sv5	204	Special Illustration Rare
sv5-205	Walking Wake ex	Pokémon	{Basic,ex,Ancient}	{Water}	sv5	205	Special Illustration Rare
sv5-206	Iron Crown ex	Pokémon	{Basic,ex,Future}	{Psychic}	sv5	206	Special Illustration Rare
sv5-207	Iron Boulder ex	Pokémon	{Basic,ex,Future}	{Fighting}	sv5	207	Special Illustration Rare
sv5-208	Raging Bolt ex	Pokémon	{Basic,ex,Ancient}	{Dragon}	sv5	208	Special Illustration Rare
sv5-209	Bianca's Devotion	Trainer	{Supporter}	{}	sv5	209	Special Illustration Rare
sv5-210	Eri	Trainer	{Supporter}	{}	sv5	210	Special Illustration Rare
sv5-211	Morty's Conviction	Trainer	{Supporter}	{}	sv5	211	Special Illustration Rare
sv5-212	Salvatore	Trainer	{Supporter}	{}	sv5	212	Special Illustration Rare
sv5-213	Iron Leaves ex	Pokémon	{Basic,ex,Future}	{Grass}	sv5	213	Hyper Rare
sv5-214	Gouging Fire ex	Pokémon	{Basic,ex,Ancient}	{Fire}	sv5	214	Hyper Rare
sv5-215	Walking Wake ex	Pokémon	{Basic,ex,Ancient}	{Water}	sv5	215	Hyper Rare
sv5-216	Iron Crown ex	Pokémon	{Basic,ex,Future}	{Psychic}	sv5	216	Hyper Rare
sv5-217	Iron Boulder ex	Pokémon	{Basic,ex,Future}	{Fighting}	sv5	217	Hyper Rare
sv5-218	Raging Bolt ex	Pokémon	{Basic,ex,Ancient}	{Dragon}	sv5	218	Hyper Rare
sv6-1	Tangela	Pokémon	{Basic}	{Grass}	sv6	1	Common
sv6-2	Tangrowth	Pokémon	{"Stage 1"}	{Grass}	sv6	2	Common
sv6-3	Pinsir	Pokémon	{Basic}	{Grass}	sv6	3	Common
sv6-4	Spinarak	Pokémon	{Basic}	{Grass}	sv6	4	Common
sv6-5	Ariados	Pokémon	{"Stage 1"}	{Grass}	sv6	5	Uncommon
sv6-6	Sunkern	Pokémon	{Basic}	{Grass}	sv6	6	Common
sv6-7	Sunflora	Pokémon	{"Stage 1"}	{Grass}	sv6	7	Uncommon
sv6-8	Heracross	Pokémon	{Basic}	{Grass}	sv6	8	Uncommon
sv6-9	Volbeat	Pokémon	{Basic}	{Grass}	sv6	9	Common
sv6-10	Illumise	Pokémon	{Basic}	{Grass}	sv6	10	Common
sv6-11	Leafeon	Pokémon	{"Stage 1"}	{Grass}	sv6	11	Uncommon
sv6-12	Phantump	Pokémon	{Basic}	{Grass}	sv6	12	Common
sv6-13	Trevenant	Pokémon	{"Stage 1"}	{Grass}	sv6	13	Common
sv6-14	Grookey	Pokémon	{Basic}	{Grass}	sv6	14	Common
sv6-15	Thwackey	Pokémon	{"Stage 1"}	{Grass}	sv6	15	Common
sv6-16	Rillaboom	Pokémon	{"Stage 2"}	{Grass}	sv6	16	Uncommon
sv6-17	Applin	Pokémon	{Basic}	{Grass}	sv6	17	Common
sv6-18	Dipplin	Pokémon	{"Stage 1"}	{Grass}	sv6	18	Uncommon
sv6-19	Iron Leaves	Pokémon	{Basic,Future}	{Grass}	sv6	19	Rare
sv6-20	Poltchageist	Pokémon	{Basic}	{Grass}	sv6	20	Common
sv6-21	Poltchageist	Pokémon	{Basic}	{Grass}	sv6	21	Common
sv6-22	Sinistcha	Pokémon	{"Stage 1"}	{Grass}	sv6	22	Rare
sv6-23	Sinistcha ex	Pokémon	{"Stage 1",ex}	{Grass}	sv6	23	Double Rare
sv6-24	Teal Mask Ogerpon	Pokémon	{Basic}	{Grass}	sv6	24	Rare
sv6-25	Teal Mask Ogerpon ex	Pokémon	{Basic,Tera,ex}	{Grass}	sv6	25	Double Rare
sv6-26	Vulpix	Pokémon	{Basic}	{Fire}	sv6	26	Common
sv6-27	Ninetales	Pokémon	{"Stage 1"}	{Fire}	sv6	27	Common
sv6-28	Slugma	Pokémon	{Basic}	{Fire}	sv6	28	Common
sv6-29	Magcargo ex	Pokémon	{"Stage 1",Tera,ex}	{Fire}	sv6	29	Double Rare
sv6-30	Torkoal	Pokémon	{Basic}	{Fire}	sv6	30	Common
sv6-31	Chimchar	Pokémon	{Basic}	{Fire}	sv6	31	Common
sv6-32	Monferno	Pokémon	{"Stage 1"}	{Fire}	sv6	32	Common
sv6-33	Infernape	Pokémon	{"Stage 2"}	{Fire}	sv6	33	Rare
sv6-34	Darumaka	Pokémon	{Basic}	{Fire}	sv6	34	Common
sv6-35	Darmanitan	Pokémon	{"Stage 1"}	{Fire}	sv6	35	Uncommon
sv6-36	Litwick	Pokémon	{Basic}	{Fire}	sv6	36	Common
sv6-37	Lampent	Pokémon	{"Stage 1"}	{Fire}	sv6	37	Common
sv6-38	Chandelure	Pokémon	{"Stage 2"}	{Fire}	sv6	38	Rare
sv6-39	Chi-Yu	Pokémon	{Basic}	{Fire}	sv6	39	Uncommon
sv6-40	Hearthflame Mask Ogerpon ex	Pokémon	{Basic,Tera,ex}	{Fire}	sv6	40	Double Rare
sv6-41	Poliwag	Pokémon	{Basic}	{Water}	sv6	41	Common
sv6-42	Poliwhirl	Pokémon	{"Stage 1"}	{Water}	sv6	42	Common
sv6-43	Poliwrath	Pokémon	{"Stage 2"}	{Water}	sv6	43	Uncommon
sv6-44	Goldeen	Pokémon	{Basic}	{Water}	sv6	44	Common
sv6-45	Seaking	Pokémon	{"Stage 1"}	{Water}	sv6	45	Common
sv6-46	Jynx	Pokémon	{Basic}	{Water}	sv6	46	Common
sv6-47	Corphish	Pokémon	{Basic}	{Water}	sv6	47	Common
sv6-48	Crawdaunt	Pokémon	{"Stage 1"}	{Water}	sv6	48	Common
sv6-49	Feebas	Pokémon	{Basic}	{Water}	sv6	49	Common
sv6-50	Milotic	Pokémon	{"Stage 1"}	{Water}	sv6	50	Uncommon
sv6-51	Snorunt	Pokémon	{Basic}	{Water}	sv6	51	Common
sv6-52	Glalie	Pokémon	{"Stage 1"}	{Water}	sv6	52	Uncommon
sv6-53	Froslass	Pokémon	{"Stage 1"}	{Water}	sv6	53	Rare
sv6-54	Glaceon	Pokémon	{"Stage 1"}	{Water}	sv6	54	Uncommon
sv6-55	Phione	Pokémon	{Basic}	{Water}	sv6	55	Common
sv6-56	Froakie	Pokémon	{Basic}	{Water}	sv6	56	Common
sv6-57	Frogadier	Pokémon	{"Stage 1"}	{Water}	sv6	57	Common
sv6-58	Cramorant	Pokémon	{Basic}	{Water}	sv6	58	Uncommon
sv6-59	Finizen	Pokémon	{Basic}	{Water}	sv6	59	Common
sv6-60	Palafin	Pokémon	{"Stage 1"}	{Water}	sv6	60	Uncommon
sv6-61	Palafin ex	Pokémon	{"Stage 1",ex}	{Water}	sv6	61	Double Rare
sv6-62	Iron Bundle	Pokémon	{Basic,Future}	{Water}	sv6	62	Uncommon
sv6-63	Walking Wake	Pokémon	{Basic,Ancient}	{Water}	sv6	63	Rare
sv6-64	Wellspring Mask Ogerpon ex	Pokémon	{Basic,Tera,ex}	{Water}	sv6	64	Double Rare
sv6-65	Zapdos	Pokémon	{Basic}	{Lightning}	sv6	65	Rare
sv6-66	Shinx	Pokémon	{Basic}	{Lightning}	sv6	66	Common
sv6-67	Luxio	Pokémon	{"Stage 1"}	{Lightning}	sv6	67	Common
sv6-68	Luxray ex	Pokémon	{"Stage 2",ex}	{Lightning}	sv6	68	Double Rare
sv6-69	Emolga	Pokémon	{Basic}	{Lightning}	sv6	69	Common
sv6-70	Helioptile	Pokémon	{Basic}	{Lightning}	sv6	70	Common
sv6-71	Heliolisk	Pokémon	{"Stage 1"}	{Lightning}	sv6	71	Common
sv6-72	Morpeko	Pokémon	{Basic}	{Lightning}	sv6	72	Uncommon
sv6-73	Tadbulb	Pokémon	{Basic}	{Lightning}	sv6	73	Common
sv6-74	Bellibolt	Pokémon	{"Stage 1"}	{Lightning}	sv6	74	Uncommon
sv6-75	Wattrel	Pokémon	{Basic}	{Lightning}	sv6	75	Common
sv6-76	Kilowattrel	Pokémon	{"Stage 1"}	{Lightning}	sv6	76	Uncommon
sv6-77	Iron Thorns ex	Pokémon	{Basic,ex,Future}	{Lightning}	sv6	77	Double Rare
sv6-78	Clefairy	Pokémon	{Basic}	{Psychic}	sv6	78	Common
sv6-79	Clefable	Pokémon	{"Stage 1"}	{Psychic}	sv6	79	Uncommon
sv6-80	Abra	Pokémon	{Basic}	{Psychic}	sv6	80	Common
sv6-81	Kadabra	Pokémon	{"Stage 1"}	{Psychic}	sv6	81	Common
sv6-82	Alakazam	Pokémon	{"Stage 2"}	{Psychic}	sv6	82	Rare
sv6-83	Girafarig	Pokémon	{Basic}	{Psychic}	sv6	83	Common
sv6-84	Farigiraf	Pokémon	{"Stage 1"}	{Psychic}	sv6	84	Uncommon
sv6-85	Chimecho	Pokémon	{Basic}	{Psychic}	sv6	85	Common
sv6-86	Flabébé	Pokémon	{Basic}	{Psychic}	sv6	86	Common
sv6-87	Floette	Pokémon	{"Stage 1"}	{Psychic}	sv6	87	Common
sv6-88	Florges	Pokémon	{"Stage 2"}	{Psychic}	sv6	88	Uncommon
sv6-89	Swirlix	Pokémon	{Basic}	{Psychic}	sv6	89	Common
sv6-90	Slurpuff	Pokémon	{"Stage 1"}	{Psychic}	sv6	90	Uncommon
sv6-91	Sandygast	Pokémon	{Basic}	{Psychic}	sv6	91	Common
sv6-92	Palossand	Pokémon	{"Stage 1"}	{Psychic}	sv6	92	Common
sv6-93	Enamorus	Pokémon	{Basic}	{Psychic}	sv6	93	Rare
sv6-94	Scream Tail ex	Pokémon	{Basic,ex,Ancient}	{Psychic}	sv6	94	Double Rare
sv6-95	Munkidori	Pokémon	{Basic}	{Psychic}	sv6	95	Rare
sv6-96	Fezandipiti	Pokémon	{Basic}	{Psychic}	sv6	96	Rare
sv6-97	Sandshrew	Pokémon	{Basic}	{Fighting}	sv6	97	Common
sv6-98	Sandslash	Pokémon	{"Stage 1"}	{Fighting}	sv6	98	Uncommon
sv6-99	Hisuian Growlithe	Pokémon	{Basic}	{Fighting}	sv6	99	Common
sv6-100	Hisuian Arcanine	Pokémon	{"Stage 1"}	{Fighting}	sv6	100	Rare
sv6-101	Nosepass	Pokémon	{Basic}	{Fighting}	sv6	101	Common
sv6-102	Probopass	Pokémon	{"Stage 1"}	{Fighting}	sv6	102	Uncommon
sv6-103	Timburr	Pokémon	{Basic}	{Fighting}	sv6	103	Common
sv6-104	Gurdurr	Pokémon	{"Stage 1"}	{Fighting}	sv6	104	Common
sv6-105	Conkeldurr	Pokémon	{"Stage 2"}	{Fighting}	sv6	105	Uncommon
sv6-106	Greninja ex	Pokémon	{"Stage 2",Tera,ex}	{Fighting}	sv6	106	Double Rare
sv6-107	Hawlucha	Pokémon	{Basic}	{Fighting}	sv6	107	Common
sv6-108	Glimmet	Pokémon	{Basic}	{Fighting}	sv6	108	Common
sv6-109	Glimmora	Pokémon	{"Stage 1"}	{Fighting}	sv6	109	Uncommon
sv6-110	Ting-Lu	Pokémon	{Basic}	{Fighting}	sv6	110	Rare
sv6-111	Okidogi	Pokémon	{Basic}	{Fighting}	sv6	111	Rare
sv6-112	Cornerstone Mask Ogerpon ex	Pokémon	{Basic,Tera,ex}	{Fighting}	sv6	112	Double Rare
sv6-113	Poochyena	Pokémon	{Basic}	{Darkness}	sv6	113	Common
sv6-114	Mightyena	Pokémon	{"Stage 1"}	{Darkness}	sv6	114	Uncommon
sv6-115	Venipede	Pokémon	{Basic}	{Darkness}	sv6	115	Common
sv6-116	Whirlipede	Pokémon	{"Stage 1"}	{Darkness}	sv6	116	Common
sv6-117	Scolipede	Pokémon	{"Stage 2"}	{Darkness}	sv6	117	Uncommon
sv6-118	Brute Bonnet	Pokémon	{Basic,Ancient}	{Darkness}	sv6	118	Uncommon
sv6-119	Skarmory	Pokémon	{Basic}	{Metal}	sv6	119	Common
sv6-120	Aron	Pokémon	{Basic}	{Metal}	sv6	120	Common
sv6-121	Lairon	Pokémon	{"Stage 1"}	{Metal}	sv6	121	Common
sv6-122	Aggron	Pokémon	{"Stage 2"}	{Metal}	sv6	122	Uncommon
sv6-123	Heatran	Pokémon	{Basic}	{Metal}	sv6	123	Rare
sv6-124	Varoom	Pokémon	{Basic}	{Metal}	sv6	124	Common
sv6-125	Revavroom	Pokémon	{"Stage 1"}	{Metal}	sv6	125	Uncommon
sv6-126	Applin	Pokémon	{Basic}	{Dragon}	sv6	126	Common
sv6-127	Dipplin	Pokémon	{"Stage 1"}	{Dragon}	sv6	127	Uncommon
sv6-128	Dreepy	Pokémon	{Basic}	{Dragon}	sv6	128	Common
sv6-129	Drakloak	Pokémon	{"Stage 1"}	{Dragon}	sv6	129	Common
sv6-130	Dragapult ex	Pokémon	{"Stage 2",Tera,ex}	{Dragon}	sv6	130	Double Rare
sv6-131	Tatsugiri	Pokémon	{Basic}	{Dragon}	sv6	131	Uncommon
sv6-132	Farfetch'd	Pokémon	{Basic}	{Colorless}	sv6	132	Common
sv6-133	Chansey	Pokémon	{Basic}	{Colorless}	sv6	133	Common
sv6-134	Blissey ex	Pokémon	{"Stage 1",ex}	{Colorless}	sv6	134	Double Rare
sv6-135	Eevee	Pokémon	{Basic}	{Colorless}	sv6	135	Common
sv6-136	Snorlax	Pokémon	{Basic}	{Colorless}	sv6	136	Uncommon
sv6-137	Aipom	Pokémon	{Basic}	{Colorless}	sv6	137	Common
sv6-138	Ambipom	Pokémon	{"Stage 1"}	{Colorless}	sv6	138	Uncommon
sv6-139	Ducklett	Pokémon	{Basic}	{Colorless}	sv6	139	Common
sv6-140	Swanna	Pokémon	{"Stage 1"}	{Colorless}	sv6	140	Uncommon
sv6-141	Bloodmoon Ursaluna ex	Pokémon	{Basic,ex}	{Colorless}	sv6	141	Double Rare
sv6-142	Accompanying Flute	Trainer	{Item}	{}	sv6	142	Uncommon
sv6-143	Bug Catching Set	Trainer	{Item}	{}	sv6	143	Uncommon
sv6-144	Caretaker	Trainer	{Supporter}	{}	sv6	144	Common
sv6-145	Carmine	Trainer	{Supporter}	{}	sv6	145	Uncommon
sv6-146	Community Center	Trainer	{Stadium}	{}	sv6	146	Uncommon
sv6-147	Cook	Trainer	{Supporter}	{}	sv6	147	Uncommon
sv6-148	Enhanced Hammer	Trainer	{Item}	{}	sv6	148	Uncommon
sv6-149	Festival Grounds	Trainer	{Stadium}	{}	sv6	149	Uncommon
sv6-150	Handheld Fan	Trainer	{"Pokémon Tool"}	{}	sv6	150	Uncommon
sv6-151	Hassel	Trainer	{Supporter}	{}	sv6	151	Uncommon
sv6-152	Hyper Aroma	Trainer	{Item,"ACE SPEC"}	{}	sv6	152	ACE SPEC Rare
sv6-153	Jamming Tower	Trainer	{Stadium}	{}	sv6	153	Uncommon
sv6-154	Kieran	Trainer	{Supporter}	{}	sv6	154	Uncommon
sv6-155	Lana's Aid	Trainer	{Supporter}	{}	sv6	155	Uncommon
sv6-156	Love Ball	Trainer	{Item}	{}	sv6	156	Uncommon
sv6-157	Lucian	Trainer	{Supporter}	{}	sv6	157	Uncommon
sv6-158	Lucky Helmet	Trainer	{"Pokémon Tool"}	{}	sv6	158	Uncommon
sv6-159	Ogre's Mask	Trainer	{Item}	{}	sv6	159	Uncommon
sv6-160	Perrin	Trainer	{Supporter}	{}	sv6	160	Uncommon
sv6-161	Raifort	Trainer	{Supporter}	{}	sv6	161	Uncommon
sv6-162	Scoop Up Cyclone	Trainer	{Item,"ACE SPEC"}	{}	sv6	162	ACE SPEC Rare
sv6-163	Secret Box	Trainer	{Item,"ACE SPEC"}	{}	sv6	163	ACE SPEC Rare
sv6-164	Survival Brace	Trainer	{"Pokémon Tool","ACE SPEC"}	{}	sv6	164	ACE SPEC Rare
sv6-165	Unfair Stamp	Trainer	{Item,"ACE SPEC"}	{}	sv6	165	ACE SPEC Rare
sv6-166	Boomerang Energy	Energy	{Special}	{}	sv6	166	Uncommon
sv6-167	Legacy Energy	Energy	{Special,"ACE SPEC"}	{}	sv6	167	ACE SPEC Rare
sv6-168	Pinsir	Pokémon	{Basic}	{Grass}	sv6	168	Illustration Rare
sv6-169	Sunflora	Pokémon	{"Stage 1"}	{Grass}	sv6	169	Illustration Rare
sv6-170	Dipplin	Pokémon	{"Stage 1"}	{Grass}	sv6	170	Illustration Rare
sv6-171	Poltchageist	Pokémon	{Basic}	{Grass}	sv6	171	Illustration Rare
sv6-172	Torkoal	Pokémon	{Basic}	{Fire}	sv6	172	Illustration Rare
sv6-173	Infernape	Pokémon	{"Stage 2"}	{Fire}	sv6	173	Illustration Rare
sv6-174	Froslass	Pokémon	{"Stage 1"}	{Water}	sv6	174	Illustration Rare
sv6-175	Phione	Pokémon	{Basic}	{Water}	sv6	175	Illustration Rare
sv6-176	Cramorant	Pokémon	{Basic}	{Water}	sv6	176	Illustration Rare
sv6-177	Heliolisk	Pokémon	{"Stage 1"}	{Lightning}	sv6	177	Illustration Rare
sv6-178	Wattrel	Pokémon	{Basic}	{Lightning}	sv6	178	Illustration Rare
sv6-179	Chimecho	Pokémon	{Basic}	{Psychic}	sv6	179	Illustration Rare
sv6-180	Enamorus	Pokémon	{Basic}	{Psychic}	sv6	180	Illustration Rare
sv6-181	Hisuian Growlithe	Pokémon	{Basic}	{Fighting}	sv6	181	Illustration Rare
sv6-182	Probopass	Pokémon	{"Stage 1"}	{Fighting}	sv6	182	Illustration Rare
sv6-183	Timburr	Pokémon	{Basic}	{Fighting}	sv6	183	Illustration Rare
sv6-184	Lairon	Pokémon	{"Stage 1"}	{Metal}	sv6	184	Illustration Rare
sv6-185	Applin	Pokémon	{Basic}	{Dragon}	sv6	185	Illustration Rare
sv6-186	Tatsugiri	Pokémon	{Basic}	{Dragon}	sv6	186	Illustration Rare
sv6-187	Chansey	Pokémon	{Basic}	{Colorless}	sv6	187	Illustration Rare
sv6-188	Eevee	Pokémon	{Basic}	{Colorless}	sv6	188	Illustration Rare
sv6-189	Sinistcha ex	Pokémon	{"Stage 1",ex}	{Grass}	sv6	189	Ultra Rare
sv6-190	Teal Mask Ogerpon ex	Pokémon	{Basic,Tera,ex}	{Grass}	sv6	190	Ultra Rare
sv6-191	Magcargo ex	Pokémon	{"Stage 1",Tera,ex}	{Fire}	sv6	191	Ultra Rare
sv6-192	Hearthflame Mask Ogerpon ex	Pokémon	{Basic,Tera,ex}	{Fire}	sv6	192	Ultra Rare
sv6-193	Palafin ex	Pokémon	{"Stage 1",ex}	{Water}	sv6	193	Ultra Rare
sv6-194	Wellspring Mask Ogerpon ex	Pokémon	{Basic,Tera,ex}	{Water}	sv6	194	Ultra Rare
sv6-195	Luxray ex	Pokémon	{"Stage 2",ex}	{Lightning}	sv6	195	Ultra Rare
sv6-196	Iron Thorns ex	Pokémon	{Basic,ex,Future}	{Lightning}	sv6	196	Ultra Rare
sv6-197	Scream Tail ex	Pokémon	{Basic,ex,Ancient}	{Psychic}	sv6	197	Ultra Rare
sv6-198	Greninja ex	Pokémon	{"Stage 2",Tera,ex}	{Fighting}	sv6	198	Ultra Rare
sv6-199	Cornerstone Mask Ogerpon ex	Pokémon	{Basic,Tera,ex}	{Fighting}	sv6	199	Ultra Rare
sv6-200	Dragapult ex	Pokémon	{"Stage 2",Tera,ex}	{Dragon}	sv6	200	Ultra Rare
sv6-201	Blissey ex	Pokémon	{"Stage 1",ex}	{Colorless}	sv6	201	Ultra Rare
sv6-202	Bloodmoon Ursaluna ex	Pokémon	{Basic,ex}	{Colorless}	sv6	202	Ultra Rare
sv6-203	Caretaker	Trainer	{Supporter}	{}	sv6	203	Ultra Rare
sv6-204	Carmine	Trainer	{Supporter}	{}	sv6	204	Ultra Rare
sv6-205	Hassel	Trainer	{Supporter}	{}	sv6	205	Ultra Rare
sv6-206	Kieran	Trainer	{Supporter}	{}	sv6	206	Ultra Rare
sv6-207	Lana's Aid	Trainer	{Supporter}	{}	sv6	207	Ultra Rare
sv6-208	Lucian	Trainer	{Supporter}	{}	sv6	208	Ultra Rare
sv6-209	Perrin	Trainer	{Supporter}	{}	sv6	209	Ultra Rare
sv6-210	Sinistcha ex	Pokémon	{"Stage 1",ex}	{Grass}	sv6	210	Special Illustration Rare
sv6-211	Teal Mask Ogerpon ex	Pokémon	{Basic,Tera,ex}	{Grass}	sv6	211	Special Illustration Rare
sv6-212	Hearthflame Mask Ogerpon ex	Pokémon	{Basic,Tera,ex}	{Fire}	sv6	212	Special Illustration Rare
sv6-213	Wellspring Mask Ogerpon ex	Pokémon	{Basic,Tera,ex}	{Water}	sv6	213	Special Illustration Rare
sv6-214	Greninja ex	Pokémon	{"Stage 2",Tera,ex}	{Fighting}	sv6	214	Special Illustration Rare
sv6-215	Cornerstone Mask Ogerpon ex	Pokémon	{Basic,Tera,ex}	{Fighting}	sv6	215	Special Illustration Rare
sv6-216	Bloodmoon Ursaluna ex	Pokémon	{Basic,ex}	{Colorless}	sv6	216	Special Illustration Rare
sv6-217	Carmine	Trainer	{Supporter}	{}	sv6	217	Special Illustration Rare
sv6-218	Kieran	Trainer	{Supporter}	{}	sv6	218	Special Illustration Rare
sv6-219	Lana's Aid	Trainer	{Supporter}	{}	sv6	219	Special Illustration Rare
sv6-220	Perrin	Trainer	{Supporter}	{}	sv6	220	Special Illustration Rare
sv6-221	Teal Mask Ogerpon ex	Pokémon	{Basic,Tera,ex}	{Grass}	sv6	221	Hyper Rare
sv6-222	Bloodmoon Ursaluna ex	Pokémon	{Basic,ex}	{Colorless}	sv6	222	Hyper Rare
sv6-223	Buddy-Buddy Poffin	Trainer	{Item}	{}	sv6	223	Hyper Rare
sv6-224	Enhanced Hammer	Trainer	{Item}	{}	sv6	224	Hyper Rare
sv6-225	Rescue Board	Trainer	{"Pokémon Tool"}	{}	sv6	225	Hyper Rare
sv6-226	Luminous Energy	Energy	{Special}	{}	sv6	226	Hyper Rare
sv6pt5-1	Joltik	Pokémon	{Basic}	{Grass}	sv6pt5	1	Common
sv6pt5-8	Houndoom	Pokémon	{"Stage 1"}	{Fire}	sv6pt5	8	Common
sv6pt5-12	Kingdra ex	Pokémon	{"Stage 2",ex}	{Water}	sv6pt5	12	Double Rare
sv6pt5-13	Sneasel	Pokémon	{Basic}	{Water}	sv6pt5	13	Common
sv6pt5-14	Weavile	Pokémon	{"Stage 1"}	{Water}	sv6pt5	14	Uncommon
sv6pt5-17	Hypno	Pokémon	{"Stage 1"}	{Psychic}	sv6pt5	17	Uncommon
sv6pt5-18	Duskull	Pokémon	{Basic}	{Psychic}	sv6pt5	18	Common
sv6pt5-20	Dusknoir	Pokémon	{"Stage 2"}	{Psychic}	sv6pt5	20	Rare
sv6pt5-27	Zubat	Pokémon	{Basic}	{Darkness}	sv6pt5	27	Common
sv6pt5-29	Crobat	Pokémon	{"Stage 2"}	{Darkness}	sv6pt5	29	Uncommon
sv6pt5-40	Genesect	Pokémon	{Basic}	{Metal}	sv6pt5	40	Uncommon
sv6pt5-42	Copperajah	Pokémon	{"Stage 1"}	{Metal}	sv6pt5	42	Rare
sv6pt5-45	Fraxure	Pokémon	{"Stage 1"}	{Dragon}	sv6pt5	45	Common
sv6pt5-46	Haxorus	Pokémon	{"Stage 2"}	{Dragon}	sv6pt5	46	Rare
sv6pt5-50	Eevee	Pokémon	{Basic}	{Colorless}	sv6pt5	50	Common
sv6pt5-57	Colress's Tenacity	Trainer	{Supporter}	{}	sv6pt5	57	Uncommon
sv6pt5-58	Dangerous Laser	Trainer	{Item,"ACE SPEC"}	{}	sv6pt5	58	ACE SPEC Rare
sv6pt5-63	Powerglass	Trainer	{"Pokémon Tool"}	{}	sv6pt5	63	Uncommon
sv6pt5-64	Xerosic's Machinations	Trainer	{Supporter}	{}	sv6pt5	64	Uncommon
sv6pt5-69	Dusclops	Pokémon	{"Stage 1"}	{Psychic}	sv6pt5	69	Illustration Rare
sv6pt5-83	Munkidori ex	Pokémon	{Basic,ex}	{Darkness}	sv6pt5	83	Ultra Rare
sv6pt5-2	Galvantula	Pokémon	{"Stage 1"}	{Grass}	sv6pt5	2	Uncommon
sv6pt5-4	Dartrix	Pokémon	{"Stage 1"}	{Grass}	sv6pt5	4	Common
sv6pt5-7	Houndour	Pokémon	{Basic}	{Fire}	sv6pt5	7	Common
sv6pt5-19	Dusclops	Pokémon	{"Stage 1"}	{Psychic}	sv6pt5	19	Common
sv6pt5-21	Cresselia	Pokémon	{Basic}	{Psychic}	sv6pt5	21	Rare
sv6pt5-23	Croagunk	Pokémon	{Basic}	{Fighting}	sv6pt5	23	Common
sv6pt5-26	Slither Wing	Pokémon	{Basic,Ancient}	{Fighting}	sv6pt5	26	Uncommon
sv6pt5-35	Yveltal	Pokémon	{Basic}	{Darkness}	sv6pt5	35	Uncommon
sv6pt5-36	Okidogi ex	Pokémon	{Basic,ex}	{Darkness}	sv6pt5	36	Double Rare
sv6pt5-37	Munkidori ex	Pokémon	{Basic,ex}	{Darkness}	sv6pt5	37	Double Rare
sv6pt5-39	Pecharunt ex	Pokémon	{Basic,ex}	{Darkness}	sv6pt5	39	Double Rare
sv6pt5-48	Meowth	Pokémon	{Basic}	{Colorless}	sv6pt5	48	Common
sv6pt5-53	Bewear	Pokémon	{"Stage 1"}	{Colorless}	sv6pt5	53	Common
sv6pt5-56	Cassiopeia	Trainer	{Supporter}	{}	sv6pt5	56	Uncommon
sv6pt5-59	Janine's Secret Art	Trainer	{Supporter}	{}	sv6pt5	59	Uncommon
sv6pt5-66	Houndoom	Pokémon	{"Stage 1"}	{Fire}	sv6pt5	66	Illustration Rare
sv6pt5-67	Horsea	Pokémon	{Basic}	{Water}	sv6pt5	67	Illustration Rare
sv6pt5-71	Cresselia	Pokémon	{Basic}	{Psychic}	sv6pt5	71	Illustration Rare
sv6pt5-72	Munkidori	Pokémon	{Basic}	{Psychic}	sv6pt5	72	Illustration Rare
sv6pt5-84	Fezandipiti ex	Pokémon	{Basic,ex}	{Darkness}	sv6pt5	84	Ultra Rare
sv6pt5-3	Rowlet	Pokémon	{Basic}	{Grass}	sv6pt5	3	Common
sv6pt5-6	Tapu Bulu	Pokémon	{Basic}	{Grass}	sv6pt5	6	Rare
sv6pt5-9	Iron Moth	Pokémon	{Basic,Future}	{Fire}	sv6pt5	9	Uncommon
sv6pt5-10	Horsea	Pokémon	{Basic}	{Water}	sv6pt5	10	Common
sv6pt5-16	Drowzee	Pokémon	{Basic}	{Psychic}	sv6pt5	16	Common
sv6pt5-22	Sylveon	Pokémon	{"Stage 1"}	{Psychic}	sv6pt5	22	Uncommon
sv6pt5-24	Toxicroak	Pokémon	{"Stage 1"}	{Fighting}	sv6pt5	24	Common
sv6pt5-28	Golbat	Pokémon	{"Stage 1"}	{Darkness}	sv6pt5	28	Common
sv6pt5-31	Zorua	Pokémon	{Basic}	{Darkness}	sv6pt5	31	Common
sv6pt5-32	Zoroark	Pokémon	{"Stage 1"}	{Darkness}	sv6pt5	32	Rare
sv6pt5-33	Inkay	Pokémon	{Basic}	{Darkness}	sv6pt5	33	Common
sv6pt5-34	Malamar	Pokémon	{"Stage 1"}	{Darkness}	sv6pt5	34	Uncommon
sv6pt5-41	Cufant	Pokémon	{Basic}	{Metal}	sv6pt5	41	Common
sv6pt5-44	Axew	Pokémon	{Basic}	{Dragon}	sv6pt5	44	Common
sv6pt5-47	Kyurem	Pokémon	{Basic}	{Dragon}	sv6pt5	47	Uncommon
sv6pt5-49	Persian	Pokémon	{"Stage 1"}	{Colorless}	sv6pt5	49	Common
sv6pt5-54	Academy at Night	Trainer	{Stadium}	{}	sv6pt5	54	Uncommon
sv6pt5-55	Binding Mochi	Trainer	{"Pokémon Tool"}	{}	sv6pt5	55	Uncommon
sv6pt5-62	Poké Vital A	Trainer	{Item,"ACE SPEC"}	{}	sv6pt5	62	ACE SPEC Rare
sv6pt5-70	Dusknoir	Pokémon	{"Stage 2"}	{Psychic}	sv6pt5	70	Illustration Rare
sv6pt5-75	Zorua	Pokémon	{Basic}	{Darkness}	sv6pt5	75	Illustration Rare
sv6pt5-76	Cufant	Pokémon	{Basic}	{Metal}	sv6pt5	76	Illustration Rare
sv6pt5-80	Kingdra ex	Pokémon	{"Stage 2",ex}	{Water}	sv6pt5	80	Ultra Rare
sv6pt5-81	Revavroom ex	Pokémon	{"Stage 1",Tera,ex}	{Lightning}	sv6pt5	81	Ultra Rare
sv6pt5-5	Decidueye	Pokémon	{"Stage 2"}	{Grass}	sv6pt5	5	Uncommon
sv6pt5-11	Seadra	Pokémon	{"Stage 1"}	{Water}	sv6pt5	11	Common
sv6pt5-15	Revavroom ex	Pokémon	{"Stage 1",Tera,ex}	{Lightning}	sv6pt5	15	Double Rare
sv6pt5-25	Bloodmoon Ursaluna	Pokémon	{Basic}	{Fighting}	sv6pt5	25	Rare
sv6pt5-30	Absol	Pokémon	{Basic}	{Darkness}	sv6pt5	30	Common
sv6pt5-38	Fezandipiti ex	Pokémon	{Basic,ex}	{Darkness}	sv6pt5	38	Double Rare
sv6pt5-43	Varoom	Pokémon	{Basic}	{Metal}	sv6pt5	43	Common
sv6pt5-51	Furfrou	Pokémon	{Basic}	{Colorless}	sv6pt5	51	Common
sv6pt5-52	Stufful	Pokémon	{Basic}	{Colorless}	sv6pt5	52	Common
sv6pt5-60	Neutralization Zone	Trainer	{Stadium,"ACE SPEC"}	{}	sv6pt5	60	ACE SPEC Rare
sv6pt5-61	Night Stretcher	Trainer	{Item}	{}	sv6pt5	61	Uncommon
sv6pt5-65	Tapu Bulu	Pokémon	{Basic}	{Grass}	sv6pt5	65	Illustration Rare
sv6pt5-68	Duskull	Pokémon	{Basic}	{Psychic}	sv6pt5	68	Illustration Rare
sv6pt5-73	Fezandipiti	Pokémon	{Basic}	{Psychic}	sv6pt5	73	Illustration Rare
sv6pt5-74	Okidogi	Pokémon	{Basic}	{Fighting}	sv6pt5	74	Illustration Rare
sv6pt5-77	Fraxure	Pokémon	{"Stage 1"}	{Dragon}	sv6pt5	77	Illustration Rare
sv6pt5-78	Persian	Pokémon	{"Stage 1"}	{Colorless}	sv6pt5	78	Illustration Rare
sv6pt5-79	Bewear	Pokémon	{"Stage 1"}	{Colorless}	sv6pt5	79	Illustration Rare
sv6pt5-82	Okidogi ex	Pokémon	{Basic,ex}	{Darkness}	sv6pt5	82	Ultra Rare
sv6pt5-85	Pecharunt ex	Pokémon	{Basic,ex}	{Darkness}	sv6pt5	85	Ultra Rare
sv6pt5-86	Cassiopeia	Trainer	{Supporter}	{}	sv6pt5	86	Ultra Rare
sv6pt5-87	Colress's Tenacity	Trainer	{Supporter}	{}	sv6pt5	87	Ultra Rare
sv6pt5-88	Janine's Secret Art	Trainer	{Supporter}	{}	sv6pt5	88	Ultra Rare
sv6pt5-89	Xerosic's Machinations	Trainer	{Supporter}	{}	sv6pt5	89	Ultra Rare
sv6pt5-90	Okidogi ex	Pokémon	{Basic,ex}	{Darkness}	sv6pt5	90	Special Illustration Rare
sv6pt5-91	Munkidori ex	Pokémon	{Basic,ex}	{Darkness}	sv6pt5	91	Special Illustration Rare
sv6pt5-92	Fezandipiti ex	Pokémon	{Basic,ex}	{Darkness}	sv6pt5	92	Special Illustration Rare
sv6pt5-93	Pecharunt ex	Pokémon	{Basic,ex}	{Darkness}	sv6pt5	93	Special Illustration Rare
sv6pt5-94	Cassiopeia	Trainer	{Supporter}	{}	sv6pt5	94	Special Illustration Rare
sv6pt5-95	Pecharunt ex	Pokémon	{Basic,ex}	{Darkness}	sv6pt5	95	Hyper Rare
sv6pt5-97	Powerglass	Trainer	{"Pokémon Tool"}	{}	sv6pt5	97	Hyper Rare
sv6pt5-96	Earthen Vessel	Trainer	{Item,Ancient}	{}	sv6pt5	96	Hyper Rare
sv6pt5-98	Basic Darkness Energy	Energy	{Basic}	{Darkness}	sv6pt5	98	Hyper Rare
sv6pt5-99	Basic Metal Energy	Energy	{Basic}	{Metal}	sv6pt5	99	Hyper Rare
sv7-1	Venusaur ex	Pokémon	{"Stage 2",ex}	{Grass}	sv7	1	Double Rare
sv7-2	Ledyba	Pokémon	{Basic}	{Grass}	sv7	2	Common
sv7-3	Ledian	Pokémon	{"Stage 1"}	{Grass}	sv7	3	Rare
sv7-4	Celebi	Pokémon	{Basic}	{Grass}	sv7	4	Uncommon
sv7-5	Lileep	Pokémon	{"Stage 1"}	{Grass}	sv7	5	Common
sv7-6	Cradily	Pokémon	{"Stage 2"}	{Grass}	sv7	6	Rare
sv7-7	Carnivine	Pokémon	{Basic}	{Grass}	sv7	7	Common
sv7-8	Mow Rotom	Pokémon	{Basic}	{Grass}	sv7	8	Common
sv7-9	Grubbin	Pokémon	{Basic}	{Grass}	sv7	9	Common
sv7-10	Gossifleur	Pokémon	{Basic}	{Grass}	sv7	10	Common
sv7-11	Eldegoss	Pokémon	{"Stage 1"}	{Grass}	sv7	11	Uncommon
sv7-12	Applin	Pokémon	{Basic}	{Grass}	sv7	12	Common
sv7-13	Dipplin	Pokémon	{"Stage 1"}	{Grass}	sv7	13	Common
sv7-14	Hydrapple ex	Pokémon	{"Stage 2",ex}	{Grass}	sv7	14	Double Rare
sv7-15	Nymble	Pokémon	{Basic}	{Grass}	sv7	15	Common
sv7-16	Lokix	Pokémon	{"Stage 1"}	{Grass}	sv7	16	Common
sv7-17	Toedscool	Pokémon	{Basic}	{Grass}	sv7	17	Common
sv7-18	Toedscruel	Pokémon	{"Stage 1"}	{Grass}	sv7	18	Uncommon
sv7-19	Ponyta	Pokémon	{Basic}	{Fire}	sv7	19	Common
sv7-20	Rapidash	Pokémon	{"Stage 1"}	{Fire}	sv7	20	Uncommon
sv7-21	Pansear	Pokémon	{Basic}	{Fire}	sv7	21	Common
sv7-22	Reshiram	Pokémon	{Basic}	{Fire}	sv7	22	Uncommon
sv7-23	Salandit	Pokémon	{Basic}	{Fire}	sv7	23	Common
sv7-24	Salazzle	Pokémon	{"Stage 1"}	{Fire}	sv7	24	Uncommon
sv7-25	Turtonator	Pokémon	{Basic}	{Fire}	sv7	25	Common
sv7-26	Scorbunny	Pokémon	{Basic}	{Fire}	sv7	26	Common
sv7-27	Raboot	Pokémon	{"Stage 1"}	{Fire}	sv7	27	Common
sv7-28	Cinderace ex	Pokémon	{"Stage 2",Tera,ex}	{Fire}	sv7	28	Double Rare
sv7-29	Charcadet	Pokémon	{Basic}	{Fire}	sv7	29	Common
sv7-30	Blastoise ex	Pokémon	{"Stage 2",ex}	{Water}	sv7	30	Double Rare
sv7-31	Lapras	Pokémon	{Basic}	{Water}	sv7	31	Uncommon
sv7-32	Lapras ex	Pokémon	{Basic,Tera,ex}	{Water}	sv7	32	Double Rare
sv7-33	Marill	Pokémon	{Basic}	{Water}	sv7	33	Common
sv7-34	Azumarill	Pokémon	{"Stage 1"}	{Water}	sv7	34	Uncommon
sv7-35	Finneon	Pokémon	{Basic}	{Water}	sv7	35	Common
sv7-36	Lumineon	Pokémon	{"Stage 1"}	{Water}	sv7	36	Uncommon
sv7-37	Tirtouga	Pokémon	{"Stage 1"}	{Water}	sv7	37	Common
sv7-38	Carracosta	Pokémon	{"Stage 2"}	{Water}	sv7	38	Rare
sv7-39	Froakie	Pokémon	{Basic}	{Water}	sv7	39	Common
sv7-40	Frogadier	Pokémon	{"Stage 1"}	{Water}	sv7	40	Uncommon
sv7-41	Greninja ex	Pokémon	{"Stage 2",ex}	{Water}	sv7	41	Double Rare
sv7-42	Crabominable	Pokémon	{"Stage 1"}	{Water}	sv7	42	Uncommon
sv7-43	Chewtle	Pokémon	{Basic}	{Water}	sv7	43	Common
sv7-44	Drednaw	Pokémon	{"Stage 1"}	{Water}	sv7	44	Rare
sv7-45	Veluza	Pokémon	{Basic}	{Water}	sv7	45	Uncommon
sv7-46	Electabuzz	Pokémon	{Basic}	{Lightning}	sv7	46	Common
sv7-47	Electivire	Pokémon	{"Stage 1"}	{Lightning}	sv7	47	Uncommon
sv7-48	Chinchou	Pokémon	{Basic}	{Lightning}	sv7	48	Common
sv7-49	Lanturn	Pokémon	{"Stage 1"}	{Lightning}	sv7	49	Uncommon
sv7-50	Joltik	Pokémon	{Basic}	{Lightning}	sv7	50	Common
sv7-51	Galvantula ex	Pokémon	{"Stage 1",Tera,ex}	{Lightning}	sv7	51	Double Rare
sv7-52	Charjabug	Pokémon	{"Stage 1"}	{Lightning}	sv7	52	Common
sv7-53	Vikavolt	Pokémon	{"Stage 2"}	{Lightning}	sv7	53	Uncommon
sv7-54	Togedemaru	Pokémon	{Basic}	{Lightning}	sv7	54	Uncommon
sv7-55	Zeraora	Pokémon	{Basic}	{Lightning}	sv7	55	Rare
sv7-56	Pawmi	Pokémon	{Basic}	{Lightning}	sv7	56	Common
sv7-57	Slowpoke	Pokémon	{Basic}	{Psychic}	sv7	57	Common
sv7-58	Slowking	Pokémon	{"Stage 1"}	{Psychic}	sv7	58	Uncommon
sv7-59	Mewtwo	Pokémon	{Basic}	{Psychic}	sv7	59	Uncommon
sv7-60	Drifloon	Pokémon	{Basic}	{Psychic}	sv7	60	Common
sv7-61	Drifblim	Pokémon	{"Stage 1"}	{Psychic}	sv7	61	Uncommon
sv7-62	Yamask	Pokémon	{Basic}	{Psychic}	sv7	62	Common
sv7-63	Comfey	Pokémon	{Basic}	{Psychic}	sv7	63	Common
sv7-64	Milcery	Pokémon	{Basic}	{Psychic}	sv7	64	Common
sv7-65	Alcremie	Pokémon	{"Stage 1"}	{Psychic}	sv7	65	Rare
sv7-66	Fidough	Pokémon	{Basic}	{Psychic}	sv7	66	Common
sv7-67	Dachsbun ex	Pokémon	{"Stage 1",ex}	{Psychic}	sv7	67	Double Rare
sv7-68	Flittle	Pokémon	{Basic}	{Psychic}	sv7	68	Common
sv7-69	Espathra	Pokémon	{"Stage 1"}	{Psychic}	sv7	69	Common
sv7-70	Greavard	Pokémon	{Basic}	{Psychic}	sv7	70	Common
sv7-71	Iron Boulder	Pokémon	{Basic,Future}	{Psychic}	sv7	71	Rare
sv7-72	Cubone	Pokémon	{Basic}	{Fighting}	sv7	72	Common
sv7-73	Marowak	Pokémon	{"Stage 1"}	{Fighting}	sv7	73	Uncommon
sv7-74	Rhyhorn	Pokémon	{Basic}	{Fighting}	sv7	74	Common
sv7-75	Rhydon	Pokémon	{"Stage 1"}	{Fighting}	sv7	75	Common
sv7-76	Rhyperior	Pokémon	{"Stage 2"}	{Fighting}	sv7	76	Rare
sv7-77	Meditite	Pokémon	{Basic}	{Fighting}	sv7	77	Common
sv7-78	Meditite	Pokémon	{Basic}	{Fighting}	sv7	78	Common
sv7-79	Medicham	Pokémon	{"Stage 1"}	{Fighting}	sv7	79	Common
sv7-80	Medicham ex	Pokémon	{"Stage 1",ex}	{Fighting}	sv7	80	Double Rare
sv7-81	Riolu	Pokémon	{Basic}	{Fighting}	sv7	81	Common
sv7-82	Lucario ex	Pokémon	{"Stage 1",ex}	{Fighting}	sv7	82	Double Rare
sv7-83	Mienfoo	Pokémon	{Basic}	{Fighting}	sv7	83	Common
sv7-84	Mienshao	Pokémon	{"Stage 1"}	{Fighting}	sv7	84	Uncommon
sv7-85	Pancham	Pokémon	{Basic}	{Fighting}	sv7	85	Common
sv7-86	Diancie	Pokémon	{Basic}	{Fighting}	sv7	86	Uncommon
sv7-87	Crabrawler	Pokémon	{Basic}	{Fighting}	sv7	87	Common
sv7-88	Falinks	Pokémon	{Basic}	{Fighting}	sv7	88	Common
sv7-89	Garganacl ex	Pokémon	{"Stage 2",ex}	{Fighting}	sv7	89	Double Rare
sv7-90	Koraidon	Pokémon	{Basic}	{Fighting}	sv7	90	Uncommon
sv7-91	Gulpin	Pokémon	{Basic}	{Darkness}	sv7	91	Common
sv7-92	Swalot	Pokémon	{"Stage 1"}	{Darkness}	sv7	92	Uncommon
sv7-93	Pangoro	Pokémon	{"Stage 1"}	{Darkness}	sv7	93	Uncommon
sv7-94	Impidimp	Pokémon	{Basic}	{Darkness}	sv7	94	Common
sv7-95	Morgrem	Pokémon	{"Stage 1"}	{Darkness}	sv7	95	Common
sv7-96	Grimmsnarl	Pokémon	{"Stage 2"}	{Darkness}	sv7	96	Rare
sv7-97	Bombirdier	Pokémon	{Basic}	{Darkness}	sv7	97	Common
sv7-98	Jirachi	Pokémon	{Basic}	{Metal}	sv7	98	Uncommon
sv7-99	Klink	Pokémon	{Basic}	{Metal}	sv7	99	Common
sv7-100	Klang	Pokémon	{"Stage 1"}	{Metal}	sv7	100	Common
sv7-101	Klinklang	Pokémon	{"Stage 2"}	{Metal}	sv7	101	Rare
sv7-102	Meltan	Pokémon	{Basic}	{Metal}	sv7	102	Common
sv7-103	Meltan	Pokémon	{Basic}	{Metal}	sv7	103	Common
sv7-104	Melmetal	Pokémon	{"Stage 1"}	{Metal}	sv7	104	Rare
sv7-105	Melmetal ex	Pokémon	{"Stage 1",ex}	{Metal}	sv7	105	Double Rare
sv7-106	Duraludon	Pokémon	{Basic}	{Metal}	sv7	106	Common
sv7-107	Archaludon	Pokémon	{"Stage 1"}	{Metal}	sv7	107	Rare
sv7-108	Varoom	Pokémon	{Basic}	{Metal}	sv7	108	Common
sv7-109	Revavroom	Pokémon	{"Stage 1"}	{Metal}	sv7	109	Uncommon
sv7-110	Orthworm ex	Pokémon	{Basic,ex}	{Metal}	sv7	110	Double Rare
sv7-111	Raging Bolt	Pokémon	{Basic,Ancient}	{Dragon}	sv7	111	Rare
sv7-112	Tauros	Pokémon	{Basic}	{Colorless}	sv7	112	Common
sv7-113	Eevee	Pokémon	{Basic}	{Colorless}	sv7	113	Common
sv7-114	Hoothoot	Pokémon	{Basic}	{Colorless}	sv7	114	Common
sv7-115	Noctowl	Pokémon	{"Stage 1"}	{Colorless}	sv7	115	Rare
sv7-116	Glameow	Pokémon	{Basic}	{Colorless}	sv7	116	Common
sv7-117	Purugly	Pokémon	{"Stage 1"}	{Colorless}	sv7	117	Common
sv7-118	Fan Rotom	Pokémon	{Basic}	{Colorless}	sv7	118	Common
sv7-119	Bouffalant	Pokémon	{Basic}	{Colorless}	sv7	119	Rare
sv7-120	Tornadus	Pokémon	{Basic}	{Colorless}	sv7	120	Uncommon
sv7-121	Fletchling	Pokémon	{Basic}	{Colorless}	sv7	121	Common
sv7-122	Fletchinder	Pokémon	{"Stage 1"}	{Colorless}	sv7	122	Common
sv7-123	Talonflame	Pokémon	{"Stage 2"}	{Colorless}	sv7	123	Uncommon
sv7-124	Wooloo	Pokémon	{Basic}	{Colorless}	sv7	124	Common
sv7-125	Dubwool	Pokémon	{"Stage 1"}	{Colorless}	sv7	125	Uncommon
sv7-126	Lechonk	Pokémon	{Basic}	{Colorless}	sv7	126	Common
sv7-127	Cyclizar	Pokémon	{Basic}	{Colorless}	sv7	127	Common
sv7-128	Terapagos ex	Pokémon	{Basic,Tera,ex}	{Colorless}	sv7	128	Double Rare
sv7-129	Antique Cover Fossil	Trainer	{Item}	{}	sv7	129	Common
sv7-130	Antique Root Fossil	Trainer	{Item}	{}	sv7	130	Common
sv7-131	Area Zero Underdepths	Trainer	{Stadium}	{}	sv7	131	Uncommon
sv7-132	Briar	Trainer	{Supporter}	{}	sv7	132	Uncommon
sv7-133	Crispin	Trainer	{Supporter}	{}	sv7	133	Uncommon
sv7-134	Deluxe Bomb	Trainer	{"Pokémon Tool","ACE SPEC"}	{}	sv7	134	ACE SPEC Rare
sv7-135	Glass Trumpet	Trainer	{Item}	{}	sv7	135	Uncommon
sv7-136	Grand Tree	Trainer	{Stadium,"ACE SPEC"}	{}	sv7	136	ACE SPEC Rare
sv7-137	Gravity Gemstone	Trainer	{"Pokémon Tool"}	{}	sv7	137	Uncommon
sv7-138	Kofu	Trainer	{Supporter}	{}	sv7	138	Uncommon
sv7-139	Lacey	Trainer	{Supporter}	{}	sv7	139	Uncommon
sv7-140	Occa Berry	Trainer	{"Pokémon Tool"}	{}	sv7	140	Uncommon
sv7-141	Payapa Berry	Trainer	{"Pokémon Tool"}	{}	sv7	141	Uncommon
sv7-142	Sparkling Crystal	Trainer	{"Pokémon Tool","ACE SPEC"}	{}	sv7	142	ACE SPEC Rare
sv7-143	Bulbasaur	Pokémon	{Basic}	{Grass}	sv7	143	Illustration Rare
sv7-144	Ledian	Pokémon	{"Stage 1"}	{Grass}	sv7	144	Illustration Rare
sv7-145	Lileep	Pokémon	{"Stage 1"}	{Grass}	sv7	145	Illustration Rare
sv7-146	Turtonator	Pokémon	{Basic}	{Fire}	sv7	146	Illustration Rare
sv7-147	Raboot	Pokémon	{"Stage 1"}	{Fire}	sv7	147	Illustration Rare
sv7-148	Squirtle	Pokémon	{Basic}	{Water}	sv7	148	Illustration Rare
sv7-149	Crabominable	Pokémon	{"Stage 1"}	{Water}	sv7	149	Illustration Rare
sv7-150	Joltik	Pokémon	{Basic}	{Lightning}	sv7	150	Illustration Rare
sv7-151	Zeraora	Pokémon	{Basic}	{Lightning}	sv7	151	Illustration Rare
sv7-152	Milcery	Pokémon	{Basic}	{Psychic}	sv7	152	Illustration Rare
sv7-153	Meditite	Pokémon	{Basic}	{Fighting}	sv7	153	Illustration Rare
sv7-154	Gulpin	Pokémon	{Basic}	{Darkness}	sv7	154	Illustration Rare
sv7-155	Archaludon	Pokémon	{"Stage 1"}	{Metal}	sv7	155	Illustration Rare
sv7-156	Hydrapple ex	Pokémon	{"Stage 2",ex}	{Grass}	sv7	156	Ultra Rare
sv7-157	Cinderace ex	Pokémon	{"Stage 2",Tera,ex}	{Fire}	sv7	157	Ultra Rare
sv7-158	Lapras ex	Pokémon	{Basic,Tera,ex}	{Water}	sv7	158	Ultra Rare
sv7-159	Galvantula ex	Pokémon	{"Stage 1",Tera,ex}	{Lightning}	sv7	159	Ultra Rare
sv7-160	Dachsbun ex	Pokémon	{"Stage 1",ex}	{Psychic}	sv7	160	Ultra Rare
sv7-161	Medicham ex	Pokémon	{"Stage 1",ex}	{Fighting}	sv7	161	Ultra Rare
sv7-162	Orthworm ex	Pokémon	{Basic,ex}	{Metal}	sv7	162	Ultra Rare
sv7-163	Briar	Trainer	{Supporter}	{}	sv7	163	Ultra Rare
sv7-164	Crispin	Trainer	{Supporter}	{}	sv7	164	Ultra Rare
sv7-165	Kofu	Trainer	{Supporter}	{}	sv7	165	Ultra Rare
sv7-166	Lacey	Trainer	{Supporter}	{}	sv7	166	Ultra Rare
sv7-167	Hydrapple ex	Pokémon	{"Stage 2",ex}	{Grass}	sv7	167	Special Illustration Rare
sv7-168	Galvantula ex	Pokémon	{"Stage 1",Tera,ex}	{Lightning}	sv7	168	Special Illustration Rare
sv7-169	Dachsbun ex	Pokémon	{"Stage 1",ex}	{Psychic}	sv7	169	Special Illustration Rare
sv7-170	Terapagos ex	Pokémon	{Basic,Tera,ex}	{Colorless}	sv7	170	Special Illustration Rare
sv7-171	Briar	Trainer	{Supporter}	{}	sv7	171	Special Illustration Rare
sv7-172	Lacey	Trainer	{Supporter}	{}	sv7	172	Special Illustration Rare
sv7-173	Terapagos ex	Pokémon	{Basic,Tera,ex}	{Colorless}	sv7	173	Hyper Rare
sv7-174	Area Zero Underdepths	Trainer	{Stadium}	{}	sv7	174	Hyper Rare
sv7-175	Bravery Charm	Trainer	{"Pokémon Tool"}	{}	sv7	175	Hyper Rare
\.


--
-- Data for Name: image; Type: TABLE DATA; Schema: public; Owner: ash
--

COPY public.image (id, card_id, url, type) FROM stdin;
1	sv8-1	https://images.pokemontcg.io/sv8/1.png	small
2	sv8-2	https://images.pokemontcg.io/sv8/2.png	small
3	sv8-3	https://images.pokemontcg.io/sv8/3.png	small
4	sv8-11	https://images.pokemontcg.io/sv8/11.png	small
5	sv8-14	https://images.pokemontcg.io/sv8/14.png	small
6	sv8-16	https://images.pokemontcg.io/sv8/16.png	small
7	sv8-17	https://images.pokemontcg.io/sv8/17.png	small
8	sv8-24	https://images.pokemontcg.io/sv8/24.png	small
9	sv8-27	https://images.pokemontcg.io/sv8/27.png	small
10	sv8-30	https://images.pokemontcg.io/sv8/30.png	small
11	sv8-31	https://images.pokemontcg.io/sv8/31.png	small
12	sv8-29	https://images.pokemontcg.io/sv8/29.png	small
13	sv8-25	https://images.pokemontcg.io/sv8/25.png	small
14	sv8-4	https://images.pokemontcg.io/sv8/4.png	small
15	sv8-6	https://images.pokemontcg.io/sv8/6.png	small
16	sv8-5	https://images.pokemontcg.io/sv8/5.png	small
17	sv8-8	https://images.pokemontcg.io/sv8/8.png	small
18	sv8-9	https://images.pokemontcg.io/sv8/9.png	small
19	sv8-10	https://images.pokemontcg.io/sv8/10.png	small
20	sv8-15	https://images.pokemontcg.io/sv8/15.png	small
21	sv8-28	https://images.pokemontcg.io/sv8/28.png	small
22	sv8-7	https://images.pokemontcg.io/sv8/7.png	small
23	sv8-13	https://images.pokemontcg.io/sv8/13.png	small
24	sv8-18	https://images.pokemontcg.io/sv8/18.png	small
25	sv8-19	https://images.pokemontcg.io/sv8/19.png	small
26	sv8-21	https://images.pokemontcg.io/sv8/21.png	small
27	sv8-23	https://images.pokemontcg.io/sv8/23.png	small
28	sv8-20	https://images.pokemontcg.io/sv8/20.png	small
29	sv8-22	https://images.pokemontcg.io/sv8/22.png	small
30	sv8-12	https://images.pokemontcg.io/sv8/12.png	small
31	sv8-26	https://images.pokemontcg.io/sv8/26.png	small
32	sv8-36	https://images.pokemontcg.io/sv8/36.png	small
33	sv8-38	https://images.pokemontcg.io/sv8/38.png	small
34	sv8-34	https://images.pokemontcg.io/sv8/34.png	small
35	sv8-39	https://images.pokemontcg.io/sv8/39.png	small
36	sv8-40	https://images.pokemontcg.io/sv8/40.png	small
37	sv8-43	https://images.pokemontcg.io/sv8/43.png	small
38	sv8-45	https://images.pokemontcg.io/sv8/45.png	small
39	sv8-46	https://images.pokemontcg.io/sv8/46.png	small
40	sv8-32	https://images.pokemontcg.io/sv8/32.png	small
41	sv8-37	https://images.pokemontcg.io/sv8/37.png	small
42	sv8-47	https://images.pokemontcg.io/sv8/47.png	small
43	sv8-42	https://images.pokemontcg.io/sv8/42.png	small
44	sv8-44	https://images.pokemontcg.io/sv8/44.png	small
45	sv8-33	https://images.pokemontcg.io/sv8/33.png	small
46	sv8-35	https://images.pokemontcg.io/sv8/35.png	small
47	sv8-41	https://images.pokemontcg.io/sv8/41.png	small
48	sv8-48	https://images.pokemontcg.io/sv8/48.png	small
49	sv8-49	https://images.pokemontcg.io/sv8/49.png	small
50	sv8-52	https://images.pokemontcg.io/sv8/52.png	small
51	sv8-51	https://images.pokemontcg.io/sv8/51.png	small
52	sv8-54	https://images.pokemontcg.io/sv8/54.png	small
53	sv8-50	https://images.pokemontcg.io/sv8/50.png	small
54	sv8-53	https://images.pokemontcg.io/sv8/53.png	small
55	sv8-57	https://images.pokemontcg.io/sv8/57.png	small
56	sv8-56	https://images.pokemontcg.io/sv8/56.png	small
57	sv8-55	https://images.pokemontcg.io/sv8/55.png	small
58	sv8-58	https://images.pokemontcg.io/sv8/58.png	small
59	sv8-59	https://images.pokemontcg.io/sv8/59.png	small
60	sv8-60	https://images.pokemontcg.io/sv8/60.png	small
61	sv8-61	https://images.pokemontcg.io/sv8/61.png	small
62	sv8-62	https://images.pokemontcg.io/sv8/62.png	small
63	sv8-68	https://images.pokemontcg.io/sv8/68.png	small
64	sv8-71	https://images.pokemontcg.io/sv8/71.png	small
65	sv8-69	https://images.pokemontcg.io/sv8/69.png	small
66	sv8-66	https://images.pokemontcg.io/sv8/66.png	small
67	sv8-63	https://images.pokemontcg.io/sv8/63.png	small
68	sv8-67	https://images.pokemontcg.io/sv8/67.png	small
69	sv8-72	https://images.pokemontcg.io/sv8/72.png	small
70	sv8-70	https://images.pokemontcg.io/sv8/70.png	small
71	sv8-64	https://images.pokemontcg.io/sv8/64.png	small
72	sv8-65	https://images.pokemontcg.io/sv8/65.png	small
73	sv8-73	https://images.pokemontcg.io/sv8/73.png	small
74	sv8-74	https://images.pokemontcg.io/sv8/74.png	small
75	sv8-75	https://images.pokemontcg.io/sv8/75.png	small
76	sv8-76	https://images.pokemontcg.io/sv8/76.png	small
77	sv8-77	https://images.pokemontcg.io/sv8/77.png	small
78	sv8-78	https://images.pokemontcg.io/sv8/78.png	small
79	sv8-79	https://images.pokemontcg.io/sv8/79.png	small
80	sv8-80	https://images.pokemontcg.io/sv8/80.png	small
81	sv8-81	https://images.pokemontcg.io/sv8/81.png	small
82	sv8-82	https://images.pokemontcg.io/sv8/82.png	small
83	sv8-83	https://images.pokemontcg.io/sv8/83.png	small
84	sv8-84	https://images.pokemontcg.io/sv8/84.png	small
85	sv8-85	https://images.pokemontcg.io/sv8/85.png	small
86	sv8-86	https://images.pokemontcg.io/sv8/86.png	small
87	sv8-87	https://images.pokemontcg.io/sv8/87.png	small
88	sv8-88	https://images.pokemontcg.io/sv8/88.png	small
89	sv8-89	https://images.pokemontcg.io/sv8/89.png	small
90	sv8-90	https://images.pokemontcg.io/sv8/90.png	small
91	sv8-91	https://images.pokemontcg.io/sv8/91.png	small
92	sv8-92	https://images.pokemontcg.io/sv8/92.png	small
93	sv8-95	https://images.pokemontcg.io/sv8/95.png	small
94	sv8-97	https://images.pokemontcg.io/sv8/97.png	small
95	sv8-94	https://images.pokemontcg.io/sv8/94.png	small
96	sv8-96	https://images.pokemontcg.io/sv8/96.png	small
97	sv8-99	https://images.pokemontcg.io/sv8/99.png	small
98	sv8-93	https://images.pokemontcg.io/sv8/93.png	small
99	sv8-98	https://images.pokemontcg.io/sv8/98.png	small
100	sv8-100	https://images.pokemontcg.io/sv8/100.png	small
101	sv8-101	https://images.pokemontcg.io/sv8/101.png	small
102	sv8-102	https://images.pokemontcg.io/sv8/102.png	small
103	sv8-103	https://images.pokemontcg.io/sv8/103.png	small
104	sv8-104	https://images.pokemontcg.io/sv8/104.png	small
105	sv8-105	https://images.pokemontcg.io/sv8/105.png	small
106	sv8-106	https://images.pokemontcg.io/sv8/106.png	small
107	sv8-107	https://images.pokemontcg.io/sv8/107.png	small
108	sv8-108	https://images.pokemontcg.io/sv8/108.png	small
109	sv8-109	https://images.pokemontcg.io/sv8/109.png	small
110	sv8-110	https://images.pokemontcg.io/sv8/110.png	small
111	sv8-111	https://images.pokemontcg.io/sv8/111.png	small
112	sv8-112	https://images.pokemontcg.io/sv8/112.png	small
113	sv8-113	https://images.pokemontcg.io/sv8/113.png	small
114	sv8-114	https://images.pokemontcg.io/sv8/114.png	small
115	sv8-115	https://images.pokemontcg.io/sv8/115.png	small
116	sv8-117	https://images.pokemontcg.io/sv8/117.png	small
117	sv8-120	https://images.pokemontcg.io/sv8/120.png	small
118	sv8-119	https://images.pokemontcg.io/sv8/119.png	small
119	sv8-121	https://images.pokemontcg.io/sv8/121.png	small
120	sv8-118	https://images.pokemontcg.io/sv8/118.png	small
121	sv8-116	https://images.pokemontcg.io/sv8/116.png	small
122	sv8-122	https://images.pokemontcg.io/sv8/122.png	small
123	sv8-123	https://images.pokemontcg.io/sv8/123.png	small
124	sv8-124	https://images.pokemontcg.io/sv8/124.png	small
125	sv8-125	https://images.pokemontcg.io/sv8/125.png	small
126	sv8-126	https://images.pokemontcg.io/sv8/126.png	small
127	sv8-127	https://images.pokemontcg.io/sv8/127.png	small
128	sv8-128	https://images.pokemontcg.io/sv8/128.png	small
129	sv8-129	https://images.pokemontcg.io/sv8/129.png	small
130	sv8-130	https://images.pokemontcg.io/sv8/130.png	small
131	sv8-131	https://images.pokemontcg.io/sv8/131.png	small
132	sv8-132	https://images.pokemontcg.io/sv8/132.png	small
133	sv8-134	https://images.pokemontcg.io/sv8/134.png	small
134	sv8-139	https://images.pokemontcg.io/sv8/139.png	small
135	sv8-148	https://images.pokemontcg.io/sv8/148.png	small
136	sv8-149	https://images.pokemontcg.io/sv8/149.png	small
137	sv8-150	https://images.pokemontcg.io/sv8/150.png	small
138	sv8-133	https://images.pokemontcg.io/sv8/133.png	small
139	sv8-140	https://images.pokemontcg.io/sv8/140.png	small
140	sv8-142	https://images.pokemontcg.io/sv8/142.png	small
141	sv8-146	https://images.pokemontcg.io/sv8/146.png	small
142	sv8-141	https://images.pokemontcg.io/sv8/141.png	small
143	sv8-135	https://images.pokemontcg.io/sv8/135.png	small
144	sv8-147	https://images.pokemontcg.io/sv8/147.png	small
145	sv8-136	https://images.pokemontcg.io/sv8/136.png	small
146	sv8-138	https://images.pokemontcg.io/sv8/138.png	small
147	sv8-143	https://images.pokemontcg.io/sv8/143.png	small
148	sv8-144	https://images.pokemontcg.io/sv8/144.png	small
149	sv8-137	https://images.pokemontcg.io/sv8/137.png	small
150	sv8-145	https://images.pokemontcg.io/sv8/145.png	small
151	sv8-155	https://images.pokemontcg.io/sv8/155.png	small
152	sv8-153	https://images.pokemontcg.io/sv8/153.png	small
153	sv8-163	https://images.pokemontcg.io/sv8/163.png	small
154	sv8-159	https://images.pokemontcg.io/sv8/159.png	small
155	sv8-168	https://images.pokemontcg.io/sv8/168.png	small
156	sv8-157	https://images.pokemontcg.io/sv8/157.png	small
157	sv8-162	https://images.pokemontcg.io/sv8/162.png	small
158	sv8-166	https://images.pokemontcg.io/sv8/166.png	small
159	sv8-151	https://images.pokemontcg.io/sv8/151.png	small
160	sv8-165	https://images.pokemontcg.io/sv8/165.png	small
161	sv8-154	https://images.pokemontcg.io/sv8/154.png	small
162	sv8-152	https://images.pokemontcg.io/sv8/152.png	small
163	sv8-158	https://images.pokemontcg.io/sv8/158.png	small
164	sv8-160	https://images.pokemontcg.io/sv8/160.png	small
165	sv8-167	https://images.pokemontcg.io/sv8/167.png	small
166	sv8-156	https://images.pokemontcg.io/sv8/156.png	small
167	sv8-161	https://images.pokemontcg.io/sv8/161.png	small
168	sv8-164	https://images.pokemontcg.io/sv8/164.png	small
169	sv8-169	https://images.pokemontcg.io/sv8/169.png	small
170	sv8-170	https://images.pokemontcg.io/sv8/170.png	small
171	sv8-180	https://images.pokemontcg.io/sv8/180.png	small
172	sv8-177	https://images.pokemontcg.io/sv8/177.png	small
173	sv8-172	https://images.pokemontcg.io/sv8/172.png	small
174	sv8-171	https://images.pokemontcg.io/sv8/171.png	small
175	sv8-178	https://images.pokemontcg.io/sv8/178.png	small
176	sv8-179	https://images.pokemontcg.io/sv8/179.png	small
177	sv8-173	https://images.pokemontcg.io/sv8/173.png	small
178	sv8-174	https://images.pokemontcg.io/sv8/174.png	small
179	sv8-175	https://images.pokemontcg.io/sv8/175.png	small
180	sv8-176	https://images.pokemontcg.io/sv8/176.png	small
181	sv8-181	https://images.pokemontcg.io/sv8/181.png	small
182	sv8-182	https://images.pokemontcg.io/sv8/182.png	small
183	sv8-194	https://images.pokemontcg.io/sv8/194.png	small
184	sv8-187	https://images.pokemontcg.io/sv8/187.png	small
185	sv8-188	https://images.pokemontcg.io/sv8/188.png	small
186	sv8-186	https://images.pokemontcg.io/sv8/186.png	small
187	sv8-191	https://images.pokemontcg.io/sv8/191.png	small
188	sv8-195	https://images.pokemontcg.io/sv8/195.png	small
189	sv8-183	https://images.pokemontcg.io/sv8/183.png	small
190	sv8-185	https://images.pokemontcg.io/sv8/185.png	small
191	sv8-189	https://images.pokemontcg.io/sv8/189.png	small
192	sv8-184	https://images.pokemontcg.io/sv8/184.png	small
193	sv8-190	https://images.pokemontcg.io/sv8/190.png	small
194	sv8-192	https://images.pokemontcg.io/sv8/192.png	small
195	sv8-193	https://images.pokemontcg.io/sv8/193.png	small
196	sv8-199	https://images.pokemontcg.io/sv8/199.png	small
197	sv8-201	https://images.pokemontcg.io/sv8/201.png	small
198	sv8-206	https://images.pokemontcg.io/sv8/206.png	small
199	sv8-209	https://images.pokemontcg.io/sv8/209.png	small
200	sv8-203	https://images.pokemontcg.io/sv8/203.png	small
201	sv8-212	https://images.pokemontcg.io/sv8/212.png	small
202	sv8-205	https://images.pokemontcg.io/sv8/205.png	small
203	sv8-204	https://images.pokemontcg.io/sv8/204.png	small
204	sv8-213	https://images.pokemontcg.io/sv8/213.png	small
205	sv8-207	https://images.pokemontcg.io/sv8/207.png	small
206	sv8-208	https://images.pokemontcg.io/sv8/208.png	small
207	sv8-197	https://images.pokemontcg.io/sv8/197.png	small
208	sv8-196	https://images.pokemontcg.io/sv8/196.png	small
209	sv8-198	https://images.pokemontcg.io/sv8/198.png	small
210	sv8-200	https://images.pokemontcg.io/sv8/200.png	small
211	sv8-202	https://images.pokemontcg.io/sv8/202.png	small
212	sv8-210	https://images.pokemontcg.io/sv8/210.png	small
213	sv8-211	https://images.pokemontcg.io/sv8/211.png	small
214	sv8-214	https://images.pokemontcg.io/sv8/214.png	small
215	sv8-215	https://images.pokemontcg.io/sv8/215.png	small
216	sv8-220	https://images.pokemontcg.io/sv8/220.png	small
217	sv8-216	https://images.pokemontcg.io/sv8/216.png	small
218	sv8-222	https://images.pokemontcg.io/sv8/222.png	small
219	sv8-223	https://images.pokemontcg.io/sv8/223.png	small
220	sv8-217	https://images.pokemontcg.io/sv8/217.png	small
221	sv8-221	https://images.pokemontcg.io/sv8/221.png	small
222	sv8-218	https://images.pokemontcg.io/sv8/218.png	small
223	sv8-219	https://images.pokemontcg.io/sv8/219.png	small
224	sv8-225	https://images.pokemontcg.io/sv8/225.png	small
225	sv8-224	https://images.pokemontcg.io/sv8/224.png	small
226	sv8-226	https://images.pokemontcg.io/sv8/226.png	small
227	sv8-230	https://images.pokemontcg.io/sv8/230.png	small
228	sv8-232	https://images.pokemontcg.io/sv8/232.png	small
229	sv8-234	https://images.pokemontcg.io/sv8/234.png	small
230	sv8-238	https://images.pokemontcg.io/sv8/238.png	small
231	sv8-236	https://images.pokemontcg.io/sv8/236.png	small
232	sv8-237	https://images.pokemontcg.io/sv8/237.png	small
233	sv8-231	https://images.pokemontcg.io/sv8/231.png	small
234	sv8-227	https://images.pokemontcg.io/sv8/227.png	small
235	sv8-228	https://images.pokemontcg.io/sv8/228.png	small
236	sv8-229	https://images.pokemontcg.io/sv8/229.png	small
237	sv8-233	https://images.pokemontcg.io/sv8/233.png	small
238	sv8-235	https://images.pokemontcg.io/sv8/235.png	small
239	sv8-239	https://images.pokemontcg.io/sv8/239.png	small
240	sv8-240	https://images.pokemontcg.io/sv8/240.png	small
241	sv8-241	https://images.pokemontcg.io/sv8/241.png	small
242	sv8-245	https://images.pokemontcg.io/sv8/245.png	small
243	sv8-244	https://images.pokemontcg.io/sv8/244.png	small
244	sv8-247	https://images.pokemontcg.io/sv8/247.png	small
245	sv8-249	https://images.pokemontcg.io/sv8/249.png	small
246	sv8-242	https://images.pokemontcg.io/sv8/242.png	small
247	sv8-243	https://images.pokemontcg.io/sv8/243.png	small
248	sv8-246	https://images.pokemontcg.io/sv8/246.png	small
249	sv8-248	https://images.pokemontcg.io/sv8/248.png	small
250	sv8-250	https://images.pokemontcg.io/sv8/250.png	small
251	sv8-1	https://images.pokemontcg.io/sv8/1_hires.png	large
252	sv8-2	https://images.pokemontcg.io/sv8/2_hires.png	large
253	sv8-3	https://images.pokemontcg.io/sv8/3_hires.png	large
254	sv8-11	https://images.pokemontcg.io/sv8/11_hires.png	large
255	sv8-14	https://images.pokemontcg.io/sv8/14_hires.png	large
256	sv8-16	https://images.pokemontcg.io/sv8/16_hires.png	large
257	sv8-17	https://images.pokemontcg.io/sv8/17_hires.png	large
258	sv8-24	https://images.pokemontcg.io/sv8/24_hires.png	large
259	sv8-27	https://images.pokemontcg.io/sv8/27_hires.png	large
260	sv8-30	https://images.pokemontcg.io/sv8/30_hires.png	large
261	sv8-31	https://images.pokemontcg.io/sv8/31_hires.png	large
262	sv8-29	https://images.pokemontcg.io/sv8/29_hires.png	large
263	sv8-25	https://images.pokemontcg.io/sv8/25_hires.png	large
264	sv8-4	https://images.pokemontcg.io/sv8/4_hires.png	large
265	sv8-6	https://images.pokemontcg.io/sv8/6_hires.png	large
266	sv8-5	https://images.pokemontcg.io/sv8/5_hires.png	large
267	sv8-8	https://images.pokemontcg.io/sv8/8_hires.png	large
268	sv8-9	https://images.pokemontcg.io/sv8/9_hires.png	large
269	sv8-10	https://images.pokemontcg.io/sv8/10_hires.png	large
270	sv8-15	https://images.pokemontcg.io/sv8/15_hires.png	large
271	sv8-28	https://images.pokemontcg.io/sv8/28_hires.png	large
272	sv8-7	https://images.pokemontcg.io/sv8/7_hires.png	large
273	sv8-13	https://images.pokemontcg.io/sv8/13_hires.png	large
274	sv8-18	https://images.pokemontcg.io/sv8/18_hires.png	large
275	sv8-19	https://images.pokemontcg.io/sv8/19_hires.png	large
276	sv8-21	https://images.pokemontcg.io/sv8/21_hires.png	large
277	sv8-23	https://images.pokemontcg.io/sv8/23_hires.png	large
278	sv8-20	https://images.pokemontcg.io/sv8/20_hires.png	large
279	sv8-22	https://images.pokemontcg.io/sv8/22_hires.png	large
280	sv8-12	https://images.pokemontcg.io/sv8/12_hires.png	large
281	sv8-26	https://images.pokemontcg.io/sv8/26_hires.png	large
282	sv8-36	https://images.pokemontcg.io/sv8/36_hires.png	large
283	sv8-38	https://images.pokemontcg.io/sv8/38_hires.png	large
284	sv8-34	https://images.pokemontcg.io/sv8/34_hires.png	large
285	sv8-39	https://images.pokemontcg.io/sv8/39_hires.png	large
286	sv8-40	https://images.pokemontcg.io/sv8/40_hires.png	large
287	sv8-43	https://images.pokemontcg.io/sv8/43_hires.png	large
288	sv8-45	https://images.pokemontcg.io/sv8/45_hires.png	large
289	sv8-46	https://images.pokemontcg.io/sv8/46_hires.png	large
290	sv8-32	https://images.pokemontcg.io/sv8/32_hires.png	large
291	sv8-37	https://images.pokemontcg.io/sv8/37_hires.png	large
292	sv8-47	https://images.pokemontcg.io/sv8/47_hires.png	large
293	sv8-42	https://images.pokemontcg.io/sv8/42_hires.png	large
294	sv8-44	https://images.pokemontcg.io/sv8/44_hires.png	large
295	sv8-33	https://images.pokemontcg.io/sv8/33_hires.png	large
296	sv8-35	https://images.pokemontcg.io/sv8/35_hires.png	large
297	sv8-41	https://images.pokemontcg.io/sv8/41_hires.png	large
298	sv8-48	https://images.pokemontcg.io/sv8/48_hires.png	large
299	sv8-49	https://images.pokemontcg.io/sv8/49_hires.png	large
300	sv8-52	https://images.pokemontcg.io/sv8/52_hires.png	large
301	sv8-51	https://images.pokemontcg.io/sv8/51_hires.png	large
302	sv8-54	https://images.pokemontcg.io/sv8/54_hires.png	large
303	sv8-50	https://images.pokemontcg.io/sv8/50_hires.png	large
304	sv8-53	https://images.pokemontcg.io/sv8/53_hires.png	large
305	sv8-57	https://images.pokemontcg.io/sv8/57_hires.png	large
306	sv8-56	https://images.pokemontcg.io/sv8/56_hires.png	large
307	sv8-55	https://images.pokemontcg.io/sv8/55_hires.png	large
308	sv8-58	https://images.pokemontcg.io/sv8/58_hires.png	large
309	sv8-59	https://images.pokemontcg.io/sv8/59_hires.png	large
310	sv8-60	https://images.pokemontcg.io/sv8/60_hires.png	large
311	sv8-61	https://images.pokemontcg.io/sv8/61_hires.png	large
312	sv8-62	https://images.pokemontcg.io/sv8/62_hires.png	large
313	sv8-68	https://images.pokemontcg.io/sv8/68_hires.png	large
314	sv8-71	https://images.pokemontcg.io/sv8/71_hires.png	large
315	sv8-69	https://images.pokemontcg.io/sv8/69_hires.png	large
316	sv8-66	https://images.pokemontcg.io/sv8/66_hires.png	large
317	sv8-63	https://images.pokemontcg.io/sv8/63_hires.png	large
318	sv8-67	https://images.pokemontcg.io/sv8/67_hires.png	large
319	sv8-72	https://images.pokemontcg.io/sv8/72_hires.png	large
320	sv8-70	https://images.pokemontcg.io/sv8/70_hires.png	large
321	sv8-64	https://images.pokemontcg.io/sv8/64_hires.png	large
322	sv8-65	https://images.pokemontcg.io/sv8/65_hires.png	large
323	sv8-73	https://images.pokemontcg.io/sv8/73_hires.png	large
324	sv8-74	https://images.pokemontcg.io/sv8/74_hires.png	large
325	sv8-75	https://images.pokemontcg.io/sv8/75_hires.png	large
326	sv8-76	https://images.pokemontcg.io/sv8/76_hires.png	large
327	sv8-77	https://images.pokemontcg.io/sv8/77_hires.png	large
328	sv8-78	https://images.pokemontcg.io/sv8/78_hires.png	large
329	sv8-79	https://images.pokemontcg.io/sv8/79_hires.png	large
330	sv8-80	https://images.pokemontcg.io/sv8/80_hires.png	large
331	sv8-81	https://images.pokemontcg.io/sv8/81_hires.png	large
332	sv8-82	https://images.pokemontcg.io/sv8/82_hires.png	large
333	sv8-83	https://images.pokemontcg.io/sv8/83_hires.png	large
334	sv8-84	https://images.pokemontcg.io/sv8/84_hires.png	large
335	sv8-85	https://images.pokemontcg.io/sv8/85_hires.png	large
336	sv8-86	https://images.pokemontcg.io/sv8/86_hires.png	large
337	sv8-87	https://images.pokemontcg.io/sv8/87_hires.png	large
338	sv8-88	https://images.pokemontcg.io/sv8/88_hires.png	large
339	sv8-89	https://images.pokemontcg.io/sv8/89_hires.png	large
340	sv8-90	https://images.pokemontcg.io/sv8/90_hires.png	large
341	sv8-91	https://images.pokemontcg.io/sv8/91_hires.png	large
342	sv8-92	https://images.pokemontcg.io/sv8/92_hires.png	large
343	sv8-95	https://images.pokemontcg.io/sv8/95_hires.png	large
344	sv8-97	https://images.pokemontcg.io/sv8/97_hires.png	large
345	sv8-94	https://images.pokemontcg.io/sv8/94_hires.png	large
346	sv8-96	https://images.pokemontcg.io/sv8/96_hires.png	large
347	sv8-99	https://images.pokemontcg.io/sv8/99_hires.png	large
348	sv8-93	https://images.pokemontcg.io/sv8/93_hires.png	large
349	sv8-98	https://images.pokemontcg.io/sv8/98_hires.png	large
350	sv8-100	https://images.pokemontcg.io/sv8/100_hires.png	large
351	sv8-101	https://images.pokemontcg.io/sv8/101_hires.png	large
352	sv8-102	https://images.pokemontcg.io/sv8/102_hires.png	large
353	sv8-103	https://images.pokemontcg.io/sv8/103_hires.png	large
354	sv8-104	https://images.pokemontcg.io/sv8/104_hires.png	large
355	sv8-105	https://images.pokemontcg.io/sv8/105_hires.png	large
356	sv8-106	https://images.pokemontcg.io/sv8/106_hires.png	large
357	sv8-107	https://images.pokemontcg.io/sv8/107_hires.png	large
358	sv8-108	https://images.pokemontcg.io/sv8/108_hires.png	large
359	sv8-109	https://images.pokemontcg.io/sv8/109_hires.png	large
360	sv8-110	https://images.pokemontcg.io/sv8/110_hires.png	large
361	sv8-111	https://images.pokemontcg.io/sv8/111_hires.png	large
362	sv8-112	https://images.pokemontcg.io/sv8/112_hires.png	large
363	sv8-113	https://images.pokemontcg.io/sv8/113_hires.png	large
364	sv8-114	https://images.pokemontcg.io/sv8/114_hires.png	large
365	sv8-115	https://images.pokemontcg.io/sv8/115_hires.png	large
366	sv8-117	https://images.pokemontcg.io/sv8/117_hires.png	large
367	sv8-120	https://images.pokemontcg.io/sv8/120_hires.png	large
368	sv8-119	https://images.pokemontcg.io/sv8/119_hires.png	large
369	sv8-121	https://images.pokemontcg.io/sv8/121_hires.png	large
370	sv8-118	https://images.pokemontcg.io/sv8/118_hires.png	large
371	sv8-116	https://images.pokemontcg.io/sv8/116_hires.png	large
372	sv8-122	https://images.pokemontcg.io/sv8/122_hires.png	large
373	sv8-123	https://images.pokemontcg.io/sv8/123_hires.png	large
374	sv8-124	https://images.pokemontcg.io/sv8/124_hires.png	large
375	sv8-125	https://images.pokemontcg.io/sv8/125_hires.png	large
376	sv8-126	https://images.pokemontcg.io/sv8/126_hires.png	large
377	sv8-127	https://images.pokemontcg.io/sv8/127_hires.png	large
378	sv8-128	https://images.pokemontcg.io/sv8/128_hires.png	large
379	sv8-129	https://images.pokemontcg.io/sv8/129_hires.png	large
380	sv8-130	https://images.pokemontcg.io/sv8/130_hires.png	large
381	sv8-131	https://images.pokemontcg.io/sv8/131_hires.png	large
382	sv8-132	https://images.pokemontcg.io/sv8/132_hires.png	large
383	sv8-134	https://images.pokemontcg.io/sv8/134_hires.png	large
384	sv8-139	https://images.pokemontcg.io/sv8/139_hires.png	large
385	sv8-148	https://images.pokemontcg.io/sv8/148_hires.png	large
386	sv8-149	https://images.pokemontcg.io/sv8/149_hires.png	large
387	sv8-150	https://images.pokemontcg.io/sv8/150_hires.png	large
388	sv8-133	https://images.pokemontcg.io/sv8/133_hires.png	large
389	sv8-140	https://images.pokemontcg.io/sv8/140_hires.png	large
390	sv8-142	https://images.pokemontcg.io/sv8/142_hires.png	large
391	sv8-146	https://images.pokemontcg.io/sv8/146_hires.png	large
392	sv8-141	https://images.pokemontcg.io/sv8/141_hires.png	large
393	sv8-135	https://images.pokemontcg.io/sv8/135_hires.png	large
394	sv8-147	https://images.pokemontcg.io/sv8/147_hires.png	large
395	sv8-136	https://images.pokemontcg.io/sv8/136_hires.png	large
396	sv8-138	https://images.pokemontcg.io/sv8/138_hires.png	large
397	sv8-143	https://images.pokemontcg.io/sv8/143_hires.png	large
398	sv8-144	https://images.pokemontcg.io/sv8/144_hires.png	large
399	sv8-137	https://images.pokemontcg.io/sv8/137_hires.png	large
400	sv8-145	https://images.pokemontcg.io/sv8/145_hires.png	large
401	sv8-155	https://images.pokemontcg.io/sv8/155_hires.png	large
402	sv8-153	https://images.pokemontcg.io/sv8/153_hires.png	large
403	sv8-163	https://images.pokemontcg.io/sv8/163_hires.png	large
404	sv8-159	https://images.pokemontcg.io/sv8/159_hires.png	large
405	sv8-168	https://images.pokemontcg.io/sv8/168_hires.png	large
406	sv8-157	https://images.pokemontcg.io/sv8/157_hires.png	large
407	sv8-162	https://images.pokemontcg.io/sv8/162_hires.png	large
408	sv8-166	https://images.pokemontcg.io/sv8/166_hires.png	large
409	sv8-151	https://images.pokemontcg.io/sv8/151_hires.png	large
410	sv8-165	https://images.pokemontcg.io/sv8/165_hires.png	large
411	sv8-154	https://images.pokemontcg.io/sv8/154_hires.png	large
412	sv8-152	https://images.pokemontcg.io/sv8/152_hires.png	large
413	sv8-158	https://images.pokemontcg.io/sv8/158_hires.png	large
414	sv8-160	https://images.pokemontcg.io/sv8/160_hires.png	large
415	sv8-167	https://images.pokemontcg.io/sv8/167_hires.png	large
416	sv8-156	https://images.pokemontcg.io/sv8/156_hires.png	large
417	sv8-161	https://images.pokemontcg.io/sv8/161_hires.png	large
418	sv8-164	https://images.pokemontcg.io/sv8/164_hires.png	large
419	sv8-169	https://images.pokemontcg.io/sv8/169_hires.png	large
420	sv8-170	https://images.pokemontcg.io/sv8/170_hires.png	large
421	sv8-180	https://images.pokemontcg.io/sv8/180_hires.png	large
422	sv8-177	https://images.pokemontcg.io/sv8/177_hires.png	large
423	sv8-172	https://images.pokemontcg.io/sv8/172_hires.png	large
424	sv8-171	https://images.pokemontcg.io/sv8/171_hires.png	large
425	sv8-178	https://images.pokemontcg.io/sv8/178_hires.png	large
426	sv8-179	https://images.pokemontcg.io/sv8/179_hires.png	large
427	sv8-173	https://images.pokemontcg.io/sv8/173_hires.png	large
428	sv8-174	https://images.pokemontcg.io/sv8/174_hires.png	large
429	sv8-175	https://images.pokemontcg.io/sv8/175_hires.png	large
430	sv8-176	https://images.pokemontcg.io/sv8/176_hires.png	large
431	sv8-181	https://images.pokemontcg.io/sv8/181_hires.png	large
432	sv8-182	https://images.pokemontcg.io/sv8/182_hires.png	large
433	sv8-194	https://images.pokemontcg.io/sv8/194_hires.png	large
434	sv8-187	https://images.pokemontcg.io/sv8/187_hires.png	large
435	sv8-188	https://images.pokemontcg.io/sv8/188_hires.png	large
436	sv8-186	https://images.pokemontcg.io/sv8/186_hires.png	large
437	sv8-191	https://images.pokemontcg.io/sv8/191_hires.png	large
438	sv8-195	https://images.pokemontcg.io/sv8/195_hires.png	large
439	sv8-183	https://images.pokemontcg.io/sv8/183_hires.png	large
440	sv8-185	https://images.pokemontcg.io/sv8/185_hires.png	large
441	sv8-189	https://images.pokemontcg.io/sv8/189_hires.png	large
442	sv8-184	https://images.pokemontcg.io/sv8/184_hires.png	large
443	sv8-190	https://images.pokemontcg.io/sv8/190_hires.png	large
444	sv8-192	https://images.pokemontcg.io/sv8/192_hires.png	large
445	sv8-193	https://images.pokemontcg.io/sv8/193_hires.png	large
446	sv8-199	https://images.pokemontcg.io/sv8/199_hires.png	large
447	sv8-201	https://images.pokemontcg.io/sv8/201_hires.png	large
448	sv8-206	https://images.pokemontcg.io/sv8/206_hires.png	large
449	sv8-209	https://images.pokemontcg.io/sv8/209_hires.png	large
450	sv8-203	https://images.pokemontcg.io/sv8/203_hires.png	large
451	sv8-212	https://images.pokemontcg.io/sv8/212_hires.png	large
452	sv8-205	https://images.pokemontcg.io/sv8/205_hires.png	large
453	sv8-204	https://images.pokemontcg.io/sv8/204_hires.png	large
454	sv8-213	https://images.pokemontcg.io/sv8/213_hires.png	large
455	sv8-207	https://images.pokemontcg.io/sv8/207_hires.png	large
456	sv8-208	https://images.pokemontcg.io/sv8/208_hires.png	large
457	sv8-197	https://images.pokemontcg.io/sv8/197_hires.png	large
458	sv8-196	https://images.pokemontcg.io/sv8/196_hires.png	large
459	sv8-198	https://images.pokemontcg.io/sv8/198_hires.png	large
460	sv8-200	https://images.pokemontcg.io/sv8/200_hires.png	large
461	sv8-202	https://images.pokemontcg.io/sv8/202_hires.png	large
462	sv8-210	https://images.pokemontcg.io/sv8/210_hires.png	large
463	sv8-211	https://images.pokemontcg.io/sv8/211_hires.png	large
464	sv8-214	https://images.pokemontcg.io/sv8/214_hires.png	large
465	sv8-215	https://images.pokemontcg.io/sv8/215_hires.png	large
466	sv8-220	https://images.pokemontcg.io/sv8/220_hires.png	large
467	sv8-216	https://images.pokemontcg.io/sv8/216_hires.png	large
468	sv8-222	https://images.pokemontcg.io/sv8/222_hires.png	large
469	sv8-223	https://images.pokemontcg.io/sv8/223_hires.png	large
470	sv8-217	https://images.pokemontcg.io/sv8/217_hires.png	large
471	sv8-221	https://images.pokemontcg.io/sv8/221_hires.png	large
472	sv8-218	https://images.pokemontcg.io/sv8/218_hires.png	large
473	sv8-219	https://images.pokemontcg.io/sv8/219_hires.png	large
474	sv8-225	https://images.pokemontcg.io/sv8/225_hires.png	large
475	sv8-224	https://images.pokemontcg.io/sv8/224_hires.png	large
476	sv8-226	https://images.pokemontcg.io/sv8/226_hires.png	large
477	sv8-230	https://images.pokemontcg.io/sv8/230_hires.png	large
478	sv8-232	https://images.pokemontcg.io/sv8/232_hires.png	large
479	sv8-234	https://images.pokemontcg.io/sv8/234_hires.png	large
480	sv8-238	https://images.pokemontcg.io/sv8/238_hires.png	large
481	sv8-236	https://images.pokemontcg.io/sv8/236_hires.png	large
482	sv8-237	https://images.pokemontcg.io/sv8/237_hires.png	large
483	sv8-231	https://images.pokemontcg.io/sv8/231_hires.png	large
484	sv8-227	https://images.pokemontcg.io/sv8/227_hires.png	large
485	sv8-228	https://images.pokemontcg.io/sv8/228_hires.png	large
486	sv8-229	https://images.pokemontcg.io/sv8/229_hires.png	large
487	sv8-233	https://images.pokemontcg.io/sv8/233_hires.png	large
488	sv8-235	https://images.pokemontcg.io/sv8/235_hires.png	large
489	sv8-239	https://images.pokemontcg.io/sv8/239_hires.png	large
490	sv8-240	https://images.pokemontcg.io/sv8/240_hires.png	large
491	sv8-241	https://images.pokemontcg.io/sv8/241_hires.png	large
492	sv8-245	https://images.pokemontcg.io/sv8/245_hires.png	large
493	sv8-244	https://images.pokemontcg.io/sv8/244_hires.png	large
494	sv8-247	https://images.pokemontcg.io/sv8/247_hires.png	large
495	sv8-249	https://images.pokemontcg.io/sv8/249_hires.png	large
496	sv8-242	https://images.pokemontcg.io/sv8/242_hires.png	large
497	sv8-243	https://images.pokemontcg.io/sv8/243_hires.png	large
498	sv8-246	https://images.pokemontcg.io/sv8/246_hires.png	large
499	sv8-248	https://images.pokemontcg.io/sv8/248_hires.png	large
500	sv8-250	https://images.pokemontcg.io/sv8/250_hires.png	large
501	sve-1	https://images.pokemontcg.io/sve/1.png	small
502	sve-2	https://images.pokemontcg.io/sve/2.png	small
503	sve-3	https://images.pokemontcg.io/sve/3.png	small
504	sve-4	https://images.pokemontcg.io/sve/4.png	small
505	sve-5	https://images.pokemontcg.io/sve/5.png	small
506	sve-6	https://images.pokemontcg.io/sve/6.png	small
507	sve-7	https://images.pokemontcg.io/sve/7.png	small
508	sve-8	https://images.pokemontcg.io/sve/8.png	small
509	sve-9	https://images.pokemontcg.io/sve/9.png	small
510	sve-10	https://images.pokemontcg.io/sve/10.png	small
511	sve-11	https://images.pokemontcg.io/sve/11.png	small
512	sve-12	https://images.pokemontcg.io/sve/12.png	small
513	sve-13	https://images.pokemontcg.io/sve/13.png	small
514	sve-14	https://images.pokemontcg.io/sve/14.png	small
515	sve-15	https://images.pokemontcg.io/sve/15.png	small
516	sve-16	https://images.pokemontcg.io/sve/16.png	small
517	sve-1	https://images.pokemontcg.io/sve/1_hires.png	large
518	sve-2	https://images.pokemontcg.io/sve/2_hires.png	large
519	sve-3	https://images.pokemontcg.io/sve/3_hires.png	large
520	sve-4	https://images.pokemontcg.io/sve/4_hires.png	large
521	sve-5	https://images.pokemontcg.io/sve/5_hires.png	large
522	sve-6	https://images.pokemontcg.io/sve/6_hires.png	large
523	sve-7	https://images.pokemontcg.io/sve/7_hires.png	large
524	sve-8	https://images.pokemontcg.io/sve/8_hires.png	large
525	sve-9	https://images.pokemontcg.io/sve/9_hires.png	large
526	sve-10	https://images.pokemontcg.io/sve/10_hires.png	large
527	sve-11	https://images.pokemontcg.io/sve/11_hires.png	large
528	sve-12	https://images.pokemontcg.io/sve/12_hires.png	large
529	sve-13	https://images.pokemontcg.io/sve/13_hires.png	large
530	sve-14	https://images.pokemontcg.io/sve/14_hires.png	large
531	sve-15	https://images.pokemontcg.io/sve/15_hires.png	large
532	sve-16	https://images.pokemontcg.io/sve/16_hires.png	large
533	sv3-1	https://images.pokemontcg.io/sv3/1.png	small
534	sv3-2	https://images.pokemontcg.io/sv3/2.png	small
535	sv3-3	https://images.pokemontcg.io/sv3/3.png	small
536	sv3-4	https://images.pokemontcg.io/sv3/4.png	small
537	sv3-5	https://images.pokemontcg.io/sv3/5.png	small
538	sv3-6	https://images.pokemontcg.io/sv3/6.png	small
539	sv3-7	https://images.pokemontcg.io/sv3/7.png	small
540	sv3-8	https://images.pokemontcg.io/sv3/8.png	small
541	sv3-9	https://images.pokemontcg.io/sv3/9.png	small
542	sv3-10	https://images.pokemontcg.io/sv3/10.png	small
543	sv3-11	https://images.pokemontcg.io/sv3/11.png	small
544	sv3-12	https://images.pokemontcg.io/sv3/12.png	small
545	sv3-13	https://images.pokemontcg.io/sv3/13.png	small
546	sv3-14	https://images.pokemontcg.io/sv3/14.png	small
547	sv3-15	https://images.pokemontcg.io/sv3/15.png	small
548	sv3-16	https://images.pokemontcg.io/sv3/16.png	small
549	sv3-17	https://images.pokemontcg.io/sv3/17.png	small
550	sv3-18	https://images.pokemontcg.io/sv3/18.png	small
551	sv3-19	https://images.pokemontcg.io/sv3/19.png	small
552	sv3-20	https://images.pokemontcg.io/sv3/20.png	small
553	sv3-21	https://images.pokemontcg.io/sv3/21.png	small
554	sv3-22	https://images.pokemontcg.io/sv3/22.png	small
555	sv3-23	https://images.pokemontcg.io/sv3/23.png	small
556	sv3-24	https://images.pokemontcg.io/sv3/24.png	small
557	sv3-25	https://images.pokemontcg.io/sv3/25.png	small
558	sv3-26	https://images.pokemontcg.io/sv3/26.png	small
559	sv3-27	https://images.pokemontcg.io/sv3/27.png	small
560	sv3-28	https://images.pokemontcg.io/sv3/28.png	small
561	sv3-29	https://images.pokemontcg.io/sv3/29.png	small
562	sv3-30	https://images.pokemontcg.io/sv3/30.png	small
563	sv3-31	https://images.pokemontcg.io/sv3/31.png	small
564	sv3-32	https://images.pokemontcg.io/sv3/32.png	small
565	sv3-33	https://images.pokemontcg.io/sv3/33.png	small
566	sv3-34	https://images.pokemontcg.io/sv3/34.png	small
567	sv3-35	https://images.pokemontcg.io/sv3/35.png	small
568	sv3-36	https://images.pokemontcg.io/sv3/36.png	small
569	sv3-37	https://images.pokemontcg.io/sv3/37.png	small
570	sv3-38	https://images.pokemontcg.io/sv3/38.png	small
571	sv3-39	https://images.pokemontcg.io/sv3/39.png	small
572	sv3-40	https://images.pokemontcg.io/sv3/40.png	small
573	sv3-41	https://images.pokemontcg.io/sv3/41.png	small
574	sv3-42	https://images.pokemontcg.io/sv3/42.png	small
575	sv3-43	https://images.pokemontcg.io/sv3/43.png	small
576	sv3-44	https://images.pokemontcg.io/sv3/44.png	small
577	sv3-45	https://images.pokemontcg.io/sv3/45.png	small
578	sv3-46	https://images.pokemontcg.io/sv3/46.png	small
579	sv3-47	https://images.pokemontcg.io/sv3/47.png	small
580	sv3-48	https://images.pokemontcg.io/sv3/48.png	small
581	sv3-49	https://images.pokemontcg.io/sv3/49.png	small
582	sv3-50	https://images.pokemontcg.io/sv3/50.png	small
583	sv3-51	https://images.pokemontcg.io/sv3/51.png	small
584	sv3-52	https://images.pokemontcg.io/sv3/52.png	small
585	sv3-53	https://images.pokemontcg.io/sv3/53.png	small
586	sv3-54	https://images.pokemontcg.io/sv3/54.png	small
587	sv3-55	https://images.pokemontcg.io/sv3/55.png	small
588	sv3-56	https://images.pokemontcg.io/sv3/56.png	small
589	sv3-57	https://images.pokemontcg.io/sv3/57.png	small
590	sv3-58	https://images.pokemontcg.io/sv3/58.png	small
591	sv3-59	https://images.pokemontcg.io/sv3/59.png	small
592	sv3-60	https://images.pokemontcg.io/sv3/60.png	small
593	sv3-61	https://images.pokemontcg.io/sv3/61.png	small
594	sv3-62	https://images.pokemontcg.io/sv3/62.png	small
595	sv3-63	https://images.pokemontcg.io/sv3/63.png	small
596	sv3-64	https://images.pokemontcg.io/sv3/64.png	small
597	sv3-65	https://images.pokemontcg.io/sv3/65.png	small
598	sv3-66	https://images.pokemontcg.io/sv3/66.png	small
599	sv3-67	https://images.pokemontcg.io/sv3/67.png	small
600	sv3-68	https://images.pokemontcg.io/sv3/68.png	small
601	sv3-69	https://images.pokemontcg.io/sv3/69.png	small
602	sv3-70	https://images.pokemontcg.io/sv3/70.png	small
603	sv3-71	https://images.pokemontcg.io/sv3/71.png	small
604	sv3-72	https://images.pokemontcg.io/sv3/72.png	small
605	sv3-73	https://images.pokemontcg.io/sv3/73.png	small
606	sv3-74	https://images.pokemontcg.io/sv3/74.png	small
607	sv3-75	https://images.pokemontcg.io/sv3/75.png	small
608	sv3-76	https://images.pokemontcg.io/sv3/76.png	small
609	sv3-77	https://images.pokemontcg.io/sv3/77.png	small
610	sv3-78	https://images.pokemontcg.io/sv3/78.png	small
611	sv3-79	https://images.pokemontcg.io/sv3/79.png	small
612	sv3-80	https://images.pokemontcg.io/sv3/80.png	small
613	sv3-81	https://images.pokemontcg.io/sv3/81.png	small
614	sv3-82	https://images.pokemontcg.io/sv3/82.png	small
615	sv3-83	https://images.pokemontcg.io/sv3/83.png	small
616	sv3-84	https://images.pokemontcg.io/sv3/84.png	small
617	sv3-85	https://images.pokemontcg.io/sv3/85.png	small
618	sv3-86	https://images.pokemontcg.io/sv3/86.png	small
619	sv3-87	https://images.pokemontcg.io/sv3/87.png	small
620	sv3-88	https://images.pokemontcg.io/sv3/88.png	small
621	sv3-89	https://images.pokemontcg.io/sv3/89.png	small
622	sv3-90	https://images.pokemontcg.io/sv3/90.png	small
623	sv3-91	https://images.pokemontcg.io/sv3/91.png	small
624	sv3-92	https://images.pokemontcg.io/sv3/92.png	small
625	sv3-93	https://images.pokemontcg.io/sv3/93.png	small
626	sv3-94	https://images.pokemontcg.io/sv3/94.png	small
627	sv3-95	https://images.pokemontcg.io/sv3/95.png	small
628	sv3-96	https://images.pokemontcg.io/sv3/96.png	small
629	sv3-97	https://images.pokemontcg.io/sv3/97.png	small
630	sv3-98	https://images.pokemontcg.io/sv3/98.png	small
631	sv3-99	https://images.pokemontcg.io/sv3/99.png	small
632	sv3-100	https://images.pokemontcg.io/sv3/100.png	small
633	sv3-101	https://images.pokemontcg.io/sv3/101.png	small
634	sv3-102	https://images.pokemontcg.io/sv3/102.png	small
635	sv3-103	https://images.pokemontcg.io/sv3/103.png	small
636	sv3-104	https://images.pokemontcg.io/sv3/104.png	small
637	sv3-105	https://images.pokemontcg.io/sv3/105.png	small
638	sv3-106	https://images.pokemontcg.io/sv3/106.png	small
639	sv3-107	https://images.pokemontcg.io/sv3/107.png	small
640	sv3-108	https://images.pokemontcg.io/sv3/108.png	small
641	sv3-109	https://images.pokemontcg.io/sv3/109.png	small
642	sv3-110	https://images.pokemontcg.io/sv3/110.png	small
643	sv3-111	https://images.pokemontcg.io/sv3/111.png	small
644	sv3-112	https://images.pokemontcg.io/sv3/112.png	small
645	sv3-113	https://images.pokemontcg.io/sv3/113.png	small
646	sv3-114	https://images.pokemontcg.io/sv3/114.png	small
647	sv3-115	https://images.pokemontcg.io/sv3/115.png	small
648	sv3-116	https://images.pokemontcg.io/sv3/116.png	small
649	sv3-117	https://images.pokemontcg.io/sv3/117.png	small
650	sv3-118	https://images.pokemontcg.io/sv3/118.png	small
651	sv3-119	https://images.pokemontcg.io/sv3/119.png	small
652	sv3-120	https://images.pokemontcg.io/sv3/120.png	small
653	sv3-121	https://images.pokemontcg.io/sv3/121.png	small
654	sv3-122	https://images.pokemontcg.io/sv3/122.png	small
655	sv3-123	https://images.pokemontcg.io/sv3/123.png	small
656	sv3-124	https://images.pokemontcg.io/sv3/124.png	small
657	sv3-125	https://images.pokemontcg.io/sv3/125.png	small
658	sv3-126	https://images.pokemontcg.io/sv3/126.png	small
659	sv3-127	https://images.pokemontcg.io/sv3/127.png	small
660	sv3-128	https://images.pokemontcg.io/sv3/128.png	small
661	sv3-129	https://images.pokemontcg.io/sv3/129.png	small
662	sv3-130	https://images.pokemontcg.io/sv3/130.png	small
663	sv3-131	https://images.pokemontcg.io/sv3/131.png	small
664	sv3-132	https://images.pokemontcg.io/sv3/132.png	small
665	sv3-133	https://images.pokemontcg.io/sv3/133.png	small
666	sv3-134	https://images.pokemontcg.io/sv3/134.png	small
667	sv3-135	https://images.pokemontcg.io/sv3/135.png	small
668	sv3-136	https://images.pokemontcg.io/sv3/136.png	small
669	sv3-137	https://images.pokemontcg.io/sv3/137.png	small
670	sv3-138	https://images.pokemontcg.io/sv3/138.png	small
671	sv3-139	https://images.pokemontcg.io/sv3/139.png	small
672	sv3-140	https://images.pokemontcg.io/sv3/140.png	small
673	sv3-141	https://images.pokemontcg.io/sv3/141.png	small
674	sv3-142	https://images.pokemontcg.io/sv3/142.png	small
675	sv3-143	https://images.pokemontcg.io/sv3/143.png	small
676	sv3-144	https://images.pokemontcg.io/sv3/144.png	small
677	sv3-145	https://images.pokemontcg.io/sv3/145.png	small
678	sv3-146	https://images.pokemontcg.io/sv3/146.png	small
679	sv3-147	https://images.pokemontcg.io/sv3/147.png	small
680	sv3-148	https://images.pokemontcg.io/sv3/148.png	small
681	sv3-149	https://images.pokemontcg.io/sv3/149.png	small
682	sv3-150	https://images.pokemontcg.io/sv3/150.png	small
683	sv3-151	https://images.pokemontcg.io/sv3/151.png	small
684	sv3-152	https://images.pokemontcg.io/sv3/152.png	small
685	sv3-153	https://images.pokemontcg.io/sv3/153.png	small
686	sv3-154	https://images.pokemontcg.io/sv3/154.png	small
687	sv3-155	https://images.pokemontcg.io/sv3/155.png	small
688	sv3-156	https://images.pokemontcg.io/sv3/156.png	small
689	sv3-157	https://images.pokemontcg.io/sv3/157.png	small
690	sv3-158	https://images.pokemontcg.io/sv3/158.png	small
691	sv3-159	https://images.pokemontcg.io/sv3/159.png	small
692	sv3-160	https://images.pokemontcg.io/sv3/160.png	small
693	sv3-161	https://images.pokemontcg.io/sv3/161.png	small
694	sv3-162	https://images.pokemontcg.io/sv3/162.png	small
695	sv3-163	https://images.pokemontcg.io/sv3/163.png	small
696	sv3-164	https://images.pokemontcg.io/sv3/164.png	small
697	sv3-165	https://images.pokemontcg.io/sv3/165.png	small
698	sv3-166	https://images.pokemontcg.io/sv3/166.png	small
699	sv3-167	https://images.pokemontcg.io/sv3/167.png	small
700	sv3-168	https://images.pokemontcg.io/sv3/168.png	small
701	sv3-169	https://images.pokemontcg.io/sv3/169.png	small
702	sv3-170	https://images.pokemontcg.io/sv3/170.png	small
703	sv3-171	https://images.pokemontcg.io/sv3/171.png	small
704	sv3-172	https://images.pokemontcg.io/sv3/172.png	small
705	sv3-173	https://images.pokemontcg.io/sv3/173.png	small
706	sv3-174	https://images.pokemontcg.io/sv3/174.png	small
707	sv3-175	https://images.pokemontcg.io/sv3/175.png	small
708	sv3-176	https://images.pokemontcg.io/sv3/176.png	small
709	sv3-177	https://images.pokemontcg.io/sv3/177.png	small
710	sv3-178	https://images.pokemontcg.io/sv3/178.png	small
711	sv3-179	https://images.pokemontcg.io/sv3/179.png	small
712	sv3-180	https://images.pokemontcg.io/sv3/180.png	small
713	sv3-181	https://images.pokemontcg.io/sv3/181.png	small
714	sv3-182	https://images.pokemontcg.io/sv3/182.png	small
715	sv3-183	https://images.pokemontcg.io/sv3/183.png	small
716	sv3-184	https://images.pokemontcg.io/sv3/184.png	small
717	sv3-185	https://images.pokemontcg.io/sv3/185.png	small
718	sv3-186	https://images.pokemontcg.io/sv3/186.png	small
719	sv3-187	https://images.pokemontcg.io/sv3/187.png	small
720	sv3-188	https://images.pokemontcg.io/sv3/188.png	small
721	sv3-189	https://images.pokemontcg.io/sv3/189.png	small
722	sv3-190	https://images.pokemontcg.io/sv3/190.png	small
723	sv3-191	https://images.pokemontcg.io/sv3/191.png	small
724	sv3-192	https://images.pokemontcg.io/sv3/192.png	small
725	sv3-193	https://images.pokemontcg.io/sv3/193.png	small
726	sv3-194	https://images.pokemontcg.io/sv3/194.png	small
727	sv3-195	https://images.pokemontcg.io/sv3/195.png	small
728	sv3-196	https://images.pokemontcg.io/sv3/196.png	small
729	sv3-197	https://images.pokemontcg.io/sv3/197.png	small
730	sv3-198	https://images.pokemontcg.io/sv3/198.png	small
731	sv3-199	https://images.pokemontcg.io/sv3/199.png	small
732	sv3-200	https://images.pokemontcg.io/sv3/200.png	small
733	sv3-201	https://images.pokemontcg.io/sv3/201.png	small
734	sv3-202	https://images.pokemontcg.io/sv3/202.png	small
735	sv3-203	https://images.pokemontcg.io/sv3/203.png	small
736	sv3-204	https://images.pokemontcg.io/sv3/204.png	small
737	sv3-205	https://images.pokemontcg.io/sv3/205.png	small
738	sv3-206	https://images.pokemontcg.io/sv3/206.png	small
739	sv3-207	https://images.pokemontcg.io/sv3/207.png	small
740	sv3-208	https://images.pokemontcg.io/sv3/208.png	small
741	sv3-209	https://images.pokemontcg.io/sv3/209.png	small
742	sv3-210	https://images.pokemontcg.io/sv3/210.png	small
743	sv3-211	https://images.pokemontcg.io/sv3/211.png	small
744	sv3-212	https://images.pokemontcg.io/sv3/212.png	small
745	sv3-213	https://images.pokemontcg.io/sv3/213.png	small
746	sv3-214	https://images.pokemontcg.io/sv3/214.png	small
747	sv3-215	https://images.pokemontcg.io/sv3/215.png	small
748	sv3-216	https://images.pokemontcg.io/sv3/216.png	small
749	sv3-217	https://images.pokemontcg.io/sv3/217.png	small
750	sv3-218	https://images.pokemontcg.io/sv3/218.png	small
751	sv3-219	https://images.pokemontcg.io/sv3/219.png	small
752	sv3-220	https://images.pokemontcg.io/sv3/220.png	small
753	sv3-221	https://images.pokemontcg.io/sv3/221.png	small
754	sv3-222	https://images.pokemontcg.io/sv3/222.png	small
755	sv3-223	https://images.pokemontcg.io/sv3/223.png	small
756	sv3-224	https://images.pokemontcg.io/sv3/224.png	small
757	sv3-225	https://images.pokemontcg.io/sv3/225.png	small
758	sv3-226	https://images.pokemontcg.io/sv3/226.png	small
759	sv3-227	https://images.pokemontcg.io/sv3/227.png	small
760	sv3-228	https://images.pokemontcg.io/sv3/228.png	small
761	sv3-229	https://images.pokemontcg.io/sv3/229.png	small
762	sv3-230	https://images.pokemontcg.io/sv3/230.png	small
763	sv3-1	https://images.pokemontcg.io/sv3/1_hires.png	large
764	sv3-2	https://images.pokemontcg.io/sv3/2_hires.png	large
765	sv3-3	https://images.pokemontcg.io/sv3/3_hires.png	large
766	sv3-4	https://images.pokemontcg.io/sv3/4_hires.png	large
767	sv3-5	https://images.pokemontcg.io/sv3/5_hires.png	large
768	sv3-6	https://images.pokemontcg.io/sv3/6_hires.png	large
769	sv3-7	https://images.pokemontcg.io/sv3/7_hires.png	large
770	sv3-8	https://images.pokemontcg.io/sv3/8_hires.png	large
771	sv3-9	https://images.pokemontcg.io/sv3/9_hires.png	large
772	sv3-10	https://images.pokemontcg.io/sv3/10_hires.png	large
773	sv3-11	https://images.pokemontcg.io/sv3/11_hires.png	large
774	sv3-12	https://images.pokemontcg.io/sv3/12_hires.png	large
775	sv3-13	https://images.pokemontcg.io/sv3/13_hires.png	large
776	sv3-14	https://images.pokemontcg.io/sv3/14_hires.png	large
777	sv3-15	https://images.pokemontcg.io/sv3/15_hires.png	large
778	sv3-16	https://images.pokemontcg.io/sv3/16_hires.png	large
779	sv3-17	https://images.pokemontcg.io/sv3/17_hires.png	large
780	sv3-18	https://images.pokemontcg.io/sv3/18_hires.png	large
781	sv3-19	https://images.pokemontcg.io/sv3/19_hires.png	large
782	sv3-20	https://images.pokemontcg.io/sv3/20_hires.png	large
783	sv3-21	https://images.pokemontcg.io/sv3/21_hires.png	large
784	sv3-22	https://images.pokemontcg.io/sv3/22_hires.png	large
785	sv3-23	https://images.pokemontcg.io/sv3/23_hires.png	large
786	sv3-24	https://images.pokemontcg.io/sv3/24_hires.png	large
787	sv3-25	https://images.pokemontcg.io/sv3/25_hires.png	large
788	sv3-26	https://images.pokemontcg.io/sv3/26_hires.png	large
789	sv3-27	https://images.pokemontcg.io/sv3/27_hires.png	large
790	sv3-28	https://images.pokemontcg.io/sv3/28_hires.png	large
791	sv3-29	https://images.pokemontcg.io/sv3/29_hires.png	large
792	sv3-30	https://images.pokemontcg.io/sv3/30_hires.png	large
793	sv3-31	https://images.pokemontcg.io/sv3/31_hires.png	large
794	sv3-32	https://images.pokemontcg.io/sv3/32_hires.png	large
795	sv3-33	https://images.pokemontcg.io/sv3/33_hires.png	large
796	sv3-34	https://images.pokemontcg.io/sv3/34_hires.png	large
797	sv3-35	https://images.pokemontcg.io/sv3/35_hires.png	large
798	sv3-36	https://images.pokemontcg.io/sv3/36_hires.png	large
799	sv3-37	https://images.pokemontcg.io/sv3/37_hires.png	large
800	sv3-38	https://images.pokemontcg.io/sv3/38_hires.png	large
801	sv3-39	https://images.pokemontcg.io/sv3/39_hires.png	large
802	sv3-40	https://images.pokemontcg.io/sv3/40_hires.png	large
803	sv3-41	https://images.pokemontcg.io/sv3/41_hires.png	large
804	sv3-42	https://images.pokemontcg.io/sv3/42_hires.png	large
805	sv3-43	https://images.pokemontcg.io/sv3/43_hires.png	large
806	sv3-44	https://images.pokemontcg.io/sv3/44_hires.png	large
807	sv3-45	https://images.pokemontcg.io/sv3/45_hires.png	large
808	sv3-46	https://images.pokemontcg.io/sv3/46_hires.png	large
809	sv3-47	https://images.pokemontcg.io/sv3/47_hires.png	large
810	sv3-48	https://images.pokemontcg.io/sv3/48_hires.png	large
811	sv3-49	https://images.pokemontcg.io/sv3/49_hires.png	large
812	sv3-50	https://images.pokemontcg.io/sv3/50_hires.png	large
813	sv3-51	https://images.pokemontcg.io/sv3/51_hires.png	large
814	sv3-52	https://images.pokemontcg.io/sv3/52_hires.png	large
815	sv3-53	https://images.pokemontcg.io/sv3/53_hires.png	large
816	sv3-54	https://images.pokemontcg.io/sv3/54_hires.png	large
817	sv3-55	https://images.pokemontcg.io/sv3/55_hires.png	large
818	sv3-56	https://images.pokemontcg.io/sv3/56_hires.png	large
819	sv3-57	https://images.pokemontcg.io/sv3/57_hires.png	large
820	sv3-58	https://images.pokemontcg.io/sv3/58_hires.png	large
821	sv3-59	https://images.pokemontcg.io/sv3/59_hires.png	large
822	sv3-60	https://images.pokemontcg.io/sv3/60_hires.png	large
823	sv3-61	https://images.pokemontcg.io/sv3/61_hires.png	large
824	sv3-62	https://images.pokemontcg.io/sv3/62_hires.png	large
825	sv3-63	https://images.pokemontcg.io/sv3/63_hires.png	large
826	sv3-64	https://images.pokemontcg.io/sv3/64_hires.png	large
827	sv3-65	https://images.pokemontcg.io/sv3/65_hires.png	large
828	sv3-66	https://images.pokemontcg.io/sv3/66_hires.png	large
829	sv3-67	https://images.pokemontcg.io/sv3/67_hires.png	large
830	sv3-68	https://images.pokemontcg.io/sv3/68_hires.png	large
831	sv3-69	https://images.pokemontcg.io/sv3/69_hires.png	large
832	sv3-70	https://images.pokemontcg.io/sv3/70_hires.png	large
833	sv3-71	https://images.pokemontcg.io/sv3/71_hires.png	large
834	sv3-72	https://images.pokemontcg.io/sv3/72_hires.png	large
835	sv3-73	https://images.pokemontcg.io/sv3/73_hires.png	large
836	sv3-74	https://images.pokemontcg.io/sv3/74_hires.png	large
837	sv3-75	https://images.pokemontcg.io/sv3/75_hires.png	large
838	sv3-76	https://images.pokemontcg.io/sv3/76_hires.png	large
839	sv3-77	https://images.pokemontcg.io/sv3/77_hires.png	large
840	sv3-78	https://images.pokemontcg.io/sv3/78_hires.png	large
841	sv3-79	https://images.pokemontcg.io/sv3/79_hires.png	large
842	sv3-80	https://images.pokemontcg.io/sv3/80_hires.png	large
843	sv3-81	https://images.pokemontcg.io/sv3/81_hires.png	large
844	sv3-82	https://images.pokemontcg.io/sv3/82_hires.png	large
845	sv3-83	https://images.pokemontcg.io/sv3/83_hires.png	large
846	sv3-84	https://images.pokemontcg.io/sv3/84_hires.png	large
847	sv3-85	https://images.pokemontcg.io/sv3/85_hires.png	large
848	sv3-86	https://images.pokemontcg.io/sv3/86_hires.png	large
849	sv3-87	https://images.pokemontcg.io/sv3/87_hires.png	large
850	sv3-88	https://images.pokemontcg.io/sv3/88_hires.png	large
851	sv3-89	https://images.pokemontcg.io/sv3/89_hires.png	large
852	sv3-90	https://images.pokemontcg.io/sv3/90_hires.png	large
853	sv3-91	https://images.pokemontcg.io/sv3/91_hires.png	large
854	sv3-92	https://images.pokemontcg.io/sv3/92_hires.png	large
855	sv3-93	https://images.pokemontcg.io/sv3/93_hires.png	large
856	sv3-94	https://images.pokemontcg.io/sv3/94_hires.png	large
857	sv3-95	https://images.pokemontcg.io/sv3/95_hires.png	large
858	sv3-96	https://images.pokemontcg.io/sv3/96_hires.png	large
859	sv3-97	https://images.pokemontcg.io/sv3/97_hires.png	large
860	sv3-98	https://images.pokemontcg.io/sv3/98_hires.png	large
861	sv3-99	https://images.pokemontcg.io/sv3/99_hires.png	large
862	sv3-100	https://images.pokemontcg.io/sv3/100_hires.png	large
863	sv3-101	https://images.pokemontcg.io/sv3/101_hires.png	large
864	sv3-102	https://images.pokemontcg.io/sv3/102_hires.png	large
865	sv3-103	https://images.pokemontcg.io/sv3/103_hires.png	large
866	sv3-104	https://images.pokemontcg.io/sv3/104_hires.png	large
867	sv3-105	https://images.pokemontcg.io/sv3/105_hires.png	large
868	sv3-106	https://images.pokemontcg.io/sv3/106_hires.png	large
869	sv3-107	https://images.pokemontcg.io/sv3/107_hires.png	large
870	sv3-108	https://images.pokemontcg.io/sv3/108_hires.png	large
871	sv3-109	https://images.pokemontcg.io/sv3/109_hires.png	large
872	sv3-110	https://images.pokemontcg.io/sv3/110_hires.png	large
873	sv3-111	https://images.pokemontcg.io/sv3/111_hires.png	large
874	sv3-112	https://images.pokemontcg.io/sv3/112_hires.png	large
875	sv3-113	https://images.pokemontcg.io/sv3/113_hires.png	large
876	sv3-114	https://images.pokemontcg.io/sv3/114_hires.png	large
877	sv3-115	https://images.pokemontcg.io/sv3/115_hires.png	large
878	sv3-116	https://images.pokemontcg.io/sv3/116_hires.png	large
879	sv3-117	https://images.pokemontcg.io/sv3/117_hires.png	large
880	sv3-118	https://images.pokemontcg.io/sv3/118_hires.png	large
881	sv3-119	https://images.pokemontcg.io/sv3/119_hires.png	large
882	sv3-120	https://images.pokemontcg.io/sv3/120_hires.png	large
883	sv3-121	https://images.pokemontcg.io/sv3/121_hires.png	large
884	sv3-122	https://images.pokemontcg.io/sv3/122_hires.png	large
885	sv3-123	https://images.pokemontcg.io/sv3/123_hires.png	large
886	sv3-124	https://images.pokemontcg.io/sv3/124_hires.png	large
887	sv3-125	https://images.pokemontcg.io/sv3/125_hires.png	large
888	sv3-126	https://images.pokemontcg.io/sv3/126_hires.png	large
889	sv3-127	https://images.pokemontcg.io/sv3/127_hires.png	large
890	sv3-128	https://images.pokemontcg.io/sv3/128_hires.png	large
891	sv3-129	https://images.pokemontcg.io/sv3/129_hires.png	large
892	sv3-130	https://images.pokemontcg.io/sv3/130_hires.png	large
893	sv3-131	https://images.pokemontcg.io/sv3/131_hires.png	large
894	sv3-132	https://images.pokemontcg.io/sv3/132_hires.png	large
895	sv3-133	https://images.pokemontcg.io/sv3/133_hires.png	large
896	sv3-134	https://images.pokemontcg.io/sv3/134_hires.png	large
897	sv3-135	https://images.pokemontcg.io/sv3/135_hires.png	large
898	sv3-136	https://images.pokemontcg.io/sv3/136_hires.png	large
899	sv3-137	https://images.pokemontcg.io/sv3/137_hires.png	large
900	sv3-138	https://images.pokemontcg.io/sv3/138_hires.png	large
901	sv3-139	https://images.pokemontcg.io/sv3/139_hires.png	large
902	sv3-140	https://images.pokemontcg.io/sv3/140_hires.png	large
903	sv3-141	https://images.pokemontcg.io/sv3/141_hires.png	large
904	sv3-142	https://images.pokemontcg.io/sv3/142_hires.png	large
905	sv3-143	https://images.pokemontcg.io/sv3/143_hires.png	large
906	sv3-144	https://images.pokemontcg.io/sv3/144_hires.png	large
907	sv3-145	https://images.pokemontcg.io/sv3/145_hires.png	large
908	sv3-146	https://images.pokemontcg.io/sv3/146_hires.png	large
909	sv3-147	https://images.pokemontcg.io/sv3/147_hires.png	large
910	sv3-148	https://images.pokemontcg.io/sv3/148_hires.png	large
911	sv3-149	https://images.pokemontcg.io/sv3/149_hires.png	large
912	sv3-150	https://images.pokemontcg.io/sv3/150_hires.png	large
913	sv3-151	https://images.pokemontcg.io/sv3/151_hires.png	large
914	sv3-152	https://images.pokemontcg.io/sv3/152_hires.png	large
915	sv3-153	https://images.pokemontcg.io/sv3/153_hires.png	large
916	sv3-154	https://images.pokemontcg.io/sv3/154_hires.png	large
917	sv3-155	https://images.pokemontcg.io/sv3/155_hires.png	large
918	sv3-156	https://images.pokemontcg.io/sv3/156_hires.png	large
919	sv3-157	https://images.pokemontcg.io/sv3/157_hires.png	large
920	sv3-158	https://images.pokemontcg.io/sv3/158_hires.png	large
921	sv3-159	https://images.pokemontcg.io/sv3/159_hires.png	large
922	sv3-160	https://images.pokemontcg.io/sv3/160_hires.png	large
923	sv3-161	https://images.pokemontcg.io/sv3/161_hires.png	large
924	sv3-162	https://images.pokemontcg.io/sv3/162_hires.png	large
925	sv3-163	https://images.pokemontcg.io/sv3/163_hires.png	large
926	sv3-164	https://images.pokemontcg.io/sv3/164_hires.png	large
927	sv3-165	https://images.pokemontcg.io/sv3/165_hires.png	large
928	sv3-166	https://images.pokemontcg.io/sv3/166_hires.png	large
929	sv3-167	https://images.pokemontcg.io/sv3/167_hires.png	large
930	sv3-168	https://images.pokemontcg.io/sv3/168_hires.png	large
931	sv3-169	https://images.pokemontcg.io/sv3/169_hires.png	large
932	sv3-170	https://images.pokemontcg.io/sv3/170_hires.png	large
933	sv3-171	https://images.pokemontcg.io/sv3/171_hires.png	large
934	sv3-172	https://images.pokemontcg.io/sv3/172_hires.png	large
935	sv3-173	https://images.pokemontcg.io/sv3/173_hires.png	large
936	sv3-174	https://images.pokemontcg.io/sv3/174_hires.png	large
937	sv3-175	https://images.pokemontcg.io/sv3/175_hires.png	large
938	sv3-176	https://images.pokemontcg.io/sv3/176_hires.png	large
939	sv3-177	https://images.pokemontcg.io/sv3/177_hires.png	large
940	sv3-178	https://images.pokemontcg.io/sv3/178_hires.png	large
941	sv3-179	https://images.pokemontcg.io/sv3/179_hires.png	large
942	sv3-180	https://images.pokemontcg.io/sv3/180_hires.png	large
943	sv3-181	https://images.pokemontcg.io/sv3/181_hires.png	large
944	sv3-182	https://images.pokemontcg.io/sv3/182_hires.png	large
945	sv3-183	https://images.pokemontcg.io/sv3/183_hires.png	large
946	sv3-184	https://images.pokemontcg.io/sv3/184_hires.png	large
947	sv3-185	https://images.pokemontcg.io/sv3/185_hires.png	large
948	sv3-186	https://images.pokemontcg.io/sv3/186_hires.png	large
949	sv3-187	https://images.pokemontcg.io/sv3/187_hires.png	large
950	sv3-188	https://images.pokemontcg.io/sv3/188_hires.png	large
951	sv3-189	https://images.pokemontcg.io/sv3/189_hires.png	large
952	sv3-190	https://images.pokemontcg.io/sv3/190_hires.png	large
953	sv3-191	https://images.pokemontcg.io/sv3/191_hires.png	large
954	sv3-192	https://images.pokemontcg.io/sv3/192_hires.png	large
955	sv3-193	https://images.pokemontcg.io/sv3/193_hires.png	large
956	sv3-194	https://images.pokemontcg.io/sv3/194_hires.png	large
957	sv3-195	https://images.pokemontcg.io/sv3/195_hires.png	large
958	sv3-196	https://images.pokemontcg.io/sv3/196_hires.png	large
959	sv3-197	https://images.pokemontcg.io/sv3/197_hires.png	large
960	sv3-198	https://images.pokemontcg.io/sv3/198_hires.png	large
961	sv3-199	https://images.pokemontcg.io/sv3/199_hires.png	large
962	sv3-200	https://images.pokemontcg.io/sv3/200_hires.png	large
963	sv3-201	https://images.pokemontcg.io/sv3/201_hires.png	large
964	sv3-202	https://images.pokemontcg.io/sv3/202_hires.png	large
965	sv3-203	https://images.pokemontcg.io/sv3/203_hires.png	large
966	sv3-204	https://images.pokemontcg.io/sv3/204_hires.png	large
967	sv3-205	https://images.pokemontcg.io/sv3/205_hires.png	large
968	sv3-206	https://images.pokemontcg.io/sv3/206_hires.png	large
969	sv3-207	https://images.pokemontcg.io/sv3/207_hires.png	large
970	sv3-208	https://images.pokemontcg.io/sv3/208_hires.png	large
971	sv3-209	https://images.pokemontcg.io/sv3/209_hires.png	large
972	sv3-210	https://images.pokemontcg.io/sv3/210_hires.png	large
973	sv3-211	https://images.pokemontcg.io/sv3/211_hires.png	large
974	sv3-212	https://images.pokemontcg.io/sv3/212_hires.png	large
975	sv3-213	https://images.pokemontcg.io/sv3/213_hires.png	large
976	sv3-214	https://images.pokemontcg.io/sv3/214_hires.png	large
977	sv3-215	https://images.pokemontcg.io/sv3/215_hires.png	large
978	sv3-216	https://images.pokemontcg.io/sv3/216_hires.png	large
979	sv3-217	https://images.pokemontcg.io/sv3/217_hires.png	large
980	sv3-218	https://images.pokemontcg.io/sv3/218_hires.png	large
981	sv3-219	https://images.pokemontcg.io/sv3/219_hires.png	large
982	sv3-220	https://images.pokemontcg.io/sv3/220_hires.png	large
983	sv3-221	https://images.pokemontcg.io/sv3/221_hires.png	large
984	sv3-222	https://images.pokemontcg.io/sv3/222_hires.png	large
985	sv3-223	https://images.pokemontcg.io/sv3/223_hires.png	large
986	sv3-224	https://images.pokemontcg.io/sv3/224_hires.png	large
987	sv3-225	https://images.pokemontcg.io/sv3/225_hires.png	large
988	sv3-226	https://images.pokemontcg.io/sv3/226_hires.png	large
989	sv3-227	https://images.pokemontcg.io/sv3/227_hires.png	large
990	sv3-228	https://images.pokemontcg.io/sv3/228_hires.png	large
991	sv3-229	https://images.pokemontcg.io/sv3/229_hires.png	large
992	sv3-230	https://images.pokemontcg.io/sv3/230_hires.png	large
993	sv3pt5-1	https://images.pokemontcg.io/sv3pt5/1.png	small
994	sv3pt5-2	https://images.pokemontcg.io/sv3pt5/2.png	small
995	sv3pt5-3	https://images.pokemontcg.io/sv3pt5/3.png	small
996	sv3pt5-4	https://images.pokemontcg.io/sv3pt5/4.png	small
997	sv3pt5-5	https://images.pokemontcg.io/sv3pt5/5.png	small
998	sv3pt5-6	https://images.pokemontcg.io/sv3pt5/6.png	small
999	sv3pt5-7	https://images.pokemontcg.io/sv3pt5/7.png	small
1000	sv3pt5-8	https://images.pokemontcg.io/sv3pt5/8.png	small
1001	sv3pt5-9	https://images.pokemontcg.io/sv3pt5/9.png	small
1002	sv3pt5-10	https://images.pokemontcg.io/sv3pt5/10.png	small
1003	sv3pt5-11	https://images.pokemontcg.io/sv3pt5/11.png	small
1004	sv3pt5-12	https://images.pokemontcg.io/sv3pt5/12.png	small
1005	sv3pt5-13	https://images.pokemontcg.io/sv3pt5/13.png	small
1006	sv3pt5-14	https://images.pokemontcg.io/sv3pt5/14.png	small
1007	sv3pt5-15	https://images.pokemontcg.io/sv3pt5/15.png	small
1008	sv3pt5-16	https://images.pokemontcg.io/sv3pt5/16.png	small
1009	sv3pt5-17	https://images.pokemontcg.io/sv3pt5/17.png	small
1010	sv3pt5-18	https://images.pokemontcg.io/sv3pt5/18.png	small
1011	sv3pt5-19	https://images.pokemontcg.io/sv3pt5/19.png	small
1012	sv3pt5-20	https://images.pokemontcg.io/sv3pt5/20.png	small
1013	sv3pt5-21	https://images.pokemontcg.io/sv3pt5/21.png	small
1014	sv3pt5-22	https://images.pokemontcg.io/sv3pt5/22.png	small
1015	sv3pt5-23	https://images.pokemontcg.io/sv3pt5/23.png	small
1016	sv3pt5-24	https://images.pokemontcg.io/sv3pt5/24.png	small
1017	sv3pt5-25	https://images.pokemontcg.io/sv3pt5/25.png	small
1018	sv3pt5-26	https://images.pokemontcg.io/sv3pt5/26.png	small
1019	sv3pt5-27	https://images.pokemontcg.io/sv3pt5/27.png	small
1020	sv3pt5-28	https://images.pokemontcg.io/sv3pt5/28.png	small
1021	sv3pt5-29	https://images.pokemontcg.io/sv3pt5/29.png	small
1022	sv3pt5-30	https://images.pokemontcg.io/sv3pt5/30.png	small
1023	sv3pt5-31	https://images.pokemontcg.io/sv3pt5/31.png	small
1024	sv3pt5-32	https://images.pokemontcg.io/sv3pt5/32.png	small
1025	sv3pt5-33	https://images.pokemontcg.io/sv3pt5/33.png	small
1026	sv3pt5-34	https://images.pokemontcg.io/sv3pt5/34.png	small
1027	sv3pt5-35	https://images.pokemontcg.io/sv3pt5/35.png	small
1028	sv3pt5-36	https://images.pokemontcg.io/sv3pt5/36.png	small
1029	sv3pt5-37	https://images.pokemontcg.io/sv3pt5/37.png	small
1030	sv3pt5-38	https://images.pokemontcg.io/sv3pt5/38.png	small
1031	sv3pt5-39	https://images.pokemontcg.io/sv3pt5/39.png	small
1032	sv3pt5-40	https://images.pokemontcg.io/sv3pt5/40.png	small
1033	sv3pt5-41	https://images.pokemontcg.io/sv3pt5/41.png	small
1034	sv3pt5-42	https://images.pokemontcg.io/sv3pt5/42.png	small
1035	sv3pt5-43	https://images.pokemontcg.io/sv3pt5/43.png	small
1036	sv3pt5-44	https://images.pokemontcg.io/sv3pt5/44.png	small
1037	sv3pt5-45	https://images.pokemontcg.io/sv3pt5/45.png	small
1038	sv3pt5-46	https://images.pokemontcg.io/sv3pt5/46.png	small
1039	sv3pt5-47	https://images.pokemontcg.io/sv3pt5/47.png	small
1040	sv3pt5-48	https://images.pokemontcg.io/sv3pt5/48.png	small
1041	sv3pt5-49	https://images.pokemontcg.io/sv3pt5/49.png	small
1042	sv3pt5-50	https://images.pokemontcg.io/sv3pt5/50.png	small
1043	sv3pt5-51	https://images.pokemontcg.io/sv3pt5/51.png	small
1044	sv3pt5-52	https://images.pokemontcg.io/sv3pt5/52.png	small
1045	sv3pt5-53	https://images.pokemontcg.io/sv3pt5/53.png	small
1046	sv3pt5-54	https://images.pokemontcg.io/sv3pt5/54.png	small
1047	sv3pt5-55	https://images.pokemontcg.io/sv3pt5/55.png	small
1048	sv3pt5-56	https://images.pokemontcg.io/sv3pt5/56.png	small
1049	sv3pt5-57	https://images.pokemontcg.io/sv3pt5/57.png	small
1050	sv3pt5-58	https://images.pokemontcg.io/sv3pt5/58.png	small
1051	sv3pt5-59	https://images.pokemontcg.io/sv3pt5/59.png	small
1052	sv3pt5-60	https://images.pokemontcg.io/sv3pt5/60.png	small
1053	sv3pt5-61	https://images.pokemontcg.io/sv3pt5/61.png	small
1054	sv3pt5-62	https://images.pokemontcg.io/sv3pt5/62.png	small
1055	sv3pt5-63	https://images.pokemontcg.io/sv3pt5/63.png	small
1056	sv3pt5-64	https://images.pokemontcg.io/sv3pt5/64.png	small
1057	sv3pt5-65	https://images.pokemontcg.io/sv3pt5/65.png	small
1058	sv3pt5-66	https://images.pokemontcg.io/sv3pt5/66.png	small
1059	sv3pt5-67	https://images.pokemontcg.io/sv3pt5/67.png	small
1060	sv3pt5-68	https://images.pokemontcg.io/sv3pt5/68.png	small
1061	sv3pt5-69	https://images.pokemontcg.io/sv3pt5/69.png	small
1062	sv3pt5-70	https://images.pokemontcg.io/sv3pt5/70.png	small
1063	sv3pt5-71	https://images.pokemontcg.io/sv3pt5/71.png	small
1064	sv3pt5-72	https://images.pokemontcg.io/sv3pt5/72.png	small
1065	sv3pt5-73	https://images.pokemontcg.io/sv3pt5/73.png	small
1066	sv3pt5-74	https://images.pokemontcg.io/sv3pt5/74.png	small
1067	sv3pt5-75	https://images.pokemontcg.io/sv3pt5/75.png	small
1068	sv3pt5-76	https://images.pokemontcg.io/sv3pt5/76.png	small
1069	sv3pt5-77	https://images.pokemontcg.io/sv3pt5/77.png	small
1070	sv3pt5-78	https://images.pokemontcg.io/sv3pt5/78.png	small
1071	sv3pt5-79	https://images.pokemontcg.io/sv3pt5/79.png	small
1072	sv3pt5-80	https://images.pokemontcg.io/sv3pt5/80.png	small
1073	sv3pt5-81	https://images.pokemontcg.io/sv3pt5/81.png	small
1074	sv3pt5-82	https://images.pokemontcg.io/sv3pt5/82.png	small
1075	sv3pt5-83	https://images.pokemontcg.io/sv3pt5/83.png	small
1076	sv3pt5-84	https://images.pokemontcg.io/sv3pt5/84.png	small
1077	sv3pt5-85	https://images.pokemontcg.io/sv3pt5/85.png	small
1078	sv3pt5-86	https://images.pokemontcg.io/sv3pt5/86.png	small
1079	sv3pt5-87	https://images.pokemontcg.io/sv3pt5/87.png	small
1080	sv3pt5-88	https://images.pokemontcg.io/sv3pt5/88.png	small
1081	sv3pt5-89	https://images.pokemontcg.io/sv3pt5/89.png	small
1082	sv3pt5-90	https://images.pokemontcg.io/sv3pt5/90.png	small
1083	sv3pt5-91	https://images.pokemontcg.io/sv3pt5/91.png	small
1084	sv3pt5-92	https://images.pokemontcg.io/sv3pt5/92.png	small
1085	sv3pt5-93	https://images.pokemontcg.io/sv3pt5/93.png	small
1086	sv3pt5-94	https://images.pokemontcg.io/sv3pt5/94.png	small
1087	sv3pt5-95	https://images.pokemontcg.io/sv3pt5/95.png	small
1088	sv3pt5-96	https://images.pokemontcg.io/sv3pt5/96.png	small
1089	sv3pt5-97	https://images.pokemontcg.io/sv3pt5/97.png	small
1090	sv3pt5-98	https://images.pokemontcg.io/sv3pt5/98.png	small
1091	sv3pt5-99	https://images.pokemontcg.io/sv3pt5/99.png	small
1092	sv3pt5-100	https://images.pokemontcg.io/sv3pt5/100.png	small
1093	sv3pt5-101	https://images.pokemontcg.io/sv3pt5/101.png	small
1094	sv3pt5-102	https://images.pokemontcg.io/sv3pt5/102.png	small
1095	sv3pt5-103	https://images.pokemontcg.io/sv3pt5/103.png	small
1096	sv3pt5-104	https://images.pokemontcg.io/sv3pt5/104.png	small
1097	sv3pt5-105	https://images.pokemontcg.io/sv3pt5/105.png	small
1098	sv3pt5-106	https://images.pokemontcg.io/sv3pt5/106.png	small
1099	sv3pt5-107	https://images.pokemontcg.io/sv3pt5/107.png	small
1100	sv3pt5-108	https://images.pokemontcg.io/sv3pt5/108.png	small
1101	sv3pt5-109	https://images.pokemontcg.io/sv3pt5/109.png	small
1102	sv3pt5-110	https://images.pokemontcg.io/sv3pt5/110.png	small
1103	sv3pt5-111	https://images.pokemontcg.io/sv3pt5/111.png	small
1104	sv3pt5-112	https://images.pokemontcg.io/sv3pt5/112.png	small
1105	sv3pt5-113	https://images.pokemontcg.io/sv3pt5/113.png	small
1106	sv3pt5-114	https://images.pokemontcg.io/sv3pt5/114.png	small
1107	sv3pt5-115	https://images.pokemontcg.io/sv3pt5/115.png	small
1108	sv3pt5-116	https://images.pokemontcg.io/sv3pt5/116.png	small
1109	sv3pt5-117	https://images.pokemontcg.io/sv3pt5/117.png	small
1110	sv3pt5-118	https://images.pokemontcg.io/sv3pt5/118.png	small
1111	sv3pt5-119	https://images.pokemontcg.io/sv3pt5/119.png	small
1112	sv3pt5-120	https://images.pokemontcg.io/sv3pt5/120.png	small
1113	sv3pt5-121	https://images.pokemontcg.io/sv3pt5/121.png	small
1114	sv3pt5-122	https://images.pokemontcg.io/sv3pt5/122.png	small
1115	sv3pt5-123	https://images.pokemontcg.io/sv3pt5/123.png	small
1116	sv3pt5-124	https://images.pokemontcg.io/sv3pt5/124.png	small
1117	sv3pt5-125	https://images.pokemontcg.io/sv3pt5/125.png	small
1118	sv3pt5-126	https://images.pokemontcg.io/sv3pt5/126.png	small
1119	sv3pt5-127	https://images.pokemontcg.io/sv3pt5/127.png	small
1120	sv3pt5-128	https://images.pokemontcg.io/sv3pt5/128.png	small
1121	sv3pt5-129	https://images.pokemontcg.io/sv3pt5/129.png	small
1122	sv3pt5-130	https://images.pokemontcg.io/sv3pt5/130.png	small
1123	sv3pt5-131	https://images.pokemontcg.io/sv3pt5/131.png	small
1124	sv3pt5-132	https://images.pokemontcg.io/sv3pt5/132.png	small
1125	sv3pt5-133	https://images.pokemontcg.io/sv3pt5/133.png	small
1126	sv3pt5-134	https://images.pokemontcg.io/sv3pt5/134.png	small
1127	sv3pt5-135	https://images.pokemontcg.io/sv3pt5/135.png	small
1128	sv3pt5-136	https://images.pokemontcg.io/sv3pt5/136.png	small
1129	sv3pt5-137	https://images.pokemontcg.io/sv3pt5/137.png	small
1130	sv3pt5-138	https://images.pokemontcg.io/sv3pt5/138.png	small
1131	sv3pt5-139	https://images.pokemontcg.io/sv3pt5/139.png	small
1132	sv3pt5-140	https://images.pokemontcg.io/sv3pt5/140.png	small
1133	sv3pt5-141	https://images.pokemontcg.io/sv3pt5/141.png	small
1134	sv3pt5-142	https://images.pokemontcg.io/sv3pt5/142.png	small
1135	sv3pt5-143	https://images.pokemontcg.io/sv3pt5/143.png	small
1136	sv3pt5-144	https://images.pokemontcg.io/sv3pt5/144.png	small
1137	sv3pt5-145	https://images.pokemontcg.io/sv3pt5/145.png	small
1138	sv3pt5-146	https://images.pokemontcg.io/sv3pt5/146.png	small
1139	sv3pt5-147	https://images.pokemontcg.io/sv3pt5/147.png	small
1140	sv3pt5-148	https://images.pokemontcg.io/sv3pt5/148.png	small
1141	sv3pt5-149	https://images.pokemontcg.io/sv3pt5/149.png	small
1142	sv3pt5-150	https://images.pokemontcg.io/sv3pt5/150.png	small
1143	sv3pt5-151	https://images.pokemontcg.io/sv3pt5/151.png	small
1144	sv3pt5-152	https://images.pokemontcg.io/sv3pt5/152.png	small
1145	sv3pt5-153	https://images.pokemontcg.io/sv3pt5/153.png	small
1146	sv3pt5-154	https://images.pokemontcg.io/sv3pt5/154.png	small
1147	sv3pt5-155	https://images.pokemontcg.io/sv3pt5/155.png	small
1148	sv3pt5-156	https://images.pokemontcg.io/sv3pt5/156.png	small
1149	sv3pt5-157	https://images.pokemontcg.io/sv3pt5/157.png	small
1150	sv3pt5-158	https://images.pokemontcg.io/sv3pt5/158.png	small
1151	sv3pt5-159	https://images.pokemontcg.io/sv3pt5/159.png	small
1152	sv3pt5-160	https://images.pokemontcg.io/sv3pt5/160.png	small
1153	sv3pt5-161	https://images.pokemontcg.io/sv3pt5/161.png	small
1154	sv3pt5-162	https://images.pokemontcg.io/sv3pt5/162.png	small
1155	sv3pt5-163	https://images.pokemontcg.io/sv3pt5/163.png	small
1156	sv3pt5-164	https://images.pokemontcg.io/sv3pt5/164.png	small
1157	sv3pt5-165	https://images.pokemontcg.io/sv3pt5/165.png	small
1158	sv3pt5-166	https://images.pokemontcg.io/sv3pt5/166.png	small
1159	sv3pt5-167	https://images.pokemontcg.io/sv3pt5/167.png	small
1160	sv3pt5-168	https://images.pokemontcg.io/sv3pt5/168.png	small
1161	sv3pt5-169	https://images.pokemontcg.io/sv3pt5/169.png	small
1162	sv3pt5-170	https://images.pokemontcg.io/sv3pt5/170.png	small
1163	sv3pt5-171	https://images.pokemontcg.io/sv3pt5/171.png	small
1164	sv3pt5-172	https://images.pokemontcg.io/sv3pt5/172.png	small
1165	sv3pt5-173	https://images.pokemontcg.io/sv3pt5/173.png	small
1166	sv3pt5-174	https://images.pokemontcg.io/sv3pt5/174.png	small
1167	sv3pt5-175	https://images.pokemontcg.io/sv3pt5/175.png	small
1168	sv3pt5-176	https://images.pokemontcg.io/sv3pt5/176.png	small
1169	sv3pt5-177	https://images.pokemontcg.io/sv3pt5/177.png	small
1170	sv3pt5-178	https://images.pokemontcg.io/sv3pt5/178.png	small
1171	sv3pt5-179	https://images.pokemontcg.io/sv3pt5/179.png	small
1172	sv3pt5-180	https://images.pokemontcg.io/sv3pt5/180.png	small
1173	sv3pt5-181	https://images.pokemontcg.io/sv3pt5/181.png	small
1174	sv3pt5-182	https://images.pokemontcg.io/sv3pt5/182.png	small
1175	sv3pt5-183	https://images.pokemontcg.io/sv3pt5/183.png	small
1176	sv3pt5-184	https://images.pokemontcg.io/sv3pt5/184.png	small
1177	sv3pt5-185	https://images.pokemontcg.io/sv3pt5/185.png	small
1178	sv3pt5-186	https://images.pokemontcg.io/sv3pt5/186.png	small
1179	sv3pt5-187	https://images.pokemontcg.io/sv3pt5/187.png	small
1180	sv3pt5-188	https://images.pokemontcg.io/sv3pt5/188.png	small
1181	sv3pt5-189	https://images.pokemontcg.io/sv3pt5/189.png	small
1182	sv3pt5-190	https://images.pokemontcg.io/sv3pt5/190.png	small
1183	sv3pt5-191	https://images.pokemontcg.io/sv3pt5/191.png	small
1184	sv3pt5-192	https://images.pokemontcg.io/sv3pt5/192.png	small
1185	sv3pt5-193	https://images.pokemontcg.io/sv3pt5/193.png	small
1186	sv3pt5-194	https://images.pokemontcg.io/sv3pt5/194.png	small
1187	sv3pt5-195	https://images.pokemontcg.io/sv3pt5/195.png	small
1188	sv3pt5-196	https://images.pokemontcg.io/sv3pt5/196.png	small
1189	sv3pt5-197	https://images.pokemontcg.io/sv3pt5/197.png	small
1190	sv3pt5-198	https://images.pokemontcg.io/sv3pt5/198.png	small
1191	sv3pt5-199	https://images.pokemontcg.io/sv3pt5/199.png	small
1192	sv3pt5-200	https://images.pokemontcg.io/sv3pt5/200.png	small
1193	sv3pt5-201	https://images.pokemontcg.io/sv3pt5/201.png	small
1194	sv3pt5-202	https://images.pokemontcg.io/sv3pt5/202.png	small
1195	sv3pt5-203	https://images.pokemontcg.io/sv3pt5/203.png	small
1196	sv3pt5-204	https://images.pokemontcg.io/sv3pt5/204.png	small
1197	sv3pt5-205	https://images.pokemontcg.io/sv3pt5/205.png	small
1198	sv3pt5-206	https://images.pokemontcg.io/sv3pt5/206.png	small
1199	sv3pt5-207	https://images.pokemontcg.io/sv3pt5/207.png	small
1200	sv3pt5-1	https://images.pokemontcg.io/sv3pt5/1_hires.png	large
1201	sv3pt5-2	https://images.pokemontcg.io/sv3pt5/2_hires.png	large
1202	sv3pt5-3	https://images.pokemontcg.io/sv3pt5/3_hires.png	large
1203	sv3pt5-4	https://images.pokemontcg.io/sv3pt5/4_hires.png	large
1204	sv3pt5-5	https://images.pokemontcg.io/sv3pt5/5_hires.png	large
1205	sv3pt5-6	https://images.pokemontcg.io/sv3pt5/6_hires.png	large
1206	sv3pt5-7	https://images.pokemontcg.io/sv3pt5/7_hires.png	large
1207	sv3pt5-8	https://images.pokemontcg.io/sv3pt5/8_hires.png	large
1208	sv3pt5-9	https://images.pokemontcg.io/sv3pt5/9_hires.png	large
1209	sv3pt5-10	https://images.pokemontcg.io/sv3pt5/10_hires.png	large
1210	sv3pt5-11	https://images.pokemontcg.io/sv3pt5/11_hires.png	large
1211	sv3pt5-12	https://images.pokemontcg.io/sv3pt5/12_hires.png	large
1212	sv3pt5-13	https://images.pokemontcg.io/sv3pt5/13_hires.png	large
1213	sv3pt5-14	https://images.pokemontcg.io/sv3pt5/14_hires.png	large
1214	sv3pt5-15	https://images.pokemontcg.io/sv3pt5/15_hires.png	large
1215	sv3pt5-16	https://images.pokemontcg.io/sv3pt5/16_hires.png	large
1216	sv3pt5-17	https://images.pokemontcg.io/sv3pt5/17_hires.png	large
1217	sv3pt5-18	https://images.pokemontcg.io/sv3pt5/18_hires.png	large
1218	sv3pt5-19	https://images.pokemontcg.io/sv3pt5/19_hires.png	large
1219	sv3pt5-20	https://images.pokemontcg.io/sv3pt5/20_hires.png	large
1220	sv3pt5-21	https://images.pokemontcg.io/sv3pt5/21_hires.png	large
1221	sv3pt5-22	https://images.pokemontcg.io/sv3pt5/22_hires.png	large
1222	sv3pt5-23	https://images.pokemontcg.io/sv3pt5/23_hires.png	large
1223	sv3pt5-24	https://images.pokemontcg.io/sv3pt5/24_hires.png	large
1224	sv3pt5-25	https://images.pokemontcg.io/sv3pt5/25_hires.png	large
1225	sv3pt5-26	https://images.pokemontcg.io/sv3pt5/26_hires.png	large
1226	sv3pt5-27	https://images.pokemontcg.io/sv3pt5/27_hires.png	large
1227	sv3pt5-28	https://images.pokemontcg.io/sv3pt5/28_hires.png	large
1228	sv3pt5-29	https://images.pokemontcg.io/sv3pt5/29_hires.png	large
1229	sv3pt5-30	https://images.pokemontcg.io/sv3pt5/30_hires.png	large
1230	sv3pt5-31	https://images.pokemontcg.io/sv3pt5/31_hires.png	large
1231	sv3pt5-32	https://images.pokemontcg.io/sv3pt5/32_hires.png	large
1232	sv3pt5-33	https://images.pokemontcg.io/sv3pt5/33_hires.png	large
1233	sv3pt5-34	https://images.pokemontcg.io/sv3pt5/34_hires.png	large
1234	sv3pt5-35	https://images.pokemontcg.io/sv3pt5/35_hires.png	large
1235	sv3pt5-36	https://images.pokemontcg.io/sv3pt5/36_hires.png	large
1236	sv3pt5-37	https://images.pokemontcg.io/sv3pt5/37_hires.png	large
1237	sv3pt5-38	https://images.pokemontcg.io/sv3pt5/38_hires.png	large
1238	sv3pt5-39	https://images.pokemontcg.io/sv3pt5/39_hires.png	large
1239	sv3pt5-40	https://images.pokemontcg.io/sv3pt5/40_hires.png	large
1240	sv3pt5-41	https://images.pokemontcg.io/sv3pt5/41_hires.png	large
1241	sv3pt5-42	https://images.pokemontcg.io/sv3pt5/42_hires.png	large
1242	sv3pt5-43	https://images.pokemontcg.io/sv3pt5/43_hires.png	large
1243	sv3pt5-44	https://images.pokemontcg.io/sv3pt5/44_hires.png	large
1244	sv3pt5-45	https://images.pokemontcg.io/sv3pt5/45_hires.png	large
1245	sv3pt5-46	https://images.pokemontcg.io/sv3pt5/46_hires.png	large
1246	sv3pt5-47	https://images.pokemontcg.io/sv3pt5/47_hires.png	large
1247	sv3pt5-48	https://images.pokemontcg.io/sv3pt5/48_hires.png	large
1248	sv3pt5-49	https://images.pokemontcg.io/sv3pt5/49_hires.png	large
1249	sv3pt5-50	https://images.pokemontcg.io/sv3pt5/50_hires.png	large
1250	sv3pt5-51	https://images.pokemontcg.io/sv3pt5/51_hires.png	large
1251	sv3pt5-52	https://images.pokemontcg.io/sv3pt5/52_hires.png	large
1252	sv3pt5-53	https://images.pokemontcg.io/sv3pt5/53_hires.png	large
1253	sv3pt5-54	https://images.pokemontcg.io/sv3pt5/54_hires.png	large
1254	sv3pt5-55	https://images.pokemontcg.io/sv3pt5/55_hires.png	large
1255	sv3pt5-56	https://images.pokemontcg.io/sv3pt5/56_hires.png	large
1256	sv3pt5-57	https://images.pokemontcg.io/sv3pt5/57_hires.png	large
1257	sv3pt5-58	https://images.pokemontcg.io/sv3pt5/58_hires.png	large
1258	sv3pt5-59	https://images.pokemontcg.io/sv3pt5/59_hires.png	large
1259	sv3pt5-60	https://images.pokemontcg.io/sv3pt5/60_hires.png	large
1260	sv3pt5-61	https://images.pokemontcg.io/sv3pt5/61_hires.png	large
1261	sv3pt5-62	https://images.pokemontcg.io/sv3pt5/62_hires.png	large
1262	sv3pt5-63	https://images.pokemontcg.io/sv3pt5/63_hires.png	large
1263	sv3pt5-64	https://images.pokemontcg.io/sv3pt5/64_hires.png	large
1264	sv3pt5-65	https://images.pokemontcg.io/sv3pt5/65_hires.png	large
1265	sv3pt5-66	https://images.pokemontcg.io/sv3pt5/66_hires.png	large
1266	sv3pt5-67	https://images.pokemontcg.io/sv3pt5/67_hires.png	large
1267	sv3pt5-68	https://images.pokemontcg.io/sv3pt5/68_hires.png	large
1268	sv3pt5-69	https://images.pokemontcg.io/sv3pt5/69_hires.png	large
1269	sv3pt5-70	https://images.pokemontcg.io/sv3pt5/70_hires.png	large
1270	sv3pt5-71	https://images.pokemontcg.io/sv3pt5/71_hires.png	large
1271	sv3pt5-72	https://images.pokemontcg.io/sv3pt5/72_hires.png	large
1272	sv3pt5-73	https://images.pokemontcg.io/sv3pt5/73_hires.png	large
1273	sv3pt5-74	https://images.pokemontcg.io/sv3pt5/74_hires.png	large
1274	sv3pt5-75	https://images.pokemontcg.io/sv3pt5/75_hires.png	large
1275	sv3pt5-76	https://images.pokemontcg.io/sv3pt5/76_hires.png	large
1276	sv3pt5-77	https://images.pokemontcg.io/sv3pt5/77_hires.png	large
1277	sv3pt5-78	https://images.pokemontcg.io/sv3pt5/78_hires.png	large
1278	sv3pt5-79	https://images.pokemontcg.io/sv3pt5/79_hires.png	large
1279	sv3pt5-80	https://images.pokemontcg.io/sv3pt5/80_hires.png	large
1280	sv3pt5-81	https://images.pokemontcg.io/sv3pt5/81_hires.png	large
1281	sv3pt5-82	https://images.pokemontcg.io/sv3pt5/82_hires.png	large
1282	sv3pt5-83	https://images.pokemontcg.io/sv3pt5/83_hires.png	large
1283	sv3pt5-84	https://images.pokemontcg.io/sv3pt5/84_hires.png	large
1284	sv3pt5-85	https://images.pokemontcg.io/sv3pt5/85_hires.png	large
1285	sv3pt5-86	https://images.pokemontcg.io/sv3pt5/86_hires.png	large
1286	sv3pt5-87	https://images.pokemontcg.io/sv3pt5/87_hires.png	large
1287	sv3pt5-88	https://images.pokemontcg.io/sv3pt5/88_hires.png	large
1288	sv3pt5-89	https://images.pokemontcg.io/sv3pt5/89_hires.png	large
1289	sv3pt5-90	https://images.pokemontcg.io/sv3pt5/90_hires.png	large
1290	sv3pt5-91	https://images.pokemontcg.io/sv3pt5/91_hires.png	large
1291	sv3pt5-92	https://images.pokemontcg.io/sv3pt5/92_hires.png	large
1292	sv3pt5-93	https://images.pokemontcg.io/sv3pt5/93_hires.png	large
1293	sv3pt5-94	https://images.pokemontcg.io/sv3pt5/94_hires.png	large
1294	sv3pt5-95	https://images.pokemontcg.io/sv3pt5/95_hires.png	large
1295	sv3pt5-96	https://images.pokemontcg.io/sv3pt5/96_hires.png	large
1296	sv3pt5-97	https://images.pokemontcg.io/sv3pt5/97_hires.png	large
1297	sv3pt5-98	https://images.pokemontcg.io/sv3pt5/98_hires.png	large
1298	sv3pt5-99	https://images.pokemontcg.io/sv3pt5/99_hires.png	large
1299	sv3pt5-100	https://images.pokemontcg.io/sv3pt5/100_hires.png	large
1300	sv3pt5-101	https://images.pokemontcg.io/sv3pt5/101_hires.png	large
1301	sv3pt5-102	https://images.pokemontcg.io/sv3pt5/102_hires.png	large
1302	sv3pt5-103	https://images.pokemontcg.io/sv3pt5/103_hires.png	large
1303	sv3pt5-104	https://images.pokemontcg.io/sv3pt5/104_hires.png	large
1304	sv3pt5-105	https://images.pokemontcg.io/sv3pt5/105_hires.png	large
1305	sv3pt5-106	https://images.pokemontcg.io/sv3pt5/106_hires.png	large
1306	sv3pt5-107	https://images.pokemontcg.io/sv3pt5/107_hires.png	large
1307	sv3pt5-108	https://images.pokemontcg.io/sv3pt5/108_hires.png	large
1308	sv3pt5-109	https://images.pokemontcg.io/sv3pt5/109_hires.png	large
1309	sv3pt5-110	https://images.pokemontcg.io/sv3pt5/110_hires.png	large
1310	sv3pt5-111	https://images.pokemontcg.io/sv3pt5/111_hires.png	large
1311	sv3pt5-112	https://images.pokemontcg.io/sv3pt5/112_hires.png	large
1312	sv3pt5-113	https://images.pokemontcg.io/sv3pt5/113_hires.png	large
1313	sv3pt5-114	https://images.pokemontcg.io/sv3pt5/114_hires.png	large
1314	sv3pt5-115	https://images.pokemontcg.io/sv3pt5/115_hires.png	large
1315	sv3pt5-116	https://images.pokemontcg.io/sv3pt5/116_hires.png	large
1316	sv3pt5-117	https://images.pokemontcg.io/sv3pt5/117_hires.png	large
1317	sv3pt5-118	https://images.pokemontcg.io/sv3pt5/118_hires.png	large
1318	sv3pt5-119	https://images.pokemontcg.io/sv3pt5/119_hires.png	large
1319	sv3pt5-120	https://images.pokemontcg.io/sv3pt5/120_hires.png	large
1320	sv3pt5-121	https://images.pokemontcg.io/sv3pt5/121_hires.png	large
1321	sv3pt5-122	https://images.pokemontcg.io/sv3pt5/122_hires.png	large
1322	sv3pt5-123	https://images.pokemontcg.io/sv3pt5/123_hires.png	large
1323	sv3pt5-124	https://images.pokemontcg.io/sv3pt5/124_hires.png	large
1324	sv3pt5-125	https://images.pokemontcg.io/sv3pt5/125_hires.png	large
1325	sv3pt5-126	https://images.pokemontcg.io/sv3pt5/126_hires.png	large
1326	sv3pt5-127	https://images.pokemontcg.io/sv3pt5/127_hires.png	large
1327	sv3pt5-128	https://images.pokemontcg.io/sv3pt5/128_hires.png	large
1328	sv3pt5-129	https://images.pokemontcg.io/sv3pt5/129_hires.png	large
1329	sv3pt5-130	https://images.pokemontcg.io/sv3pt5/130_hires.png	large
1330	sv3pt5-131	https://images.pokemontcg.io/sv3pt5/131_hires.png	large
1331	sv3pt5-132	https://images.pokemontcg.io/sv3pt5/132_hires.png	large
1332	sv3pt5-133	https://images.pokemontcg.io/sv3pt5/133_hires.png	large
1333	sv3pt5-134	https://images.pokemontcg.io/sv3pt5/134_hires.png	large
1334	sv3pt5-135	https://images.pokemontcg.io/sv3pt5/135_hires.png	large
1335	sv3pt5-136	https://images.pokemontcg.io/sv3pt5/136_hires.png	large
1336	sv3pt5-137	https://images.pokemontcg.io/sv3pt5/137_hires.png	large
1337	sv3pt5-138	https://images.pokemontcg.io/sv3pt5/138_hires.png	large
1338	sv3pt5-139	https://images.pokemontcg.io/sv3pt5/139_hires.png	large
1339	sv3pt5-140	https://images.pokemontcg.io/sv3pt5/140_hires.png	large
1340	sv3pt5-141	https://images.pokemontcg.io/sv3pt5/141_hires.png	large
1341	sv3pt5-142	https://images.pokemontcg.io/sv3pt5/142_hires.png	large
1342	sv3pt5-143	https://images.pokemontcg.io/sv3pt5/143_hires.png	large
1343	sv3pt5-144	https://images.pokemontcg.io/sv3pt5/144_hires.png	large
1344	sv3pt5-145	https://images.pokemontcg.io/sv3pt5/145_hires.png	large
1345	sv3pt5-146	https://images.pokemontcg.io/sv3pt5/146_hires.png	large
1346	sv3pt5-147	https://images.pokemontcg.io/sv3pt5/147_hires.png	large
1347	sv3pt5-148	https://images.pokemontcg.io/sv3pt5/148_hires.png	large
1348	sv3pt5-149	https://images.pokemontcg.io/sv3pt5/149_hires.png	large
1349	sv3pt5-150	https://images.pokemontcg.io/sv3pt5/150_hires.png	large
1350	sv3pt5-151	https://images.pokemontcg.io/sv3pt5/151_hires.png	large
1351	sv3pt5-152	https://images.pokemontcg.io/sv3pt5/152_hires.png	large
1352	sv3pt5-153	https://images.pokemontcg.io/sv3pt5/153_hires.png	large
1353	sv3pt5-154	https://images.pokemontcg.io/sv3pt5/154_hires.png	large
1354	sv3pt5-155	https://images.pokemontcg.io/sv3pt5/155_hires.png	large
1355	sv3pt5-156	https://images.pokemontcg.io/sv3pt5/156_hires.png	large
1356	sv3pt5-157	https://images.pokemontcg.io/sv3pt5/157_hires.png	large
1357	sv3pt5-158	https://images.pokemontcg.io/sv3pt5/158_hires.png	large
1358	sv3pt5-159	https://images.pokemontcg.io/sv3pt5/159_hires.png	large
1359	sv3pt5-160	https://images.pokemontcg.io/sv3pt5/160_hires.png	large
1360	sv3pt5-161	https://images.pokemontcg.io/sv3pt5/161_hires.png	large
1361	sv3pt5-162	https://images.pokemontcg.io/sv3pt5/162_hires.png	large
1362	sv3pt5-163	https://images.pokemontcg.io/sv3pt5/163_hires.png	large
1363	sv3pt5-164	https://images.pokemontcg.io/sv3pt5/164_hires.png	large
1364	sv3pt5-165	https://images.pokemontcg.io/sv3pt5/165_hires.png	large
1365	sv3pt5-166	https://images.pokemontcg.io/sv3pt5/166_hires.png	large
1366	sv3pt5-167	https://images.pokemontcg.io/sv3pt5/167_hires.png	large
1367	sv3pt5-168	https://images.pokemontcg.io/sv3pt5/168_hires.png	large
1368	sv3pt5-169	https://images.pokemontcg.io/sv3pt5/169_hires.png	large
1369	sv3pt5-170	https://images.pokemontcg.io/sv3pt5/170_hires.png	large
1370	sv3pt5-171	https://images.pokemontcg.io/sv3pt5/171_hires.png	large
1371	sv3pt5-172	https://images.pokemontcg.io/sv3pt5/172_hires.png	large
1372	sv3pt5-173	https://images.pokemontcg.io/sv3pt5/173_hires.png	large
1373	sv3pt5-174	https://images.pokemontcg.io/sv3pt5/174_hires.png	large
1374	sv3pt5-175	https://images.pokemontcg.io/sv3pt5/175_hires.png	large
1375	sv3pt5-176	https://images.pokemontcg.io/sv3pt5/176_hires.png	large
1376	sv3pt5-177	https://images.pokemontcg.io/sv3pt5/177_hires.png	large
1377	sv3pt5-178	https://images.pokemontcg.io/sv3pt5/178_hires.png	large
1378	sv3pt5-179	https://images.pokemontcg.io/sv3pt5/179_hires.png	large
1379	sv3pt5-180	https://images.pokemontcg.io/sv3pt5/180_hires.png	large
1380	sv3pt5-181	https://images.pokemontcg.io/sv3pt5/181_hires.png	large
1381	sv3pt5-182	https://images.pokemontcg.io/sv3pt5/182_hires.png	large
1382	sv3pt5-183	https://images.pokemontcg.io/sv3pt5/183_hires.png	large
1383	sv3pt5-184	https://images.pokemontcg.io/sv3pt5/184_hires.png	large
1384	sv3pt5-185	https://images.pokemontcg.io/sv3pt5/185_hires.png	large
1385	sv3pt5-186	https://images.pokemontcg.io/sv3pt5/186_hires.png	large
1386	sv3pt5-187	https://images.pokemontcg.io/sv3pt5/187_hires.png	large
1387	sv3pt5-188	https://images.pokemontcg.io/sv3pt5/188_hires.png	large
1388	sv3pt5-189	https://images.pokemontcg.io/sv3pt5/189_hires.png	large
1389	sv3pt5-190	https://images.pokemontcg.io/sv3pt5/190_hires.png	large
1390	sv3pt5-191	https://images.pokemontcg.io/sv3pt5/191_hires.png	large
1391	sv3pt5-192	https://images.pokemontcg.io/sv3pt5/192_hires.png	large
1392	sv3pt5-193	https://images.pokemontcg.io/sv3pt5/193_hires.png	large
1393	sv3pt5-194	https://images.pokemontcg.io/sv3pt5/194_hires.png	large
1394	sv3pt5-195	https://images.pokemontcg.io/sv3pt5/195_hires.png	large
1395	sv3pt5-196	https://images.pokemontcg.io/sv3pt5/196_hires.png	large
1396	sv3pt5-197	https://images.pokemontcg.io/sv3pt5/197_hires.png	large
1397	sv3pt5-198	https://images.pokemontcg.io/sv3pt5/198_hires.png	large
1398	sv3pt5-199	https://images.pokemontcg.io/sv3pt5/199_hires.png	large
1399	sv3pt5-200	https://images.pokemontcg.io/sv3pt5/200_hires.png	large
1400	sv3pt5-201	https://images.pokemontcg.io/sv3pt5/201_hires.png	large
1401	sv3pt5-202	https://images.pokemontcg.io/sv3pt5/202_hires.png	large
1402	sv3pt5-203	https://images.pokemontcg.io/sv3pt5/203_hires.png	large
1403	sv3pt5-204	https://images.pokemontcg.io/sv3pt5/204_hires.png	large
1404	sv3pt5-205	https://images.pokemontcg.io/sv3pt5/205_hires.png	large
1405	sv3pt5-206	https://images.pokemontcg.io/sv3pt5/206_hires.png	large
1406	sv3pt5-207	https://images.pokemontcg.io/sv3pt5/207_hires.png	large
1407	sv4-1	https://images.pokemontcg.io/sv4/1.png	small
1408	sv4-2	https://images.pokemontcg.io/sv4/2.png	small
1409	sv4-4	https://images.pokemontcg.io/sv4/4.png	small
1410	sv4-5	https://images.pokemontcg.io/sv4/5.png	small
1411	sv4-3	https://images.pokemontcg.io/sv4/3.png	small
1412	sv4-6	https://images.pokemontcg.io/sv4/6.png	small
1413	sv4-7	https://images.pokemontcg.io/sv4/7.png	small
1414	sv4-8	https://images.pokemontcg.io/sv4/8.png	small
1415	sv4-10	https://images.pokemontcg.io/sv4/10.png	small
1416	sv4-9	https://images.pokemontcg.io/sv4/9.png	small
1417	sv4-14	https://images.pokemontcg.io/sv4/14.png	small
1418	sv4-11	https://images.pokemontcg.io/sv4/11.png	small
1419	sv4-24	https://images.pokemontcg.io/sv4/24.png	small
1420	sv4-26	https://images.pokemontcg.io/sv4/26.png	small
1421	sv4-27	https://images.pokemontcg.io/sv4/27.png	small
1422	sv4-35	https://images.pokemontcg.io/sv4/35.png	small
1423	sv4-12	https://images.pokemontcg.io/sv4/12.png	small
1424	sv4-13	https://images.pokemontcg.io/sv4/13.png	small
1425	sv4-17	https://images.pokemontcg.io/sv4/17.png	small
1426	sv4-21	https://images.pokemontcg.io/sv4/21.png	small
1427	sv4-22	https://images.pokemontcg.io/sv4/22.png	small
1428	sv4-31	https://images.pokemontcg.io/sv4/31.png	small
1429	sv4-32	https://images.pokemontcg.io/sv4/32.png	small
1430	sv4-16	https://images.pokemontcg.io/sv4/16.png	small
1431	sv4-20	https://images.pokemontcg.io/sv4/20.png	small
1432	sv4-25	https://images.pokemontcg.io/sv4/25.png	small
1433	sv4-28	https://images.pokemontcg.io/sv4/28.png	small
1434	sv4-30	https://images.pokemontcg.io/sv4/30.png	small
1435	sv4-33	https://images.pokemontcg.io/sv4/33.png	small
1436	sv4-15	https://images.pokemontcg.io/sv4/15.png	small
1437	sv4-18	https://images.pokemontcg.io/sv4/18.png	small
1438	sv4-19	https://images.pokemontcg.io/sv4/19.png	small
1439	sv4-23	https://images.pokemontcg.io/sv4/23.png	small
1440	sv4-29	https://images.pokemontcg.io/sv4/29.png	small
1441	sv4-34	https://images.pokemontcg.io/sv4/34.png	small
1442	sv4-36	https://images.pokemontcg.io/sv4/36.png	small
1443	sv4-38	https://images.pokemontcg.io/sv4/38.png	small
1444	sv4-39	https://images.pokemontcg.io/sv4/39.png	small
1445	sv4-57	https://images.pokemontcg.io/sv4/57.png	small
1446	sv4-60	https://images.pokemontcg.io/sv4/60.png	small
1447	sv4-62	https://images.pokemontcg.io/sv4/62.png	small
1448	sv4-65	https://images.pokemontcg.io/sv4/65.png	small
1449	sv4-67	https://images.pokemontcg.io/sv4/67.png	small
1450	sv4-68	https://images.pokemontcg.io/sv4/68.png	small
1451	sv4-70	https://images.pokemontcg.io/sv4/70.png	small
1452	sv4-73	https://images.pokemontcg.io/sv4/73.png	small
1453	sv4-42	https://images.pokemontcg.io/sv4/42.png	small
1454	sv4-44	https://images.pokemontcg.io/sv4/44.png	small
1455	sv4-47	https://images.pokemontcg.io/sv4/47.png	small
1456	sv4-54	https://images.pokemontcg.io/sv4/54.png	small
1457	sv4-56	https://images.pokemontcg.io/sv4/56.png	small
1458	sv4-40	https://images.pokemontcg.io/sv4/40.png	small
1459	sv4-45	https://images.pokemontcg.io/sv4/45.png	small
1460	sv4-48	https://images.pokemontcg.io/sv4/48.png	small
1461	sv4-51	https://images.pokemontcg.io/sv4/51.png	small
1462	sv4-52	https://images.pokemontcg.io/sv4/52.png	small
1463	sv4-59	https://images.pokemontcg.io/sv4/59.png	small
1464	sv4-61	https://images.pokemontcg.io/sv4/61.png	small
1465	sv4-63	https://images.pokemontcg.io/sv4/63.png	small
1466	sv4-64	https://images.pokemontcg.io/sv4/64.png	small
1467	sv4-66	https://images.pokemontcg.io/sv4/66.png	small
1468	sv4-69	https://images.pokemontcg.io/sv4/69.png	small
1469	sv4-72	https://images.pokemontcg.io/sv4/72.png	small
1470	sv4-37	https://images.pokemontcg.io/sv4/37.png	small
1471	sv4-41	https://images.pokemontcg.io/sv4/41.png	small
1472	sv4-43	https://images.pokemontcg.io/sv4/43.png	small
1473	sv4-46	https://images.pokemontcg.io/sv4/46.png	small
1474	sv4-49	https://images.pokemontcg.io/sv4/49.png	small
1475	sv4-50	https://images.pokemontcg.io/sv4/50.png	small
1476	sv4-53	https://images.pokemontcg.io/sv4/53.png	small
1477	sv4-55	https://images.pokemontcg.io/sv4/55.png	small
1478	sv4-58	https://images.pokemontcg.io/sv4/58.png	small
1479	sv4-71	https://images.pokemontcg.io/sv4/71.png	small
1480	sv4-75	https://images.pokemontcg.io/sv4/75.png	small
1481	sv4-77	https://images.pokemontcg.io/sv4/77.png	small
1482	sv4-84	https://images.pokemontcg.io/sv4/84.png	small
1483	sv4-85	https://images.pokemontcg.io/sv4/85.png	small
1484	sv4-74	https://images.pokemontcg.io/sv4/74.png	small
1485	sv4-76	https://images.pokemontcg.io/sv4/76.png	small
1486	sv4-78	https://images.pokemontcg.io/sv4/78.png	small
1487	sv4-79	https://images.pokemontcg.io/sv4/79.png	small
1488	sv4-80	https://images.pokemontcg.io/sv4/80.png	small
1489	sv4-83	https://images.pokemontcg.io/sv4/83.png	small
1490	sv4-81	https://images.pokemontcg.io/sv4/81.png	small
1491	sv4-82	https://images.pokemontcg.io/sv4/82.png	small
1492	sv4-86	https://images.pokemontcg.io/sv4/86.png	small
1493	sv4-99	https://images.pokemontcg.io/sv4/99.png	small
1494	sv4-106	https://images.pokemontcg.io/sv4/106.png	small
1495	sv4-110	https://images.pokemontcg.io/sv4/110.png	small
1496	sv4-116	https://images.pokemontcg.io/sv4/116.png	small
1497	sv4-88	https://images.pokemontcg.io/sv4/88.png	small
1498	sv4-87	https://images.pokemontcg.io/sv4/87.png	small
1499	sv4-92	https://images.pokemontcg.io/sv4/92.png	small
1500	sv4-94	https://images.pokemontcg.io/sv4/94.png	small
1501	sv4-96	https://images.pokemontcg.io/sv4/96.png	small
1502	sv4-100	https://images.pokemontcg.io/sv4/100.png	small
1503	sv4-105	https://images.pokemontcg.io/sv4/105.png	small
1504	sv4-108	https://images.pokemontcg.io/sv4/108.png	small
1505	sv4-111	https://images.pokemontcg.io/sv4/111.png	small
1506	sv4-112	https://images.pokemontcg.io/sv4/112.png	small
1507	sv4-113	https://images.pokemontcg.io/sv4/113.png	small
1508	sv4-118	https://images.pokemontcg.io/sv4/118.png	small
1509	sv4-120	https://images.pokemontcg.io/sv4/120.png	small
1510	sv4-89	https://images.pokemontcg.io/sv4/89.png	small
1511	sv4-90	https://images.pokemontcg.io/sv4/90.png	small
1512	sv4-114	https://images.pokemontcg.io/sv4/114.png	small
1513	sv4-115	https://images.pokemontcg.io/sv4/115.png	small
1514	sv4-121	https://images.pokemontcg.io/sv4/121.png	small
1515	sv4-91	https://images.pokemontcg.io/sv4/91.png	small
1516	sv4-93	https://images.pokemontcg.io/sv4/93.png	small
1517	sv4-95	https://images.pokemontcg.io/sv4/95.png	small
1518	sv4-97	https://images.pokemontcg.io/sv4/97.png	small
1519	sv4-98	https://images.pokemontcg.io/sv4/98.png	small
1520	sv4-101	https://images.pokemontcg.io/sv4/101.png	small
1521	sv4-102	https://images.pokemontcg.io/sv4/102.png	small
1522	sv4-103	https://images.pokemontcg.io/sv4/103.png	small
1523	sv4-104	https://images.pokemontcg.io/sv4/104.png	small
1524	sv4-107	https://images.pokemontcg.io/sv4/107.png	small
1525	sv4-109	https://images.pokemontcg.io/sv4/109.png	small
1526	sv4-117	https://images.pokemontcg.io/sv4/117.png	small
1527	sv4-119	https://images.pokemontcg.io/sv4/119.png	small
1528	sv4-122	https://images.pokemontcg.io/sv4/122.png	small
1529	sv4-123	https://images.pokemontcg.io/sv4/123.png	small
1530	sv4-124	https://images.pokemontcg.io/sv4/124.png	small
1531	sv4-125	https://images.pokemontcg.io/sv4/125.png	small
1532	sv4-126	https://images.pokemontcg.io/sv4/126.png	small
1533	sv4-128	https://images.pokemontcg.io/sv4/128.png	small
1534	sv4-127	https://images.pokemontcg.io/sv4/127.png	small
1535	sv4-130	https://images.pokemontcg.io/sv4/130.png	small
1536	sv4-131	https://images.pokemontcg.io/sv4/131.png	small
1537	sv4-129	https://images.pokemontcg.io/sv4/129.png	small
1538	sv4-132	https://images.pokemontcg.io/sv4/132.png	small
1539	sv4-133	https://images.pokemontcg.io/sv4/133.png	small
1540	sv4-135	https://images.pokemontcg.io/sv4/135.png	small
1541	sv4-136	https://images.pokemontcg.io/sv4/136.png	small
1542	sv4-137	https://images.pokemontcg.io/sv4/137.png	small
1543	sv4-139	https://images.pokemontcg.io/sv4/139.png	small
1544	sv4-142	https://images.pokemontcg.io/sv4/142.png	small
1545	sv4-143	https://images.pokemontcg.io/sv4/143.png	small
1546	sv4-144	https://images.pokemontcg.io/sv4/144.png	small
1547	sv4-138	https://images.pokemontcg.io/sv4/138.png	small
1548	sv4-140	https://images.pokemontcg.io/sv4/140.png	small
1549	sv4-145	https://images.pokemontcg.io/sv4/145.png	small
1550	sv4-134	https://images.pokemontcg.io/sv4/134.png	small
1551	sv4-141	https://images.pokemontcg.io/sv4/141.png	small
1552	sv4-146	https://images.pokemontcg.io/sv4/146.png	small
1553	sv4-147	https://images.pokemontcg.io/sv4/147.png	small
1554	sv4-148	https://images.pokemontcg.io/sv4/148.png	small
1555	sv4-149	https://images.pokemontcg.io/sv4/149.png	small
1556	sv4-152	https://images.pokemontcg.io/sv4/152.png	small
1557	sv4-159	https://images.pokemontcg.io/sv4/159.png	small
1558	sv4-166	https://images.pokemontcg.io/sv4/166.png	small
1559	sv4-176	https://images.pokemontcg.io/sv4/176.png	small
1560	sv4-177	https://images.pokemontcg.io/sv4/177.png	small
1561	sv4-151	https://images.pokemontcg.io/sv4/151.png	small
1562	sv4-167	https://images.pokemontcg.io/sv4/167.png	small
1563	sv4-170	https://images.pokemontcg.io/sv4/170.png	small
1564	sv4-174	https://images.pokemontcg.io/sv4/174.png	small
1565	sv4-175	https://images.pokemontcg.io/sv4/175.png	small
1566	sv4-179	https://images.pokemontcg.io/sv4/179.png	small
1567	sv4-150	https://images.pokemontcg.io/sv4/150.png	small
1568	sv4-153	https://images.pokemontcg.io/sv4/153.png	small
1569	sv4-155	https://images.pokemontcg.io/sv4/155.png	small
1570	sv4-156	https://images.pokemontcg.io/sv4/156.png	small
1571	sv4-160	https://images.pokemontcg.io/sv4/160.png	small
1572	sv4-162	https://images.pokemontcg.io/sv4/162.png	small
1573	sv4-163	https://images.pokemontcg.io/sv4/163.png	small
1574	sv4-172	https://images.pokemontcg.io/sv4/172.png	small
1575	sv4-154	https://images.pokemontcg.io/sv4/154.png	small
1576	sv4-157	https://images.pokemontcg.io/sv4/157.png	small
1577	sv4-158	https://images.pokemontcg.io/sv4/158.png	small
1578	sv4-161	https://images.pokemontcg.io/sv4/161.png	small
1579	sv4-164	https://images.pokemontcg.io/sv4/164.png	small
1580	sv4-165	https://images.pokemontcg.io/sv4/165.png	small
1581	sv4-168	https://images.pokemontcg.io/sv4/168.png	small
1582	sv4-169	https://images.pokemontcg.io/sv4/169.png	small
1583	sv4-171	https://images.pokemontcg.io/sv4/171.png	small
1584	sv4-173	https://images.pokemontcg.io/sv4/173.png	small
1585	sv4-178	https://images.pokemontcg.io/sv4/178.png	small
1586	sv4-182	https://images.pokemontcg.io/sv4/182.png	small
1587	sv4-183	https://images.pokemontcg.io/sv4/183.png	small
1588	sv4-184	https://images.pokemontcg.io/sv4/184.png	small
1589	sv4-180	https://images.pokemontcg.io/sv4/180.png	small
1590	sv4-181	https://images.pokemontcg.io/sv4/181.png	small
1591	sv4-186	https://images.pokemontcg.io/sv4/186.png	small
1592	sv4-190	https://images.pokemontcg.io/sv4/190.png	small
1593	sv4-185	https://images.pokemontcg.io/sv4/185.png	small
1594	sv4-187	https://images.pokemontcg.io/sv4/187.png	small
1595	sv4-189	https://images.pokemontcg.io/sv4/189.png	small
1596	sv4-191	https://images.pokemontcg.io/sv4/191.png	small
1597	sv4-193	https://images.pokemontcg.io/sv4/193.png	small
1598	sv4-188	https://images.pokemontcg.io/sv4/188.png	small
1599	sv4-194	https://images.pokemontcg.io/sv4/194.png	small
1600	sv4-192	https://images.pokemontcg.io/sv4/192.png	small
1601	sv4-197	https://images.pokemontcg.io/sv4/197.png	small
1602	sv4-203	https://images.pokemontcg.io/sv4/203.png	small
1603	sv4-213	https://images.pokemontcg.io/sv4/213.png	small
1604	sv4-218	https://images.pokemontcg.io/sv4/218.png	small
1605	sv4-216	https://images.pokemontcg.io/sv4/216.png	small
1606	sv4-226	https://images.pokemontcg.io/sv4/226.png	small
1607	sv4-220	https://images.pokemontcg.io/sv4/220.png	small
1608	sv4-227	https://images.pokemontcg.io/sv4/227.png	small
1609	sv4-225	https://images.pokemontcg.io/sv4/225.png	small
1610	sv4-228	https://images.pokemontcg.io/sv4/228.png	small
1611	sv4-230	https://images.pokemontcg.io/sv4/230.png	small
1612	sv4-232	https://images.pokemontcg.io/sv4/232.png	small
1613	sv4-196	https://images.pokemontcg.io/sv4/196.png	small
1614	sv4-200	https://images.pokemontcg.io/sv4/200.png	small
1615	sv4-201	https://images.pokemontcg.io/sv4/201.png	small
1616	sv4-204	https://images.pokemontcg.io/sv4/204.png	small
1617	sv4-205	https://images.pokemontcg.io/sv4/205.png	small
1618	sv4-209	https://images.pokemontcg.io/sv4/209.png	small
1619	sv4-210	https://images.pokemontcg.io/sv4/210.png	small
1620	sv4-211	https://images.pokemontcg.io/sv4/211.png	small
1621	sv4-212	https://images.pokemontcg.io/sv4/212.png	small
1622	sv4-219	https://images.pokemontcg.io/sv4/219.png	small
1623	sv4-223	https://images.pokemontcg.io/sv4/223.png	small
1624	sv4-224	https://images.pokemontcg.io/sv4/224.png	small
1625	sv4-195	https://images.pokemontcg.io/sv4/195.png	small
1626	sv4-198	https://images.pokemontcg.io/sv4/198.png	small
1627	sv4-199	https://images.pokemontcg.io/sv4/199.png	small
1628	sv4-202	https://images.pokemontcg.io/sv4/202.png	small
1629	sv4-206	https://images.pokemontcg.io/sv4/206.png	small
1630	sv4-207	https://images.pokemontcg.io/sv4/207.png	small
1631	sv4-208	https://images.pokemontcg.io/sv4/208.png	small
1632	sv4-214	https://images.pokemontcg.io/sv4/214.png	small
1633	sv4-215	https://images.pokemontcg.io/sv4/215.png	small
1634	sv4-217	https://images.pokemontcg.io/sv4/217.png	small
1635	sv4-221	https://images.pokemontcg.io/sv4/221.png	small
1636	sv4-222	https://images.pokemontcg.io/sv4/222.png	small
1637	sv4-229	https://images.pokemontcg.io/sv4/229.png	small
1638	sv4-231	https://images.pokemontcg.io/sv4/231.png	small
1639	sv4-233	https://images.pokemontcg.io/sv4/233.png	small
1640	sv4-237	https://images.pokemontcg.io/sv4/237.png	small
1641	sv4-234	https://images.pokemontcg.io/sv4/234.png	small
1642	sv4-235	https://images.pokemontcg.io/sv4/235.png	small
1643	sv4-236	https://images.pokemontcg.io/sv4/236.png	small
1644	sv4-238	https://images.pokemontcg.io/sv4/238.png	small
1645	sv4-239	https://images.pokemontcg.io/sv4/239.png	small
1646	sv4-240	https://images.pokemontcg.io/sv4/240.png	small
1647	sv4-241	https://images.pokemontcg.io/sv4/241.png	small
1648	sv4-242	https://images.pokemontcg.io/sv4/242.png	small
1649	sv4-247	https://images.pokemontcg.io/sv4/247.png	small
1650	sv4-249	https://images.pokemontcg.io/sv4/249.png	small
1651	sv4-250	https://images.pokemontcg.io/sv4/250.png	small
1652	sv4-248	https://images.pokemontcg.io/sv4/248.png	small
1653	sv4-243	https://images.pokemontcg.io/sv4/243.png	small
1654	sv4-245	https://images.pokemontcg.io/sv4/245.png	small
1655	sv4-246	https://images.pokemontcg.io/sv4/246.png	small
1656	sv4-251	https://images.pokemontcg.io/sv4/251.png	small
1657	sv4-1	https://images.pokemontcg.io/sv4/1_hires.png	large
1658	sv4-2	https://images.pokemontcg.io/sv4/2_hires.png	large
1659	sv4-4	https://images.pokemontcg.io/sv4/4_hires.png	large
1660	sv4-5	https://images.pokemontcg.io/sv4/5_hires.png	large
1661	sv4-3	https://images.pokemontcg.io/sv4/3_hires.png	large
1662	sv4-6	https://images.pokemontcg.io/sv4/6_hires.png	large
1663	sv4-7	https://images.pokemontcg.io/sv4/7_hires.png	large
1664	sv4-8	https://images.pokemontcg.io/sv4/8_hires.png	large
1665	sv4-10	https://images.pokemontcg.io/sv4/10_hires.png	large
1666	sv4-9	https://images.pokemontcg.io/sv4/9_hires.png	large
1667	sv4-14	https://images.pokemontcg.io/sv4/14_hires.png	large
1668	sv4-11	https://images.pokemontcg.io/sv4/11_hires.png	large
1669	sv4-24	https://images.pokemontcg.io/sv4/24_hires.png	large
1670	sv4-26	https://images.pokemontcg.io/sv4/26_hires.png	large
1671	sv4-27	https://images.pokemontcg.io/sv4/27_hires.png	large
1672	sv4-35	https://images.pokemontcg.io/sv4/35_hires.png	large
1673	sv4-12	https://images.pokemontcg.io/sv4/12_hires.png	large
1674	sv4-13	https://images.pokemontcg.io/sv4/13_hires.png	large
1675	sv4-17	https://images.pokemontcg.io/sv4/17_hires.png	large
1676	sv4-21	https://images.pokemontcg.io/sv4/21_hires.png	large
1677	sv4-22	https://images.pokemontcg.io/sv4/22_hires.png	large
1678	sv4-31	https://images.pokemontcg.io/sv4/31_hires.png	large
1679	sv4-32	https://images.pokemontcg.io/sv4/32_hires.png	large
1680	sv4-16	https://images.pokemontcg.io/sv4/16_hires.png	large
1681	sv4-20	https://images.pokemontcg.io/sv4/20_hires.png	large
1682	sv4-25	https://images.pokemontcg.io/sv4/25_hires.png	large
1683	sv4-28	https://images.pokemontcg.io/sv4/28_hires.png	large
1684	sv4-30	https://images.pokemontcg.io/sv4/30_hires.png	large
1685	sv4-33	https://images.pokemontcg.io/sv4/33_hires.png	large
1686	sv4-15	https://images.pokemontcg.io/sv4/15_hires.png	large
1687	sv4-18	https://images.pokemontcg.io/sv4/18_hires.png	large
1688	sv4-19	https://images.pokemontcg.io/sv4/19_hires.png	large
1689	sv4-23	https://images.pokemontcg.io/sv4/23_hires.png	large
1690	sv4-29	https://images.pokemontcg.io/sv4/29_hires.png	large
1691	sv4-34	https://images.pokemontcg.io/sv4/34_hires.png	large
1692	sv4-36	https://images.pokemontcg.io/sv4/36_hires.png	large
1693	sv4-38	https://images.pokemontcg.io/sv4/38_hires.png	large
1694	sv4-39	https://images.pokemontcg.io/sv4/39_hires.png	large
1695	sv4-57	https://images.pokemontcg.io/sv4/57_hires.png	large
1696	sv4-60	https://images.pokemontcg.io/sv4/60_hires.png	large
1697	sv4-62	https://images.pokemontcg.io/sv4/62_hires.png	large
1698	sv4-65	https://images.pokemontcg.io/sv4/65_hires.png	large
1699	sv4-67	https://images.pokemontcg.io/sv4/67_hires.png	large
1700	sv4-68	https://images.pokemontcg.io/sv4/68_hires.png	large
1701	sv4-70	https://images.pokemontcg.io/sv4/70_hires.png	large
1702	sv4-73	https://images.pokemontcg.io/sv4/73_hires.png	large
1703	sv4-42	https://images.pokemontcg.io/sv4/42_hires.png	large
1704	sv4-44	https://images.pokemontcg.io/sv4/44_hires.png	large
1705	sv4-47	https://images.pokemontcg.io/sv4/47_hires.png	large
1706	sv4-54	https://images.pokemontcg.io/sv4/54_hires.png	large
1707	sv4-56	https://images.pokemontcg.io/sv4/56_hires.png	large
1708	sv4-40	https://images.pokemontcg.io/sv4/40_hires.png	large
1709	sv4-45	https://images.pokemontcg.io/sv4/45_hires.png	large
1710	sv4-48	https://images.pokemontcg.io/sv4/48_hires.png	large
1711	sv4-51	https://images.pokemontcg.io/sv4/51_hires.png	large
1712	sv4-52	https://images.pokemontcg.io/sv4/52_hires.png	large
1713	sv4-59	https://images.pokemontcg.io/sv4/59_hires.png	large
1714	sv4-61	https://images.pokemontcg.io/sv4/61_hires.png	large
1715	sv4-63	https://images.pokemontcg.io/sv4/63_hires.png	large
1716	sv4-64	https://images.pokemontcg.io/sv4/64_hires.png	large
1717	sv4-66	https://images.pokemontcg.io/sv4/66_hires.png	large
1718	sv4-69	https://images.pokemontcg.io/sv4/69_hires.png	large
1719	sv4-72	https://images.pokemontcg.io/sv4/72_hires.png	large
1720	sv4-37	https://images.pokemontcg.io/sv4/37_hires.png	large
1721	sv4-41	https://images.pokemontcg.io/sv4/41_hires.png	large
1722	sv4-43	https://images.pokemontcg.io/sv4/43_hires.png	large
1723	sv4-46	https://images.pokemontcg.io/sv4/46_hires.png	large
1724	sv4-49	https://images.pokemontcg.io/sv4/49_hires.png	large
1725	sv4-50	https://images.pokemontcg.io/sv4/50_hires.png	large
1726	sv4-53	https://images.pokemontcg.io/sv4/53_hires.png	large
1727	sv4-55	https://images.pokemontcg.io/sv4/55_hires.png	large
1728	sv4-58	https://images.pokemontcg.io/sv4/58_hires.png	large
1729	sv4-71	https://images.pokemontcg.io/sv4/71_hires.png	large
1730	sv4-75	https://images.pokemontcg.io/sv4/75_hires.png	large
1731	sv4-77	https://images.pokemontcg.io/sv4/77_hires.png	large
1732	sv4-84	https://images.pokemontcg.io/sv4/84_hires.png	large
1733	sv4-85	https://images.pokemontcg.io/sv4/85_hires.png	large
1734	sv4-74	https://images.pokemontcg.io/sv4/74_hires.png	large
1735	sv4-76	https://images.pokemontcg.io/sv4/76_hires.png	large
1736	sv4-78	https://images.pokemontcg.io/sv4/78_hires.png	large
1737	sv4-79	https://images.pokemontcg.io/sv4/79_hires.png	large
1738	sv4-80	https://images.pokemontcg.io/sv4/80_hires.png	large
1739	sv4-83	https://images.pokemontcg.io/sv4/83_hires.png	large
1740	sv4-81	https://images.pokemontcg.io/sv4/81_hires.png	large
1741	sv4-82	https://images.pokemontcg.io/sv4/82_hires.png	large
1742	sv4-86	https://images.pokemontcg.io/sv4/86_hires.png	large
1743	sv4-99	https://images.pokemontcg.io/sv4/99_hires.png	large
1744	sv4-106	https://images.pokemontcg.io/sv4/106_hires.png	large
1745	sv4-110	https://images.pokemontcg.io/sv4/110_hires.png	large
1746	sv4-116	https://images.pokemontcg.io/sv4/116_hires.png	large
1747	sv4-88	https://images.pokemontcg.io/sv4/88_hires.png	large
1748	sv4-87	https://images.pokemontcg.io/sv4/87_hires.png	large
1749	sv4-92	https://images.pokemontcg.io/sv4/92_hires.png	large
1750	sv4-94	https://images.pokemontcg.io/sv4/94_hires.png	large
1751	sv4-96	https://images.pokemontcg.io/sv4/96_hires.png	large
1752	sv4-100	https://images.pokemontcg.io/sv4/100_hires.png	large
1753	sv4-105	https://images.pokemontcg.io/sv4/105_hires.png	large
1754	sv4-108	https://images.pokemontcg.io/sv4/108_hires.png	large
1755	sv4-111	https://images.pokemontcg.io/sv4/111_hires.png	large
1756	sv4-112	https://images.pokemontcg.io/sv4/112_hires.png	large
1757	sv4-113	https://images.pokemontcg.io/sv4/113_hires.png	large
1758	sv4-118	https://images.pokemontcg.io/sv4/118_hires.png	large
1759	sv4-120	https://images.pokemontcg.io/sv4/120_hires.png	large
1760	sv4-89	https://images.pokemontcg.io/sv4/89_hires.png	large
1761	sv4-90	https://images.pokemontcg.io/sv4/90_hires.png	large
1762	sv4-114	https://images.pokemontcg.io/sv4/114_hires.png	large
1763	sv4-115	https://images.pokemontcg.io/sv4/115_hires.png	large
1764	sv4-121	https://images.pokemontcg.io/sv4/121_hires.png	large
1765	sv4-91	https://images.pokemontcg.io/sv4/91_hires.png	large
1766	sv4-93	https://images.pokemontcg.io/sv4/93_hires.png	large
1767	sv4-95	https://images.pokemontcg.io/sv4/95_hires.png	large
1768	sv4-97	https://images.pokemontcg.io/sv4/97_hires.png	large
1769	sv4-98	https://images.pokemontcg.io/sv4/98_hires.png	large
1770	sv4-101	https://images.pokemontcg.io/sv4/101_hires.png	large
1771	sv4-102	https://images.pokemontcg.io/sv4/102_hires.png	large
1772	sv4-103	https://images.pokemontcg.io/sv4/103_hires.png	large
1773	sv4-104	https://images.pokemontcg.io/sv4/104_hires.png	large
1774	sv4-107	https://images.pokemontcg.io/sv4/107_hires.png	large
1775	sv4-109	https://images.pokemontcg.io/sv4/109_hires.png	large
1776	sv4-117	https://images.pokemontcg.io/sv4/117_hires.png	large
1777	sv4-119	https://images.pokemontcg.io/sv4/119_hires.png	large
1778	sv4-122	https://images.pokemontcg.io/sv4/122_hires.png	large
1779	sv4-123	https://images.pokemontcg.io/sv4/123_hires.png	large
1780	sv4-124	https://images.pokemontcg.io/sv4/124_hires.png	large
1781	sv4-125	https://images.pokemontcg.io/sv4/125_hires.png	large
1782	sv4-126	https://images.pokemontcg.io/sv4/126_hires.png	large
1783	sv4-128	https://images.pokemontcg.io/sv4/128_hires.png	large
1784	sv4-127	https://images.pokemontcg.io/sv4/127_hires.png	large
1785	sv4-130	https://images.pokemontcg.io/sv4/130_hires.png	large
1786	sv4-131	https://images.pokemontcg.io/sv4/131_hires.png	large
1787	sv4-129	https://images.pokemontcg.io/sv4/129_hires.png	large
1788	sv4-132	https://images.pokemontcg.io/sv4/132_hires.png	large
1789	sv4-133	https://images.pokemontcg.io/sv4/133_hires.png	large
1790	sv4-135	https://images.pokemontcg.io/sv4/135_hires.png	large
1791	sv4-136	https://images.pokemontcg.io/sv4/136_hires.png	large
1792	sv4-137	https://images.pokemontcg.io/sv4/137_hires.png	large
1793	sv4-139	https://images.pokemontcg.io/sv4/139_hires.png	large
1794	sv4-142	https://images.pokemontcg.io/sv4/142_hires.png	large
1795	sv4-143	https://images.pokemontcg.io/sv4/143_hires.png	large
1796	sv4-144	https://images.pokemontcg.io/sv4/144_hires.png	large
1797	sv4-138	https://images.pokemontcg.io/sv4/138_hires.png	large
1798	sv4-140	https://images.pokemontcg.io/sv4/140_hires.png	large
1799	sv4-145	https://images.pokemontcg.io/sv4/145_hires.png	large
1800	sv4-134	https://images.pokemontcg.io/sv4/134_hires.png	large
1801	sv4-141	https://images.pokemontcg.io/sv4/141_hires.png	large
1802	sv4-146	https://images.pokemontcg.io/sv4/146_hires.png	large
1803	sv4-147	https://images.pokemontcg.io/sv4/147_hires.png	large
1804	sv4-148	https://images.pokemontcg.io/sv4/148_hires.png	large
1805	sv4-149	https://images.pokemontcg.io/sv4/149_hires.png	large
1806	sv4-152	https://images.pokemontcg.io/sv4/152_hires.png	large
1807	sv4-159	https://images.pokemontcg.io/sv4/159_hires.png	large
1808	sv4-166	https://images.pokemontcg.io/sv4/166_hires.png	large
1809	sv4-176	https://images.pokemontcg.io/sv4/176_hires.png	large
1810	sv4-177	https://images.pokemontcg.io/sv4/177_hires.png	large
1811	sv4-151	https://images.pokemontcg.io/sv4/151_hires.png	large
1812	sv4-167	https://images.pokemontcg.io/sv4/167_hires.png	large
1813	sv4-170	https://images.pokemontcg.io/sv4/170_hires.png	large
1814	sv4-174	https://images.pokemontcg.io/sv4/174_hires.png	large
1815	sv4-175	https://images.pokemontcg.io/sv4/175_hires.png	large
1816	sv4-179	https://images.pokemontcg.io/sv4/179_hires.png	large
1817	sv4-150	https://images.pokemontcg.io/sv4/150_hires.png	large
1818	sv4-153	https://images.pokemontcg.io/sv4/153_hires.png	large
1819	sv4-155	https://images.pokemontcg.io/sv4/155_hires.png	large
1820	sv4-156	https://images.pokemontcg.io/sv4/156_hires.png	large
1821	sv4-160	https://images.pokemontcg.io/sv4/160_hires.png	large
1822	sv4-162	https://images.pokemontcg.io/sv4/162_hires.png	large
1823	sv4-163	https://images.pokemontcg.io/sv4/163_hires.png	large
1824	sv4-172	https://images.pokemontcg.io/sv4/172_hires.png	large
1825	sv4-154	https://images.pokemontcg.io/sv4/154_hires.png	large
1826	sv4-157	https://images.pokemontcg.io/sv4/157_hires.png	large
1827	sv4-158	https://images.pokemontcg.io/sv4/158_hires.png	large
1828	sv4-161	https://images.pokemontcg.io/sv4/161_hires.png	large
1829	sv4-164	https://images.pokemontcg.io/sv4/164_hires.png	large
1830	sv4-165	https://images.pokemontcg.io/sv4/165_hires.png	large
1831	sv4-168	https://images.pokemontcg.io/sv4/168_hires.png	large
1832	sv4-169	https://images.pokemontcg.io/sv4/169_hires.png	large
1833	sv4-171	https://images.pokemontcg.io/sv4/171_hires.png	large
1834	sv4-173	https://images.pokemontcg.io/sv4/173_hires.png	large
1835	sv4-178	https://images.pokemontcg.io/sv4/178_hires.png	large
1836	sv4-182	https://images.pokemontcg.io/sv4/182_hires.png	large
1837	sv4-183	https://images.pokemontcg.io/sv4/183_hires.png	large
1838	sv4-184	https://images.pokemontcg.io/sv4/184_hires.png	large
1839	sv4-180	https://images.pokemontcg.io/sv4/180_hires.png	large
1840	sv4-181	https://images.pokemontcg.io/sv4/181_hires.png	large
1841	sv4-186	https://images.pokemontcg.io/sv4/186_hires.png	large
1842	sv4-190	https://images.pokemontcg.io/sv4/190_hires.png	large
1843	sv4-185	https://images.pokemontcg.io/sv4/185_hires.png	large
1844	sv4-187	https://images.pokemontcg.io/sv4/187_hires.png	large
1845	sv4-189	https://images.pokemontcg.io/sv4/189_hires.png	large
1846	sv4-191	https://images.pokemontcg.io/sv4/191_hires.png	large
1847	sv4-193	https://images.pokemontcg.io/sv4/193_hires.png	large
1848	sv4-188	https://images.pokemontcg.io/sv4/188_hires.png	large
1849	sv4-194	https://images.pokemontcg.io/sv4/194_hires.png	large
1850	sv4-192	https://images.pokemontcg.io/sv4/192_hires.png	large
1851	sv4-197	https://images.pokemontcg.io/sv4/197_hires.png	large
1852	sv4-203	https://images.pokemontcg.io/sv4/203_hires.png	large
1853	sv4-213	https://images.pokemontcg.io/sv4/213_hires.png	large
1854	sv4-218	https://images.pokemontcg.io/sv4/218_hires.png	large
1855	sv4-216	https://images.pokemontcg.io/sv4/216_hires.png	large
1856	sv4-226	https://images.pokemontcg.io/sv4/226_hires.png	large
1857	sv4-220	https://images.pokemontcg.io/sv4/220_hires.png	large
1858	sv4-227	https://images.pokemontcg.io/sv4/227_hires.png	large
1859	sv4-225	https://images.pokemontcg.io/sv4/225_hires.png	large
1860	sv4-228	https://images.pokemontcg.io/sv4/228_hires.png	large
1861	sv4-230	https://images.pokemontcg.io/sv4/230_hires.png	large
1862	sv4-232	https://images.pokemontcg.io/sv4/232_hires.png	large
1863	sv4-196	https://images.pokemontcg.io/sv4/196_hires.png	large
1864	sv4-200	https://images.pokemontcg.io/sv4/200_hires.png	large
1865	sv4-201	https://images.pokemontcg.io/sv4/201_hires.png	large
1866	sv4-204	https://images.pokemontcg.io/sv4/204_hires.png	large
1867	sv4-205	https://images.pokemontcg.io/sv4/205_hires.png	large
1868	sv4-209	https://images.pokemontcg.io/sv4/209_hires.png	large
1869	sv4-210	https://images.pokemontcg.io/sv4/210_hires.png	large
1870	sv4-211	https://images.pokemontcg.io/sv4/211_hires.png	large
1871	sv4-212	https://images.pokemontcg.io/sv4/212_hires.png	large
1872	sv4-219	https://images.pokemontcg.io/sv4/219_hires.png	large
1873	sv4-223	https://images.pokemontcg.io/sv4/223_hires.png	large
1874	sv4-224	https://images.pokemontcg.io/sv4/224_hires.png	large
1875	sv4-195	https://images.pokemontcg.io/sv4/195_hires.png	large
1876	sv4-198	https://images.pokemontcg.io/sv4/198_hires.png	large
1877	sv4-199	https://images.pokemontcg.io/sv4/199_hires.png	large
1878	sv4-202	https://images.pokemontcg.io/sv4/202_hires.png	large
1879	sv4-206	https://images.pokemontcg.io/sv4/206_hires.png	large
1880	sv4-207	https://images.pokemontcg.io/sv4/207_hires.png	large
1881	sv4-208	https://images.pokemontcg.io/sv4/208_hires.png	large
1882	sv4-214	https://images.pokemontcg.io/sv4/214_hires.png	large
1883	sv4-215	https://images.pokemontcg.io/sv4/215_hires.png	large
1884	sv4-217	https://images.pokemontcg.io/sv4/217_hires.png	large
1885	sv4-221	https://images.pokemontcg.io/sv4/221_hires.png	large
1886	sv4-222	https://images.pokemontcg.io/sv4/222_hires.png	large
1887	sv4-229	https://images.pokemontcg.io/sv4/229_hires.png	large
1888	sv4-231	https://images.pokemontcg.io/sv4/231_hires.png	large
1889	sv4-233	https://images.pokemontcg.io/sv4/233_hires.png	large
1890	sv4-237	https://images.pokemontcg.io/sv4/237_hires.png	large
1891	sv4-234	https://images.pokemontcg.io/sv4/234_hires.png	large
1892	sv4-235	https://images.pokemontcg.io/sv4/235_hires.png	large
1893	sv4-236	https://images.pokemontcg.io/sv4/236_hires.png	large
1894	sv4-238	https://images.pokemontcg.io/sv4/238_hires.png	large
1895	sv4-239	https://images.pokemontcg.io/sv4/239_hires.png	large
1896	sv4-240	https://images.pokemontcg.io/sv4/240_hires.png	large
1897	sv4-241	https://images.pokemontcg.io/sv4/241_hires.png	large
1898	sv4-242	https://images.pokemontcg.io/sv4/242_hires.png	large
1899	sv4-247	https://images.pokemontcg.io/sv4/247_hires.png	large
1900	sv4-249	https://images.pokemontcg.io/sv4/249_hires.png	large
1901	sv4-250	https://images.pokemontcg.io/sv4/250_hires.png	large
1902	sv4-248	https://images.pokemontcg.io/sv4/248_hires.png	large
1903	sv4-243	https://images.pokemontcg.io/sv4/243_hires.png	large
1904	sv4-245	https://images.pokemontcg.io/sv4/245_hires.png	large
1905	sv4-246	https://images.pokemontcg.io/sv4/246_hires.png	large
1906	sv4-251	https://images.pokemontcg.io/sv4/251_hires.png	large
1907	sv4pt5-1	https://images.pokemontcg.io/sv4pt5/1.png	small
1908	sv4pt5-2	https://images.pokemontcg.io/sv4pt5/2.png	small
1909	sv4pt5-3	https://images.pokemontcg.io/sv4pt5/3.png	small
1910	sv4pt5-4	https://images.pokemontcg.io/sv4pt5/4.png	small
1911	sv4pt5-5	https://images.pokemontcg.io/sv4pt5/5.png	small
1912	sv4pt5-6	https://images.pokemontcg.io/sv4pt5/6.png	small
1913	sv4pt5-7	https://images.pokemontcg.io/sv4pt5/7.png	small
1914	sv4pt5-8	https://images.pokemontcg.io/sv4pt5/8.png	small
1915	sv4pt5-9	https://images.pokemontcg.io/sv4pt5/9.png	small
1916	sv4pt5-10	https://images.pokemontcg.io/sv4pt5/10.png	small
1917	sv4pt5-11	https://images.pokemontcg.io/sv4pt5/11.png	small
1918	sv4pt5-12	https://images.pokemontcg.io/sv4pt5/12.png	small
1919	sv4pt5-13	https://images.pokemontcg.io/sv4pt5/13.png	small
1920	sv4pt5-14	https://images.pokemontcg.io/sv4pt5/14.png	small
1921	sv4pt5-15	https://images.pokemontcg.io/sv4pt5/15.png	small
1922	sv4pt5-16	https://images.pokemontcg.io/sv4pt5/16.png	small
1923	sv4pt5-17	https://images.pokemontcg.io/sv4pt5/17.png	small
1924	sv4pt5-18	https://images.pokemontcg.io/sv4pt5/18.png	small
1925	sv4pt5-19	https://images.pokemontcg.io/sv4pt5/19.png	small
1926	sv4pt5-20	https://images.pokemontcg.io/sv4pt5/20.png	small
1927	sv4pt5-21	https://images.pokemontcg.io/sv4pt5/21.png	small
1928	sv4pt5-22	https://images.pokemontcg.io/sv4pt5/22.png	small
1929	sv4pt5-23	https://images.pokemontcg.io/sv4pt5/23.png	small
1930	sv4pt5-24	https://images.pokemontcg.io/sv4pt5/24.png	small
1931	sv4pt5-25	https://images.pokemontcg.io/sv4pt5/25.png	small
1932	sv4pt5-26	https://images.pokemontcg.io/sv4pt5/26.png	small
1933	sv4pt5-27	https://images.pokemontcg.io/sv4pt5/27.png	small
1934	sv4pt5-28	https://images.pokemontcg.io/sv4pt5/28.png	small
1935	sv4pt5-29	https://images.pokemontcg.io/sv4pt5/29.png	small
1936	sv4pt5-30	https://images.pokemontcg.io/sv4pt5/30.png	small
1937	sv4pt5-31	https://images.pokemontcg.io/sv4pt5/31.png	small
1938	sv4pt5-32	https://images.pokemontcg.io/sv4pt5/32.png	small
1939	sv4pt5-33	https://images.pokemontcg.io/sv4pt5/33.png	small
1940	sv4pt5-34	https://images.pokemontcg.io/sv4pt5/34.png	small
1941	sv4pt5-35	https://images.pokemontcg.io/sv4pt5/35.png	small
1942	sv4pt5-36	https://images.pokemontcg.io/sv4pt5/36.png	small
1943	sv4pt5-37	https://images.pokemontcg.io/sv4pt5/37.png	small
1944	sv4pt5-38	https://images.pokemontcg.io/sv4pt5/38.png	small
1945	sv4pt5-39	https://images.pokemontcg.io/sv4pt5/39.png	small
1946	sv4pt5-40	https://images.pokemontcg.io/sv4pt5/40.png	small
1947	sv4pt5-41	https://images.pokemontcg.io/sv4pt5/41.png	small
1948	sv4pt5-42	https://images.pokemontcg.io/sv4pt5/42.png	small
1949	sv4pt5-43	https://images.pokemontcg.io/sv4pt5/43.png	small
1950	sv4pt5-44	https://images.pokemontcg.io/sv4pt5/44.png	small
1951	sv4pt5-45	https://images.pokemontcg.io/sv4pt5/45.png	small
1952	sv4pt5-46	https://images.pokemontcg.io/sv4pt5/46.png	small
1953	sv4pt5-47	https://images.pokemontcg.io/sv4pt5/47.png	small
1954	sv4pt5-48	https://images.pokemontcg.io/sv4pt5/48.png	small
1955	sv4pt5-49	https://images.pokemontcg.io/sv4pt5/49.png	small
1956	sv4pt5-50	https://images.pokemontcg.io/sv4pt5/50.png	small
1957	sv4pt5-51	https://images.pokemontcg.io/sv4pt5/51.png	small
1958	sv4pt5-52	https://images.pokemontcg.io/sv4pt5/52.png	small
1959	sv4pt5-53	https://images.pokemontcg.io/sv4pt5/53.png	small
1960	sv4pt5-54	https://images.pokemontcg.io/sv4pt5/54.png	small
1961	sv4pt5-55	https://images.pokemontcg.io/sv4pt5/55.png	small
1962	sv4pt5-56	https://images.pokemontcg.io/sv4pt5/56.png	small
1963	sv4pt5-57	https://images.pokemontcg.io/sv4pt5/57.png	small
1964	sv4pt5-58	https://images.pokemontcg.io/sv4pt5/58.png	small
1965	sv4pt5-59	https://images.pokemontcg.io/sv4pt5/59.png	small
1966	sv4pt5-60	https://images.pokemontcg.io/sv4pt5/60.png	small
1967	sv4pt5-61	https://images.pokemontcg.io/sv4pt5/61.png	small
1968	sv4pt5-62	https://images.pokemontcg.io/sv4pt5/62.png	small
1969	sv4pt5-63	https://images.pokemontcg.io/sv4pt5/63.png	small
1970	sv4pt5-64	https://images.pokemontcg.io/sv4pt5/64.png	small
1971	sv4pt5-65	https://images.pokemontcg.io/sv4pt5/65.png	small
1972	sv4pt5-66	https://images.pokemontcg.io/sv4pt5/66.png	small
1973	sv4pt5-67	https://images.pokemontcg.io/sv4pt5/67.png	small
1974	sv4pt5-68	https://images.pokemontcg.io/sv4pt5/68.png	small
1975	sv4pt5-69	https://images.pokemontcg.io/sv4pt5/69.png	small
1976	sv4pt5-70	https://images.pokemontcg.io/sv4pt5/70.png	small
1977	sv4pt5-71	https://images.pokemontcg.io/sv4pt5/71.png	small
1978	sv4pt5-72	https://images.pokemontcg.io/sv4pt5/72.png	small
1979	sv4pt5-73	https://images.pokemontcg.io/sv4pt5/73.png	small
1980	sv4pt5-74	https://images.pokemontcg.io/sv4pt5/74.png	small
1981	sv4pt5-75	https://images.pokemontcg.io/sv4pt5/75.png	small
1982	sv4pt5-76	https://images.pokemontcg.io/sv4pt5/76.png	small
1983	sv4pt5-77	https://images.pokemontcg.io/sv4pt5/77.png	small
1984	sv4pt5-78	https://images.pokemontcg.io/sv4pt5/78.png	small
1985	sv4pt5-79	https://images.pokemontcg.io/sv4pt5/79.png	small
1986	sv4pt5-80	https://images.pokemontcg.io/sv4pt5/80.png	small
1987	sv4pt5-81	https://images.pokemontcg.io/sv4pt5/81.png	small
1988	sv4pt5-82	https://images.pokemontcg.io/sv4pt5/82.png	small
1989	sv4pt5-83	https://images.pokemontcg.io/sv4pt5/83.png	small
1990	sv4pt5-84	https://images.pokemontcg.io/sv4pt5/84.png	small
1991	sv4pt5-85	https://images.pokemontcg.io/sv4pt5/85.png	small
1992	sv4pt5-86	https://images.pokemontcg.io/sv4pt5/86.png	small
1993	sv4pt5-87	https://images.pokemontcg.io/sv4pt5/87.png	small
1994	sv4pt5-88	https://images.pokemontcg.io/sv4pt5/88.png	small
1995	sv4pt5-89	https://images.pokemontcg.io/sv4pt5/89.png	small
1996	sv4pt5-90	https://images.pokemontcg.io/sv4pt5/90.png	small
1997	sv4pt5-91	https://images.pokemontcg.io/sv4pt5/91.png	small
1998	sv4pt5-92	https://images.pokemontcg.io/sv4pt5/92.png	small
1999	sv4pt5-93	https://images.pokemontcg.io/sv4pt5/93.png	small
2000	sv4pt5-94	https://images.pokemontcg.io/sv4pt5/94.png	small
2001	sv4pt5-95	https://images.pokemontcg.io/sv4pt5/95.png	small
2002	sv4pt5-96	https://images.pokemontcg.io/sv4pt5/96.png	small
2003	sv4pt5-97	https://images.pokemontcg.io/sv4pt5/97.png	small
2004	sv4pt5-98	https://images.pokemontcg.io/sv4pt5/98.png	small
2005	sv4pt5-99	https://images.pokemontcg.io/sv4pt5/99.png	small
2006	sv4pt5-100	https://images.pokemontcg.io/sv4pt5/100.png	small
2007	sv4pt5-101	https://images.pokemontcg.io/sv4pt5/101.png	small
2008	sv4pt5-102	https://images.pokemontcg.io/sv4pt5/102.png	small
2009	sv4pt5-103	https://images.pokemontcg.io/sv4pt5/103.png	small
2010	sv4pt5-104	https://images.pokemontcg.io/sv4pt5/104.png	small
2011	sv4pt5-105	https://images.pokemontcg.io/sv4pt5/105.png	small
2012	sv4pt5-106	https://images.pokemontcg.io/sv4pt5/106.png	small
2013	sv4pt5-107	https://images.pokemontcg.io/sv4pt5/107.png	small
2014	sv4pt5-108	https://images.pokemontcg.io/sv4pt5/108.png	small
2015	sv4pt5-109	https://images.pokemontcg.io/sv4pt5/109.png	small
2016	sv4pt5-110	https://images.pokemontcg.io/sv4pt5/110.png	small
2017	sv4pt5-111	https://images.pokemontcg.io/sv4pt5/111.png	small
2018	sv4pt5-112	https://images.pokemontcg.io/sv4pt5/112.png	small
2019	sv4pt5-113	https://images.pokemontcg.io/sv4pt5/113.png	small
2020	sv4pt5-114	https://images.pokemontcg.io/sv4pt5/114.png	small
2021	sv4pt5-115	https://images.pokemontcg.io/sv4pt5/115.png	small
2022	sv4pt5-116	https://images.pokemontcg.io/sv4pt5/116.png	small
2023	sv4pt5-117	https://images.pokemontcg.io/sv4pt5/117.png	small
2024	sv4pt5-118	https://images.pokemontcg.io/sv4pt5/118.png	small
2025	sv4pt5-119	https://images.pokemontcg.io/sv4pt5/119.png	small
2026	sv4pt5-120	https://images.pokemontcg.io/sv4pt5/120.png	small
2027	sv4pt5-121	https://images.pokemontcg.io/sv4pt5/121.png	small
2028	sv4pt5-122	https://images.pokemontcg.io/sv4pt5/122.png	small
2029	sv4pt5-123	https://images.pokemontcg.io/sv4pt5/123.png	small
2030	sv4pt5-124	https://images.pokemontcg.io/sv4pt5/124.png	small
2031	sv4pt5-125	https://images.pokemontcg.io/sv4pt5/125.png	small
2032	sv4pt5-126	https://images.pokemontcg.io/sv4pt5/126.png	small
2033	sv4pt5-127	https://images.pokemontcg.io/sv4pt5/127.png	small
2034	sv4pt5-128	https://images.pokemontcg.io/sv4pt5/128.png	small
2035	sv4pt5-129	https://images.pokemontcg.io/sv4pt5/129.png	small
2036	sv4pt5-130	https://images.pokemontcg.io/sv4pt5/130.png	small
2037	sv4pt5-131	https://images.pokemontcg.io/sv4pt5/131.png	small
2038	sv4pt5-132	https://images.pokemontcg.io/sv4pt5/132.png	small
2039	sv4pt5-133	https://images.pokemontcg.io/sv4pt5/133.png	small
2040	sv4pt5-134	https://images.pokemontcg.io/sv4pt5/134.png	small
2041	sv4pt5-135	https://images.pokemontcg.io/sv4pt5/135.png	small
2042	sv4pt5-136	https://images.pokemontcg.io/sv4pt5/136.png	small
2043	sv4pt5-137	https://images.pokemontcg.io/sv4pt5/137.png	small
2044	sv4pt5-138	https://images.pokemontcg.io/sv4pt5/138.png	small
2045	sv4pt5-139	https://images.pokemontcg.io/sv4pt5/139.png	small
2046	sv4pt5-140	https://images.pokemontcg.io/sv4pt5/140.png	small
2047	sv4pt5-141	https://images.pokemontcg.io/sv4pt5/141.png	small
2048	sv4pt5-142	https://images.pokemontcg.io/sv4pt5/142.png	small
2049	sv4pt5-143	https://images.pokemontcg.io/sv4pt5/143.png	small
2050	sv4pt5-144	https://images.pokemontcg.io/sv4pt5/144.png	small
2051	sv4pt5-145	https://images.pokemontcg.io/sv4pt5/145.png	small
2052	sv4pt5-146	https://images.pokemontcg.io/sv4pt5/146.png	small
2053	sv4pt5-147	https://images.pokemontcg.io/sv4pt5/147.png	small
2054	sv4pt5-148	https://images.pokemontcg.io/sv4pt5/148.png	small
2055	sv4pt5-149	https://images.pokemontcg.io/sv4pt5/149.png	small
2056	sv4pt5-150	https://images.pokemontcg.io/sv4pt5/150.png	small
2057	sv4pt5-151	https://images.pokemontcg.io/sv4pt5/151.png	small
2058	sv4pt5-152	https://images.pokemontcg.io/sv4pt5/152.png	small
2059	sv4pt5-153	https://images.pokemontcg.io/sv4pt5/153.png	small
2060	sv4pt5-154	https://images.pokemontcg.io/sv4pt5/154.png	small
2061	sv4pt5-155	https://images.pokemontcg.io/sv4pt5/155.png	small
2062	sv4pt5-156	https://images.pokemontcg.io/sv4pt5/156.png	small
2063	sv4pt5-157	https://images.pokemontcg.io/sv4pt5/157.png	small
2064	sv4pt5-158	https://images.pokemontcg.io/sv4pt5/158.png	small
2065	sv4pt5-159	https://images.pokemontcg.io/sv4pt5/159.png	small
2066	sv4pt5-160	https://images.pokemontcg.io/sv4pt5/160.png	small
2067	sv4pt5-161	https://images.pokemontcg.io/sv4pt5/161.png	small
2068	sv4pt5-162	https://images.pokemontcg.io/sv4pt5/162.png	small
2069	sv4pt5-163	https://images.pokemontcg.io/sv4pt5/163.png	small
2070	sv4pt5-164	https://images.pokemontcg.io/sv4pt5/164.png	small
2071	sv4pt5-165	https://images.pokemontcg.io/sv4pt5/165.png	small
2072	sv4pt5-166	https://images.pokemontcg.io/sv4pt5/166.png	small
2073	sv4pt5-167	https://images.pokemontcg.io/sv4pt5/167.png	small
2074	sv4pt5-168	https://images.pokemontcg.io/sv4pt5/168.png	small
2075	sv4pt5-169	https://images.pokemontcg.io/sv4pt5/169.png	small
2076	sv4pt5-170	https://images.pokemontcg.io/sv4pt5/170.png	small
2077	sv4pt5-171	https://images.pokemontcg.io/sv4pt5/171.png	small
2078	sv4pt5-172	https://images.pokemontcg.io/sv4pt5/172.png	small
2079	sv4pt5-173	https://images.pokemontcg.io/sv4pt5/173.png	small
2080	sv4pt5-174	https://images.pokemontcg.io/sv4pt5/174.png	small
2081	sv4pt5-175	https://images.pokemontcg.io/sv4pt5/175.png	small
2082	sv4pt5-176	https://images.pokemontcg.io/sv4pt5/176.png	small
2083	sv4pt5-177	https://images.pokemontcg.io/sv4pt5/177.png	small
2084	sv4pt5-178	https://images.pokemontcg.io/sv4pt5/178.png	small
2085	sv4pt5-179	https://images.pokemontcg.io/sv4pt5/179.png	small
2086	sv4pt5-180	https://images.pokemontcg.io/sv4pt5/180.png	small
2087	sv4pt5-181	https://images.pokemontcg.io/sv4pt5/181.png	small
2088	sv4pt5-182	https://images.pokemontcg.io/sv4pt5/182.png	small
2089	sv4pt5-183	https://images.pokemontcg.io/sv4pt5/183.png	small
2090	sv4pt5-184	https://images.pokemontcg.io/sv4pt5/184.png	small
2091	sv4pt5-185	https://images.pokemontcg.io/sv4pt5/185.png	small
2092	sv4pt5-186	https://images.pokemontcg.io/sv4pt5/186.png	small
2093	sv4pt5-187	https://images.pokemontcg.io/sv4pt5/187.png	small
2094	sv4pt5-188	https://images.pokemontcg.io/sv4pt5/188.png	small
2095	sv4pt5-189	https://images.pokemontcg.io/sv4pt5/189.png	small
2096	sv4pt5-190	https://images.pokemontcg.io/sv4pt5/190.png	small
2097	sv4pt5-191	https://images.pokemontcg.io/sv4pt5/191.png	small
2098	sv4pt5-192	https://images.pokemontcg.io/sv4pt5/192.png	small
2099	sv4pt5-193	https://images.pokemontcg.io/sv4pt5/193.png	small
2100	sv4pt5-194	https://images.pokemontcg.io/sv4pt5/194.png	small
2101	sv4pt5-195	https://images.pokemontcg.io/sv4pt5/195.png	small
2102	sv4pt5-196	https://images.pokemontcg.io/sv4pt5/196.png	small
2103	sv4pt5-197	https://images.pokemontcg.io/sv4pt5/197.png	small
2104	sv4pt5-198	https://images.pokemontcg.io/sv4pt5/198.png	small
2105	sv4pt5-199	https://images.pokemontcg.io/sv4pt5/199.png	small
2106	sv4pt5-200	https://images.pokemontcg.io/sv4pt5/200.png	small
2107	sv4pt5-201	https://images.pokemontcg.io/sv4pt5/201.png	small
2108	sv4pt5-202	https://images.pokemontcg.io/sv4pt5/202.png	small
2109	sv4pt5-203	https://images.pokemontcg.io/sv4pt5/203.png	small
2110	sv4pt5-204	https://images.pokemontcg.io/sv4pt5/204.png	small
2111	sv4pt5-205	https://images.pokemontcg.io/sv4pt5/205.png	small
2112	sv4pt5-206	https://images.pokemontcg.io/sv4pt5/206.png	small
2113	sv4pt5-207	https://images.pokemontcg.io/sv4pt5/207.png	small
2114	sv4pt5-208	https://images.pokemontcg.io/sv4pt5/208.png	small
2115	sv4pt5-209	https://images.pokemontcg.io/sv4pt5/209.png	small
2116	sv4pt5-210	https://images.pokemontcg.io/sv4pt5/210.png	small
2117	sv4pt5-211	https://images.pokemontcg.io/sv4pt5/211.png	small
2118	sv4pt5-212	https://images.pokemontcg.io/sv4pt5/212.png	small
2119	sv4pt5-213	https://images.pokemontcg.io/sv4pt5/213.png	small
2120	sv4pt5-214	https://images.pokemontcg.io/sv4pt5/214.png	small
2121	sv4pt5-215	https://images.pokemontcg.io/sv4pt5/215.png	small
2122	sv4pt5-216	https://images.pokemontcg.io/sv4pt5/216.png	small
2123	sv4pt5-217	https://images.pokemontcg.io/sv4pt5/217.png	small
2124	sv4pt5-218	https://images.pokemontcg.io/sv4pt5/218.png	small
2125	sv4pt5-219	https://images.pokemontcg.io/sv4pt5/219.png	small
2126	sv4pt5-220	https://images.pokemontcg.io/sv4pt5/220.png	small
2127	sv4pt5-221	https://images.pokemontcg.io/sv4pt5/221.png	small
2128	sv4pt5-222	https://images.pokemontcg.io/sv4pt5/222.png	small
2129	sv4pt5-223	https://images.pokemontcg.io/sv4pt5/223.png	small
2130	sv4pt5-224	https://images.pokemontcg.io/sv4pt5/224.png	small
2131	sv4pt5-225	https://images.pokemontcg.io/sv4pt5/225.png	small
2132	sv4pt5-226	https://images.pokemontcg.io/sv4pt5/226.png	small
2133	sv4pt5-227	https://images.pokemontcg.io/sv4pt5/227.png	small
2134	sv4pt5-228	https://images.pokemontcg.io/sv4pt5/228.png	small
2135	sv4pt5-229	https://images.pokemontcg.io/sv4pt5/229.png	small
2136	sv4pt5-230	https://images.pokemontcg.io/sv4pt5/230.png	small
2137	sv4pt5-231	https://images.pokemontcg.io/sv4pt5/231.png	small
2138	sv4pt5-232	https://images.pokemontcg.io/sv4pt5/232.png	small
2139	sv4pt5-233	https://images.pokemontcg.io/sv4pt5/233.png	small
2140	sv4pt5-234	https://images.pokemontcg.io/sv4pt5/234.png	small
2141	sv4pt5-235	https://images.pokemontcg.io/sv4pt5/235.png	small
2142	sv4pt5-236	https://images.pokemontcg.io/sv4pt5/236.png	small
2143	sv4pt5-237	https://images.pokemontcg.io/sv4pt5/237.png	small
2144	sv4pt5-238	https://images.pokemontcg.io/sv4pt5/238.png	small
2145	sv4pt5-239	https://images.pokemontcg.io/sv4pt5/239.png	small
2146	sv4pt5-240	https://images.pokemontcg.io/sv4pt5/240.png	small
2147	sv4pt5-241	https://images.pokemontcg.io/sv4pt5/241.png	small
2148	sv4pt5-242	https://images.pokemontcg.io/sv4pt5/242.png	small
2149	sv4pt5-243	https://images.pokemontcg.io/sv4pt5/243.png	small
2150	sv4pt5-244	https://images.pokemontcg.io/sv4pt5/244.png	small
2151	sv4pt5-245	https://images.pokemontcg.io/sv4pt5/245.png	small
2152	sv4pt5-1	https://images.pokemontcg.io/sv4pt5/1_hires.png	large
2153	sv4pt5-2	https://images.pokemontcg.io/sv4pt5/2_hires.png	large
2154	sv4pt5-3	https://images.pokemontcg.io/sv4pt5/3_hires.png	large
2155	sv4pt5-4	https://images.pokemontcg.io/sv4pt5/4_hires.png	large
2156	sv4pt5-5	https://images.pokemontcg.io/sv4pt5/5_hires.png	large
2157	sv4pt5-6	https://images.pokemontcg.io/sv4pt5/6_hires.png	large
2158	sv4pt5-7	https://images.pokemontcg.io/sv4pt5/7_hires.png	large
2159	sv4pt5-8	https://images.pokemontcg.io/sv4pt5/8_hires.png	large
2160	sv4pt5-9	https://images.pokemontcg.io/sv4pt5/9_hires.png	large
2161	sv4pt5-10	https://images.pokemontcg.io/sv4pt5/10_hires.png	large
2162	sv4pt5-11	https://images.pokemontcg.io/sv4pt5/11_hires.png	large
2163	sv4pt5-12	https://images.pokemontcg.io/sv4pt5/12_hires.png	large
2164	sv4pt5-13	https://images.pokemontcg.io/sv4pt5/13_hires.png	large
2165	sv4pt5-14	https://images.pokemontcg.io/sv4pt5/14_hires.png	large
2166	sv4pt5-15	https://images.pokemontcg.io/sv4pt5/15_hires.png	large
2167	sv4pt5-16	https://images.pokemontcg.io/sv4pt5/16_hires.png	large
2168	sv4pt5-17	https://images.pokemontcg.io/sv4pt5/17_hires.png	large
2169	sv4pt5-18	https://images.pokemontcg.io/sv4pt5/18_hires.png	large
2170	sv4pt5-19	https://images.pokemontcg.io/sv4pt5/19_hires.png	large
2171	sv4pt5-20	https://images.pokemontcg.io/sv4pt5/20_hires.png	large
2172	sv4pt5-21	https://images.pokemontcg.io/sv4pt5/21_hires.png	large
2173	sv4pt5-22	https://images.pokemontcg.io/sv4pt5/22_hires.png	large
2174	sv4pt5-23	https://images.pokemontcg.io/sv4pt5/23_hires.png	large
2175	sv4pt5-24	https://images.pokemontcg.io/sv4pt5/24_hires.png	large
2176	sv4pt5-25	https://images.pokemontcg.io/sv4pt5/25_hires.png	large
2177	sv4pt5-26	https://images.pokemontcg.io/sv4pt5/26_hires.png	large
2178	sv4pt5-27	https://images.pokemontcg.io/sv4pt5/27_hires.png	large
2179	sv4pt5-28	https://images.pokemontcg.io/sv4pt5/28_hires.png	large
2180	sv4pt5-29	https://images.pokemontcg.io/sv4pt5/29_hires.png	large
2181	sv4pt5-30	https://images.pokemontcg.io/sv4pt5/30_hires.png	large
2182	sv4pt5-31	https://images.pokemontcg.io/sv4pt5/31_hires.png	large
2183	sv4pt5-32	https://images.pokemontcg.io/sv4pt5/32_hires.png	large
2184	sv4pt5-33	https://images.pokemontcg.io/sv4pt5/33_hires.png	large
2185	sv4pt5-34	https://images.pokemontcg.io/sv4pt5/34_hires.png	large
2186	sv4pt5-35	https://images.pokemontcg.io/sv4pt5/35_hires.png	large
2187	sv4pt5-36	https://images.pokemontcg.io/sv4pt5/36_hires.png	large
2188	sv4pt5-37	https://images.pokemontcg.io/sv4pt5/37_hires.png	large
2189	sv4pt5-38	https://images.pokemontcg.io/sv4pt5/38_hires.png	large
2190	sv4pt5-39	https://images.pokemontcg.io/sv4pt5/39_hires.png	large
2191	sv4pt5-40	https://images.pokemontcg.io/sv4pt5/40_hires.png	large
2192	sv4pt5-41	https://images.pokemontcg.io/sv4pt5/41_hires.png	large
2193	sv4pt5-42	https://images.pokemontcg.io/sv4pt5/42_hires.png	large
2194	sv4pt5-43	https://images.pokemontcg.io/sv4pt5/43_hires.png	large
2195	sv4pt5-44	https://images.pokemontcg.io/sv4pt5/44_hires.png	large
2196	sv4pt5-45	https://images.pokemontcg.io/sv4pt5/45_hires.png	large
2197	sv4pt5-46	https://images.pokemontcg.io/sv4pt5/46_hires.png	large
2198	sv4pt5-47	https://images.pokemontcg.io/sv4pt5/47_hires.png	large
2199	sv4pt5-48	https://images.pokemontcg.io/sv4pt5/48_hires.png	large
2200	sv4pt5-49	https://images.pokemontcg.io/sv4pt5/49_hires.png	large
2201	sv4pt5-50	https://images.pokemontcg.io/sv4pt5/50_hires.png	large
2202	sv4pt5-51	https://images.pokemontcg.io/sv4pt5/51_hires.png	large
2203	sv4pt5-52	https://images.pokemontcg.io/sv4pt5/52_hires.png	large
2204	sv4pt5-53	https://images.pokemontcg.io/sv4pt5/53_hires.png	large
2205	sv4pt5-54	https://images.pokemontcg.io/sv4pt5/54_hires.png	large
2206	sv4pt5-55	https://images.pokemontcg.io/sv4pt5/55_hires.png	large
2207	sv4pt5-56	https://images.pokemontcg.io/sv4pt5/56_hires.png	large
2208	sv4pt5-57	https://images.pokemontcg.io/sv4pt5/57_hires.png	large
2209	sv4pt5-58	https://images.pokemontcg.io/sv4pt5/58_hires.png	large
2210	sv4pt5-59	https://images.pokemontcg.io/sv4pt5/59_hires.png	large
2211	sv4pt5-60	https://images.pokemontcg.io/sv4pt5/60_hires.png	large
2212	sv4pt5-61	https://images.pokemontcg.io/sv4pt5/61_hires.png	large
2213	sv4pt5-62	https://images.pokemontcg.io/sv4pt5/62_hires.png	large
2214	sv4pt5-63	https://images.pokemontcg.io/sv4pt5/63_hires.png	large
2215	sv4pt5-64	https://images.pokemontcg.io/sv4pt5/64_hires.png	large
2216	sv4pt5-65	https://images.pokemontcg.io/sv4pt5/65_hires.png	large
2217	sv4pt5-66	https://images.pokemontcg.io/sv4pt5/66_hires.png	large
2218	sv4pt5-67	https://images.pokemontcg.io/sv4pt5/67_hires.png	large
2219	sv4pt5-68	https://images.pokemontcg.io/sv4pt5/68_hires.png	large
2220	sv4pt5-69	https://images.pokemontcg.io/sv4pt5/69_hires.png	large
2221	sv4pt5-70	https://images.pokemontcg.io/sv4pt5/70_hires.png	large
2222	sv4pt5-71	https://images.pokemontcg.io/sv4pt5/71_hires.png	large
2223	sv4pt5-72	https://images.pokemontcg.io/sv4pt5/72_hires.png	large
2224	sv4pt5-73	https://images.pokemontcg.io/sv4pt5/73_hires.png	large
2225	sv4pt5-74	https://images.pokemontcg.io/sv4pt5/74_hires.png	large
2226	sv4pt5-75	https://images.pokemontcg.io/sv4pt5/75_hires.png	large
2227	sv4pt5-76	https://images.pokemontcg.io/sv4pt5/76_hires.png	large
2228	sv4pt5-77	https://images.pokemontcg.io/sv4pt5/77_hires.png	large
2229	sv4pt5-78	https://images.pokemontcg.io/sv4pt5/78_hires.png	large
2230	sv4pt5-79	https://images.pokemontcg.io/sv4pt5/79_hires.png	large
2231	sv4pt5-80	https://images.pokemontcg.io/sv4pt5/80_hires.png	large
2232	sv4pt5-81	https://images.pokemontcg.io/sv4pt5/81_hires.png	large
2233	sv4pt5-82	https://images.pokemontcg.io/sv4pt5/82_hires.png	large
2234	sv4pt5-83	https://images.pokemontcg.io/sv4pt5/83_hires.png	large
2235	sv4pt5-84	https://images.pokemontcg.io/sv4pt5/84_hires.png	large
2236	sv4pt5-85	https://images.pokemontcg.io/sv4pt5/85_hires.png	large
2237	sv4pt5-86	https://images.pokemontcg.io/sv4pt5/86_hires.png	large
2238	sv4pt5-87	https://images.pokemontcg.io/sv4pt5/87_hires.png	large
2239	sv4pt5-88	https://images.pokemontcg.io/sv4pt5/88_hires.png	large
2240	sv4pt5-89	https://images.pokemontcg.io/sv4pt5/89_hires.png	large
2241	sv4pt5-90	https://images.pokemontcg.io/sv4pt5/90_hires.png	large
2242	sv4pt5-91	https://images.pokemontcg.io/sv4pt5/91_hires.png	large
2243	sv4pt5-92	https://images.pokemontcg.io/sv4pt5/92_hires.png	large
2244	sv4pt5-93	https://images.pokemontcg.io/sv4pt5/93_hires.png	large
2245	sv4pt5-94	https://images.pokemontcg.io/sv4pt5/94_hires.png	large
2246	sv4pt5-95	https://images.pokemontcg.io/sv4pt5/95_hires.png	large
2247	sv4pt5-96	https://images.pokemontcg.io/sv4pt5/96_hires.png	large
2248	sv4pt5-97	https://images.pokemontcg.io/sv4pt5/97_hires.png	large
2249	sv4pt5-98	https://images.pokemontcg.io/sv4pt5/98_hires.png	large
2250	sv4pt5-99	https://images.pokemontcg.io/sv4pt5/99_hires.png	large
2251	sv4pt5-100	https://images.pokemontcg.io/sv4pt5/100_hires.png	large
2252	sv4pt5-101	https://images.pokemontcg.io/sv4pt5/101_hires.png	large
2253	sv4pt5-102	https://images.pokemontcg.io/sv4pt5/102_hires.png	large
2254	sv4pt5-103	https://images.pokemontcg.io/sv4pt5/103_hires.png	large
2255	sv4pt5-104	https://images.pokemontcg.io/sv4pt5/104_hires.png	large
2256	sv4pt5-105	https://images.pokemontcg.io/sv4pt5/105_hires.png	large
2257	sv4pt5-106	https://images.pokemontcg.io/sv4pt5/106_hires.png	large
2258	sv4pt5-107	https://images.pokemontcg.io/sv4pt5/107_hires.png	large
2259	sv4pt5-108	https://images.pokemontcg.io/sv4pt5/108_hires.png	large
2260	sv4pt5-109	https://images.pokemontcg.io/sv4pt5/109_hires.png	large
2261	sv4pt5-110	https://images.pokemontcg.io/sv4pt5/110_hires.png	large
2262	sv4pt5-111	https://images.pokemontcg.io/sv4pt5/111_hires.png	large
2263	sv4pt5-112	https://images.pokemontcg.io/sv4pt5/112_hires.png	large
2264	sv4pt5-113	https://images.pokemontcg.io/sv4pt5/113_hires.png	large
2265	sv4pt5-114	https://images.pokemontcg.io/sv4pt5/114_hires.png	large
2266	sv4pt5-115	https://images.pokemontcg.io/sv4pt5/115_hires.png	large
2267	sv4pt5-116	https://images.pokemontcg.io/sv4pt5/116_hires.png	large
2268	sv4pt5-117	https://images.pokemontcg.io/sv4pt5/117_hires.png	large
2269	sv4pt5-118	https://images.pokemontcg.io/sv4pt5/118_hires.png	large
2270	sv4pt5-119	https://images.pokemontcg.io/sv4pt5/119_hires.png	large
2271	sv4pt5-120	https://images.pokemontcg.io/sv4pt5/120_hires.png	large
2272	sv4pt5-121	https://images.pokemontcg.io/sv4pt5/121_hires.png	large
2273	sv4pt5-122	https://images.pokemontcg.io/sv4pt5/122_hires.png	large
2274	sv4pt5-123	https://images.pokemontcg.io/sv4pt5/123_hires.png	large
2275	sv4pt5-124	https://images.pokemontcg.io/sv4pt5/124_hires.png	large
2276	sv4pt5-125	https://images.pokemontcg.io/sv4pt5/125_hires.png	large
2277	sv4pt5-126	https://images.pokemontcg.io/sv4pt5/126_hires.png	large
2278	sv4pt5-127	https://images.pokemontcg.io/sv4pt5/127_hires.png	large
2279	sv4pt5-128	https://images.pokemontcg.io/sv4pt5/128_hires.png	large
2280	sv4pt5-129	https://images.pokemontcg.io/sv4pt5/129_hires.png	large
2281	sv4pt5-130	https://images.pokemontcg.io/sv4pt5/130_hires.png	large
2282	sv4pt5-131	https://images.pokemontcg.io/sv4pt5/131_hires.png	large
2283	sv4pt5-132	https://images.pokemontcg.io/sv4pt5/132_hires.png	large
2284	sv4pt5-133	https://images.pokemontcg.io/sv4pt5/133_hires.png	large
2285	sv4pt5-134	https://images.pokemontcg.io/sv4pt5/134_hires.png	large
2286	sv4pt5-135	https://images.pokemontcg.io/sv4pt5/135_hires.png	large
2287	sv4pt5-136	https://images.pokemontcg.io/sv4pt5/136_hires.png	large
2288	sv4pt5-137	https://images.pokemontcg.io/sv4pt5/137_hires.png	large
2289	sv4pt5-138	https://images.pokemontcg.io/sv4pt5/138_hires.png	large
2290	sv4pt5-139	https://images.pokemontcg.io/sv4pt5/139_hires.png	large
2291	sv4pt5-140	https://images.pokemontcg.io/sv4pt5/140_hires.png	large
2292	sv4pt5-141	https://images.pokemontcg.io/sv4pt5/141_hires.png	large
2293	sv4pt5-142	https://images.pokemontcg.io/sv4pt5/142_hires.png	large
2294	sv4pt5-143	https://images.pokemontcg.io/sv4pt5/143_hires.png	large
2295	sv4pt5-144	https://images.pokemontcg.io/sv4pt5/144_hires.png	large
2296	sv4pt5-145	https://images.pokemontcg.io/sv4pt5/145_hires.png	large
2297	sv4pt5-146	https://images.pokemontcg.io/sv4pt5/146_hires.png	large
2298	sv4pt5-147	https://images.pokemontcg.io/sv4pt5/147_hires.png	large
2299	sv4pt5-148	https://images.pokemontcg.io/sv4pt5/148_hires.png	large
2300	sv4pt5-149	https://images.pokemontcg.io/sv4pt5/149_hires.png	large
2301	sv4pt5-150	https://images.pokemontcg.io/sv4pt5/150_hires.png	large
2302	sv4pt5-151	https://images.pokemontcg.io/sv4pt5/151_hires.png	large
2303	sv4pt5-152	https://images.pokemontcg.io/sv4pt5/152_hires.png	large
2304	sv4pt5-153	https://images.pokemontcg.io/sv4pt5/153_hires.png	large
2305	sv4pt5-154	https://images.pokemontcg.io/sv4pt5/154_hires.png	large
2306	sv4pt5-155	https://images.pokemontcg.io/sv4pt5/155_hires.png	large
2307	sv4pt5-156	https://images.pokemontcg.io/sv4pt5/156_hires.png	large
2308	sv4pt5-157	https://images.pokemontcg.io/sv4pt5/157_hires.png	large
2309	sv4pt5-158	https://images.pokemontcg.io/sv4pt5/158_hires.png	large
2310	sv4pt5-159	https://images.pokemontcg.io/sv4pt5/159_hires.png	large
2311	sv4pt5-160	https://images.pokemontcg.io/sv4pt5/160_hires.png	large
2312	sv4pt5-161	https://images.pokemontcg.io/sv4pt5/161_hires.png	large
2313	sv4pt5-162	https://images.pokemontcg.io/sv4pt5/162_hires.png	large
2314	sv4pt5-163	https://images.pokemontcg.io/sv4pt5/163_hires.png	large
2315	sv4pt5-164	https://images.pokemontcg.io/sv4pt5/164_hires.png	large
2316	sv4pt5-165	https://images.pokemontcg.io/sv4pt5/165_hires.png	large
2317	sv4pt5-166	https://images.pokemontcg.io/sv4pt5/166_hires.png	large
2318	sv4pt5-167	https://images.pokemontcg.io/sv4pt5/167_hires.png	large
2319	sv4pt5-168	https://images.pokemontcg.io/sv4pt5/168_hires.png	large
2320	sv4pt5-169	https://images.pokemontcg.io/sv4pt5/169_hires.png	large
2321	sv4pt5-170	https://images.pokemontcg.io/sv4pt5/170_hires.png	large
2322	sv4pt5-171	https://images.pokemontcg.io/sv4pt5/171_hires.png	large
2323	sv4pt5-172	https://images.pokemontcg.io/sv4pt5/172_hires.png	large
2324	sv4pt5-173	https://images.pokemontcg.io/sv4pt5/173_hires.png	large
2325	sv4pt5-174	https://images.pokemontcg.io/sv4pt5/174_hires.png	large
2326	sv4pt5-175	https://images.pokemontcg.io/sv4pt5/175_hires.png	large
2327	sv4pt5-176	https://images.pokemontcg.io/sv4pt5/176_hires.png	large
2328	sv4pt5-177	https://images.pokemontcg.io/sv4pt5/177_hires.png	large
2329	sv4pt5-178	https://images.pokemontcg.io/sv4pt5/178_hires.png	large
2330	sv4pt5-179	https://images.pokemontcg.io/sv4pt5/179_hires.png	large
2331	sv4pt5-180	https://images.pokemontcg.io/sv4pt5/180_hires.png	large
2332	sv4pt5-181	https://images.pokemontcg.io/sv4pt5/181_hires.png	large
2333	sv4pt5-182	https://images.pokemontcg.io/sv4pt5/182_hires.png	large
2334	sv4pt5-183	https://images.pokemontcg.io/sv4pt5/183_hires.png	large
2335	sv4pt5-184	https://images.pokemontcg.io/sv4pt5/184_hires.png	large
2336	sv4pt5-185	https://images.pokemontcg.io/sv4pt5/185_hires.png	large
2337	sv4pt5-186	https://images.pokemontcg.io/sv4pt5/186_hires.png	large
2338	sv4pt5-187	https://images.pokemontcg.io/sv4pt5/187_hires.png	large
2339	sv4pt5-188	https://images.pokemontcg.io/sv4pt5/188_hires.png	large
2340	sv4pt5-189	https://images.pokemontcg.io/sv4pt5/189_hires.png	large
2341	sv4pt5-190	https://images.pokemontcg.io/sv4pt5/190_hires.png	large
2342	sv4pt5-191	https://images.pokemontcg.io/sv4pt5/191_hires.png	large
2343	sv4pt5-192	https://images.pokemontcg.io/sv4pt5/192_hires.png	large
2344	sv4pt5-193	https://images.pokemontcg.io/sv4pt5/193_hires.png	large
2345	sv4pt5-194	https://images.pokemontcg.io/sv4pt5/194_hires.png	large
2346	sv4pt5-195	https://images.pokemontcg.io/sv4pt5/195_hires.png	large
2347	sv4pt5-196	https://images.pokemontcg.io/sv4pt5/196_hires.png	large
2348	sv4pt5-197	https://images.pokemontcg.io/sv4pt5/197_hires.png	large
2349	sv4pt5-198	https://images.pokemontcg.io/sv4pt5/198_hires.png	large
2350	sv4pt5-199	https://images.pokemontcg.io/sv4pt5/199_hires.png	large
2351	sv4pt5-200	https://images.pokemontcg.io/sv4pt5/200_hires.png	large
2352	sv4pt5-201	https://images.pokemontcg.io/sv4pt5/201_hires.png	large
2353	sv4pt5-202	https://images.pokemontcg.io/sv4pt5/202_hires.png	large
2354	sv4pt5-203	https://images.pokemontcg.io/sv4pt5/203_hires.png	large
2355	sv4pt5-204	https://images.pokemontcg.io/sv4pt5/204_hires.png	large
2356	sv4pt5-205	https://images.pokemontcg.io/sv4pt5/205_hires.png	large
2357	sv4pt5-206	https://images.pokemontcg.io/sv4pt5/206_hires.png	large
2358	sv4pt5-207	https://images.pokemontcg.io/sv4pt5/207_hires.png	large
2359	sv4pt5-208	https://images.pokemontcg.io/sv4pt5/208_hires.png	large
2360	sv4pt5-209	https://images.pokemontcg.io/sv4pt5/209_hires.png	large
2361	sv4pt5-210	https://images.pokemontcg.io/sv4pt5/210_hires.png	large
2362	sv4pt5-211	https://images.pokemontcg.io/sv4pt5/211_hires.png	large
2363	sv4pt5-212	https://images.pokemontcg.io/sv4pt5/212_hires.png	large
2364	sv4pt5-213	https://images.pokemontcg.io/sv4pt5/213_hires.png	large
2365	sv4pt5-214	https://images.pokemontcg.io/sv4pt5/214_hires.png	large
2366	sv4pt5-215	https://images.pokemontcg.io/sv4pt5/215_hires.png	large
2367	sv4pt5-216	https://images.pokemontcg.io/sv4pt5/216_hires.png	large
2368	sv4pt5-217	https://images.pokemontcg.io/sv4pt5/217_hires.png	large
2369	sv4pt5-218	https://images.pokemontcg.io/sv4pt5/218_hires.png	large
2370	sv4pt5-219	https://images.pokemontcg.io/sv4pt5/219_hires.png	large
2371	sv4pt5-220	https://images.pokemontcg.io/sv4pt5/220_hires.png	large
2372	sv4pt5-221	https://images.pokemontcg.io/sv4pt5/221_hires.png	large
2373	sv4pt5-222	https://images.pokemontcg.io/sv4pt5/222_hires.png	large
2374	sv4pt5-223	https://images.pokemontcg.io/sv4pt5/223_hires.png	large
2375	sv4pt5-224	https://images.pokemontcg.io/sv4pt5/224_hires.png	large
2376	sv4pt5-225	https://images.pokemontcg.io/sv4pt5/225_hires.png	large
2377	sv4pt5-226	https://images.pokemontcg.io/sv4pt5/226_hires.png	large
2378	sv4pt5-227	https://images.pokemontcg.io/sv4pt5/227_hires.png	large
2379	sv4pt5-228	https://images.pokemontcg.io/sv4pt5/228_hires.png	large
2380	sv4pt5-229	https://images.pokemontcg.io/sv4pt5/229_hires.png	large
2381	sv4pt5-230	https://images.pokemontcg.io/sv4pt5/230_hires.png	large
2382	sv4pt5-231	https://images.pokemontcg.io/sv4pt5/231_hires.png	large
2383	sv4pt5-232	https://images.pokemontcg.io/sv4pt5/232_hires.png	large
2384	sv4pt5-233	https://images.pokemontcg.io/sv4pt5/233_hires.png	large
2385	sv4pt5-234	https://images.pokemontcg.io/sv4pt5/234_hires.png	large
2386	sv4pt5-235	https://images.pokemontcg.io/sv4pt5/235_hires.png	large
2387	sv4pt5-236	https://images.pokemontcg.io/sv4pt5/236_hires.png	large
2388	sv4pt5-237	https://images.pokemontcg.io/sv4pt5/237_hires.png	large
2389	sv4pt5-238	https://images.pokemontcg.io/sv4pt5/238_hires.png	large
2390	sv4pt5-239	https://images.pokemontcg.io/sv4pt5/239_hires.png	large
2391	sv4pt5-240	https://images.pokemontcg.io/sv4pt5/240_hires.png	large
2392	sv4pt5-241	https://images.pokemontcg.io/sv4pt5/241_hires.png	large
2393	sv4pt5-242	https://images.pokemontcg.io/sv4pt5/242_hires.png	large
2394	sv4pt5-243	https://images.pokemontcg.io/sv4pt5/243_hires.png	large
2395	sv4pt5-244	https://images.pokemontcg.io/sv4pt5/244_hires.png	large
2396	sv4pt5-245	https://images.pokemontcg.io/sv4pt5/245_hires.png	large
2397	sv5-1	https://images.pokemontcg.io/sv5/1.png	small
2398	sv5-2	https://images.pokemontcg.io/sv5/2.png	small
2399	sv5-3	https://images.pokemontcg.io/sv5/3.png	small
2400	sv5-4	https://images.pokemontcg.io/sv5/4.png	small
2401	sv5-5	https://images.pokemontcg.io/sv5/5.png	small
2402	sv5-6	https://images.pokemontcg.io/sv5/6.png	small
2403	sv5-7	https://images.pokemontcg.io/sv5/7.png	small
2404	sv5-8	https://images.pokemontcg.io/sv5/8.png	small
2405	sv5-9	https://images.pokemontcg.io/sv5/9.png	small
2406	sv5-10	https://images.pokemontcg.io/sv5/10.png	small
2407	sv5-11	https://images.pokemontcg.io/sv5/11.png	small
2408	sv5-12	https://images.pokemontcg.io/sv5/12.png	small
2409	sv5-13	https://images.pokemontcg.io/sv5/13.png	small
2410	sv5-14	https://images.pokemontcg.io/sv5/14.png	small
2411	sv5-15	https://images.pokemontcg.io/sv5/15.png	small
2412	sv5-16	https://images.pokemontcg.io/sv5/16.png	small
2413	sv5-17	https://images.pokemontcg.io/sv5/17.png	small
2414	sv5-18	https://images.pokemontcg.io/sv5/18.png	small
2415	sv5-19	https://images.pokemontcg.io/sv5/19.png	small
2416	sv5-20	https://images.pokemontcg.io/sv5/20.png	small
2417	sv5-21	https://images.pokemontcg.io/sv5/21.png	small
2418	sv5-22	https://images.pokemontcg.io/sv5/22.png	small
2419	sv5-23	https://images.pokemontcg.io/sv5/23.png	small
2420	sv5-24	https://images.pokemontcg.io/sv5/24.png	small
2421	sv5-25	https://images.pokemontcg.io/sv5/25.png	small
2422	sv5-26	https://images.pokemontcg.io/sv5/26.png	small
2423	sv5-27	https://images.pokemontcg.io/sv5/27.png	small
2424	sv5-28	https://images.pokemontcg.io/sv5/28.png	small
2425	sv5-29	https://images.pokemontcg.io/sv5/29.png	small
2426	sv5-30	https://images.pokemontcg.io/sv5/30.png	small
2427	sv5-31	https://images.pokemontcg.io/sv5/31.png	small
2428	sv5-32	https://images.pokemontcg.io/sv5/32.png	small
2429	sv5-33	https://images.pokemontcg.io/sv5/33.png	small
2430	sv5-34	https://images.pokemontcg.io/sv5/34.png	small
2431	sv5-35	https://images.pokemontcg.io/sv5/35.png	small
2432	sv5-36	https://images.pokemontcg.io/sv5/36.png	small
2433	sv5-37	https://images.pokemontcg.io/sv5/37.png	small
2434	sv5-38	https://images.pokemontcg.io/sv5/38.png	small
2435	sv5-39	https://images.pokemontcg.io/sv5/39.png	small
2436	sv5-40	https://images.pokemontcg.io/sv5/40.png	small
2437	sv5-41	https://images.pokemontcg.io/sv5/41.png	small
2438	sv5-42	https://images.pokemontcg.io/sv5/42.png	small
2439	sv5-43	https://images.pokemontcg.io/sv5/43.png	small
2440	sv5-44	https://images.pokemontcg.io/sv5/44.png	small
2441	sv5-45	https://images.pokemontcg.io/sv5/45.png	small
2442	sv5-46	https://images.pokemontcg.io/sv5/46.png	small
2443	sv5-47	https://images.pokemontcg.io/sv5/47.png	small
2444	sv5-48	https://images.pokemontcg.io/sv5/48.png	small
2445	sv5-49	https://images.pokemontcg.io/sv5/49.png	small
2446	sv5-50	https://images.pokemontcg.io/sv5/50.png	small
2447	sv5-51	https://images.pokemontcg.io/sv5/51.png	small
2448	sv5-52	https://images.pokemontcg.io/sv5/52.png	small
2449	sv5-53	https://images.pokemontcg.io/sv5/53.png	small
2450	sv5-54	https://images.pokemontcg.io/sv5/54.png	small
2451	sv5-55	https://images.pokemontcg.io/sv5/55.png	small
2452	sv5-56	https://images.pokemontcg.io/sv5/56.png	small
2453	sv5-57	https://images.pokemontcg.io/sv5/57.png	small
2454	sv5-58	https://images.pokemontcg.io/sv5/58.png	small
2455	sv5-59	https://images.pokemontcg.io/sv5/59.png	small
2456	sv5-60	https://images.pokemontcg.io/sv5/60.png	small
2457	sv5-61	https://images.pokemontcg.io/sv5/61.png	small
2458	sv5-62	https://images.pokemontcg.io/sv5/62.png	small
2459	sv5-63	https://images.pokemontcg.io/sv5/63.png	small
2460	sv5-64	https://images.pokemontcg.io/sv5/64.png	small
2461	sv5-65	https://images.pokemontcg.io/sv5/65.png	small
2462	sv5-66	https://images.pokemontcg.io/sv5/66.png	small
2463	sv5-67	https://images.pokemontcg.io/sv5/67.png	small
2464	sv5-68	https://images.pokemontcg.io/sv5/68.png	small
2465	sv5-69	https://images.pokemontcg.io/sv5/69.png	small
2466	sv5-70	https://images.pokemontcg.io/sv5/70.png	small
2467	sv5-71	https://images.pokemontcg.io/sv5/71.png	small
2468	sv5-72	https://images.pokemontcg.io/sv5/72.png	small
2469	sv5-73	https://images.pokemontcg.io/sv5/73.png	small
2470	sv5-74	https://images.pokemontcg.io/sv5/74.png	small
2471	sv5-75	https://images.pokemontcg.io/sv5/75.png	small
2472	sv5-76	https://images.pokemontcg.io/sv5/76.png	small
2473	sv5-77	https://images.pokemontcg.io/sv5/77.png	small
2474	sv5-78	https://images.pokemontcg.io/sv5/78.png	small
2475	sv5-79	https://images.pokemontcg.io/sv5/79.png	small
2476	sv5-80	https://images.pokemontcg.io/sv5/80.png	small
2477	sv5-81	https://images.pokemontcg.io/sv5/81.png	small
2478	sv5-82	https://images.pokemontcg.io/sv5/82.png	small
2479	sv5-83	https://images.pokemontcg.io/sv5/83.png	small
2480	sv5-84	https://images.pokemontcg.io/sv5/84.png	small
2481	sv5-85	https://images.pokemontcg.io/sv5/85.png	small
2482	sv5-86	https://images.pokemontcg.io/sv5/86.png	small
2483	sv5-87	https://images.pokemontcg.io/sv5/87.png	small
2484	sv5-88	https://images.pokemontcg.io/sv5/88.png	small
2485	sv5-89	https://images.pokemontcg.io/sv5/89.png	small
2486	sv5-90	https://images.pokemontcg.io/sv5/90.png	small
2487	sv5-91	https://images.pokemontcg.io/sv5/91.png	small
2488	sv5-92	https://images.pokemontcg.io/sv5/92.png	small
2489	sv5-93	https://images.pokemontcg.io/sv5/93.png	small
2490	sv5-94	https://images.pokemontcg.io/sv5/94.png	small
2491	sv5-95	https://images.pokemontcg.io/sv5/95.png	small
2492	sv5-96	https://images.pokemontcg.io/sv5/96.png	small
2493	sv5-97	https://images.pokemontcg.io/sv5/97.png	small
2494	sv5-98	https://images.pokemontcg.io/sv5/98.png	small
2495	sv5-99	https://images.pokemontcg.io/sv5/99.png	small
2496	sv5-100	https://images.pokemontcg.io/sv5/100.png	small
2497	sv5-101	https://images.pokemontcg.io/sv5/101.png	small
2498	sv5-102	https://images.pokemontcg.io/sv5/102.png	small
2499	sv5-103	https://images.pokemontcg.io/sv5/103.png	small
2500	sv5-104	https://images.pokemontcg.io/sv5/104.png	small
2501	sv5-105	https://images.pokemontcg.io/sv5/105.png	small
2502	sv5-106	https://images.pokemontcg.io/sv5/106.png	small
2503	sv5-107	https://images.pokemontcg.io/sv5/107.png	small
2504	sv5-108	https://images.pokemontcg.io/sv5/108.png	small
2505	sv5-109	https://images.pokemontcg.io/sv5/109.png	small
2506	sv5-110	https://images.pokemontcg.io/sv5/110.png	small
2507	sv5-111	https://images.pokemontcg.io/sv5/111.png	small
2508	sv5-112	https://images.pokemontcg.io/sv5/112.png	small
2509	sv5-113	https://images.pokemontcg.io/sv5/113.png	small
2510	sv5-114	https://images.pokemontcg.io/sv5/114.png	small
2511	sv5-115	https://images.pokemontcg.io/sv5/115.png	small
2512	sv5-116	https://images.pokemontcg.io/sv5/116.png	small
2513	sv5-117	https://images.pokemontcg.io/sv5/117.png	small
2514	sv5-118	https://images.pokemontcg.io/sv5/118.png	small
2515	sv5-119	https://images.pokemontcg.io/sv5/119.png	small
2516	sv5-120	https://images.pokemontcg.io/sv5/120.png	small
2517	sv5-121	https://images.pokemontcg.io/sv5/121.png	small
2518	sv5-122	https://images.pokemontcg.io/sv5/122.png	small
2519	sv5-123	https://images.pokemontcg.io/sv5/123.png	small
2520	sv5-124	https://images.pokemontcg.io/sv5/124.png	small
2521	sv5-125	https://images.pokemontcg.io/sv5/125.png	small
2522	sv5-126	https://images.pokemontcg.io/sv5/126.png	small
2523	sv5-127	https://images.pokemontcg.io/sv5/127.png	small
2524	sv5-128	https://images.pokemontcg.io/sv5/128.png	small
2525	sv5-129	https://images.pokemontcg.io/sv5/129.png	small
2526	sv5-130	https://images.pokemontcg.io/sv5/130.png	small
2527	sv5-131	https://images.pokemontcg.io/sv5/131.png	small
2528	sv5-132	https://images.pokemontcg.io/sv5/132.png	small
2529	sv5-133	https://images.pokemontcg.io/sv5/133.png	small
2530	sv5-134	https://images.pokemontcg.io/sv5/134.png	small
2531	sv5-135	https://images.pokemontcg.io/sv5/135.png	small
2532	sv5-136	https://images.pokemontcg.io/sv5/136.png	small
2533	sv5-137	https://images.pokemontcg.io/sv5/137.png	small
2534	sv5-138	https://images.pokemontcg.io/sv5/138.png	small
2535	sv5-139	https://images.pokemontcg.io/sv5/139.png	small
2536	sv5-140	https://images.pokemontcg.io/sv5/140.png	small
2537	sv5-141	https://images.pokemontcg.io/sv5/141.png	small
2538	sv5-142	https://images.pokemontcg.io/sv5/142.png	small
2539	sv5-143	https://images.pokemontcg.io/sv5/143.png	small
2540	sv5-144	https://images.pokemontcg.io/sv5/144.png	small
2541	sv5-145	https://images.pokemontcg.io/sv5/145.png	small
2542	sv5-146	https://images.pokemontcg.io/sv5/146.png	small
2543	sv5-147	https://images.pokemontcg.io/sv5/147.png	small
2544	sv5-148	https://images.pokemontcg.io/sv5/148.png	small
2545	sv5-149	https://images.pokemontcg.io/sv5/149.png	small
2546	sv5-150	https://images.pokemontcg.io/sv5/150.png	small
2547	sv5-151	https://images.pokemontcg.io/sv5/151.png	small
2548	sv5-152	https://images.pokemontcg.io/sv5/152.png	small
2549	sv5-153	https://images.pokemontcg.io/sv5/153.png	small
2550	sv5-154	https://images.pokemontcg.io/sv5/154.png	small
2551	sv5-155	https://images.pokemontcg.io/sv5/155.png	small
2552	sv5-156	https://images.pokemontcg.io/sv5/156.png	small
2553	sv5-157	https://images.pokemontcg.io/sv5/157.png	small
2554	sv5-158	https://images.pokemontcg.io/sv5/158.png	small
2555	sv5-159	https://images.pokemontcg.io/sv5/159.png	small
2556	sv5-160	https://images.pokemontcg.io/sv5/160.png	small
2557	sv5-161	https://images.pokemontcg.io/sv5/161.png	small
2558	sv5-162	https://images.pokemontcg.io/sv5/162.png	small
2559	sv5-163	https://images.pokemontcg.io/sv5/163.png	small
2560	sv5-164	https://images.pokemontcg.io/sv5/164.png	small
2561	sv5-165	https://images.pokemontcg.io/sv5/165.png	small
2562	sv5-166	https://images.pokemontcg.io/sv5/166.png	small
2563	sv5-167	https://images.pokemontcg.io/sv5/167.png	small
2564	sv5-168	https://images.pokemontcg.io/sv5/168.png	small
2565	sv5-169	https://images.pokemontcg.io/sv5/169.png	small
2566	sv5-170	https://images.pokemontcg.io/sv5/170.png	small
2567	sv5-171	https://images.pokemontcg.io/sv5/171.png	small
2568	sv5-172	https://images.pokemontcg.io/sv5/172.png	small
2569	sv5-173	https://images.pokemontcg.io/sv5/173.png	small
2570	sv5-174	https://images.pokemontcg.io/sv5/174.png	small
2571	sv5-175	https://images.pokemontcg.io/sv5/175.png	small
2572	sv5-176	https://images.pokemontcg.io/sv5/176.png	small
2573	sv5-177	https://images.pokemontcg.io/sv5/177.png	small
2574	sv5-178	https://images.pokemontcg.io/sv5/178.png	small
2575	sv5-179	https://images.pokemontcg.io/sv5/179.png	small
2576	sv5-180	https://images.pokemontcg.io/sv5/180.png	small
2577	sv5-181	https://images.pokemontcg.io/sv5/181.png	small
2578	sv5-182	https://images.pokemontcg.io/sv5/182.png	small
2579	sv5-183	https://images.pokemontcg.io/sv5/183.png	small
2580	sv5-184	https://images.pokemontcg.io/sv5/184.png	small
2581	sv5-185	https://images.pokemontcg.io/sv5/185.png	small
2582	sv5-186	https://images.pokemontcg.io/sv5/186.png	small
2583	sv5-187	https://images.pokemontcg.io/sv5/187.png	small
2584	sv5-188	https://images.pokemontcg.io/sv5/188.png	small
2585	sv5-189	https://images.pokemontcg.io/sv5/189.png	small
2586	sv5-190	https://images.pokemontcg.io/sv5/190.png	small
2587	sv5-191	https://images.pokemontcg.io/sv5/191.png	small
2588	sv5-192	https://images.pokemontcg.io/sv5/192.png	small
2589	sv5-193	https://images.pokemontcg.io/sv5/193.png	small
2590	sv5-194	https://images.pokemontcg.io/sv5/194.png	small
2591	sv5-195	https://images.pokemontcg.io/sv5/195.png	small
2592	sv5-196	https://images.pokemontcg.io/sv5/196.png	small
2593	sv5-197	https://images.pokemontcg.io/sv5/197.png	small
2594	sv5-198	https://images.pokemontcg.io/sv5/198.png	small
2595	sv5-199	https://images.pokemontcg.io/sv5/199.png	small
2596	sv5-200	https://images.pokemontcg.io/sv5/200.png	small
2597	sv5-201	https://images.pokemontcg.io/sv5/201.png	small
2598	sv5-202	https://images.pokemontcg.io/sv5/202.png	small
2599	sv5-203	https://images.pokemontcg.io/sv5/203.png	small
2600	sv5-204	https://images.pokemontcg.io/sv5/204.png	small
2601	sv5-205	https://images.pokemontcg.io/sv5/205.png	small
2602	sv5-206	https://images.pokemontcg.io/sv5/206.png	small
2603	sv5-207	https://images.pokemontcg.io/sv5/207.png	small
2604	sv5-208	https://images.pokemontcg.io/sv5/208.png	small
2605	sv5-209	https://images.pokemontcg.io/sv5/209.png	small
2606	sv5-210	https://images.pokemontcg.io/sv5/210.png	small
2607	sv5-211	https://images.pokemontcg.io/sv5/211.png	small
2608	sv5-212	https://images.pokemontcg.io/sv5/212.png	small
2609	sv5-213	https://images.pokemontcg.io/sv5/213.png	small
2610	sv5-214	https://images.pokemontcg.io/sv5/214.png	small
2611	sv5-215	https://images.pokemontcg.io/sv5/215.png	small
2612	sv5-216	https://images.pokemontcg.io/sv5/216.png	small
2613	sv5-217	https://images.pokemontcg.io/sv5/217.png	small
2614	sv5-218	https://images.pokemontcg.io/sv5/218.png	small
2615	sv5-1	https://images.pokemontcg.io/sv5/1_hires.png	large
2616	sv5-2	https://images.pokemontcg.io/sv5/2_hires.png	large
2617	sv5-3	https://images.pokemontcg.io/sv5/3_hires.png	large
2618	sv5-4	https://images.pokemontcg.io/sv5/4_hires.png	large
2619	sv5-5	https://images.pokemontcg.io/sv5/5_hires.png	large
2620	sv5-6	https://images.pokemontcg.io/sv5/6_hires.png	large
2621	sv5-7	https://images.pokemontcg.io/sv5/7_hires.png	large
2622	sv5-8	https://images.pokemontcg.io/sv5/8_hires.png	large
2623	sv5-9	https://images.pokemontcg.io/sv5/9_hires.png	large
2624	sv5-10	https://images.pokemontcg.io/sv5/10_hires.png	large
2625	sv5-11	https://images.pokemontcg.io/sv5/11_hires.png	large
2626	sv5-12	https://images.pokemontcg.io/sv5/12_hires.png	large
2627	sv5-13	https://images.pokemontcg.io/sv5/13_hires.png	large
2628	sv5-14	https://images.pokemontcg.io/sv5/14_hires.png	large
2629	sv5-15	https://images.pokemontcg.io/sv5/15_hires.png	large
2630	sv5-16	https://images.pokemontcg.io/sv5/16_hires.png	large
2631	sv5-17	https://images.pokemontcg.io/sv5/17_hires.png	large
2632	sv5-18	https://images.pokemontcg.io/sv5/18_hires.png	large
2633	sv5-19	https://images.pokemontcg.io/sv5/19_hires.png	large
2634	sv5-20	https://images.pokemontcg.io/sv5/20_hires.png	large
2635	sv5-21	https://images.pokemontcg.io/sv5/21_hires.png	large
2636	sv5-22	https://images.pokemontcg.io/sv5/22_hires.png	large
2637	sv5-23	https://images.pokemontcg.io/sv5/23_hires.png	large
2638	sv5-24	https://images.pokemontcg.io/sv5/24_hires.png	large
2639	sv5-25	https://images.pokemontcg.io/sv5/25_hires.png	large
2640	sv5-26	https://images.pokemontcg.io/sv5/26_hires.png	large
2641	sv5-27	https://images.pokemontcg.io/sv5/27_hires.png	large
2642	sv5-28	https://images.pokemontcg.io/sv5/28_hires.png	large
2643	sv5-29	https://images.pokemontcg.io/sv5/29_hires.png	large
2644	sv5-30	https://images.pokemontcg.io/sv5/30_hires.png	large
2645	sv5-31	https://images.pokemontcg.io/sv5/31_hires.png	large
2646	sv5-32	https://images.pokemontcg.io/sv5/32_hires.png	large
2647	sv5-33	https://images.pokemontcg.io/sv5/33_hires.png	large
2648	sv5-34	https://images.pokemontcg.io/sv5/34_hires.png	large
2649	sv5-35	https://images.pokemontcg.io/sv5/35_hires.png	large
2650	sv5-36	https://images.pokemontcg.io/sv5/36_hires.png	large
2651	sv5-37	https://images.pokemontcg.io/sv5/37_hires.png	large
2652	sv5-38	https://images.pokemontcg.io/sv5/38_hires.png	large
2653	sv5-39	https://images.pokemontcg.io/sv5/39_hires.png	large
2654	sv5-40	https://images.pokemontcg.io/sv5/40_hires.png	large
2655	sv5-41	https://images.pokemontcg.io/sv5/41_hires.png	large
2656	sv5-42	https://images.pokemontcg.io/sv5/42_hires.png	large
2657	sv5-43	https://images.pokemontcg.io/sv5/43_hires.png	large
2658	sv5-44	https://images.pokemontcg.io/sv5/44_hires.png	large
2659	sv5-45	https://images.pokemontcg.io/sv5/45_hires.png	large
2660	sv5-46	https://images.pokemontcg.io/sv5/46_hires.png	large
2661	sv5-47	https://images.pokemontcg.io/sv5/47_hires.png	large
2662	sv5-48	https://images.pokemontcg.io/sv5/48_hires.png	large
2663	sv5-49	https://images.pokemontcg.io/sv5/49_hires.png	large
2664	sv5-50	https://images.pokemontcg.io/sv5/50_hires.png	large
2665	sv5-51	https://images.pokemontcg.io/sv5/51_hires.png	large
2666	sv5-52	https://images.pokemontcg.io/sv5/52_hires.png	large
2667	sv5-53	https://images.pokemontcg.io/sv5/53_hires.png	large
2668	sv5-54	https://images.pokemontcg.io/sv5/54_hires.png	large
2669	sv5-55	https://images.pokemontcg.io/sv5/55_hires.png	large
2670	sv5-56	https://images.pokemontcg.io/sv5/56_hires.png	large
2671	sv5-57	https://images.pokemontcg.io/sv5/57_hires.png	large
2672	sv5-58	https://images.pokemontcg.io/sv5/58_hires.png	large
2673	sv5-59	https://images.pokemontcg.io/sv5/59_hires.png	large
2674	sv5-60	https://images.pokemontcg.io/sv5/60_hires.png	large
2675	sv5-61	https://images.pokemontcg.io/sv5/61_hires.png	large
2676	sv5-62	https://images.pokemontcg.io/sv5/62_hires.png	large
2677	sv5-63	https://images.pokemontcg.io/sv5/63_hires.png	large
2678	sv5-64	https://images.pokemontcg.io/sv5/64_hires.png	large
2679	sv5-65	https://images.pokemontcg.io/sv5/65_hires.png	large
2680	sv5-66	https://images.pokemontcg.io/sv5/66_hires.png	large
2681	sv5-67	https://images.pokemontcg.io/sv5/67_hires.png	large
2682	sv5-68	https://images.pokemontcg.io/sv5/68_hires.png	large
2683	sv5-69	https://images.pokemontcg.io/sv5/69_hires.png	large
2684	sv5-70	https://images.pokemontcg.io/sv5/70_hires.png	large
2685	sv5-71	https://images.pokemontcg.io/sv5/71_hires.png	large
2686	sv5-72	https://images.pokemontcg.io/sv5/72_hires.png	large
2687	sv5-73	https://images.pokemontcg.io/sv5/73_hires.png	large
2688	sv5-74	https://images.pokemontcg.io/sv5/74_hires.png	large
2689	sv5-75	https://images.pokemontcg.io/sv5/75_hires.png	large
2690	sv5-76	https://images.pokemontcg.io/sv5/76_hires.png	large
2691	sv5-77	https://images.pokemontcg.io/sv5/77_hires.png	large
2692	sv5-78	https://images.pokemontcg.io/sv5/78_hires.png	large
2693	sv5-79	https://images.pokemontcg.io/sv5/79_hires.png	large
2694	sv5-80	https://images.pokemontcg.io/sv5/80_hires.png	large
2695	sv5-81	https://images.pokemontcg.io/sv5/81_hires.png	large
2696	sv5-82	https://images.pokemontcg.io/sv5/82_hires.png	large
2697	sv5-83	https://images.pokemontcg.io/sv5/83_hires.png	large
2698	sv5-84	https://images.pokemontcg.io/sv5/84_hires.png	large
2699	sv5-85	https://images.pokemontcg.io/sv5/85_hires.png	large
2700	sv5-86	https://images.pokemontcg.io/sv5/86_hires.png	large
2701	sv5-87	https://images.pokemontcg.io/sv5/87_hires.png	large
2702	sv5-88	https://images.pokemontcg.io/sv5/88_hires.png	large
2703	sv5-89	https://images.pokemontcg.io/sv5/89_hires.png	large
2704	sv5-90	https://images.pokemontcg.io/sv5/90_hires.png	large
2705	sv5-91	https://images.pokemontcg.io/sv5/91_hires.png	large
2706	sv5-92	https://images.pokemontcg.io/sv5/92_hires.png	large
2707	sv5-93	https://images.pokemontcg.io/sv5/93_hires.png	large
2708	sv5-94	https://images.pokemontcg.io/sv5/94_hires.png	large
2709	sv5-95	https://images.pokemontcg.io/sv5/95_hires.png	large
2710	sv5-96	https://images.pokemontcg.io/sv5/96_hires.png	large
2711	sv5-97	https://images.pokemontcg.io/sv5/97_hires.png	large
2712	sv5-98	https://images.pokemontcg.io/sv5/98_hires.png	large
2713	sv5-99	https://images.pokemontcg.io/sv5/99_hires.png	large
2714	sv5-100	https://images.pokemontcg.io/sv5/100_hires.png	large
2715	sv5-101	https://images.pokemontcg.io/sv5/101_hires.png	large
2716	sv5-102	https://images.pokemontcg.io/sv5/102_hires.png	large
2717	sv5-103	https://images.pokemontcg.io/sv5/103_hires.png	large
2718	sv5-104	https://images.pokemontcg.io/sv5/104_hires.png	large
2719	sv5-105	https://images.pokemontcg.io/sv5/105_hires.png	large
2720	sv5-106	https://images.pokemontcg.io/sv5/106_hires.png	large
2721	sv5-107	https://images.pokemontcg.io/sv5/107_hires.png	large
2722	sv5-108	https://images.pokemontcg.io/sv5/108_hires.png	large
2723	sv5-109	https://images.pokemontcg.io/sv5/109_hires.png	large
2724	sv5-110	https://images.pokemontcg.io/sv5/110_hires.png	large
2725	sv5-111	https://images.pokemontcg.io/sv5/111_hires.png	large
2726	sv5-112	https://images.pokemontcg.io/sv5/112_hires.png	large
2727	sv5-113	https://images.pokemontcg.io/sv5/113_hires.png	large
2728	sv5-114	https://images.pokemontcg.io/sv5/114_hires.png	large
2729	sv5-115	https://images.pokemontcg.io/sv5/115_hires.png	large
2730	sv5-116	https://images.pokemontcg.io/sv5/116_hires.png	large
2731	sv5-117	https://images.pokemontcg.io/sv5/117_hires.png	large
2732	sv5-118	https://images.pokemontcg.io/sv5/118_hires.png	large
2733	sv5-119	https://images.pokemontcg.io/sv5/119_hires.png	large
2734	sv5-120	https://images.pokemontcg.io/sv5/120_hires.png	large
2735	sv5-121	https://images.pokemontcg.io/sv5/121_hires.png	large
2736	sv5-122	https://images.pokemontcg.io/sv5/122_hires.png	large
2737	sv5-123	https://images.pokemontcg.io/sv5/123_hires.png	large
2738	sv5-124	https://images.pokemontcg.io/sv5/124_hires.png	large
2739	sv5-125	https://images.pokemontcg.io/sv5/125_hires.png	large
2740	sv5-126	https://images.pokemontcg.io/sv5/126_hires.png	large
2741	sv5-127	https://images.pokemontcg.io/sv5/127_hires.png	large
2742	sv5-128	https://images.pokemontcg.io/sv5/128_hires.png	large
2743	sv5-129	https://images.pokemontcg.io/sv5/129_hires.png	large
2744	sv5-130	https://images.pokemontcg.io/sv5/130_hires.png	large
2745	sv5-131	https://images.pokemontcg.io/sv5/131_hires.png	large
2746	sv5-132	https://images.pokemontcg.io/sv5/132_hires.png	large
2747	sv5-133	https://images.pokemontcg.io/sv5/133_hires.png	large
2748	sv5-134	https://images.pokemontcg.io/sv5/134_hires.png	large
2749	sv5-135	https://images.pokemontcg.io/sv5/135_hires.png	large
2750	sv5-136	https://images.pokemontcg.io/sv5/136_hires.png	large
2751	sv5-137	https://images.pokemontcg.io/sv5/137_hires.png	large
2752	sv5-138	https://images.pokemontcg.io/sv5/138_hires.png	large
2753	sv5-139	https://images.pokemontcg.io/sv5/139_hires.png	large
2754	sv5-140	https://images.pokemontcg.io/sv5/140_hires.png	large
2755	sv5-141	https://images.pokemontcg.io/sv5/141_hires.png	large
2756	sv5-142	https://images.pokemontcg.io/sv5/142_hires.png	large
2757	sv5-143	https://images.pokemontcg.io/sv5/143_hires.png	large
2758	sv5-144	https://images.pokemontcg.io/sv5/144_hires.png	large
2759	sv5-145	https://images.pokemontcg.io/sv5/145_hires.png	large
2760	sv5-146	https://images.pokemontcg.io/sv5/146_hires.png	large
2761	sv5-147	https://images.pokemontcg.io/sv5/147_hires.png	large
2762	sv5-148	https://images.pokemontcg.io/sv5/148_hires.png	large
2763	sv5-149	https://images.pokemontcg.io/sv5/149_hires.png	large
2764	sv5-150	https://images.pokemontcg.io/sv5/150_hires.png	large
2765	sv5-151	https://images.pokemontcg.io/sv5/151_hires.png	large
2766	sv5-152	https://images.pokemontcg.io/sv5/152_hires.png	large
2767	sv5-153	https://images.pokemontcg.io/sv5/153_hires.png	large
2768	sv5-154	https://images.pokemontcg.io/sv5/154_hires.png	large
2769	sv5-155	https://images.pokemontcg.io/sv5/155_hires.png	large
2770	sv5-156	https://images.pokemontcg.io/sv5/156_hires.png	large
2771	sv5-157	https://images.pokemontcg.io/sv5/157_hires.png	large
2772	sv5-158	https://images.pokemontcg.io/sv5/158_hires.png	large
2773	sv5-159	https://images.pokemontcg.io/sv5/159_hires.png	large
2774	sv5-160	https://images.pokemontcg.io/sv5/160_hires.png	large
2775	sv5-161	https://images.pokemontcg.io/sv5/161_hires.png	large
2776	sv5-162	https://images.pokemontcg.io/sv5/162_hires.png	large
2777	sv5-163	https://images.pokemontcg.io/sv5/163_hires.png	large
2778	sv5-164	https://images.pokemontcg.io/sv5/164_hires.png	large
2779	sv5-165	https://images.pokemontcg.io/sv5/165_hires.png	large
2780	sv5-166	https://images.pokemontcg.io/sv5/166_hires.png	large
2781	sv5-167	https://images.pokemontcg.io/sv5/167_hires.png	large
2782	sv5-168	https://images.pokemontcg.io/sv5/168_hires.png	large
2783	sv5-169	https://images.pokemontcg.io/sv5/169_hires.png	large
2784	sv5-170	https://images.pokemontcg.io/sv5/170_hires.png	large
2785	sv5-171	https://images.pokemontcg.io/sv5/171_hires.png	large
2786	sv5-172	https://images.pokemontcg.io/sv5/172_hires.png	large
2787	sv5-173	https://images.pokemontcg.io/sv5/173_hires.png	large
2788	sv5-174	https://images.pokemontcg.io/sv5/174_hires.png	large
2789	sv5-175	https://images.pokemontcg.io/sv5/175_hires.png	large
2790	sv5-176	https://images.pokemontcg.io/sv5/176_hires.png	large
2791	sv5-177	https://images.pokemontcg.io/sv5/177_hires.png	large
2792	sv5-178	https://images.pokemontcg.io/sv5/178_hires.png	large
2793	sv5-179	https://images.pokemontcg.io/sv5/179_hires.png	large
2794	sv5-180	https://images.pokemontcg.io/sv5/180_hires.png	large
2795	sv5-181	https://images.pokemontcg.io/sv5/181_hires.png	large
2796	sv5-182	https://images.pokemontcg.io/sv5/182_hires.png	large
2797	sv5-183	https://images.pokemontcg.io/sv5/183_hires.png	large
2798	sv5-184	https://images.pokemontcg.io/sv5/184_hires.png	large
2799	sv5-185	https://images.pokemontcg.io/sv5/185_hires.png	large
2800	sv5-186	https://images.pokemontcg.io/sv5/186_hires.png	large
2801	sv5-187	https://images.pokemontcg.io/sv5/187_hires.png	large
2802	sv5-188	https://images.pokemontcg.io/sv5/188_hires.png	large
2803	sv5-189	https://images.pokemontcg.io/sv5/189_hires.png	large
2804	sv5-190	https://images.pokemontcg.io/sv5/190_hires.png	large
2805	sv5-191	https://images.pokemontcg.io/sv5/191_hires.png	large
2806	sv5-192	https://images.pokemontcg.io/sv5/192_hires.png	large
2807	sv5-193	https://images.pokemontcg.io/sv5/193_hires.png	large
2808	sv5-194	https://images.pokemontcg.io/sv5/194_hires.png	large
2809	sv5-195	https://images.pokemontcg.io/sv5/195_hires.png	large
2810	sv5-196	https://images.pokemontcg.io/sv5/196_hires.png	large
2811	sv5-197	https://images.pokemontcg.io/sv5/197_hires.png	large
2812	sv5-198	https://images.pokemontcg.io/sv5/198_hires.png	large
2813	sv5-199	https://images.pokemontcg.io/sv5/199_hires.png	large
2814	sv5-200	https://images.pokemontcg.io/sv5/200_hires.png	large
2815	sv5-201	https://images.pokemontcg.io/sv5/201_hires.png	large
2816	sv5-202	https://images.pokemontcg.io/sv5/202_hires.png	large
2817	sv5-203	https://images.pokemontcg.io/sv5/203_hires.png	large
2818	sv5-204	https://images.pokemontcg.io/sv5/204_hires.png	large
2819	sv5-205	https://images.pokemontcg.io/sv5/205_hires.png	large
2820	sv5-206	https://images.pokemontcg.io/sv5/206_hires.png	large
2821	sv5-207	https://images.pokemontcg.io/sv5/207_hires.png	large
2822	sv5-208	https://images.pokemontcg.io/sv5/208_hires.png	large
2823	sv5-209	https://images.pokemontcg.io/sv5/209_hires.png	large
2824	sv5-210	https://images.pokemontcg.io/sv5/210_hires.png	large
2825	sv5-211	https://images.pokemontcg.io/sv5/211_hires.png	large
2826	sv5-212	https://images.pokemontcg.io/sv5/212_hires.png	large
2827	sv5-213	https://images.pokemontcg.io/sv5/213_hires.png	large
2828	sv5-214	https://images.pokemontcg.io/sv5/214_hires.png	large
2829	sv5-215	https://images.pokemontcg.io/sv5/215_hires.png	large
2830	sv5-216	https://images.pokemontcg.io/sv5/216_hires.png	large
2831	sv5-217	https://images.pokemontcg.io/sv5/217_hires.png	large
2832	sv5-218	https://images.pokemontcg.io/sv5/218_hires.png	large
2833	sv6-1	https://images.pokemontcg.io/sv6/1.png	small
2834	sv6-2	https://images.pokemontcg.io/sv6/2.png	small
2835	sv6-3	https://images.pokemontcg.io/sv6/3.png	small
2836	sv6-4	https://images.pokemontcg.io/sv6/4.png	small
2837	sv6-5	https://images.pokemontcg.io/sv6/5.png	small
2838	sv6-6	https://images.pokemontcg.io/sv6/6.png	small
2839	sv6-7	https://images.pokemontcg.io/sv6/7.png	small
2840	sv6-8	https://images.pokemontcg.io/sv6/8.png	small
2841	sv6-9	https://images.pokemontcg.io/sv6/9.png	small
2842	sv6-10	https://images.pokemontcg.io/sv6/10.png	small
2843	sv6-11	https://images.pokemontcg.io/sv6/11.png	small
2844	sv6-12	https://images.pokemontcg.io/sv6/12.png	small
2845	sv6-13	https://images.pokemontcg.io/sv6/13.png	small
2846	sv6-14	https://images.pokemontcg.io/sv6/14.png	small
2847	sv6-15	https://images.pokemontcg.io/sv6/15.png	small
2848	sv6-16	https://images.pokemontcg.io/sv6/16.png	small
2849	sv6-17	https://images.pokemontcg.io/sv6/17.png	small
2850	sv6-18	https://images.pokemontcg.io/sv6/18.png	small
2851	sv6-19	https://images.pokemontcg.io/sv6/19.png	small
2852	sv6-20	https://images.pokemontcg.io/sv6/20.png	small
2853	sv6-21	https://images.pokemontcg.io/sv6/21.png	small
2854	sv6-22	https://images.pokemontcg.io/sv6/22.png	small
2855	sv6-23	https://images.pokemontcg.io/sv6/23.png	small
2856	sv6-24	https://images.pokemontcg.io/sv6/24.png	small
2857	sv6-25	https://images.pokemontcg.io/sv6/25.png	small
2858	sv6-26	https://images.pokemontcg.io/sv6/26.png	small
2859	sv6-27	https://images.pokemontcg.io/sv6/27.png	small
2860	sv6-28	https://images.pokemontcg.io/sv6/28.png	small
2861	sv6-29	https://images.pokemontcg.io/sv6/29.png	small
2862	sv6-30	https://images.pokemontcg.io/sv6/30.png	small
2863	sv6-31	https://images.pokemontcg.io/sv6/31.png	small
2864	sv6-32	https://images.pokemontcg.io/sv6/32.png	small
2865	sv6-33	https://images.pokemontcg.io/sv6/33.png	small
2866	sv6-34	https://images.pokemontcg.io/sv6/34.png	small
2867	sv6-35	https://images.pokemontcg.io/sv6/35.png	small
2868	sv6-36	https://images.pokemontcg.io/sv6/36.png	small
2869	sv6-37	https://images.pokemontcg.io/sv6/37.png	small
2870	sv6-38	https://images.pokemontcg.io/sv6/38.png	small
2871	sv6-39	https://images.pokemontcg.io/sv6/39.png	small
2872	sv6-40	https://images.pokemontcg.io/sv6/40.png	small
2873	sv6-41	https://images.pokemontcg.io/sv6/41.png	small
2874	sv6-42	https://images.pokemontcg.io/sv6/42.png	small
2875	sv6-43	https://images.pokemontcg.io/sv6/43.png	small
2876	sv6-44	https://images.pokemontcg.io/sv6/44.png	small
2877	sv6-45	https://images.pokemontcg.io/sv6/45.png	small
2878	sv6-46	https://images.pokemontcg.io/sv6/46.png	small
2879	sv6-47	https://images.pokemontcg.io/sv6/47.png	small
2880	sv6-48	https://images.pokemontcg.io/sv6/48.png	small
2881	sv6-49	https://images.pokemontcg.io/sv6/49.png	small
2882	sv6-50	https://images.pokemontcg.io/sv6/50.png	small
2883	sv6-51	https://images.pokemontcg.io/sv6/51.png	small
2884	sv6-52	https://images.pokemontcg.io/sv6/52.png	small
2885	sv6-53	https://images.pokemontcg.io/sv6/53.png	small
2886	sv6-54	https://images.pokemontcg.io/sv6/54.png	small
2887	sv6-55	https://images.pokemontcg.io/sv6/55.png	small
2888	sv6-56	https://images.pokemontcg.io/sv6/56.png	small
2889	sv6-57	https://images.pokemontcg.io/sv6/57.png	small
2890	sv6-58	https://images.pokemontcg.io/sv6/58.png	small
2891	sv6-59	https://images.pokemontcg.io/sv6/59.png	small
2892	sv6-60	https://images.pokemontcg.io/sv6/60.png	small
2893	sv6-61	https://images.pokemontcg.io/sv6/61.png	small
2894	sv6-62	https://images.pokemontcg.io/sv6/62.png	small
2895	sv6-63	https://images.pokemontcg.io/sv6/63.png	small
2896	sv6-64	https://images.pokemontcg.io/sv6/64.png	small
2897	sv6-65	https://images.pokemontcg.io/sv6/65.png	small
2898	sv6-66	https://images.pokemontcg.io/sv6/66.png	small
2899	sv6-67	https://images.pokemontcg.io/sv6/67.png	small
2900	sv6-68	https://images.pokemontcg.io/sv6/68.png	small
2901	sv6-69	https://images.pokemontcg.io/sv6/69.png	small
2902	sv6-70	https://images.pokemontcg.io/sv6/70.png	small
2903	sv6-71	https://images.pokemontcg.io/sv6/71.png	small
2904	sv6-72	https://images.pokemontcg.io/sv6/72.png	small
2905	sv6-73	https://images.pokemontcg.io/sv6/73.png	small
2906	sv6-74	https://images.pokemontcg.io/sv6/74.png	small
2907	sv6-75	https://images.pokemontcg.io/sv6/75.png	small
2908	sv6-76	https://images.pokemontcg.io/sv6/76.png	small
2909	sv6-77	https://images.pokemontcg.io/sv6/77.png	small
2910	sv6-78	https://images.pokemontcg.io/sv6/78.png	small
2911	sv6-79	https://images.pokemontcg.io/sv6/79.png	small
2912	sv6-80	https://images.pokemontcg.io/sv6/80.png	small
2913	sv6-81	https://images.pokemontcg.io/sv6/81.png	small
2914	sv6-82	https://images.pokemontcg.io/sv6/82.png	small
2915	sv6-83	https://images.pokemontcg.io/sv6/83.png	small
2916	sv6-84	https://images.pokemontcg.io/sv6/84.png	small
2917	sv6-85	https://images.pokemontcg.io/sv6/85.png	small
2918	sv6-86	https://images.pokemontcg.io/sv6/86.png	small
2919	sv6-87	https://images.pokemontcg.io/sv6/87.png	small
2920	sv6-88	https://images.pokemontcg.io/sv6/88.png	small
2921	sv6-89	https://images.pokemontcg.io/sv6/89.png	small
2922	sv6-90	https://images.pokemontcg.io/sv6/90.png	small
2923	sv6-91	https://images.pokemontcg.io/sv6/91.png	small
2924	sv6-92	https://images.pokemontcg.io/sv6/92.png	small
2925	sv6-93	https://images.pokemontcg.io/sv6/93.png	small
2926	sv6-94	https://images.pokemontcg.io/sv6/94.png	small
2927	sv6-95	https://images.pokemontcg.io/sv6/95.png	small
2928	sv6-96	https://images.pokemontcg.io/sv6/96.png	small
2929	sv6-97	https://images.pokemontcg.io/sv6/97.png	small
2930	sv6-98	https://images.pokemontcg.io/sv6/98.png	small
2931	sv6-99	https://images.pokemontcg.io/sv6/99.png	small
2932	sv6-100	https://images.pokemontcg.io/sv6/100.png	small
2933	sv6-101	https://images.pokemontcg.io/sv6/101.png	small
2934	sv6-102	https://images.pokemontcg.io/sv6/102.png	small
2935	sv6-103	https://images.pokemontcg.io/sv6/103.png	small
2936	sv6-104	https://images.pokemontcg.io/sv6/104.png	small
2937	sv6-105	https://images.pokemontcg.io/sv6/105.png	small
2938	sv6-106	https://images.pokemontcg.io/sv6/106.png	small
2939	sv6-107	https://images.pokemontcg.io/sv6/107.png	small
2940	sv6-108	https://images.pokemontcg.io/sv6/108.png	small
2941	sv6-109	https://images.pokemontcg.io/sv6/109.png	small
2942	sv6-110	https://images.pokemontcg.io/sv6/110.png	small
2943	sv6-111	https://images.pokemontcg.io/sv6/111.png	small
2944	sv6-112	https://images.pokemontcg.io/sv6/112.png	small
2945	sv6-113	https://images.pokemontcg.io/sv6/113.png	small
2946	sv6-114	https://images.pokemontcg.io/sv6/114.png	small
2947	sv6-115	https://images.pokemontcg.io/sv6/115.png	small
2948	sv6-116	https://images.pokemontcg.io/sv6/116.png	small
2949	sv6-117	https://images.pokemontcg.io/sv6/117.png	small
2950	sv6-118	https://images.pokemontcg.io/sv6/118.png	small
2951	sv6-119	https://images.pokemontcg.io/sv6/119.png	small
2952	sv6-120	https://images.pokemontcg.io/sv6/120.png	small
2953	sv6-121	https://images.pokemontcg.io/sv6/121.png	small
2954	sv6-122	https://images.pokemontcg.io/sv6/122.png	small
2955	sv6-123	https://images.pokemontcg.io/sv6/123.png	small
2956	sv6-124	https://images.pokemontcg.io/sv6/124.png	small
2957	sv6-125	https://images.pokemontcg.io/sv6/125.png	small
2958	sv6-126	https://images.pokemontcg.io/sv6/126.png	small
2959	sv6-127	https://images.pokemontcg.io/sv6/127.png	small
2960	sv6-128	https://images.pokemontcg.io/sv6/128.png	small
2961	sv6-129	https://images.pokemontcg.io/sv6/129.png	small
2962	sv6-130	https://images.pokemontcg.io/sv6/130.png	small
2963	sv6-131	https://images.pokemontcg.io/sv6/131.png	small
2964	sv6-132	https://images.pokemontcg.io/sv6/132.png	small
2965	sv6-133	https://images.pokemontcg.io/sv6/133.png	small
2966	sv6-134	https://images.pokemontcg.io/sv6/134.png	small
2967	sv6-135	https://images.pokemontcg.io/sv6/135.png	small
2968	sv6-136	https://images.pokemontcg.io/sv6/136.png	small
2969	sv6-137	https://images.pokemontcg.io/sv6/137.png	small
2970	sv6-138	https://images.pokemontcg.io/sv6/138.png	small
2971	sv6-139	https://images.pokemontcg.io/sv6/139.png	small
2972	sv6-140	https://images.pokemontcg.io/sv6/140.png	small
2973	sv6-141	https://images.pokemontcg.io/sv6/141.png	small
2974	sv6-142	https://images.pokemontcg.io/sv6/142.png	small
2975	sv6-143	https://images.pokemontcg.io/sv6/143.png	small
2976	sv6-144	https://images.pokemontcg.io/sv6/144.png	small
2977	sv6-145	https://images.pokemontcg.io/sv6/145.png	small
2978	sv6-146	https://images.pokemontcg.io/sv6/146.png	small
2979	sv6-147	https://images.pokemontcg.io/sv6/147.png	small
2980	sv6-148	https://images.pokemontcg.io/sv6/148.png	small
2981	sv6-149	https://images.pokemontcg.io/sv6/149.png	small
2982	sv6-150	https://images.pokemontcg.io/sv6/150.png	small
2983	sv6-151	https://images.pokemontcg.io/sv6/151.png	small
2984	sv6-152	https://images.pokemontcg.io/sv6/152.png	small
2985	sv6-153	https://images.pokemontcg.io/sv6/153.png	small
2986	sv6-154	https://images.pokemontcg.io/sv6/154.png	small
2987	sv6-155	https://images.pokemontcg.io/sv6/155.png	small
2988	sv6-156	https://images.pokemontcg.io/sv6/156.png	small
2989	sv6-157	https://images.pokemontcg.io/sv6/157.png	small
2990	sv6-158	https://images.pokemontcg.io/sv6/158.png	small
2991	sv6-159	https://images.pokemontcg.io/sv6/159.png	small
2992	sv6-160	https://images.pokemontcg.io/sv6/160.png	small
2993	sv6-161	https://images.pokemontcg.io/sv6/161.png	small
2994	sv6-162	https://images.pokemontcg.io/sv6/162.png	small
2995	sv6-163	https://images.pokemontcg.io/sv6/163.png	small
2996	sv6-164	https://images.pokemontcg.io/sv6/164.png	small
2997	sv6-165	https://images.pokemontcg.io/sv6/165.png	small
2998	sv6-166	https://images.pokemontcg.io/sv6/166.png	small
2999	sv6-167	https://images.pokemontcg.io/sv6/167.png	small
3000	sv6-168	https://images.pokemontcg.io/sv6/168.png	small
3001	sv6-169	https://images.pokemontcg.io/sv6/169.png	small
3002	sv6-170	https://images.pokemontcg.io/sv6/170.png	small
3003	sv6-171	https://images.pokemontcg.io/sv6/171.png	small
3004	sv6-172	https://images.pokemontcg.io/sv6/172.png	small
3005	sv6-173	https://images.pokemontcg.io/sv6/173.png	small
3006	sv6-174	https://images.pokemontcg.io/sv6/174.png	small
3007	sv6-175	https://images.pokemontcg.io/sv6/175.png	small
3008	sv6-176	https://images.pokemontcg.io/sv6/176.png	small
3009	sv6-177	https://images.pokemontcg.io/sv6/177.png	small
3010	sv6-178	https://images.pokemontcg.io/sv6/178.png	small
3011	sv6-179	https://images.pokemontcg.io/sv6/179.png	small
3012	sv6-180	https://images.pokemontcg.io/sv6/180.png	small
3013	sv6-181	https://images.pokemontcg.io/sv6/181.png	small
3014	sv6-182	https://images.pokemontcg.io/sv6/182.png	small
3015	sv6-183	https://images.pokemontcg.io/sv6/183.png	small
3016	sv6-184	https://images.pokemontcg.io/sv6/184.png	small
3017	sv6-185	https://images.pokemontcg.io/sv6/185.png	small
3018	sv6-186	https://images.pokemontcg.io/sv6/186.png	small
3019	sv6-187	https://images.pokemontcg.io/sv6/187.png	small
3020	sv6-188	https://images.pokemontcg.io/sv6/188.png	small
3021	sv6-189	https://images.pokemontcg.io/sv6/189.png	small
3022	sv6-190	https://images.pokemontcg.io/sv6/190.png	small
3023	sv6-191	https://images.pokemontcg.io/sv6/191.png	small
3024	sv6-192	https://images.pokemontcg.io/sv6/192.png	small
3025	sv6-193	https://images.pokemontcg.io/sv6/193.png	small
3026	sv6-194	https://images.pokemontcg.io/sv6/194.png	small
3027	sv6-195	https://images.pokemontcg.io/sv6/195.png	small
3028	sv6-196	https://images.pokemontcg.io/sv6/196.png	small
3029	sv6-197	https://images.pokemontcg.io/sv6/197.png	small
3030	sv6-198	https://images.pokemontcg.io/sv6/198.png	small
3031	sv6-199	https://images.pokemontcg.io/sv6/199.png	small
3032	sv6-200	https://images.pokemontcg.io/sv6/200.png	small
3033	sv6-201	https://images.pokemontcg.io/sv6/201.png	small
3034	sv6-202	https://images.pokemontcg.io/sv6/202.png	small
3035	sv6-203	https://images.pokemontcg.io/sv6/203.png	small
3036	sv6-204	https://images.pokemontcg.io/sv6/204.png	small
3037	sv6-205	https://images.pokemontcg.io/sv6/205.png	small
3038	sv6-206	https://images.pokemontcg.io/sv6/206.png	small
3039	sv6-207	https://images.pokemontcg.io/sv6/207.png	small
3040	sv6-208	https://images.pokemontcg.io/sv6/208.png	small
3041	sv6-209	https://images.pokemontcg.io/sv6/209.png	small
3042	sv6-210	https://images.pokemontcg.io/sv6/210.png	small
3043	sv6-211	https://images.pokemontcg.io/sv6/211.png	small
3044	sv6-212	https://images.pokemontcg.io/sv6/212.png	small
3045	sv6-213	https://images.pokemontcg.io/sv6/213.png	small
3046	sv6-214	https://images.pokemontcg.io/sv6/214.png	small
3047	sv6-215	https://images.pokemontcg.io/sv6/215.png	small
3048	sv6-216	https://images.pokemontcg.io/sv6/216.png	small
3049	sv6-217	https://images.pokemontcg.io/sv6/217.png	small
3050	sv6-218	https://images.pokemontcg.io/sv6/218.png	small
3051	sv6-219	https://images.pokemontcg.io/sv6/219.png	small
3052	sv6-220	https://images.pokemontcg.io/sv6/220.png	small
3053	sv6-221	https://images.pokemontcg.io/sv6/221.png	small
3054	sv6-222	https://images.pokemontcg.io/sv6/222.png	small
3055	sv6-223	https://images.pokemontcg.io/sv6/223.png	small
3056	sv6-224	https://images.pokemontcg.io/sv6/224.png	small
3057	sv6-225	https://images.pokemontcg.io/sv6/225.png	small
3058	sv6-226	https://images.pokemontcg.io/sv6/226.png	small
3059	sv6-1	https://images.pokemontcg.io/sv6/1_hires.png	large
3060	sv6-2	https://images.pokemontcg.io/sv6/2_hires.png	large
3061	sv6-3	https://images.pokemontcg.io/sv6/3_hires.png	large
3062	sv6-4	https://images.pokemontcg.io/sv6/4_hires.png	large
3063	sv6-5	https://images.pokemontcg.io/sv6/5_hires.png	large
3064	sv6-6	https://images.pokemontcg.io/sv6/6_hires.png	large
3065	sv6-7	https://images.pokemontcg.io/sv6/7_hires.png	large
3066	sv6-8	https://images.pokemontcg.io/sv6/8_hires.png	large
3067	sv6-9	https://images.pokemontcg.io/sv6/9_hires.png	large
3068	sv6-10	https://images.pokemontcg.io/sv6/10_hires.png	large
3069	sv6-11	https://images.pokemontcg.io/sv6/11_hires.png	large
3070	sv6-12	https://images.pokemontcg.io/sv6/12_hires.png	large
3071	sv6-13	https://images.pokemontcg.io/sv6/13_hires.png	large
3072	sv6-14	https://images.pokemontcg.io/sv6/14_hires.png	large
3073	sv6-15	https://images.pokemontcg.io/sv6/15_hires.png	large
3074	sv6-16	https://images.pokemontcg.io/sv6/16_hires.png	large
3075	sv6-17	https://images.pokemontcg.io/sv6/17_hires.png	large
3076	sv6-18	https://images.pokemontcg.io/sv6/18_hires.png	large
3077	sv6-19	https://images.pokemontcg.io/sv6/19_hires.png	large
3078	sv6-20	https://images.pokemontcg.io/sv6/20_hires.png	large
3079	sv6-21	https://images.pokemontcg.io/sv6/21_hires.png	large
3080	sv6-22	https://images.pokemontcg.io/sv6/22_hires.png	large
3081	sv6-23	https://images.pokemontcg.io/sv6/23_hires.png	large
3082	sv6-24	https://images.pokemontcg.io/sv6/24_hires.png	large
3083	sv6-25	https://images.pokemontcg.io/sv6/25_hires.png	large
3084	sv6-26	https://images.pokemontcg.io/sv6/26_hires.png	large
3085	sv6-27	https://images.pokemontcg.io/sv6/27_hires.png	large
3086	sv6-28	https://images.pokemontcg.io/sv6/28_hires.png	large
3087	sv6-29	https://images.pokemontcg.io/sv6/29_hires.png	large
3088	sv6-30	https://images.pokemontcg.io/sv6/30_hires.png	large
3089	sv6-31	https://images.pokemontcg.io/sv6/31_hires.png	large
3090	sv6-32	https://images.pokemontcg.io/sv6/32_hires.png	large
3091	sv6-33	https://images.pokemontcg.io/sv6/33_hires.png	large
3092	sv6-34	https://images.pokemontcg.io/sv6/34_hires.png	large
3093	sv6-35	https://images.pokemontcg.io/sv6/35_hires.png	large
3094	sv6-36	https://images.pokemontcg.io/sv6/36_hires.png	large
3095	sv6-37	https://images.pokemontcg.io/sv6/37_hires.png	large
3096	sv6-38	https://images.pokemontcg.io/sv6/38_hires.png	large
3097	sv6-39	https://images.pokemontcg.io/sv6/39_hires.png	large
3098	sv6-40	https://images.pokemontcg.io/sv6/40_hires.png	large
3099	sv6-41	https://images.pokemontcg.io/sv6/41_hires.png	large
3100	sv6-42	https://images.pokemontcg.io/sv6/42_hires.png	large
3101	sv6-43	https://images.pokemontcg.io/sv6/43_hires.png	large
3102	sv6-44	https://images.pokemontcg.io/sv6/44_hires.png	large
3103	sv6-45	https://images.pokemontcg.io/sv6/45_hires.png	large
3104	sv6-46	https://images.pokemontcg.io/sv6/46_hires.png	large
3105	sv6-47	https://images.pokemontcg.io/sv6/47_hires.png	large
3106	sv6-48	https://images.pokemontcg.io/sv6/48_hires.png	large
3107	sv6-49	https://images.pokemontcg.io/sv6/49_hires.png	large
3108	sv6-50	https://images.pokemontcg.io/sv6/50_hires.png	large
3109	sv6-51	https://images.pokemontcg.io/sv6/51_hires.png	large
3110	sv6-52	https://images.pokemontcg.io/sv6/52_hires.png	large
3111	sv6-53	https://images.pokemontcg.io/sv6/53_hires.png	large
3112	sv6-54	https://images.pokemontcg.io/sv6/54_hires.png	large
3113	sv6-55	https://images.pokemontcg.io/sv6/55_hires.png	large
3114	sv6-56	https://images.pokemontcg.io/sv6/56_hires.png	large
3115	sv6-57	https://images.pokemontcg.io/sv6/57_hires.png	large
3116	sv6-58	https://images.pokemontcg.io/sv6/58_hires.png	large
3117	sv6-59	https://images.pokemontcg.io/sv6/59_hires.png	large
3118	sv6-60	https://images.pokemontcg.io/sv6/60_hires.png	large
3119	sv6-61	https://images.pokemontcg.io/sv6/61_hires.png	large
3120	sv6-62	https://images.pokemontcg.io/sv6/62_hires.png	large
3121	sv6-63	https://images.pokemontcg.io/sv6/63_hires.png	large
3122	sv6-64	https://images.pokemontcg.io/sv6/64_hires.png	large
3123	sv6-65	https://images.pokemontcg.io/sv6/65_hires.png	large
3124	sv6-66	https://images.pokemontcg.io/sv6/66_hires.png	large
3125	sv6-67	https://images.pokemontcg.io/sv6/67_hires.png	large
3126	sv6-68	https://images.pokemontcg.io/sv6/68_hires.png	large
3127	sv6-69	https://images.pokemontcg.io/sv6/69_hires.png	large
3128	sv6-70	https://images.pokemontcg.io/sv6/70_hires.png	large
3129	sv6-71	https://images.pokemontcg.io/sv6/71_hires.png	large
3130	sv6-72	https://images.pokemontcg.io/sv6/72_hires.png	large
3131	sv6-73	https://images.pokemontcg.io/sv6/73_hires.png	large
3132	sv6-74	https://images.pokemontcg.io/sv6/74_hires.png	large
3133	sv6-75	https://images.pokemontcg.io/sv6/75_hires.png	large
3134	sv6-76	https://images.pokemontcg.io/sv6/76_hires.png	large
3135	sv6-77	https://images.pokemontcg.io/sv6/77_hires.png	large
3136	sv6-78	https://images.pokemontcg.io/sv6/78_hires.png	large
3137	sv6-79	https://images.pokemontcg.io/sv6/79_hires.png	large
3138	sv6-80	https://images.pokemontcg.io/sv6/80_hires.png	large
3139	sv6-81	https://images.pokemontcg.io/sv6/81_hires.png	large
3140	sv6-82	https://images.pokemontcg.io/sv6/82_hires.png	large
3141	sv6-83	https://images.pokemontcg.io/sv6/83_hires.png	large
3142	sv6-84	https://images.pokemontcg.io/sv6/84_hires.png	large
3143	sv6-85	https://images.pokemontcg.io/sv6/85_hires.png	large
3144	sv6-86	https://images.pokemontcg.io/sv6/86_hires.png	large
3145	sv6-87	https://images.pokemontcg.io/sv6/87_hires.png	large
3146	sv6-88	https://images.pokemontcg.io/sv6/88_hires.png	large
3147	sv6-89	https://images.pokemontcg.io/sv6/89_hires.png	large
3148	sv6-90	https://images.pokemontcg.io/sv6/90_hires.png	large
3149	sv6-91	https://images.pokemontcg.io/sv6/91_hires.png	large
3150	sv6-92	https://images.pokemontcg.io/sv6/92_hires.png	large
3151	sv6-93	https://images.pokemontcg.io/sv6/93_hires.png	large
3152	sv6-94	https://images.pokemontcg.io/sv6/94_hires.png	large
3153	sv6-95	https://images.pokemontcg.io/sv6/95_hires.png	large
3154	sv6-96	https://images.pokemontcg.io/sv6/96_hires.png	large
3155	sv6-97	https://images.pokemontcg.io/sv6/97_hires.png	large
3156	sv6-98	https://images.pokemontcg.io/sv6/98_hires.png	large
3157	sv6-99	https://images.pokemontcg.io/sv6/99_hires.png	large
3158	sv6-100	https://images.pokemontcg.io/sv6/100_hires.png	large
3159	sv6-101	https://images.pokemontcg.io/sv6/101_hires.png	large
3160	sv6-102	https://images.pokemontcg.io/sv6/102_hires.png	large
3161	sv6-103	https://images.pokemontcg.io/sv6/103_hires.png	large
3162	sv6-104	https://images.pokemontcg.io/sv6/104_hires.png	large
3163	sv6-105	https://images.pokemontcg.io/sv6/105_hires.png	large
3164	sv6-106	https://images.pokemontcg.io/sv6/106_hires.png	large
3165	sv6-107	https://images.pokemontcg.io/sv6/107_hires.png	large
3166	sv6-108	https://images.pokemontcg.io/sv6/108_hires.png	large
3167	sv6-109	https://images.pokemontcg.io/sv6/109_hires.png	large
3168	sv6-110	https://images.pokemontcg.io/sv6/110_hires.png	large
3169	sv6-111	https://images.pokemontcg.io/sv6/111_hires.png	large
3170	sv6-112	https://images.pokemontcg.io/sv6/112_hires.png	large
3171	sv6-113	https://images.pokemontcg.io/sv6/113_hires.png	large
3172	sv6-114	https://images.pokemontcg.io/sv6/114_hires.png	large
3173	sv6-115	https://images.pokemontcg.io/sv6/115_hires.png	large
3174	sv6-116	https://images.pokemontcg.io/sv6/116_hires.png	large
3175	sv6-117	https://images.pokemontcg.io/sv6/117_hires.png	large
3176	sv6-118	https://images.pokemontcg.io/sv6/118_hires.png	large
3177	sv6-119	https://images.pokemontcg.io/sv6/119_hires.png	large
3178	sv6-120	https://images.pokemontcg.io/sv6/120_hires.png	large
3179	sv6-121	https://images.pokemontcg.io/sv6/121_hires.png	large
3180	sv6-122	https://images.pokemontcg.io/sv6/122_hires.png	large
3181	sv6-123	https://images.pokemontcg.io/sv6/123_hires.png	large
3182	sv6-124	https://images.pokemontcg.io/sv6/124_hires.png	large
3183	sv6-125	https://images.pokemontcg.io/sv6/125_hires.png	large
3184	sv6-126	https://images.pokemontcg.io/sv6/126_hires.png	large
3185	sv6-127	https://images.pokemontcg.io/sv6/127_hires.png	large
3186	sv6-128	https://images.pokemontcg.io/sv6/128_hires.png	large
3187	sv6-129	https://images.pokemontcg.io/sv6/129_hires.png	large
3188	sv6-130	https://images.pokemontcg.io/sv6/130_hires.png	large
3189	sv6-131	https://images.pokemontcg.io/sv6/131_hires.png	large
3190	sv6-132	https://images.pokemontcg.io/sv6/132_hires.png	large
3191	sv6-133	https://images.pokemontcg.io/sv6/133_hires.png	large
3192	sv6-134	https://images.pokemontcg.io/sv6/134_hires.png	large
3193	sv6-135	https://images.pokemontcg.io/sv6/135_hires.png	large
3194	sv6-136	https://images.pokemontcg.io/sv6/136_hires.png	large
3195	sv6-137	https://images.pokemontcg.io/sv6/137_hires.png	large
3196	sv6-138	https://images.pokemontcg.io/sv6/138_hires.png	large
3197	sv6-139	https://images.pokemontcg.io/sv6/139_hires.png	large
3198	sv6-140	https://images.pokemontcg.io/sv6/140_hires.png	large
3199	sv6-141	https://images.pokemontcg.io/sv6/141_hires.png	large
3200	sv6-142	https://images.pokemontcg.io/sv6/142_hires.png	large
3201	sv6-143	https://images.pokemontcg.io/sv6/143_hires.png	large
3202	sv6-144	https://images.pokemontcg.io/sv6/144_hires.png	large
3203	sv6-145	https://images.pokemontcg.io/sv6/145_hires.png	large
3204	sv6-146	https://images.pokemontcg.io/sv6/146_hires.png	large
3205	sv6-147	https://images.pokemontcg.io/sv6/147_hires.png	large
3206	sv6-148	https://images.pokemontcg.io/sv6/148_hires.png	large
3207	sv6-149	https://images.pokemontcg.io/sv6/149_hires.png	large
3208	sv6-150	https://images.pokemontcg.io/sv6/150_hires.png	large
3209	sv6-151	https://images.pokemontcg.io/sv6/151_hires.png	large
3210	sv6-152	https://images.pokemontcg.io/sv6/152_hires.png	large
3211	sv6-153	https://images.pokemontcg.io/sv6/153_hires.png	large
3212	sv6-154	https://images.pokemontcg.io/sv6/154_hires.png	large
3213	sv6-155	https://images.pokemontcg.io/sv6/155_hires.png	large
3214	sv6-156	https://images.pokemontcg.io/sv6/156_hires.png	large
3215	sv6-157	https://images.pokemontcg.io/sv6/157_hires.png	large
3216	sv6-158	https://images.pokemontcg.io/sv6/158_hires.png	large
3217	sv6-159	https://images.pokemontcg.io/sv6/159_hires.png	large
3218	sv6-160	https://images.pokemontcg.io/sv6/160_hires.png	large
3219	sv6-161	https://images.pokemontcg.io/sv6/161_hires.png	large
3220	sv6-162	https://images.pokemontcg.io/sv6/162_hires.png	large
3221	sv6-163	https://images.pokemontcg.io/sv6/163_hires.png	large
3222	sv6-164	https://images.pokemontcg.io/sv6/164_hires.png	large
3223	sv6-165	https://images.pokemontcg.io/sv6/165_hires.png	large
3224	sv6-166	https://images.pokemontcg.io/sv6/166_hires.png	large
3225	sv6-167	https://images.pokemontcg.io/sv6/167_hires.png	large
3226	sv6-168	https://images.pokemontcg.io/sv6/168_hires.png	large
3227	sv6-169	https://images.pokemontcg.io/sv6/169_hires.png	large
3228	sv6-170	https://images.pokemontcg.io/sv6/170_hires.png	large
3229	sv6-171	https://images.pokemontcg.io/sv6/171_hires.png	large
3230	sv6-172	https://images.pokemontcg.io/sv6/172_hires.png	large
3231	sv6-173	https://images.pokemontcg.io/sv6/173_hires.png	large
3232	sv6-174	https://images.pokemontcg.io/sv6/174_hires.png	large
3233	sv6-175	https://images.pokemontcg.io/sv6/175_hires.png	large
3234	sv6-176	https://images.pokemontcg.io/sv6/176_hires.png	large
3235	sv6-177	https://images.pokemontcg.io/sv6/177_hires.png	large
3236	sv6-178	https://images.pokemontcg.io/sv6/178_hires.png	large
3237	sv6-179	https://images.pokemontcg.io/sv6/179_hires.png	large
3238	sv6-180	https://images.pokemontcg.io/sv6/180_hires.png	large
3239	sv6-181	https://images.pokemontcg.io/sv6/181_hires.png	large
3240	sv6-182	https://images.pokemontcg.io/sv6/182_hires.png	large
3241	sv6-183	https://images.pokemontcg.io/sv6/183_hires.png	large
3242	sv6-184	https://images.pokemontcg.io/sv6/184_hires.png	large
3243	sv6-185	https://images.pokemontcg.io/sv6/185_hires.png	large
3244	sv6-186	https://images.pokemontcg.io/sv6/186_hires.png	large
3245	sv6-187	https://images.pokemontcg.io/sv6/187_hires.png	large
3246	sv6-188	https://images.pokemontcg.io/sv6/188_hires.png	large
3247	sv6-189	https://images.pokemontcg.io/sv6/189_hires.png	large
3248	sv6-190	https://images.pokemontcg.io/sv6/190_hires.png	large
3249	sv6-191	https://images.pokemontcg.io/sv6/191_hires.png	large
3250	sv6-192	https://images.pokemontcg.io/sv6/192_hires.png	large
3251	sv6-193	https://images.pokemontcg.io/sv6/193_hires.png	large
3252	sv6-194	https://images.pokemontcg.io/sv6/194_hires.png	large
3253	sv6-195	https://images.pokemontcg.io/sv6/195_hires.png	large
3254	sv6-196	https://images.pokemontcg.io/sv6/196_hires.png	large
3255	sv6-197	https://images.pokemontcg.io/sv6/197_hires.png	large
3256	sv6-198	https://images.pokemontcg.io/sv6/198_hires.png	large
3257	sv6-199	https://images.pokemontcg.io/sv6/199_hires.png	large
3258	sv6-200	https://images.pokemontcg.io/sv6/200_hires.png	large
3259	sv6-201	https://images.pokemontcg.io/sv6/201_hires.png	large
3260	sv6-202	https://images.pokemontcg.io/sv6/202_hires.png	large
3261	sv6-203	https://images.pokemontcg.io/sv6/203_hires.png	large
3262	sv6-204	https://images.pokemontcg.io/sv6/204_hires.png	large
3263	sv6-205	https://images.pokemontcg.io/sv6/205_hires.png	large
3264	sv6-206	https://images.pokemontcg.io/sv6/206_hires.png	large
3265	sv6-207	https://images.pokemontcg.io/sv6/207_hires.png	large
3266	sv6-208	https://images.pokemontcg.io/sv6/208_hires.png	large
3267	sv6-209	https://images.pokemontcg.io/sv6/209_hires.png	large
3268	sv6-210	https://images.pokemontcg.io/sv6/210_hires.png	large
3269	sv6-211	https://images.pokemontcg.io/sv6/211_hires.png	large
3270	sv6-212	https://images.pokemontcg.io/sv6/212_hires.png	large
3271	sv6-213	https://images.pokemontcg.io/sv6/213_hires.png	large
3272	sv6-214	https://images.pokemontcg.io/sv6/214_hires.png	large
3273	sv6-215	https://images.pokemontcg.io/sv6/215_hires.png	large
3274	sv6-216	https://images.pokemontcg.io/sv6/216_hires.png	large
3275	sv6-217	https://images.pokemontcg.io/sv6/217_hires.png	large
3276	sv6-218	https://images.pokemontcg.io/sv6/218_hires.png	large
3277	sv6-219	https://images.pokemontcg.io/sv6/219_hires.png	large
3278	sv6-220	https://images.pokemontcg.io/sv6/220_hires.png	large
3279	sv6-221	https://images.pokemontcg.io/sv6/221_hires.png	large
3280	sv6-222	https://images.pokemontcg.io/sv6/222_hires.png	large
3281	sv6-223	https://images.pokemontcg.io/sv6/223_hires.png	large
3282	sv6-224	https://images.pokemontcg.io/sv6/224_hires.png	large
3283	sv6-225	https://images.pokemontcg.io/sv6/225_hires.png	large
3284	sv6-226	https://images.pokemontcg.io/sv6/226_hires.png	large
3285	sv6pt5-1	https://images.pokemontcg.io/sv6pt5/1.png	small
3286	sv6pt5-8	https://images.pokemontcg.io/sv6pt5/8.png	small
3287	sv6pt5-12	https://images.pokemontcg.io/sv6pt5/12.png	small
3288	sv6pt5-13	https://images.pokemontcg.io/sv6pt5/13.png	small
3289	sv6pt5-14	https://images.pokemontcg.io/sv6pt5/14.png	small
3290	sv6pt5-17	https://images.pokemontcg.io/sv6pt5/17.png	small
3291	sv6pt5-18	https://images.pokemontcg.io/sv6pt5/18.png	small
3292	sv6pt5-20	https://images.pokemontcg.io/sv6pt5/20.png	small
3293	sv6pt5-27	https://images.pokemontcg.io/sv6pt5/27.png	small
3294	sv6pt5-29	https://images.pokemontcg.io/sv6pt5/29.png	small
3295	sv6pt5-40	https://images.pokemontcg.io/sv6pt5/40.png	small
3296	sv6pt5-42	https://images.pokemontcg.io/sv6pt5/42.png	small
3297	sv6pt5-45	https://images.pokemontcg.io/sv6pt5/45.png	small
3298	sv6pt5-46	https://images.pokemontcg.io/sv6pt5/46.png	small
3299	sv6pt5-50	https://images.pokemontcg.io/sv6pt5/50.png	small
3300	sv6pt5-57	https://images.pokemontcg.io/sv6pt5/57.png	small
3301	sv6pt5-58	https://images.pokemontcg.io/sv6pt5/58.png	small
3302	sv6pt5-63	https://images.pokemontcg.io/sv6pt5/63.png	small
3303	sv6pt5-64	https://images.pokemontcg.io/sv6pt5/64.png	small
3304	sv6pt5-69	https://images.pokemontcg.io/sv6pt5/69.png	small
3305	sv6pt5-83	https://images.pokemontcg.io/sv6pt5/83.png	small
3306	sv6pt5-2	https://images.pokemontcg.io/sv6pt5/2.png	small
3307	sv6pt5-4	https://images.pokemontcg.io/sv6pt5/4.png	small
3308	sv6pt5-7	https://images.pokemontcg.io/sv6pt5/7.png	small
3309	sv6pt5-19	https://images.pokemontcg.io/sv6pt5/19.png	small
3310	sv6pt5-21	https://images.pokemontcg.io/sv6pt5/21.png	small
3311	sv6pt5-23	https://images.pokemontcg.io/sv6pt5/23.png	small
3312	sv6pt5-26	https://images.pokemontcg.io/sv6pt5/26.png	small
3313	sv6pt5-35	https://images.pokemontcg.io/sv6pt5/35.png	small
3314	sv6pt5-36	https://images.pokemontcg.io/sv6pt5/36.png	small
3315	sv6pt5-37	https://images.pokemontcg.io/sv6pt5/37.png	small
3316	sv6pt5-39	https://images.pokemontcg.io/sv6pt5/39.png	small
3317	sv6pt5-48	https://images.pokemontcg.io/sv6pt5/48.png	small
3318	sv6pt5-53	https://images.pokemontcg.io/sv6pt5/53.png	small
3319	sv6pt5-56	https://images.pokemontcg.io/sv6pt5/56.png	small
3320	sv6pt5-59	https://images.pokemontcg.io/sv6pt5/59.png	small
3321	sv6pt5-66	https://images.pokemontcg.io/sv6pt5/66.png	small
3322	sv6pt5-67	https://images.pokemontcg.io/sv6pt5/67.png	small
3323	sv6pt5-71	https://images.pokemontcg.io/sv6pt5/71.png	small
3324	sv6pt5-72	https://images.pokemontcg.io/sv6pt5/72.png	small
3325	sv6pt5-84	https://images.pokemontcg.io/sv6pt5/84.png	small
3326	sv6pt5-3	https://images.pokemontcg.io/sv6pt5/3.png	small
3327	sv6pt5-6	https://images.pokemontcg.io/sv6pt5/6.png	small
3328	sv6pt5-9	https://images.pokemontcg.io/sv6pt5/9.png	small
3329	sv6pt5-10	https://images.pokemontcg.io/sv6pt5/10.png	small
3330	sv6pt5-16	https://images.pokemontcg.io/sv6pt5/16.png	small
3331	sv6pt5-22	https://images.pokemontcg.io/sv6pt5/22.png	small
3332	sv6pt5-24	https://images.pokemontcg.io/sv6pt5/24.png	small
3333	sv6pt5-28	https://images.pokemontcg.io/sv6pt5/28.png	small
3334	sv6pt5-31	https://images.pokemontcg.io/sv6pt5/31.png	small
3335	sv6pt5-32	https://images.pokemontcg.io/sv6pt5/32.png	small
3336	sv6pt5-33	https://images.pokemontcg.io/sv6pt5/33.png	small
3337	sv6pt5-34	https://images.pokemontcg.io/sv6pt5/34.png	small
3338	sv6pt5-41	https://images.pokemontcg.io/sv6pt5/41.png	small
3339	sv6pt5-44	https://images.pokemontcg.io/sv6pt5/44.png	small
3340	sv6pt5-47	https://images.pokemontcg.io/sv6pt5/47.png	small
3341	sv6pt5-49	https://images.pokemontcg.io/sv6pt5/49.png	small
3342	sv6pt5-54	https://images.pokemontcg.io/sv6pt5/54.png	small
3343	sv6pt5-55	https://images.pokemontcg.io/sv6pt5/55.png	small
3344	sv6pt5-62	https://images.pokemontcg.io/sv6pt5/62.png	small
3345	sv6pt5-70	https://images.pokemontcg.io/sv6pt5/70.png	small
3346	sv6pt5-75	https://images.pokemontcg.io/sv6pt5/75.png	small
3347	sv6pt5-76	https://images.pokemontcg.io/sv6pt5/76.png	small
3348	sv6pt5-80	https://images.pokemontcg.io/sv6pt5/80.png	small
3349	sv6pt5-81	https://images.pokemontcg.io/sv6pt5/81.png	small
3350	sv6pt5-5	https://images.pokemontcg.io/sv6pt5/5.png	small
3351	sv6pt5-11	https://images.pokemontcg.io/sv6pt5/11.png	small
3352	sv6pt5-15	https://images.pokemontcg.io/sv6pt5/15.png	small
3353	sv6pt5-25	https://images.pokemontcg.io/sv6pt5/25.png	small
3354	sv6pt5-30	https://images.pokemontcg.io/sv6pt5/30.png	small
3355	sv6pt5-38	https://images.pokemontcg.io/sv6pt5/38.png	small
3356	sv6pt5-43	https://images.pokemontcg.io/sv6pt5/43.png	small
3357	sv6pt5-51	https://images.pokemontcg.io/sv6pt5/51.png	small
3358	sv6pt5-52	https://images.pokemontcg.io/sv6pt5/52.png	small
3359	sv6pt5-60	https://images.pokemontcg.io/sv6pt5/60.png	small
3360	sv6pt5-61	https://images.pokemontcg.io/sv6pt5/61.png	small
3361	sv6pt5-65	https://images.pokemontcg.io/sv6pt5/65.png	small
3362	sv6pt5-68	https://images.pokemontcg.io/sv6pt5/68.png	small
3363	sv6pt5-73	https://images.pokemontcg.io/sv6pt5/73.png	small
3364	sv6pt5-74	https://images.pokemontcg.io/sv6pt5/74.png	small
3365	sv6pt5-77	https://images.pokemontcg.io/sv6pt5/77.png	small
3366	sv6pt5-78	https://images.pokemontcg.io/sv6pt5/78.png	small
3367	sv6pt5-79	https://images.pokemontcg.io/sv6pt5/79.png	small
3368	sv6pt5-82	https://images.pokemontcg.io/sv6pt5/82.png	small
3369	sv6pt5-85	https://images.pokemontcg.io/sv6pt5/85.png	small
3370	sv6pt5-86	https://images.pokemontcg.io/sv6pt5/86.png	small
3371	sv6pt5-87	https://images.pokemontcg.io/sv6pt5/87.png	small
3372	sv6pt5-88	https://images.pokemontcg.io/sv6pt5/88.png	small
3373	sv6pt5-89	https://images.pokemontcg.io/sv6pt5/89.png	small
3374	sv6pt5-90	https://images.pokemontcg.io/sv6pt5/90.png	small
3375	sv6pt5-91	https://images.pokemontcg.io/sv6pt5/91.png	small
3376	sv6pt5-92	https://images.pokemontcg.io/sv6pt5/92.png	small
3377	sv6pt5-93	https://images.pokemontcg.io/sv6pt5/93.png	small
3378	sv6pt5-94	https://images.pokemontcg.io/sv6pt5/94.png	small
3379	sv6pt5-95	https://images.pokemontcg.io/sv6pt5/95.png	small
3380	sv6pt5-97	https://images.pokemontcg.io/sv6pt5/97.png	small
3381	sv6pt5-96	https://images.pokemontcg.io/sv6pt5/96.png	small
3382	sv6pt5-98	https://images.pokemontcg.io/sv6pt5/98.png	small
3383	sv6pt5-99	https://images.pokemontcg.io/sv6pt5/99.png	small
3384	sv6pt5-1	https://images.pokemontcg.io/sv6pt5/1_hires.png	large
3385	sv6pt5-8	https://images.pokemontcg.io/sv6pt5/8_hires.png	large
3386	sv6pt5-12	https://images.pokemontcg.io/sv6pt5/12_hires.png	large
3387	sv6pt5-13	https://images.pokemontcg.io/sv6pt5/13_hires.png	large
3388	sv6pt5-14	https://images.pokemontcg.io/sv6pt5/14_hires.png	large
3389	sv6pt5-17	https://images.pokemontcg.io/sv6pt5/17_hires.png	large
3390	sv6pt5-18	https://images.pokemontcg.io/sv6pt5/18_hires.png	large
3391	sv6pt5-20	https://images.pokemontcg.io/sv6pt5/20_hires.png	large
3392	sv6pt5-27	https://images.pokemontcg.io/sv6pt5/27_hires.png	large
3393	sv6pt5-29	https://images.pokemontcg.io/sv6pt5/29_hires.png	large
3394	sv6pt5-40	https://images.pokemontcg.io/sv6pt5/40_hires.png	large
3395	sv6pt5-42	https://images.pokemontcg.io/sv6pt5/42_hires.png	large
3396	sv6pt5-45	https://images.pokemontcg.io/sv6pt5/45_hires.png	large
3397	sv6pt5-46	https://images.pokemontcg.io/sv6pt5/46_hires.png	large
3398	sv6pt5-50	https://images.pokemontcg.io/sv6pt5/50_hires.png	large
3399	sv6pt5-57	https://images.pokemontcg.io/sv6pt5/57_hires.png	large
3400	sv6pt5-58	https://images.pokemontcg.io/sv6pt5/58_hires.png	large
3401	sv6pt5-63	https://images.pokemontcg.io/sv6pt5/63_hires.png	large
3402	sv6pt5-64	https://images.pokemontcg.io/sv6pt5/64_hires.png	large
3403	sv6pt5-69	https://images.pokemontcg.io/sv6pt5/69_hires.png	large
3404	sv6pt5-83	https://images.pokemontcg.io/sv6pt5/83_hires.png	large
3405	sv6pt5-2	https://images.pokemontcg.io/sv6pt5/2_hires.png	large
3406	sv6pt5-4	https://images.pokemontcg.io/sv6pt5/4_hires.png	large
3407	sv6pt5-7	https://images.pokemontcg.io/sv6pt5/7_hires.png	large
3408	sv6pt5-19	https://images.pokemontcg.io/sv6pt5/19_hires.png	large
3409	sv6pt5-21	https://images.pokemontcg.io/sv6pt5/21_hires.png	large
3410	sv6pt5-23	https://images.pokemontcg.io/sv6pt5/23_hires.png	large
3411	sv6pt5-26	https://images.pokemontcg.io/sv6pt5/26_hires.png	large
3412	sv6pt5-35	https://images.pokemontcg.io/sv6pt5/35_hires.png	large
3413	sv6pt5-36	https://images.pokemontcg.io/sv6pt5/36_hires.png	large
3414	sv6pt5-37	https://images.pokemontcg.io/sv6pt5/37_hires.png	large
3415	sv6pt5-39	https://images.pokemontcg.io/sv6pt5/39_hires.png	large
3416	sv6pt5-48	https://images.pokemontcg.io/sv6pt5/48_hires.png	large
3417	sv6pt5-53	https://images.pokemontcg.io/sv6pt5/53_hires.png	large
3418	sv6pt5-56	https://images.pokemontcg.io/sv6pt5/56_hires.png	large
3419	sv6pt5-59	https://images.pokemontcg.io/sv6pt5/59_hires.png	large
3420	sv6pt5-66	https://images.pokemontcg.io/sv6pt5/66_hires.png	large
3421	sv6pt5-67	https://images.pokemontcg.io/sv6pt5/67_hires.png	large
3422	sv6pt5-71	https://images.pokemontcg.io/sv6pt5/71_hires.png	large
3423	sv6pt5-72	https://images.pokemontcg.io/sv6pt5/72_hires.png	large
3424	sv6pt5-84	https://images.pokemontcg.io/sv6pt5/84_hires.png	large
3425	sv6pt5-3	https://images.pokemontcg.io/sv6pt5/3_hires.png	large
3426	sv6pt5-6	https://images.pokemontcg.io/sv6pt5/6_hires.png	large
3427	sv6pt5-9	https://images.pokemontcg.io/sv6pt5/9_hires.png	large
3428	sv6pt5-10	https://images.pokemontcg.io/sv6pt5/10_hires.png	large
3429	sv6pt5-16	https://images.pokemontcg.io/sv6pt5/16_hires.png	large
3430	sv6pt5-22	https://images.pokemontcg.io/sv6pt5/22_hires.png	large
3431	sv6pt5-24	https://images.pokemontcg.io/sv6pt5/24_hires.png	large
3432	sv6pt5-28	https://images.pokemontcg.io/sv6pt5/28_hires.png	large
3433	sv6pt5-31	https://images.pokemontcg.io/sv6pt5/31_hires.png	large
3434	sv6pt5-32	https://images.pokemontcg.io/sv6pt5/32_hires.png	large
3435	sv6pt5-33	https://images.pokemontcg.io/sv6pt5/33_hires.png	large
3436	sv6pt5-34	https://images.pokemontcg.io/sv6pt5/34_hires.png	large
3437	sv6pt5-41	https://images.pokemontcg.io/sv6pt5/41_hires.png	large
3438	sv6pt5-44	https://images.pokemontcg.io/sv6pt5/44_hires.png	large
3439	sv6pt5-47	https://images.pokemontcg.io/sv6pt5/47_hires.png	large
3440	sv6pt5-49	https://images.pokemontcg.io/sv6pt5/49_hires.png	large
3441	sv6pt5-54	https://images.pokemontcg.io/sv6pt5/54_hires.png	large
3442	sv6pt5-55	https://images.pokemontcg.io/sv6pt5/55_hires.png	large
3443	sv6pt5-62	https://images.pokemontcg.io/sv6pt5/62_hires.png	large
3444	sv6pt5-70	https://images.pokemontcg.io/sv6pt5/70_hires.png	large
3445	sv6pt5-75	https://images.pokemontcg.io/sv6pt5/75_hires.png	large
3446	sv6pt5-76	https://images.pokemontcg.io/sv6pt5/76_hires.png	large
3447	sv6pt5-80	https://images.pokemontcg.io/sv6pt5/80_hires.png	large
3448	sv6pt5-81	https://images.pokemontcg.io/sv6pt5/81_hires.png	large
3449	sv6pt5-5	https://images.pokemontcg.io/sv6pt5/5_hires.png	large
3450	sv6pt5-11	https://images.pokemontcg.io/sv6pt5/11_hires.png	large
3451	sv6pt5-15	https://images.pokemontcg.io/sv6pt5/15_hires.png	large
3452	sv6pt5-25	https://images.pokemontcg.io/sv6pt5/25_hires.png	large
3453	sv6pt5-30	https://images.pokemontcg.io/sv6pt5/30_hires.png	large
3454	sv6pt5-38	https://images.pokemontcg.io/sv6pt5/38_hires.png	large
3455	sv6pt5-43	https://images.pokemontcg.io/sv6pt5/43_hires.png	large
3456	sv6pt5-51	https://images.pokemontcg.io/sv6pt5/51_hires.png	large
3457	sv6pt5-52	https://images.pokemontcg.io/sv6pt5/52_hires.png	large
3458	sv6pt5-60	https://images.pokemontcg.io/sv6pt5/60_hires.png	large
3459	sv6pt5-61	https://images.pokemontcg.io/sv6pt5/61_hires.png	large
3460	sv6pt5-65	https://images.pokemontcg.io/sv6pt5/65_hires.png	large
3461	sv6pt5-68	https://images.pokemontcg.io/sv6pt5/68_hires.png	large
3462	sv6pt5-73	https://images.pokemontcg.io/sv6pt5/73_hires.png	large
3463	sv6pt5-74	https://images.pokemontcg.io/sv6pt5/74_hires.png	large
3464	sv6pt5-77	https://images.pokemontcg.io/sv6pt5/77_hires.png	large
3465	sv6pt5-78	https://images.pokemontcg.io/sv6pt5/78_hires.png	large
3466	sv6pt5-79	https://images.pokemontcg.io/sv6pt5/79_hires.png	large
3467	sv6pt5-82	https://images.pokemontcg.io/sv6pt5/82_hires.png	large
3468	sv6pt5-85	https://images.pokemontcg.io/sv6pt5/85_hires.png	large
3469	sv6pt5-86	https://images.pokemontcg.io/sv6pt5/86_hires.png	large
3470	sv6pt5-87	https://images.pokemontcg.io/sv6pt5/87_hires.png	large
3471	sv6pt5-88	https://images.pokemontcg.io/sv6pt5/88_hires.png	large
3472	sv6pt5-89	https://images.pokemontcg.io/sv6pt5/89_hires.png	large
3473	sv6pt5-90	https://images.pokemontcg.io/sv6pt5/90_hires.png	large
3474	sv6pt5-91	https://images.pokemontcg.io/sv6pt5/91_hires.png	large
3475	sv6pt5-92	https://images.pokemontcg.io/sv6pt5/92_hires.png	large
3476	sv6pt5-93	https://images.pokemontcg.io/sv6pt5/93_hires.png	large
3477	sv6pt5-94	https://images.pokemontcg.io/sv6pt5/94_hires.png	large
3478	sv6pt5-95	https://images.pokemontcg.io/sv6pt5/95_hires.png	large
3479	sv6pt5-97	https://images.pokemontcg.io/sv6pt5/97_hires.png	large
3480	sv6pt5-96	https://images.pokemontcg.io/sv6pt5/96_hires.png	large
3481	sv6pt5-98	https://images.pokemontcg.io/sv6pt5/98_hires.png	large
3482	sv6pt5-99	https://images.pokemontcg.io/sv6pt5/99_hires.png	large
3483	sv7-1	https://images.pokemontcg.io/sv7/1.png	small
3484	sv7-2	https://images.pokemontcg.io/sv7/2.png	small
3485	sv7-3	https://images.pokemontcg.io/sv7/3.png	small
3486	sv7-4	https://images.pokemontcg.io/sv7/4.png	small
3487	sv7-5	https://images.pokemontcg.io/sv7/5.png	small
3488	sv7-6	https://images.pokemontcg.io/sv7/6.png	small
3489	sv7-7	https://images.pokemontcg.io/sv7/7.png	small
3490	sv7-8	https://images.pokemontcg.io/sv7/8.png	small
3491	sv7-9	https://images.pokemontcg.io/sv7/9.png	small
3492	sv7-10	https://images.pokemontcg.io/sv7/10.png	small
3493	sv7-11	https://images.pokemontcg.io/sv7/11.png	small
3494	sv7-12	https://images.pokemontcg.io/sv7/12.png	small
3495	sv7-13	https://images.pokemontcg.io/sv7/13.png	small
3496	sv7-14	https://images.pokemontcg.io/sv7/14.png	small
3497	sv7-15	https://images.pokemontcg.io/sv7/15.png	small
3498	sv7-16	https://images.pokemontcg.io/sv7/16.png	small
3499	sv7-17	https://images.pokemontcg.io/sv7/17.png	small
3500	sv7-18	https://images.pokemontcg.io/sv7/18.png	small
3501	sv7-19	https://images.pokemontcg.io/sv7/19.png	small
3502	sv7-20	https://images.pokemontcg.io/sv7/20.png	small
3503	sv7-21	https://images.pokemontcg.io/sv7/21.png	small
3504	sv7-22	https://images.pokemontcg.io/sv7/22.png	small
3505	sv7-23	https://images.pokemontcg.io/sv7/23.png	small
3506	sv7-24	https://images.pokemontcg.io/sv7/24.png	small
3507	sv7-25	https://images.pokemontcg.io/sv7/25.png	small
3508	sv7-26	https://images.pokemontcg.io/sv7/26.png	small
3509	sv7-27	https://images.pokemontcg.io/sv7/27.png	small
3510	sv7-28	https://images.pokemontcg.io/sv7/28.png	small
3511	sv7-29	https://images.pokemontcg.io/sv7/29.png	small
3512	sv7-30	https://images.pokemontcg.io/sv7/30.png	small
3513	sv7-31	https://images.pokemontcg.io/sv7/31.png	small
3514	sv7-32	https://images.pokemontcg.io/sv7/32.png	small
3515	sv7-33	https://images.pokemontcg.io/sv7/33.png	small
3516	sv7-34	https://images.pokemontcg.io/sv7/34.png	small
3517	sv7-35	https://images.pokemontcg.io/sv7/35.png	small
3518	sv7-36	https://images.pokemontcg.io/sv7/36.png	small
3519	sv7-37	https://images.pokemontcg.io/sv7/37.png	small
3520	sv7-38	https://images.pokemontcg.io/sv7/38.png	small
3521	sv7-39	https://images.pokemontcg.io/sv7/39.png	small
3522	sv7-40	https://images.pokemontcg.io/sv7/40.png	small
3523	sv7-41	https://images.pokemontcg.io/sv7/41.png	small
3524	sv7-42	https://images.pokemontcg.io/sv7/42.png	small
3525	sv7-43	https://images.pokemontcg.io/sv7/43.png	small
3526	sv7-44	https://images.pokemontcg.io/sv7/44.png	small
3527	sv7-45	https://images.pokemontcg.io/sv7/45.png	small
3528	sv7-46	https://images.pokemontcg.io/sv7/46.png	small
3529	sv7-47	https://images.pokemontcg.io/sv7/47.png	small
3530	sv7-48	https://images.pokemontcg.io/sv7/48.png	small
3531	sv7-49	https://images.pokemontcg.io/sv7/49.png	small
3532	sv7-50	https://images.pokemontcg.io/sv7/50.png	small
3533	sv7-51	https://images.pokemontcg.io/sv7/51.png	small
3534	sv7-52	https://images.pokemontcg.io/sv7/52.png	small
3535	sv7-53	https://images.pokemontcg.io/sv7/53.png	small
3536	sv7-54	https://images.pokemontcg.io/sv7/54.png	small
3537	sv7-55	https://images.pokemontcg.io/sv7/55.png	small
3538	sv7-56	https://images.pokemontcg.io/sv7/56.png	small
3539	sv7-57	https://images.pokemontcg.io/sv7/57.png	small
3540	sv7-58	https://images.pokemontcg.io/sv7/58.png	small
3541	sv7-59	https://images.pokemontcg.io/sv7/59.png	small
3542	sv7-60	https://images.pokemontcg.io/sv7/60.png	small
3543	sv7-61	https://images.pokemontcg.io/sv7/61.png	small
3544	sv7-62	https://images.pokemontcg.io/sv7/62.png	small
3545	sv7-63	https://images.pokemontcg.io/sv7/63.png	small
3546	sv7-64	https://images.pokemontcg.io/sv7/64.png	small
3547	sv7-65	https://images.pokemontcg.io/sv7/65.png	small
3548	sv7-66	https://images.pokemontcg.io/sv7/66.png	small
3549	sv7-67	https://images.pokemontcg.io/sv7/67.png	small
3550	sv7-68	https://images.pokemontcg.io/sv7/68.png	small
3551	sv7-69	https://images.pokemontcg.io/sv7/69.png	small
3552	sv7-70	https://images.pokemontcg.io/sv7/70.png	small
3553	sv7-71	https://images.pokemontcg.io/sv7/71.png	small
3554	sv7-72	https://images.pokemontcg.io/sv7/72.png	small
3555	sv7-73	https://images.pokemontcg.io/sv7/73.png	small
3556	sv7-74	https://images.pokemontcg.io/sv7/74.png	small
3557	sv7-75	https://images.pokemontcg.io/sv7/75.png	small
3558	sv7-76	https://images.pokemontcg.io/sv7/76.png	small
3559	sv7-77	https://images.pokemontcg.io/sv7/77.png	small
3560	sv7-78	https://images.pokemontcg.io/sv7/78.png	small
3561	sv7-79	https://images.pokemontcg.io/sv7/79.png	small
3562	sv7-80	https://images.pokemontcg.io/sv7/80.png	small
3563	sv7-81	https://images.pokemontcg.io/sv7/81.png	small
3564	sv7-82	https://images.pokemontcg.io/sv7/82.png	small
3565	sv7-83	https://images.pokemontcg.io/sv7/83.png	small
3566	sv7-84	https://images.pokemontcg.io/sv7/84.png	small
3567	sv7-85	https://images.pokemontcg.io/sv7/85.png	small
3568	sv7-86	https://images.pokemontcg.io/sv7/86.png	small
3569	sv7-87	https://images.pokemontcg.io/sv7/87.png	small
3570	sv7-88	https://images.pokemontcg.io/sv7/88.png	small
3571	sv7-89	https://images.pokemontcg.io/sv7/89.png	small
3572	sv7-90	https://images.pokemontcg.io/sv7/90.png	small
3573	sv7-91	https://images.pokemontcg.io/sv7/91.png	small
3574	sv7-92	https://images.pokemontcg.io/sv7/92.png	small
3575	sv7-93	https://images.pokemontcg.io/sv7/93.png	small
3576	sv7-94	https://images.pokemontcg.io/sv7/94.png	small
3577	sv7-95	https://images.pokemontcg.io/sv7/95.png	small
3578	sv7-96	https://images.pokemontcg.io/sv7/96.png	small
3579	sv7-97	https://images.pokemontcg.io/sv7/97.png	small
3580	sv7-98	https://images.pokemontcg.io/sv7/98.png	small
3581	sv7-99	https://images.pokemontcg.io/sv7/99.png	small
3582	sv7-100	https://images.pokemontcg.io/sv7/100.png	small
3583	sv7-101	https://images.pokemontcg.io/sv7/101.png	small
3584	sv7-102	https://images.pokemontcg.io/sv7/102.png	small
3585	sv7-103	https://images.pokemontcg.io/sv7/103.png	small
3586	sv7-104	https://images.pokemontcg.io/sv7/104.png	small
3587	sv7-105	https://images.pokemontcg.io/sv7/105.png	small
3588	sv7-106	https://images.pokemontcg.io/sv7/106.png	small
3589	sv7-107	https://images.pokemontcg.io/sv7/107.png	small
3590	sv7-108	https://images.pokemontcg.io/sv7/108.png	small
3591	sv7-109	https://images.pokemontcg.io/sv7/109.png	small
3592	sv7-110	https://images.pokemontcg.io/sv7/110.png	small
3593	sv7-111	https://images.pokemontcg.io/sv7/111.png	small
3594	sv7-112	https://images.pokemontcg.io/sv7/112.png	small
3595	sv7-113	https://images.pokemontcg.io/sv7/113.png	small
3596	sv7-114	https://images.pokemontcg.io/sv7/114.png	small
3597	sv7-115	https://images.pokemontcg.io/sv7/115.png	small
3598	sv7-116	https://images.pokemontcg.io/sv7/116.png	small
3599	sv7-117	https://images.pokemontcg.io/sv7/117.png	small
3600	sv7-118	https://images.pokemontcg.io/sv7/118.png	small
3601	sv7-119	https://images.pokemontcg.io/sv7/119.png	small
3602	sv7-120	https://images.pokemontcg.io/sv7/120.png	small
3603	sv7-121	https://images.pokemontcg.io/sv7/121.png	small
3604	sv7-122	https://images.pokemontcg.io/sv7/122.png	small
3605	sv7-123	https://images.pokemontcg.io/sv7/123.png	small
3606	sv7-124	https://images.pokemontcg.io/sv7/124.png	small
3607	sv7-125	https://images.pokemontcg.io/sv7/125.png	small
3608	sv7-126	https://images.pokemontcg.io/sv7/126.png	small
3609	sv7-127	https://images.pokemontcg.io/sv7/127.png	small
3610	sv7-128	https://images.pokemontcg.io/sv7/128.png	small
3611	sv7-129	https://images.pokemontcg.io/sv7/129.png	small
3612	sv7-130	https://images.pokemontcg.io/sv7/130.png	small
3613	sv7-131	https://images.pokemontcg.io/sv7/131.png	small
3614	sv7-132	https://images.pokemontcg.io/sv7/132.png	small
3615	sv7-133	https://images.pokemontcg.io/sv7/133.png	small
3616	sv7-134	https://images.pokemontcg.io/sv7/134.png	small
3617	sv7-135	https://images.pokemontcg.io/sv7/135.png	small
3618	sv7-136	https://images.pokemontcg.io/sv7/136.png	small
3619	sv7-137	https://images.pokemontcg.io/sv7/137.png	small
3620	sv7-138	https://images.pokemontcg.io/sv7/138.png	small
3621	sv7-139	https://images.pokemontcg.io/sv7/139.png	small
3622	sv7-140	https://images.pokemontcg.io/sv7/140.png	small
3623	sv7-141	https://images.pokemontcg.io/sv7/141.png	small
3624	sv7-142	https://images.pokemontcg.io/sv7/142.png	small
3625	sv7-143	https://images.pokemontcg.io/sv7/143.png	small
3626	sv7-144	https://images.pokemontcg.io/sv7/144.png	small
3627	sv7-145	https://images.pokemontcg.io/sv7/145.png	small
3628	sv7-146	https://images.pokemontcg.io/sv7/146.png	small
3629	sv7-147	https://images.pokemontcg.io/sv7/147.png	small
3630	sv7-148	https://images.pokemontcg.io/sv7/148.png	small
3631	sv7-149	https://images.pokemontcg.io/sv7/149.png	small
3632	sv7-150	https://images.pokemontcg.io/sv7/150.png	small
3633	sv7-151	https://images.pokemontcg.io/sv7/151.png	small
3634	sv7-152	https://images.pokemontcg.io/sv7/152.png	small
3635	sv7-153	https://images.pokemontcg.io/sv7/153.png	small
3636	sv7-154	https://images.pokemontcg.io/sv7/154.png	small
3637	sv7-155	https://images.pokemontcg.io/sv7/155.png	small
3638	sv7-156	https://images.pokemontcg.io/sv7/156.png	small
3639	sv7-157	https://images.pokemontcg.io/sv7/157.png	small
3640	sv7-158	https://images.pokemontcg.io/sv7/158.png	small
3641	sv7-159	https://images.pokemontcg.io/sv7/159.png	small
3642	sv7-160	https://images.pokemontcg.io/sv7/160.png	small
3643	sv7-161	https://images.pokemontcg.io/sv7/161.png	small
3644	sv7-162	https://images.pokemontcg.io/sv7/162.png	small
3645	sv7-163	https://images.pokemontcg.io/sv7/163.png	small
3646	sv7-164	https://images.pokemontcg.io/sv7/164.png	small
3647	sv7-165	https://images.pokemontcg.io/sv7/165.png	small
3648	sv7-166	https://images.pokemontcg.io/sv7/166.png	small
3649	sv7-167	https://images.pokemontcg.io/sv7/167.png	small
3650	sv7-168	https://images.pokemontcg.io/sv7/168.png	small
3651	sv7-169	https://images.pokemontcg.io/sv7/169.png	small
3652	sv7-170	https://images.pokemontcg.io/sv7/170.png	small
3653	sv7-171	https://images.pokemontcg.io/sv7/171.png	small
3654	sv7-172	https://images.pokemontcg.io/sv7/172.png	small
3655	sv7-173	https://images.pokemontcg.io/sv7/173.png	small
3656	sv7-174	https://images.pokemontcg.io/sv7/174.png	small
3657	sv7-175	https://images.pokemontcg.io/sv7/175.png	small
3658	sv7-1	https://images.pokemontcg.io/sv7/1_hires.png	large
3659	sv7-2	https://images.pokemontcg.io/sv7/2_hires.png	large
3660	sv7-3	https://images.pokemontcg.io/sv7/3_hires.png	large
3661	sv7-4	https://images.pokemontcg.io/sv7/4_hires.png	large
3662	sv7-5	https://images.pokemontcg.io/sv7/5_hires.png	large
3663	sv7-6	https://images.pokemontcg.io/sv7/6_hires.png	large
3664	sv7-7	https://images.pokemontcg.io/sv7/7_hires.png	large
3665	sv7-8	https://images.pokemontcg.io/sv7/8_hires.png	large
3666	sv7-9	https://images.pokemontcg.io/sv7/9_hires.png	large
3667	sv7-10	https://images.pokemontcg.io/sv7/10_hires.png	large
3668	sv7-11	https://images.pokemontcg.io/sv7/11_hires.png	large
3669	sv7-12	https://images.pokemontcg.io/sv7/12_hires.png	large
3670	sv7-13	https://images.pokemontcg.io/sv7/13_hires.png	large
3671	sv7-14	https://images.pokemontcg.io/sv7/14_hires.png	large
3672	sv7-15	https://images.pokemontcg.io/sv7/15_hires.png	large
3673	sv7-16	https://images.pokemontcg.io/sv7/16_hires.png	large
3674	sv7-17	https://images.pokemontcg.io/sv7/17_hires.png	large
3675	sv7-18	https://images.pokemontcg.io/sv7/18_hires.png	large
3676	sv7-19	https://images.pokemontcg.io/sv7/19_hires.png	large
3677	sv7-20	https://images.pokemontcg.io/sv7/20_hires.png	large
3678	sv7-21	https://images.pokemontcg.io/sv7/21_hires.png	large
3679	sv7-22	https://images.pokemontcg.io/sv7/22_hires.png	large
3680	sv7-23	https://images.pokemontcg.io/sv7/23_hires.png	large
3681	sv7-24	https://images.pokemontcg.io/sv7/24_hires.png	large
3682	sv7-25	https://images.pokemontcg.io/sv7/25_hires.png	large
3683	sv7-26	https://images.pokemontcg.io/sv7/26_hires.png	large
3684	sv7-27	https://images.pokemontcg.io/sv7/27_hires.png	large
3685	sv7-28	https://images.pokemontcg.io/sv7/28_hires.png	large
3686	sv7-29	https://images.pokemontcg.io/sv7/29_hires.png	large
3687	sv7-30	https://images.pokemontcg.io/sv7/30_hires.png	large
3688	sv7-31	https://images.pokemontcg.io/sv7/31_hires.png	large
3689	sv7-32	https://images.pokemontcg.io/sv7/32_hires.png	large
3690	sv7-33	https://images.pokemontcg.io/sv7/33_hires.png	large
3691	sv7-34	https://images.pokemontcg.io/sv7/34_hires.png	large
3692	sv7-35	https://images.pokemontcg.io/sv7/35_hires.png	large
3693	sv7-36	https://images.pokemontcg.io/sv7/36_hires.png	large
3694	sv7-37	https://images.pokemontcg.io/sv7/37_hires.png	large
3695	sv7-38	https://images.pokemontcg.io/sv7/38_hires.png	large
3696	sv7-39	https://images.pokemontcg.io/sv7/39_hires.png	large
3697	sv7-40	https://images.pokemontcg.io/sv7/40_hires.png	large
3698	sv7-41	https://images.pokemontcg.io/sv7/41_hires.png	large
3699	sv7-42	https://images.pokemontcg.io/sv7/42_hires.png	large
3700	sv7-43	https://images.pokemontcg.io/sv7/43_hires.png	large
3701	sv7-44	https://images.pokemontcg.io/sv7/44_hires.png	large
3702	sv7-45	https://images.pokemontcg.io/sv7/45_hires.png	large
3703	sv7-46	https://images.pokemontcg.io/sv7/46_hires.png	large
3704	sv7-47	https://images.pokemontcg.io/sv7/47_hires.png	large
3705	sv7-48	https://images.pokemontcg.io/sv7/48_hires.png	large
3706	sv7-49	https://images.pokemontcg.io/sv7/49_hires.png	large
3707	sv7-50	https://images.pokemontcg.io/sv7/50_hires.png	large
3708	sv7-51	https://images.pokemontcg.io/sv7/51_hires.png	large
3709	sv7-52	https://images.pokemontcg.io/sv7/52_hires.png	large
3710	sv7-53	https://images.pokemontcg.io/sv7/53_hires.png	large
3711	sv7-54	https://images.pokemontcg.io/sv7/54_hires.png	large
3712	sv7-55	https://images.pokemontcg.io/sv7/55_hires.png	large
3713	sv7-56	https://images.pokemontcg.io/sv7/56_hires.png	large
3714	sv7-57	https://images.pokemontcg.io/sv7/57_hires.png	large
3715	sv7-58	https://images.pokemontcg.io/sv7/58_hires.png	large
3716	sv7-59	https://images.pokemontcg.io/sv7/59_hires.png	large
3717	sv7-60	https://images.pokemontcg.io/sv7/60_hires.png	large
3718	sv7-61	https://images.pokemontcg.io/sv7/61_hires.png	large
3719	sv7-62	https://images.pokemontcg.io/sv7/62_hires.png	large
3720	sv7-63	https://images.pokemontcg.io/sv7/63_hires.png	large
3721	sv7-64	https://images.pokemontcg.io/sv7/64_hires.png	large
3722	sv7-65	https://images.pokemontcg.io/sv7/65_hires.png	large
3723	sv7-66	https://images.pokemontcg.io/sv7/66_hires.png	large
3724	sv7-67	https://images.pokemontcg.io/sv7/67_hires.png	large
3725	sv7-68	https://images.pokemontcg.io/sv7/68_hires.png	large
3726	sv7-69	https://images.pokemontcg.io/sv7/69_hires.png	large
3727	sv7-70	https://images.pokemontcg.io/sv7/70_hires.png	large
3728	sv7-71	https://images.pokemontcg.io/sv7/71_hires.png	large
3729	sv7-72	https://images.pokemontcg.io/sv7/72_hires.png	large
3730	sv7-73	https://images.pokemontcg.io/sv7/73_hires.png	large
3731	sv7-74	https://images.pokemontcg.io/sv7/74_hires.png	large
3732	sv7-75	https://images.pokemontcg.io/sv7/75_hires.png	large
3733	sv7-76	https://images.pokemontcg.io/sv7/76_hires.png	large
3734	sv7-77	https://images.pokemontcg.io/sv7/77_hires.png	large
3735	sv7-78	https://images.pokemontcg.io/sv7/78_hires.png	large
3736	sv7-79	https://images.pokemontcg.io/sv7/79_hires.png	large
3737	sv7-80	https://images.pokemontcg.io/sv7/80_hires.png	large
3738	sv7-81	https://images.pokemontcg.io/sv7/81_hires.png	large
3739	sv7-82	https://images.pokemontcg.io/sv7/82_hires.png	large
3740	sv7-83	https://images.pokemontcg.io/sv7/83_hires.png	large
3741	sv7-84	https://images.pokemontcg.io/sv7/84_hires.png	large
3742	sv7-85	https://images.pokemontcg.io/sv7/85_hires.png	large
3743	sv7-86	https://images.pokemontcg.io/sv7/86_hires.png	large
3744	sv7-87	https://images.pokemontcg.io/sv7/87_hires.png	large
3745	sv7-88	https://images.pokemontcg.io/sv7/88_hires.png	large
3746	sv7-89	https://images.pokemontcg.io/sv7/89_hires.png	large
3747	sv7-90	https://images.pokemontcg.io/sv7/90_hires.png	large
3748	sv7-91	https://images.pokemontcg.io/sv7/91_hires.png	large
3749	sv7-92	https://images.pokemontcg.io/sv7/92_hires.png	large
3750	sv7-93	https://images.pokemontcg.io/sv7/93_hires.png	large
3751	sv7-94	https://images.pokemontcg.io/sv7/94_hires.png	large
3752	sv7-95	https://images.pokemontcg.io/sv7/95_hires.png	large
3753	sv7-96	https://images.pokemontcg.io/sv7/96_hires.png	large
3754	sv7-97	https://images.pokemontcg.io/sv7/97_hires.png	large
3755	sv7-98	https://images.pokemontcg.io/sv7/98_hires.png	large
3756	sv7-99	https://images.pokemontcg.io/sv7/99_hires.png	large
3757	sv7-100	https://images.pokemontcg.io/sv7/100_hires.png	large
3758	sv7-101	https://images.pokemontcg.io/sv7/101_hires.png	large
3759	sv7-102	https://images.pokemontcg.io/sv7/102_hires.png	large
3760	sv7-103	https://images.pokemontcg.io/sv7/103_hires.png	large
3761	sv7-104	https://images.pokemontcg.io/sv7/104_hires.png	large
3762	sv7-105	https://images.pokemontcg.io/sv7/105_hires.png	large
3763	sv7-106	https://images.pokemontcg.io/sv7/106_hires.png	large
3764	sv7-107	https://images.pokemontcg.io/sv7/107_hires.png	large
3765	sv7-108	https://images.pokemontcg.io/sv7/108_hires.png	large
3766	sv7-109	https://images.pokemontcg.io/sv7/109_hires.png	large
3767	sv7-110	https://images.pokemontcg.io/sv7/110_hires.png	large
3768	sv7-111	https://images.pokemontcg.io/sv7/111_hires.png	large
3769	sv7-112	https://images.pokemontcg.io/sv7/112_hires.png	large
3770	sv7-113	https://images.pokemontcg.io/sv7/113_hires.png	large
3771	sv7-114	https://images.pokemontcg.io/sv7/114_hires.png	large
3772	sv7-115	https://images.pokemontcg.io/sv7/115_hires.png	large
3773	sv7-116	https://images.pokemontcg.io/sv7/116_hires.png	large
3774	sv7-117	https://images.pokemontcg.io/sv7/117_hires.png	large
3775	sv7-118	https://images.pokemontcg.io/sv7/118_hires.png	large
3776	sv7-119	https://images.pokemontcg.io/sv7/119_hires.png	large
3777	sv7-120	https://images.pokemontcg.io/sv7/120_hires.png	large
3778	sv7-121	https://images.pokemontcg.io/sv7/121_hires.png	large
3779	sv7-122	https://images.pokemontcg.io/sv7/122_hires.png	large
3780	sv7-123	https://images.pokemontcg.io/sv7/123_hires.png	large
3781	sv7-124	https://images.pokemontcg.io/sv7/124_hires.png	large
3782	sv7-125	https://images.pokemontcg.io/sv7/125_hires.png	large
3783	sv7-126	https://images.pokemontcg.io/sv7/126_hires.png	large
3784	sv7-127	https://images.pokemontcg.io/sv7/127_hires.png	large
3785	sv7-128	https://images.pokemontcg.io/sv7/128_hires.png	large
3786	sv7-129	https://images.pokemontcg.io/sv7/129_hires.png	large
3787	sv7-130	https://images.pokemontcg.io/sv7/130_hires.png	large
3788	sv7-131	https://images.pokemontcg.io/sv7/131_hires.png	large
3789	sv7-132	https://images.pokemontcg.io/sv7/132_hires.png	large
3790	sv7-133	https://images.pokemontcg.io/sv7/133_hires.png	large
3791	sv7-134	https://images.pokemontcg.io/sv7/134_hires.png	large
3792	sv7-135	https://images.pokemontcg.io/sv7/135_hires.png	large
3793	sv7-136	https://images.pokemontcg.io/sv7/136_hires.png	large
3794	sv7-137	https://images.pokemontcg.io/sv7/137_hires.png	large
3795	sv7-138	https://images.pokemontcg.io/sv7/138_hires.png	large
3796	sv7-139	https://images.pokemontcg.io/sv7/139_hires.png	large
3797	sv7-140	https://images.pokemontcg.io/sv7/140_hires.png	large
3798	sv7-141	https://images.pokemontcg.io/sv7/141_hires.png	large
3799	sv7-142	https://images.pokemontcg.io/sv7/142_hires.png	large
3800	sv7-143	https://images.pokemontcg.io/sv7/143_hires.png	large
3801	sv7-144	https://images.pokemontcg.io/sv7/144_hires.png	large
3802	sv7-145	https://images.pokemontcg.io/sv7/145_hires.png	large
3803	sv7-146	https://images.pokemontcg.io/sv7/146_hires.png	large
3804	sv7-147	https://images.pokemontcg.io/sv7/147_hires.png	large
3805	sv7-148	https://images.pokemontcg.io/sv7/148_hires.png	large
3806	sv7-149	https://images.pokemontcg.io/sv7/149_hires.png	large
3807	sv7-150	https://images.pokemontcg.io/sv7/150_hires.png	large
3808	sv7-151	https://images.pokemontcg.io/sv7/151_hires.png	large
3809	sv7-152	https://images.pokemontcg.io/sv7/152_hires.png	large
3810	sv7-153	https://images.pokemontcg.io/sv7/153_hires.png	large
3811	sv7-154	https://images.pokemontcg.io/sv7/154_hires.png	large
3812	sv7-155	https://images.pokemontcg.io/sv7/155_hires.png	large
3813	sv7-156	https://images.pokemontcg.io/sv7/156_hires.png	large
3814	sv7-157	https://images.pokemontcg.io/sv7/157_hires.png	large
3815	sv7-158	https://images.pokemontcg.io/sv7/158_hires.png	large
3816	sv7-159	https://images.pokemontcg.io/sv7/159_hires.png	large
3817	sv7-160	https://images.pokemontcg.io/sv7/160_hires.png	large
3818	sv7-161	https://images.pokemontcg.io/sv7/161_hires.png	large
3819	sv7-162	https://images.pokemontcg.io/sv7/162_hires.png	large
3820	sv7-163	https://images.pokemontcg.io/sv7/163_hires.png	large
3821	sv7-164	https://images.pokemontcg.io/sv7/164_hires.png	large
3822	sv7-165	https://images.pokemontcg.io/sv7/165_hires.png	large
3823	sv7-166	https://images.pokemontcg.io/sv7/166_hires.png	large
3824	sv7-167	https://images.pokemontcg.io/sv7/167_hires.png	large
3825	sv7-168	https://images.pokemontcg.io/sv7/168_hires.png	large
3826	sv7-169	https://images.pokemontcg.io/sv7/169_hires.png	large
3827	sv7-170	https://images.pokemontcg.io/sv7/170_hires.png	large
3828	sv7-171	https://images.pokemontcg.io/sv7/171_hires.png	large
3829	sv7-172	https://images.pokemontcg.io/sv7/172_hires.png	large
3830	sv7-173	https://images.pokemontcg.io/sv7/173_hires.png	large
3831	sv7-174	https://images.pokemontcg.io/sv7/174_hires.png	large
3832	sv7-175	https://images.pokemontcg.io/sv7/175_hires.png	large
3833	sv8-1	https://images.pokemontcg.io/sv8/1.png	small
3834	sv8-2	https://images.pokemontcg.io/sv8/2.png	small
3835	sv8-3	https://images.pokemontcg.io/sv8/3.png	small
3836	sv8-11	https://images.pokemontcg.io/sv8/11.png	small
3837	sv8-14	https://images.pokemontcg.io/sv8/14.png	small
3838	sv8-16	https://images.pokemontcg.io/sv8/16.png	small
3839	sv8-17	https://images.pokemontcg.io/sv8/17.png	small
3840	sv8-24	https://images.pokemontcg.io/sv8/24.png	small
3841	sv8-27	https://images.pokemontcg.io/sv8/27.png	small
3842	sv8-30	https://images.pokemontcg.io/sv8/30.png	small
3843	sv8-31	https://images.pokemontcg.io/sv8/31.png	small
3844	sv8-29	https://images.pokemontcg.io/sv8/29.png	small
3845	sv8-25	https://images.pokemontcg.io/sv8/25.png	small
3846	sv8-4	https://images.pokemontcg.io/sv8/4.png	small
3847	sv8-6	https://images.pokemontcg.io/sv8/6.png	small
3848	sv8-5	https://images.pokemontcg.io/sv8/5.png	small
3849	sv8-8	https://images.pokemontcg.io/sv8/8.png	small
3850	sv8-9	https://images.pokemontcg.io/sv8/9.png	small
3851	sv8-10	https://images.pokemontcg.io/sv8/10.png	small
3852	sv8-15	https://images.pokemontcg.io/sv8/15.png	small
3853	sv8-28	https://images.pokemontcg.io/sv8/28.png	small
3854	sv8-7	https://images.pokemontcg.io/sv8/7.png	small
3855	sv8-13	https://images.pokemontcg.io/sv8/13.png	small
3856	sv8-18	https://images.pokemontcg.io/sv8/18.png	small
3857	sv8-19	https://images.pokemontcg.io/sv8/19.png	small
3858	sv8-21	https://images.pokemontcg.io/sv8/21.png	small
3859	sv8-23	https://images.pokemontcg.io/sv8/23.png	small
3860	sv8-20	https://images.pokemontcg.io/sv8/20.png	small
3861	sv8-22	https://images.pokemontcg.io/sv8/22.png	small
3862	sv8-12	https://images.pokemontcg.io/sv8/12.png	small
3863	sv8-26	https://images.pokemontcg.io/sv8/26.png	small
3864	sv8-36	https://images.pokemontcg.io/sv8/36.png	small
3865	sv8-38	https://images.pokemontcg.io/sv8/38.png	small
3866	sv8-34	https://images.pokemontcg.io/sv8/34.png	small
3867	sv8-39	https://images.pokemontcg.io/sv8/39.png	small
3868	sv8-40	https://images.pokemontcg.io/sv8/40.png	small
3869	sv8-43	https://images.pokemontcg.io/sv8/43.png	small
3870	sv8-45	https://images.pokemontcg.io/sv8/45.png	small
3871	sv8-46	https://images.pokemontcg.io/sv8/46.png	small
3872	sv8-32	https://images.pokemontcg.io/sv8/32.png	small
3873	sv8-37	https://images.pokemontcg.io/sv8/37.png	small
3874	sv8-47	https://images.pokemontcg.io/sv8/47.png	small
3875	sv8-42	https://images.pokemontcg.io/sv8/42.png	small
3876	sv8-44	https://images.pokemontcg.io/sv8/44.png	small
3877	sv8-33	https://images.pokemontcg.io/sv8/33.png	small
3878	sv8-35	https://images.pokemontcg.io/sv8/35.png	small
3879	sv8-41	https://images.pokemontcg.io/sv8/41.png	small
3880	sv8-48	https://images.pokemontcg.io/sv8/48.png	small
3881	sv8-49	https://images.pokemontcg.io/sv8/49.png	small
3882	sv8-52	https://images.pokemontcg.io/sv8/52.png	small
3883	sv8-51	https://images.pokemontcg.io/sv8/51.png	small
3884	sv8-54	https://images.pokemontcg.io/sv8/54.png	small
3885	sv8-50	https://images.pokemontcg.io/sv8/50.png	small
3886	sv8-53	https://images.pokemontcg.io/sv8/53.png	small
3887	sv8-57	https://images.pokemontcg.io/sv8/57.png	small
3888	sv8-56	https://images.pokemontcg.io/sv8/56.png	small
3889	sv8-55	https://images.pokemontcg.io/sv8/55.png	small
3890	sv8-58	https://images.pokemontcg.io/sv8/58.png	small
3891	sv8-59	https://images.pokemontcg.io/sv8/59.png	small
3892	sv8-60	https://images.pokemontcg.io/sv8/60.png	small
3893	sv8-61	https://images.pokemontcg.io/sv8/61.png	small
3894	sv8-62	https://images.pokemontcg.io/sv8/62.png	small
3895	sv8-68	https://images.pokemontcg.io/sv8/68.png	small
3896	sv8-71	https://images.pokemontcg.io/sv8/71.png	small
3897	sv8-69	https://images.pokemontcg.io/sv8/69.png	small
3898	sv8-66	https://images.pokemontcg.io/sv8/66.png	small
3899	sv8-63	https://images.pokemontcg.io/sv8/63.png	small
3900	sv8-67	https://images.pokemontcg.io/sv8/67.png	small
3901	sv8-72	https://images.pokemontcg.io/sv8/72.png	small
3902	sv8-70	https://images.pokemontcg.io/sv8/70.png	small
3903	sv8-64	https://images.pokemontcg.io/sv8/64.png	small
3904	sv8-65	https://images.pokemontcg.io/sv8/65.png	small
3905	sv8-73	https://images.pokemontcg.io/sv8/73.png	small
3906	sv8-74	https://images.pokemontcg.io/sv8/74.png	small
3907	sv8-75	https://images.pokemontcg.io/sv8/75.png	small
3908	sv8-76	https://images.pokemontcg.io/sv8/76.png	small
3909	sv8-77	https://images.pokemontcg.io/sv8/77.png	small
3910	sv8-78	https://images.pokemontcg.io/sv8/78.png	small
3911	sv8-79	https://images.pokemontcg.io/sv8/79.png	small
3912	sv8-80	https://images.pokemontcg.io/sv8/80.png	small
3913	sv8-81	https://images.pokemontcg.io/sv8/81.png	small
3914	sv8-82	https://images.pokemontcg.io/sv8/82.png	small
3915	sv8-83	https://images.pokemontcg.io/sv8/83.png	small
3916	sv8-84	https://images.pokemontcg.io/sv8/84.png	small
3917	sv8-85	https://images.pokemontcg.io/sv8/85.png	small
3918	sv8-86	https://images.pokemontcg.io/sv8/86.png	small
3919	sv8-87	https://images.pokemontcg.io/sv8/87.png	small
3920	sv8-88	https://images.pokemontcg.io/sv8/88.png	small
3921	sv8-89	https://images.pokemontcg.io/sv8/89.png	small
3922	sv8-90	https://images.pokemontcg.io/sv8/90.png	small
3923	sv8-91	https://images.pokemontcg.io/sv8/91.png	small
3924	sv8-92	https://images.pokemontcg.io/sv8/92.png	small
3925	sv8-95	https://images.pokemontcg.io/sv8/95.png	small
3926	sv8-97	https://images.pokemontcg.io/sv8/97.png	small
3927	sv8-94	https://images.pokemontcg.io/sv8/94.png	small
3928	sv8-96	https://images.pokemontcg.io/sv8/96.png	small
3929	sv8-99	https://images.pokemontcg.io/sv8/99.png	small
3930	sv8-93	https://images.pokemontcg.io/sv8/93.png	small
3931	sv8-98	https://images.pokemontcg.io/sv8/98.png	small
3932	sv8-100	https://images.pokemontcg.io/sv8/100.png	small
3933	sv8-101	https://images.pokemontcg.io/sv8/101.png	small
3934	sv8-102	https://images.pokemontcg.io/sv8/102.png	small
3935	sv8-103	https://images.pokemontcg.io/sv8/103.png	small
3936	sv8-104	https://images.pokemontcg.io/sv8/104.png	small
3937	sv8-105	https://images.pokemontcg.io/sv8/105.png	small
3938	sv8-106	https://images.pokemontcg.io/sv8/106.png	small
3939	sv8-107	https://images.pokemontcg.io/sv8/107.png	small
3940	sv8-108	https://images.pokemontcg.io/sv8/108.png	small
3941	sv8-109	https://images.pokemontcg.io/sv8/109.png	small
3942	sv8-110	https://images.pokemontcg.io/sv8/110.png	small
3943	sv8-111	https://images.pokemontcg.io/sv8/111.png	small
3944	sv8-112	https://images.pokemontcg.io/sv8/112.png	small
3945	sv8-113	https://images.pokemontcg.io/sv8/113.png	small
3946	sv8-114	https://images.pokemontcg.io/sv8/114.png	small
3947	sv8-115	https://images.pokemontcg.io/sv8/115.png	small
3948	sv8-117	https://images.pokemontcg.io/sv8/117.png	small
3949	sv8-120	https://images.pokemontcg.io/sv8/120.png	small
3950	sv8-119	https://images.pokemontcg.io/sv8/119.png	small
3951	sv8-121	https://images.pokemontcg.io/sv8/121.png	small
3952	sv8-118	https://images.pokemontcg.io/sv8/118.png	small
3953	sv8-116	https://images.pokemontcg.io/sv8/116.png	small
3954	sv8-122	https://images.pokemontcg.io/sv8/122.png	small
3955	sv8-123	https://images.pokemontcg.io/sv8/123.png	small
3956	sv8-124	https://images.pokemontcg.io/sv8/124.png	small
3957	sv8-125	https://images.pokemontcg.io/sv8/125.png	small
3958	sv8-126	https://images.pokemontcg.io/sv8/126.png	small
3959	sv8-127	https://images.pokemontcg.io/sv8/127.png	small
3960	sv8-128	https://images.pokemontcg.io/sv8/128.png	small
3961	sv8-129	https://images.pokemontcg.io/sv8/129.png	small
3962	sv8-130	https://images.pokemontcg.io/sv8/130.png	small
3963	sv8-131	https://images.pokemontcg.io/sv8/131.png	small
3964	sv8-132	https://images.pokemontcg.io/sv8/132.png	small
3965	sv8-134	https://images.pokemontcg.io/sv8/134.png	small
3966	sv8-139	https://images.pokemontcg.io/sv8/139.png	small
3967	sv8-148	https://images.pokemontcg.io/sv8/148.png	small
3968	sv8-149	https://images.pokemontcg.io/sv8/149.png	small
3969	sv8-150	https://images.pokemontcg.io/sv8/150.png	small
3970	sv8-133	https://images.pokemontcg.io/sv8/133.png	small
3971	sv8-140	https://images.pokemontcg.io/sv8/140.png	small
3972	sv8-142	https://images.pokemontcg.io/sv8/142.png	small
3973	sv8-146	https://images.pokemontcg.io/sv8/146.png	small
3974	sv8-141	https://images.pokemontcg.io/sv8/141.png	small
3975	sv8-135	https://images.pokemontcg.io/sv8/135.png	small
3976	sv8-147	https://images.pokemontcg.io/sv8/147.png	small
3977	sv8-136	https://images.pokemontcg.io/sv8/136.png	small
3978	sv8-138	https://images.pokemontcg.io/sv8/138.png	small
3979	sv8-143	https://images.pokemontcg.io/sv8/143.png	small
3980	sv8-144	https://images.pokemontcg.io/sv8/144.png	small
3981	sv8-137	https://images.pokemontcg.io/sv8/137.png	small
3982	sv8-145	https://images.pokemontcg.io/sv8/145.png	small
3983	sv8-155	https://images.pokemontcg.io/sv8/155.png	small
3984	sv8-153	https://images.pokemontcg.io/sv8/153.png	small
3985	sv8-163	https://images.pokemontcg.io/sv8/163.png	small
3986	sv8-159	https://images.pokemontcg.io/sv8/159.png	small
3987	sv8-168	https://images.pokemontcg.io/sv8/168.png	small
3988	sv8-157	https://images.pokemontcg.io/sv8/157.png	small
3989	sv8-162	https://images.pokemontcg.io/sv8/162.png	small
3990	sv8-166	https://images.pokemontcg.io/sv8/166.png	small
3991	sv8-151	https://images.pokemontcg.io/sv8/151.png	small
3992	sv8-165	https://images.pokemontcg.io/sv8/165.png	small
3993	sv8-154	https://images.pokemontcg.io/sv8/154.png	small
3994	sv8-152	https://images.pokemontcg.io/sv8/152.png	small
3995	sv8-158	https://images.pokemontcg.io/sv8/158.png	small
3996	sv8-160	https://images.pokemontcg.io/sv8/160.png	small
3997	sv8-167	https://images.pokemontcg.io/sv8/167.png	small
3998	sv8-156	https://images.pokemontcg.io/sv8/156.png	small
3999	sv8-161	https://images.pokemontcg.io/sv8/161.png	small
4000	sv8-164	https://images.pokemontcg.io/sv8/164.png	small
4001	sv8-169	https://images.pokemontcg.io/sv8/169.png	small
4002	sv8-170	https://images.pokemontcg.io/sv8/170.png	small
4003	sv8-180	https://images.pokemontcg.io/sv8/180.png	small
4004	sv8-177	https://images.pokemontcg.io/sv8/177.png	small
4005	sv8-172	https://images.pokemontcg.io/sv8/172.png	small
4006	sv8-171	https://images.pokemontcg.io/sv8/171.png	small
4007	sv8-178	https://images.pokemontcg.io/sv8/178.png	small
4008	sv8-179	https://images.pokemontcg.io/sv8/179.png	small
4009	sv8-173	https://images.pokemontcg.io/sv8/173.png	small
4010	sv8-174	https://images.pokemontcg.io/sv8/174.png	small
4011	sv8-175	https://images.pokemontcg.io/sv8/175.png	small
4012	sv8-176	https://images.pokemontcg.io/sv8/176.png	small
4013	sv8-181	https://images.pokemontcg.io/sv8/181.png	small
4014	sv8-182	https://images.pokemontcg.io/sv8/182.png	small
4015	sv8-194	https://images.pokemontcg.io/sv8/194.png	small
4016	sv8-187	https://images.pokemontcg.io/sv8/187.png	small
4017	sv8-188	https://images.pokemontcg.io/sv8/188.png	small
4018	sv8-186	https://images.pokemontcg.io/sv8/186.png	small
4019	sv8-191	https://images.pokemontcg.io/sv8/191.png	small
4020	sv8-195	https://images.pokemontcg.io/sv8/195.png	small
4021	sv8-183	https://images.pokemontcg.io/sv8/183.png	small
4022	sv8-185	https://images.pokemontcg.io/sv8/185.png	small
4023	sv8-189	https://images.pokemontcg.io/sv8/189.png	small
4024	sv8-184	https://images.pokemontcg.io/sv8/184.png	small
4025	sv8-190	https://images.pokemontcg.io/sv8/190.png	small
4026	sv8-192	https://images.pokemontcg.io/sv8/192.png	small
4027	sv8-193	https://images.pokemontcg.io/sv8/193.png	small
4028	sv8-199	https://images.pokemontcg.io/sv8/199.png	small
4029	sv8-201	https://images.pokemontcg.io/sv8/201.png	small
4030	sv8-206	https://images.pokemontcg.io/sv8/206.png	small
4031	sv8-209	https://images.pokemontcg.io/sv8/209.png	small
4032	sv8-203	https://images.pokemontcg.io/sv8/203.png	small
4033	sv8-212	https://images.pokemontcg.io/sv8/212.png	small
4034	sv8-205	https://images.pokemontcg.io/sv8/205.png	small
4035	sv8-204	https://images.pokemontcg.io/sv8/204.png	small
4036	sv8-213	https://images.pokemontcg.io/sv8/213.png	small
4037	sv8-207	https://images.pokemontcg.io/sv8/207.png	small
4038	sv8-208	https://images.pokemontcg.io/sv8/208.png	small
4039	sv8-197	https://images.pokemontcg.io/sv8/197.png	small
4040	sv8-196	https://images.pokemontcg.io/sv8/196.png	small
4041	sv8-198	https://images.pokemontcg.io/sv8/198.png	small
4042	sv8-200	https://images.pokemontcg.io/sv8/200.png	small
4043	sv8-202	https://images.pokemontcg.io/sv8/202.png	small
4044	sv8-210	https://images.pokemontcg.io/sv8/210.png	small
4045	sv8-211	https://images.pokemontcg.io/sv8/211.png	small
4046	sv8-214	https://images.pokemontcg.io/sv8/214.png	small
4047	sv8-215	https://images.pokemontcg.io/sv8/215.png	small
4048	sv8-220	https://images.pokemontcg.io/sv8/220.png	small
4049	sv8-216	https://images.pokemontcg.io/sv8/216.png	small
4050	sv8-222	https://images.pokemontcg.io/sv8/222.png	small
4051	sv8-223	https://images.pokemontcg.io/sv8/223.png	small
4052	sv8-217	https://images.pokemontcg.io/sv8/217.png	small
4053	sv8-221	https://images.pokemontcg.io/sv8/221.png	small
4054	sv8-218	https://images.pokemontcg.io/sv8/218.png	small
4055	sv8-219	https://images.pokemontcg.io/sv8/219.png	small
4056	sv8-225	https://images.pokemontcg.io/sv8/225.png	small
4057	sv8-224	https://images.pokemontcg.io/sv8/224.png	small
4058	sv8-226	https://images.pokemontcg.io/sv8/226.png	small
4059	sv8-230	https://images.pokemontcg.io/sv8/230.png	small
4060	sv8-232	https://images.pokemontcg.io/sv8/232.png	small
4061	sv8-234	https://images.pokemontcg.io/sv8/234.png	small
4062	sv8-238	https://images.pokemontcg.io/sv8/238.png	small
4063	sv8-236	https://images.pokemontcg.io/sv8/236.png	small
4064	sv8-237	https://images.pokemontcg.io/sv8/237.png	small
4065	sv8-231	https://images.pokemontcg.io/sv8/231.png	small
4066	sv8-227	https://images.pokemontcg.io/sv8/227.png	small
4067	sv8-228	https://images.pokemontcg.io/sv8/228.png	small
4068	sv8-229	https://images.pokemontcg.io/sv8/229.png	small
4069	sv8-233	https://images.pokemontcg.io/sv8/233.png	small
4070	sv8-235	https://images.pokemontcg.io/sv8/235.png	small
4071	sv8-239	https://images.pokemontcg.io/sv8/239.png	small
4072	sv8-240	https://images.pokemontcg.io/sv8/240.png	small
4073	sv8-241	https://images.pokemontcg.io/sv8/241.png	small
4074	sv8-245	https://images.pokemontcg.io/sv8/245.png	small
4075	sv8-244	https://images.pokemontcg.io/sv8/244.png	small
4076	sv8-247	https://images.pokemontcg.io/sv8/247.png	small
4077	sv8-249	https://images.pokemontcg.io/sv8/249.png	small
4078	sv8-242	https://images.pokemontcg.io/sv8/242.png	small
4079	sv8-243	https://images.pokemontcg.io/sv8/243.png	small
4080	sv8-246	https://images.pokemontcg.io/sv8/246.png	small
4081	sv8-248	https://images.pokemontcg.io/sv8/248.png	small
4082	sv8-250	https://images.pokemontcg.io/sv8/250.png	small
4083	sv8-1	https://images.pokemontcg.io/sv8/1_hires.png	large
4084	sv8-2	https://images.pokemontcg.io/sv8/2_hires.png	large
4085	sv8-3	https://images.pokemontcg.io/sv8/3_hires.png	large
4086	sv8-11	https://images.pokemontcg.io/sv8/11_hires.png	large
4087	sv8-14	https://images.pokemontcg.io/sv8/14_hires.png	large
4088	sv8-16	https://images.pokemontcg.io/sv8/16_hires.png	large
4089	sv8-17	https://images.pokemontcg.io/sv8/17_hires.png	large
4090	sv8-24	https://images.pokemontcg.io/sv8/24_hires.png	large
4091	sv8-27	https://images.pokemontcg.io/sv8/27_hires.png	large
4092	sv8-30	https://images.pokemontcg.io/sv8/30_hires.png	large
4093	sv8-31	https://images.pokemontcg.io/sv8/31_hires.png	large
4094	sv8-29	https://images.pokemontcg.io/sv8/29_hires.png	large
4095	sv8-25	https://images.pokemontcg.io/sv8/25_hires.png	large
4096	sv8-4	https://images.pokemontcg.io/sv8/4_hires.png	large
4097	sv8-6	https://images.pokemontcg.io/sv8/6_hires.png	large
4098	sv8-5	https://images.pokemontcg.io/sv8/5_hires.png	large
4099	sv8-8	https://images.pokemontcg.io/sv8/8_hires.png	large
4100	sv8-9	https://images.pokemontcg.io/sv8/9_hires.png	large
4101	sv8-10	https://images.pokemontcg.io/sv8/10_hires.png	large
4102	sv8-15	https://images.pokemontcg.io/sv8/15_hires.png	large
4103	sv8-28	https://images.pokemontcg.io/sv8/28_hires.png	large
4104	sv8-7	https://images.pokemontcg.io/sv8/7_hires.png	large
4105	sv8-13	https://images.pokemontcg.io/sv8/13_hires.png	large
4106	sv8-18	https://images.pokemontcg.io/sv8/18_hires.png	large
4107	sv8-19	https://images.pokemontcg.io/sv8/19_hires.png	large
4108	sv8-21	https://images.pokemontcg.io/sv8/21_hires.png	large
4109	sv8-23	https://images.pokemontcg.io/sv8/23_hires.png	large
4110	sv8-20	https://images.pokemontcg.io/sv8/20_hires.png	large
4111	sv8-22	https://images.pokemontcg.io/sv8/22_hires.png	large
4112	sv8-12	https://images.pokemontcg.io/sv8/12_hires.png	large
4113	sv8-26	https://images.pokemontcg.io/sv8/26_hires.png	large
4114	sv8-36	https://images.pokemontcg.io/sv8/36_hires.png	large
4115	sv8-38	https://images.pokemontcg.io/sv8/38_hires.png	large
4116	sv8-34	https://images.pokemontcg.io/sv8/34_hires.png	large
4117	sv8-39	https://images.pokemontcg.io/sv8/39_hires.png	large
4118	sv8-40	https://images.pokemontcg.io/sv8/40_hires.png	large
4119	sv8-43	https://images.pokemontcg.io/sv8/43_hires.png	large
4120	sv8-45	https://images.pokemontcg.io/sv8/45_hires.png	large
4121	sv8-46	https://images.pokemontcg.io/sv8/46_hires.png	large
4122	sv8-32	https://images.pokemontcg.io/sv8/32_hires.png	large
4123	sv8-37	https://images.pokemontcg.io/sv8/37_hires.png	large
4124	sv8-47	https://images.pokemontcg.io/sv8/47_hires.png	large
4125	sv8-42	https://images.pokemontcg.io/sv8/42_hires.png	large
4126	sv8-44	https://images.pokemontcg.io/sv8/44_hires.png	large
4127	sv8-33	https://images.pokemontcg.io/sv8/33_hires.png	large
4128	sv8-35	https://images.pokemontcg.io/sv8/35_hires.png	large
4129	sv8-41	https://images.pokemontcg.io/sv8/41_hires.png	large
4130	sv8-48	https://images.pokemontcg.io/sv8/48_hires.png	large
4131	sv8-49	https://images.pokemontcg.io/sv8/49_hires.png	large
4132	sv8-52	https://images.pokemontcg.io/sv8/52_hires.png	large
4133	sv8-51	https://images.pokemontcg.io/sv8/51_hires.png	large
4134	sv8-54	https://images.pokemontcg.io/sv8/54_hires.png	large
4135	sv8-50	https://images.pokemontcg.io/sv8/50_hires.png	large
4136	sv8-53	https://images.pokemontcg.io/sv8/53_hires.png	large
4137	sv8-57	https://images.pokemontcg.io/sv8/57_hires.png	large
4138	sv8-56	https://images.pokemontcg.io/sv8/56_hires.png	large
4139	sv8-55	https://images.pokemontcg.io/sv8/55_hires.png	large
4140	sv8-58	https://images.pokemontcg.io/sv8/58_hires.png	large
4141	sv8-59	https://images.pokemontcg.io/sv8/59_hires.png	large
4142	sv8-60	https://images.pokemontcg.io/sv8/60_hires.png	large
4143	sv8-61	https://images.pokemontcg.io/sv8/61_hires.png	large
4144	sv8-62	https://images.pokemontcg.io/sv8/62_hires.png	large
4145	sv8-68	https://images.pokemontcg.io/sv8/68_hires.png	large
4146	sv8-71	https://images.pokemontcg.io/sv8/71_hires.png	large
4147	sv8-69	https://images.pokemontcg.io/sv8/69_hires.png	large
4148	sv8-66	https://images.pokemontcg.io/sv8/66_hires.png	large
4149	sv8-63	https://images.pokemontcg.io/sv8/63_hires.png	large
4150	sv8-67	https://images.pokemontcg.io/sv8/67_hires.png	large
4151	sv8-72	https://images.pokemontcg.io/sv8/72_hires.png	large
4152	sv8-70	https://images.pokemontcg.io/sv8/70_hires.png	large
4153	sv8-64	https://images.pokemontcg.io/sv8/64_hires.png	large
4154	sv8-65	https://images.pokemontcg.io/sv8/65_hires.png	large
4155	sv8-73	https://images.pokemontcg.io/sv8/73_hires.png	large
4156	sv8-74	https://images.pokemontcg.io/sv8/74_hires.png	large
4157	sv8-75	https://images.pokemontcg.io/sv8/75_hires.png	large
4158	sv8-76	https://images.pokemontcg.io/sv8/76_hires.png	large
4159	sv8-77	https://images.pokemontcg.io/sv8/77_hires.png	large
4160	sv8-78	https://images.pokemontcg.io/sv8/78_hires.png	large
4161	sv8-79	https://images.pokemontcg.io/sv8/79_hires.png	large
4162	sv8-80	https://images.pokemontcg.io/sv8/80_hires.png	large
4163	sv8-81	https://images.pokemontcg.io/sv8/81_hires.png	large
4164	sv8-82	https://images.pokemontcg.io/sv8/82_hires.png	large
4165	sv8-83	https://images.pokemontcg.io/sv8/83_hires.png	large
4166	sv8-84	https://images.pokemontcg.io/sv8/84_hires.png	large
4167	sv8-85	https://images.pokemontcg.io/sv8/85_hires.png	large
4168	sv8-86	https://images.pokemontcg.io/sv8/86_hires.png	large
4169	sv8-87	https://images.pokemontcg.io/sv8/87_hires.png	large
4170	sv8-88	https://images.pokemontcg.io/sv8/88_hires.png	large
4171	sv8-89	https://images.pokemontcg.io/sv8/89_hires.png	large
4172	sv8-90	https://images.pokemontcg.io/sv8/90_hires.png	large
4173	sv8-91	https://images.pokemontcg.io/sv8/91_hires.png	large
4174	sv8-92	https://images.pokemontcg.io/sv8/92_hires.png	large
4175	sv8-95	https://images.pokemontcg.io/sv8/95_hires.png	large
4176	sv8-97	https://images.pokemontcg.io/sv8/97_hires.png	large
4177	sv8-94	https://images.pokemontcg.io/sv8/94_hires.png	large
4178	sv8-96	https://images.pokemontcg.io/sv8/96_hires.png	large
4179	sv8-99	https://images.pokemontcg.io/sv8/99_hires.png	large
4180	sv8-93	https://images.pokemontcg.io/sv8/93_hires.png	large
4181	sv8-98	https://images.pokemontcg.io/sv8/98_hires.png	large
4182	sv8-100	https://images.pokemontcg.io/sv8/100_hires.png	large
4183	sv8-101	https://images.pokemontcg.io/sv8/101_hires.png	large
4184	sv8-102	https://images.pokemontcg.io/sv8/102_hires.png	large
4185	sv8-103	https://images.pokemontcg.io/sv8/103_hires.png	large
4186	sv8-104	https://images.pokemontcg.io/sv8/104_hires.png	large
4187	sv8-105	https://images.pokemontcg.io/sv8/105_hires.png	large
4188	sv8-106	https://images.pokemontcg.io/sv8/106_hires.png	large
4189	sv8-107	https://images.pokemontcg.io/sv8/107_hires.png	large
4190	sv8-108	https://images.pokemontcg.io/sv8/108_hires.png	large
4191	sv8-109	https://images.pokemontcg.io/sv8/109_hires.png	large
4192	sv8-110	https://images.pokemontcg.io/sv8/110_hires.png	large
4193	sv8-111	https://images.pokemontcg.io/sv8/111_hires.png	large
4194	sv8-112	https://images.pokemontcg.io/sv8/112_hires.png	large
4195	sv8-113	https://images.pokemontcg.io/sv8/113_hires.png	large
4196	sv8-114	https://images.pokemontcg.io/sv8/114_hires.png	large
4197	sv8-115	https://images.pokemontcg.io/sv8/115_hires.png	large
4198	sv8-117	https://images.pokemontcg.io/sv8/117_hires.png	large
4199	sv8-120	https://images.pokemontcg.io/sv8/120_hires.png	large
4200	sv8-119	https://images.pokemontcg.io/sv8/119_hires.png	large
4201	sv8-121	https://images.pokemontcg.io/sv8/121_hires.png	large
4202	sv8-118	https://images.pokemontcg.io/sv8/118_hires.png	large
4203	sv8-116	https://images.pokemontcg.io/sv8/116_hires.png	large
4204	sv8-122	https://images.pokemontcg.io/sv8/122_hires.png	large
4205	sv8-123	https://images.pokemontcg.io/sv8/123_hires.png	large
4206	sv8-124	https://images.pokemontcg.io/sv8/124_hires.png	large
4207	sv8-125	https://images.pokemontcg.io/sv8/125_hires.png	large
4208	sv8-126	https://images.pokemontcg.io/sv8/126_hires.png	large
4209	sv8-127	https://images.pokemontcg.io/sv8/127_hires.png	large
4210	sv8-128	https://images.pokemontcg.io/sv8/128_hires.png	large
4211	sv8-129	https://images.pokemontcg.io/sv8/129_hires.png	large
4212	sv8-130	https://images.pokemontcg.io/sv8/130_hires.png	large
4213	sv8-131	https://images.pokemontcg.io/sv8/131_hires.png	large
4214	sv8-132	https://images.pokemontcg.io/sv8/132_hires.png	large
4215	sv8-134	https://images.pokemontcg.io/sv8/134_hires.png	large
4216	sv8-139	https://images.pokemontcg.io/sv8/139_hires.png	large
4217	sv8-148	https://images.pokemontcg.io/sv8/148_hires.png	large
4218	sv8-149	https://images.pokemontcg.io/sv8/149_hires.png	large
4219	sv8-150	https://images.pokemontcg.io/sv8/150_hires.png	large
4220	sv8-133	https://images.pokemontcg.io/sv8/133_hires.png	large
4221	sv8-140	https://images.pokemontcg.io/sv8/140_hires.png	large
4222	sv8-142	https://images.pokemontcg.io/sv8/142_hires.png	large
4223	sv8-146	https://images.pokemontcg.io/sv8/146_hires.png	large
4224	sv8-141	https://images.pokemontcg.io/sv8/141_hires.png	large
4225	sv8-135	https://images.pokemontcg.io/sv8/135_hires.png	large
4226	sv8-147	https://images.pokemontcg.io/sv8/147_hires.png	large
4227	sv8-136	https://images.pokemontcg.io/sv8/136_hires.png	large
4228	sv8-138	https://images.pokemontcg.io/sv8/138_hires.png	large
4229	sv8-143	https://images.pokemontcg.io/sv8/143_hires.png	large
4230	sv8-144	https://images.pokemontcg.io/sv8/144_hires.png	large
4231	sv8-137	https://images.pokemontcg.io/sv8/137_hires.png	large
4232	sv8-145	https://images.pokemontcg.io/sv8/145_hires.png	large
4233	sv8-155	https://images.pokemontcg.io/sv8/155_hires.png	large
4234	sv8-153	https://images.pokemontcg.io/sv8/153_hires.png	large
4235	sv8-163	https://images.pokemontcg.io/sv8/163_hires.png	large
4236	sv8-159	https://images.pokemontcg.io/sv8/159_hires.png	large
4237	sv8-168	https://images.pokemontcg.io/sv8/168_hires.png	large
4238	sv8-157	https://images.pokemontcg.io/sv8/157_hires.png	large
4239	sv8-162	https://images.pokemontcg.io/sv8/162_hires.png	large
4240	sv8-166	https://images.pokemontcg.io/sv8/166_hires.png	large
4241	sv8-151	https://images.pokemontcg.io/sv8/151_hires.png	large
4242	sv8-165	https://images.pokemontcg.io/sv8/165_hires.png	large
4243	sv8-154	https://images.pokemontcg.io/sv8/154_hires.png	large
4244	sv8-152	https://images.pokemontcg.io/sv8/152_hires.png	large
4245	sv8-158	https://images.pokemontcg.io/sv8/158_hires.png	large
4246	sv8-160	https://images.pokemontcg.io/sv8/160_hires.png	large
4247	sv8-167	https://images.pokemontcg.io/sv8/167_hires.png	large
4248	sv8-156	https://images.pokemontcg.io/sv8/156_hires.png	large
4249	sv8-161	https://images.pokemontcg.io/sv8/161_hires.png	large
4250	sv8-164	https://images.pokemontcg.io/sv8/164_hires.png	large
4251	sv8-169	https://images.pokemontcg.io/sv8/169_hires.png	large
4252	sv8-170	https://images.pokemontcg.io/sv8/170_hires.png	large
4253	sv8-180	https://images.pokemontcg.io/sv8/180_hires.png	large
4254	sv8-177	https://images.pokemontcg.io/sv8/177_hires.png	large
4255	sv8-172	https://images.pokemontcg.io/sv8/172_hires.png	large
4256	sv8-171	https://images.pokemontcg.io/sv8/171_hires.png	large
4257	sv8-178	https://images.pokemontcg.io/sv8/178_hires.png	large
4258	sv8-179	https://images.pokemontcg.io/sv8/179_hires.png	large
4259	sv8-173	https://images.pokemontcg.io/sv8/173_hires.png	large
4260	sv8-174	https://images.pokemontcg.io/sv8/174_hires.png	large
4261	sv8-175	https://images.pokemontcg.io/sv8/175_hires.png	large
4262	sv8-176	https://images.pokemontcg.io/sv8/176_hires.png	large
4263	sv8-181	https://images.pokemontcg.io/sv8/181_hires.png	large
4264	sv8-182	https://images.pokemontcg.io/sv8/182_hires.png	large
4265	sv8-194	https://images.pokemontcg.io/sv8/194_hires.png	large
4266	sv8-187	https://images.pokemontcg.io/sv8/187_hires.png	large
4267	sv8-188	https://images.pokemontcg.io/sv8/188_hires.png	large
4268	sv8-186	https://images.pokemontcg.io/sv8/186_hires.png	large
4269	sv8-191	https://images.pokemontcg.io/sv8/191_hires.png	large
4270	sv8-195	https://images.pokemontcg.io/sv8/195_hires.png	large
4271	sv8-183	https://images.pokemontcg.io/sv8/183_hires.png	large
4272	sv8-185	https://images.pokemontcg.io/sv8/185_hires.png	large
4273	sv8-189	https://images.pokemontcg.io/sv8/189_hires.png	large
4274	sv8-184	https://images.pokemontcg.io/sv8/184_hires.png	large
4275	sv8-190	https://images.pokemontcg.io/sv8/190_hires.png	large
4276	sv8-192	https://images.pokemontcg.io/sv8/192_hires.png	large
4277	sv8-193	https://images.pokemontcg.io/sv8/193_hires.png	large
4278	sv8-199	https://images.pokemontcg.io/sv8/199_hires.png	large
4279	sv8-201	https://images.pokemontcg.io/sv8/201_hires.png	large
4280	sv8-206	https://images.pokemontcg.io/sv8/206_hires.png	large
4281	sv8-209	https://images.pokemontcg.io/sv8/209_hires.png	large
4282	sv8-203	https://images.pokemontcg.io/sv8/203_hires.png	large
4283	sv8-212	https://images.pokemontcg.io/sv8/212_hires.png	large
4284	sv8-205	https://images.pokemontcg.io/sv8/205_hires.png	large
4285	sv8-204	https://images.pokemontcg.io/sv8/204_hires.png	large
4286	sv8-213	https://images.pokemontcg.io/sv8/213_hires.png	large
4287	sv8-207	https://images.pokemontcg.io/sv8/207_hires.png	large
4288	sv8-208	https://images.pokemontcg.io/sv8/208_hires.png	large
4289	sv8-197	https://images.pokemontcg.io/sv8/197_hires.png	large
4290	sv8-196	https://images.pokemontcg.io/sv8/196_hires.png	large
4291	sv8-198	https://images.pokemontcg.io/sv8/198_hires.png	large
4292	sv8-200	https://images.pokemontcg.io/sv8/200_hires.png	large
4293	sv8-202	https://images.pokemontcg.io/sv8/202_hires.png	large
4294	sv8-210	https://images.pokemontcg.io/sv8/210_hires.png	large
4295	sv8-211	https://images.pokemontcg.io/sv8/211_hires.png	large
4296	sv8-214	https://images.pokemontcg.io/sv8/214_hires.png	large
4297	sv8-215	https://images.pokemontcg.io/sv8/215_hires.png	large
4298	sv8-220	https://images.pokemontcg.io/sv8/220_hires.png	large
4299	sv8-216	https://images.pokemontcg.io/sv8/216_hires.png	large
4300	sv8-222	https://images.pokemontcg.io/sv8/222_hires.png	large
4301	sv8-223	https://images.pokemontcg.io/sv8/223_hires.png	large
4302	sv8-217	https://images.pokemontcg.io/sv8/217_hires.png	large
4303	sv8-221	https://images.pokemontcg.io/sv8/221_hires.png	large
4304	sv8-218	https://images.pokemontcg.io/sv8/218_hires.png	large
4305	sv8-219	https://images.pokemontcg.io/sv8/219_hires.png	large
4306	sv8-225	https://images.pokemontcg.io/sv8/225_hires.png	large
4307	sv8-224	https://images.pokemontcg.io/sv8/224_hires.png	large
4308	sv8-226	https://images.pokemontcg.io/sv8/226_hires.png	large
4309	sv8-230	https://images.pokemontcg.io/sv8/230_hires.png	large
4310	sv8-232	https://images.pokemontcg.io/sv8/232_hires.png	large
4311	sv8-234	https://images.pokemontcg.io/sv8/234_hires.png	large
4312	sv8-238	https://images.pokemontcg.io/sv8/238_hires.png	large
4313	sv8-236	https://images.pokemontcg.io/sv8/236_hires.png	large
4314	sv8-237	https://images.pokemontcg.io/sv8/237_hires.png	large
4315	sv8-231	https://images.pokemontcg.io/sv8/231_hires.png	large
4316	sv8-227	https://images.pokemontcg.io/sv8/227_hires.png	large
4317	sv8-228	https://images.pokemontcg.io/sv8/228_hires.png	large
4318	sv8-229	https://images.pokemontcg.io/sv8/229_hires.png	large
4319	sv8-233	https://images.pokemontcg.io/sv8/233_hires.png	large
4320	sv8-235	https://images.pokemontcg.io/sv8/235_hires.png	large
4321	sv8-239	https://images.pokemontcg.io/sv8/239_hires.png	large
4322	sv8-240	https://images.pokemontcg.io/sv8/240_hires.png	large
4323	sv8-241	https://images.pokemontcg.io/sv8/241_hires.png	large
4324	sv8-245	https://images.pokemontcg.io/sv8/245_hires.png	large
4325	sv8-244	https://images.pokemontcg.io/sv8/244_hires.png	large
4326	sv8-247	https://images.pokemontcg.io/sv8/247_hires.png	large
4327	sv8-249	https://images.pokemontcg.io/sv8/249_hires.png	large
4328	sv8-242	https://images.pokemontcg.io/sv8/242_hires.png	large
4329	sv8-243	https://images.pokemontcg.io/sv8/243_hires.png	large
4330	sv8-246	https://images.pokemontcg.io/sv8/246_hires.png	large
4331	sv8-248	https://images.pokemontcg.io/sv8/248_hires.png	large
4332	sv8-250	https://images.pokemontcg.io/sv8/250_hires.png	large
\.


--
-- Data for Name: market; Type: TABLE DATA; Schema: public; Owner: ash
--

COPY public.market (id, card_id, url, updated_at, market) FROM stdin;
1	sv8-1	https://prices.pokemontcg.io/tcgplayer/sv8-1	2024-12-31	tcgplayer
2	sv8-2	https://prices.pokemontcg.io/tcgplayer/sv8-2	2024-12-31	tcgplayer
3	sv8-3	https://prices.pokemontcg.io/tcgplayer/sv8-3	2024-12-31	tcgplayer
4	sv8-11	https://prices.pokemontcg.io/tcgplayer/sv8-11	2024-12-31	tcgplayer
5	sv8-14	https://prices.pokemontcg.io/tcgplayer/sv8-14	2024-12-31	tcgplayer
6	sv8-16	https://prices.pokemontcg.io/tcgplayer/sv8-16	2024-12-31	tcgplayer
7	sv8-17	https://prices.pokemontcg.io/tcgplayer/sv8-17	2024-12-31	tcgplayer
8	sv8-24	https://prices.pokemontcg.io/tcgplayer/sv8-24	2024-12-31	tcgplayer
9	sv8-27	https://prices.pokemontcg.io/tcgplayer/sv8-27	2024-12-31	tcgplayer
10	sv8-30	https://prices.pokemontcg.io/tcgplayer/sv8-30	2024-12-31	tcgplayer
11	sv8-31	https://prices.pokemontcg.io/tcgplayer/sv8-31	2024-12-31	tcgplayer
12	sv8-29	https://prices.pokemontcg.io/tcgplayer/sv8-29	2024-12-31	tcgplayer
13	sv8-25	https://prices.pokemontcg.io/tcgplayer/sv8-25	2024-12-31	tcgplayer
14	sv8-4	https://prices.pokemontcg.io/tcgplayer/sv8-4	2024-12-31	tcgplayer
15	sv8-6	https://prices.pokemontcg.io/tcgplayer/sv8-6	2024-12-31	tcgplayer
16	sv8-5	https://prices.pokemontcg.io/tcgplayer/sv8-5	2024-12-31	tcgplayer
17	sv8-8	https://prices.pokemontcg.io/tcgplayer/sv8-8	2024-12-31	tcgplayer
18	sv8-9	https://prices.pokemontcg.io/tcgplayer/sv8-9	2024-12-31	tcgplayer
19	sv8-10	https://prices.pokemontcg.io/tcgplayer/sv8-10	2024-12-31	tcgplayer
20	sv8-15	https://prices.pokemontcg.io/tcgplayer/sv8-15	2024-12-31	tcgplayer
21	sv8-28	https://prices.pokemontcg.io/tcgplayer/sv8-28	2024-12-31	tcgplayer
22	sv8-7	https://prices.pokemontcg.io/tcgplayer/sv8-7	2024-12-31	tcgplayer
23	sv8-13	https://prices.pokemontcg.io/tcgplayer/sv8-13	2024-12-31	tcgplayer
24	sv8-18	https://prices.pokemontcg.io/tcgplayer/sv8-18	2024-12-31	tcgplayer
25	sv8-19	https://prices.pokemontcg.io/tcgplayer/sv8-19	2024-12-31	tcgplayer
26	sv8-21	https://prices.pokemontcg.io/tcgplayer/sv8-21	2024-12-31	tcgplayer
27	sv8-23	https://prices.pokemontcg.io/tcgplayer/sv8-23	2024-12-31	tcgplayer
28	sv8-20	https://prices.pokemontcg.io/tcgplayer/sv8-20	2024-12-31	tcgplayer
29	sv8-22	https://prices.pokemontcg.io/tcgplayer/sv8-22	2024-12-31	tcgplayer
30	sv8-12	https://prices.pokemontcg.io/tcgplayer/sv8-12	2024-12-31	tcgplayer
31	sv8-26	https://prices.pokemontcg.io/tcgplayer/sv8-26	2024-12-31	tcgplayer
32	sv8-36	https://prices.pokemontcg.io/tcgplayer/sv8-36	2024-12-31	tcgplayer
33	sv8-38	https://prices.pokemontcg.io/tcgplayer/sv8-38	2024-12-31	tcgplayer
34	sv8-34	https://prices.pokemontcg.io/tcgplayer/sv8-34	2024-12-31	tcgplayer
35	sv8-39	https://prices.pokemontcg.io/tcgplayer/sv8-39	2024-12-31	tcgplayer
36	sv8-40	https://prices.pokemontcg.io/tcgplayer/sv8-40	2024-12-31	tcgplayer
37	sv8-43	https://prices.pokemontcg.io/tcgplayer/sv8-43	2024-12-31	tcgplayer
38	sv8-45	https://prices.pokemontcg.io/tcgplayer/sv8-45	2024-12-31	tcgplayer
39	sv8-46	https://prices.pokemontcg.io/tcgplayer/sv8-46	2024-12-31	tcgplayer
40	sv8-32	https://prices.pokemontcg.io/tcgplayer/sv8-32	2024-12-31	tcgplayer
41	sv8-37	https://prices.pokemontcg.io/tcgplayer/sv8-37	2024-12-31	tcgplayer
42	sv8-47	https://prices.pokemontcg.io/tcgplayer/sv8-47	2024-12-31	tcgplayer
43	sv8-42	https://prices.pokemontcg.io/tcgplayer/sv8-42	2024-12-31	tcgplayer
44	sv8-44	https://prices.pokemontcg.io/tcgplayer/sv8-44	2024-12-31	tcgplayer
45	sv8-33	https://prices.pokemontcg.io/tcgplayer/sv8-33	2024-12-31	tcgplayer
46	sv8-35	https://prices.pokemontcg.io/tcgplayer/sv8-35	2024-12-31	tcgplayer
47	sv8-41	https://prices.pokemontcg.io/tcgplayer/sv8-41	2024-12-31	tcgplayer
48	sv8-48	https://prices.pokemontcg.io/tcgplayer/sv8-48	2024-12-31	tcgplayer
49	sv8-49	https://prices.pokemontcg.io/tcgplayer/sv8-49	2024-12-31	tcgplayer
50	sv8-52	https://prices.pokemontcg.io/tcgplayer/sv8-52	2024-12-31	tcgplayer
51	sv8-51	https://prices.pokemontcg.io/tcgplayer/sv8-51	2024-12-31	tcgplayer
52	sv8-54	https://prices.pokemontcg.io/tcgplayer/sv8-54	2024-12-31	tcgplayer
53	sv8-50	https://prices.pokemontcg.io/tcgplayer/sv8-50	2024-12-31	tcgplayer
54	sv8-53	https://prices.pokemontcg.io/tcgplayer/sv8-53	2024-12-31	tcgplayer
55	sv8-57	https://prices.pokemontcg.io/tcgplayer/sv8-57	2024-12-31	tcgplayer
56	sv8-56	https://prices.pokemontcg.io/tcgplayer/sv8-56	2024-12-31	tcgplayer
57	sv8-55	https://prices.pokemontcg.io/tcgplayer/sv8-55	2024-12-31	tcgplayer
58	sv8-58	https://prices.pokemontcg.io/tcgplayer/sv8-58	2024-12-31	tcgplayer
59	sv8-59	https://prices.pokemontcg.io/tcgplayer/sv8-59	2024-12-31	tcgplayer
60	sv8-60	https://prices.pokemontcg.io/tcgplayer/sv8-60	2024-12-31	tcgplayer
61	sv8-61	https://prices.pokemontcg.io/tcgplayer/sv8-61	2024-12-31	tcgplayer
62	sv8-62	https://prices.pokemontcg.io/tcgplayer/sv8-62	2024-12-31	tcgplayer
63	sv8-68	https://prices.pokemontcg.io/tcgplayer/sv8-68	2024-12-31	tcgplayer
64	sv8-71	https://prices.pokemontcg.io/tcgplayer/sv8-71	2024-12-31	tcgplayer
65	sv8-69	https://prices.pokemontcg.io/tcgplayer/sv8-69	2024-12-31	tcgplayer
66	sv8-66	https://prices.pokemontcg.io/tcgplayer/sv8-66	2024-12-31	tcgplayer
67	sv8-63	https://prices.pokemontcg.io/tcgplayer/sv8-63	2024-12-31	tcgplayer
68	sv8-67	https://prices.pokemontcg.io/tcgplayer/sv8-67	2024-12-31	tcgplayer
69	sv8-72	https://prices.pokemontcg.io/tcgplayer/sv8-72	2024-12-31	tcgplayer
70	sv8-70	https://prices.pokemontcg.io/tcgplayer/sv8-70	2024-12-31	tcgplayer
71	sv8-64	https://prices.pokemontcg.io/tcgplayer/sv8-64	2024-12-31	tcgplayer
72	sv8-65	https://prices.pokemontcg.io/tcgplayer/sv8-65	2024-12-31	tcgplayer
73	sv8-73	https://prices.pokemontcg.io/tcgplayer/sv8-73	2024-12-31	tcgplayer
74	sv8-74	https://prices.pokemontcg.io/tcgplayer/sv8-74	2024-12-31	tcgplayer
75	sv8-75	https://prices.pokemontcg.io/tcgplayer/sv8-75	2024-12-31	tcgplayer
76	sv8-76	https://prices.pokemontcg.io/tcgplayer/sv8-76	2024-12-31	tcgplayer
77	sv8-77	https://prices.pokemontcg.io/tcgplayer/sv8-77	2024-12-31	tcgplayer
78	sv8-78	https://prices.pokemontcg.io/tcgplayer/sv8-78	2024-12-31	tcgplayer
79	sv8-79	https://prices.pokemontcg.io/tcgplayer/sv8-79	2024-12-31	tcgplayer
80	sv8-80	https://prices.pokemontcg.io/tcgplayer/sv8-80	2024-12-31	tcgplayer
81	sv8-81	https://prices.pokemontcg.io/tcgplayer/sv8-81	2024-12-31	tcgplayer
82	sv8-82	https://prices.pokemontcg.io/tcgplayer/sv8-82	2024-12-31	tcgplayer
83	sv8-83	https://prices.pokemontcg.io/tcgplayer/sv8-83	2024-12-31	tcgplayer
84	sv8-84	https://prices.pokemontcg.io/tcgplayer/sv8-84	2024-12-31	tcgplayer
85	sv8-85	https://prices.pokemontcg.io/tcgplayer/sv8-85	2024-12-31	tcgplayer
86	sv8-86	https://prices.pokemontcg.io/tcgplayer/sv8-86	2024-12-31	tcgplayer
87	sv8-87	https://prices.pokemontcg.io/tcgplayer/sv8-87	2024-12-31	tcgplayer
88	sv8-88	https://prices.pokemontcg.io/tcgplayer/sv8-88	2024-12-31	tcgplayer
89	sv8-89	https://prices.pokemontcg.io/tcgplayer/sv8-89	2024-12-31	tcgplayer
90	sv8-90	https://prices.pokemontcg.io/tcgplayer/sv8-90	2024-12-31	tcgplayer
91	sv8-91	https://prices.pokemontcg.io/tcgplayer/sv8-91	2024-12-31	tcgplayer
92	sv8-92	https://prices.pokemontcg.io/tcgplayer/sv8-92	2024-12-31	tcgplayer
93	sv8-95	https://prices.pokemontcg.io/tcgplayer/sv8-95	2024-12-31	tcgplayer
94	sv8-97	https://prices.pokemontcg.io/tcgplayer/sv8-97	2024-12-31	tcgplayer
95	sv8-94	https://prices.pokemontcg.io/tcgplayer/sv8-94	2024-12-31	tcgplayer
96	sv8-96	https://prices.pokemontcg.io/tcgplayer/sv8-96	2024-12-31	tcgplayer
97	sv8-99	https://prices.pokemontcg.io/tcgplayer/sv8-99	2024-12-31	tcgplayer
98	sv8-93	https://prices.pokemontcg.io/tcgplayer/sv8-93	2024-12-31	tcgplayer
99	sv8-98	https://prices.pokemontcg.io/tcgplayer/sv8-98	2024-12-31	tcgplayer
100	sv8-100	https://prices.pokemontcg.io/tcgplayer/sv8-100	2024-12-31	tcgplayer
101	sv8-101	https://prices.pokemontcg.io/tcgplayer/sv8-101	2024-12-31	tcgplayer
102	sv8-102	https://prices.pokemontcg.io/tcgplayer/sv8-102	2024-12-31	tcgplayer
103	sv8-103	https://prices.pokemontcg.io/tcgplayer/sv8-103	2024-12-31	tcgplayer
104	sv8-104	https://prices.pokemontcg.io/tcgplayer/sv8-104	2024-12-31	tcgplayer
105	sv8-105	https://prices.pokemontcg.io/tcgplayer/sv8-105	2024-12-31	tcgplayer
106	sv8-106	https://prices.pokemontcg.io/tcgplayer/sv8-106	2024-12-31	tcgplayer
107	sv8-107	https://prices.pokemontcg.io/tcgplayer/sv8-107	2024-12-31	tcgplayer
108	sv8-108	https://prices.pokemontcg.io/tcgplayer/sv8-108	2024-12-31	tcgplayer
109	sv8-109	https://prices.pokemontcg.io/tcgplayer/sv8-109	2024-12-31	tcgplayer
110	sv8-110	https://prices.pokemontcg.io/tcgplayer/sv8-110	2024-12-31	tcgplayer
111	sv8-111	https://prices.pokemontcg.io/tcgplayer/sv8-111	2024-12-31	tcgplayer
112	sv8-112	https://prices.pokemontcg.io/tcgplayer/sv8-112	2024-12-31	tcgplayer
113	sv8-113	https://prices.pokemontcg.io/tcgplayer/sv8-113	2024-12-31	tcgplayer
114	sv8-114	https://prices.pokemontcg.io/tcgplayer/sv8-114	2024-12-31	tcgplayer
115	sv8-115	https://prices.pokemontcg.io/tcgplayer/sv8-115	2024-12-31	tcgplayer
116	sv8-117	https://prices.pokemontcg.io/tcgplayer/sv8-117	2024-12-31	tcgplayer
117	sv8-120	https://prices.pokemontcg.io/tcgplayer/sv8-120	2024-12-31	tcgplayer
118	sv8-119	https://prices.pokemontcg.io/tcgplayer/sv8-119	2024-12-31	tcgplayer
119	sv8-121	https://prices.pokemontcg.io/tcgplayer/sv8-121	2024-12-31	tcgplayer
120	sv8-118	https://prices.pokemontcg.io/tcgplayer/sv8-118	2024-12-31	tcgplayer
121	sv8-116	https://prices.pokemontcg.io/tcgplayer/sv8-116	2024-12-31	tcgplayer
122	sv8-122	https://prices.pokemontcg.io/tcgplayer/sv8-122	2024-12-31	tcgplayer
123	sv8-123	https://prices.pokemontcg.io/tcgplayer/sv8-123	2024-12-31	tcgplayer
124	sv8-124	https://prices.pokemontcg.io/tcgplayer/sv8-124	2024-12-31	tcgplayer
125	sv8-125	https://prices.pokemontcg.io/tcgplayer/sv8-125	2024-12-31	tcgplayer
126	sv8-126	https://prices.pokemontcg.io/tcgplayer/sv8-126	2024-12-31	tcgplayer
127	sv8-127	https://prices.pokemontcg.io/tcgplayer/sv8-127	2024-12-31	tcgplayer
128	sv8-128	https://prices.pokemontcg.io/tcgplayer/sv8-128	2024-12-31	tcgplayer
129	sv8-129	https://prices.pokemontcg.io/tcgplayer/sv8-129	2024-12-31	tcgplayer
130	sv8-130	https://prices.pokemontcg.io/tcgplayer/sv8-130	2024-12-31	tcgplayer
131	sv8-131	https://prices.pokemontcg.io/tcgplayer/sv8-131	2024-12-31	tcgplayer
132	sv8-132	https://prices.pokemontcg.io/tcgplayer/sv8-132	2024-12-31	tcgplayer
133	sv8-134	https://prices.pokemontcg.io/tcgplayer/sv8-134	2024-12-31	tcgplayer
134	sv8-139	https://prices.pokemontcg.io/tcgplayer/sv8-139	2024-12-31	tcgplayer
135	sv8-148	https://prices.pokemontcg.io/tcgplayer/sv8-148	2024-12-31	tcgplayer
136	sv8-149	https://prices.pokemontcg.io/tcgplayer/sv8-149	2024-12-31	tcgplayer
137	sv8-150	https://prices.pokemontcg.io/tcgplayer/sv8-150	2024-12-31	tcgplayer
138	sv8-133	https://prices.pokemontcg.io/tcgplayer/sv8-133	2024-12-31	tcgplayer
139	sv8-140	https://prices.pokemontcg.io/tcgplayer/sv8-140	2024-12-31	tcgplayer
140	sv8-142	https://prices.pokemontcg.io/tcgplayer/sv8-142	2024-12-31	tcgplayer
141	sv8-146	https://prices.pokemontcg.io/tcgplayer/sv8-146	2024-12-31	tcgplayer
142	sv8-141	https://prices.pokemontcg.io/tcgplayer/sv8-141	2024-12-31	tcgplayer
143	sv8-135	https://prices.pokemontcg.io/tcgplayer/sv8-135	2024-12-31	tcgplayer
144	sv8-147	https://prices.pokemontcg.io/tcgplayer/sv8-147	2024-12-31	tcgplayer
145	sv8-136	https://prices.pokemontcg.io/tcgplayer/sv8-136	2024-12-31	tcgplayer
146	sv8-138	https://prices.pokemontcg.io/tcgplayer/sv8-138	2024-12-31	tcgplayer
147	sv8-143	https://prices.pokemontcg.io/tcgplayer/sv8-143	2024-12-31	tcgplayer
148	sv8-144	https://prices.pokemontcg.io/tcgplayer/sv8-144	2024-12-31	tcgplayer
149	sv8-137	https://prices.pokemontcg.io/tcgplayer/sv8-137	2024-12-31	tcgplayer
150	sv8-145	https://prices.pokemontcg.io/tcgplayer/sv8-145	2024-12-31	tcgplayer
151	sv8-155	https://prices.pokemontcg.io/tcgplayer/sv8-155	2024-12-31	tcgplayer
152	sv8-153	https://prices.pokemontcg.io/tcgplayer/sv8-153	2024-12-31	tcgplayer
153	sv8-163	https://prices.pokemontcg.io/tcgplayer/sv8-163	2024-12-31	tcgplayer
154	sv8-159	https://prices.pokemontcg.io/tcgplayer/sv8-159	2024-12-31	tcgplayer
155	sv8-168	https://prices.pokemontcg.io/tcgplayer/sv8-168	2024-12-31	tcgplayer
156	sv8-157	https://prices.pokemontcg.io/tcgplayer/sv8-157	2024-12-31	tcgplayer
157	sv8-162	https://prices.pokemontcg.io/tcgplayer/sv8-162	2024-12-31	tcgplayer
158	sv8-166	https://prices.pokemontcg.io/tcgplayer/sv8-166	2024-12-31	tcgplayer
159	sv8-151	https://prices.pokemontcg.io/tcgplayer/sv8-151	2024-12-31	tcgplayer
160	sv8-165	https://prices.pokemontcg.io/tcgplayer/sv8-165	2024-12-31	tcgplayer
161	sv8-154	https://prices.pokemontcg.io/tcgplayer/sv8-154	2024-12-31	tcgplayer
162	sv8-152	https://prices.pokemontcg.io/tcgplayer/sv8-152	2024-12-31	tcgplayer
163	sv8-158	https://prices.pokemontcg.io/tcgplayer/sv8-158	2024-12-31	tcgplayer
164	sv8-160	https://prices.pokemontcg.io/tcgplayer/sv8-160	2024-12-31	tcgplayer
165	sv8-167	https://prices.pokemontcg.io/tcgplayer/sv8-167	2024-12-31	tcgplayer
166	sv8-156	https://prices.pokemontcg.io/tcgplayer/sv8-156	2024-12-31	tcgplayer
167	sv8-161	https://prices.pokemontcg.io/tcgplayer/sv8-161	2024-12-31	tcgplayer
168	sv8-164	https://prices.pokemontcg.io/tcgplayer/sv8-164	2024-12-31	tcgplayer
169	sv8-169	https://prices.pokemontcg.io/tcgplayer/sv8-169	2024-12-31	tcgplayer
170	sv8-170	https://prices.pokemontcg.io/tcgplayer/sv8-170	2024-12-31	tcgplayer
171	sv8-180	https://prices.pokemontcg.io/tcgplayer/sv8-180	2024-12-31	tcgplayer
172	sv8-177	https://prices.pokemontcg.io/tcgplayer/sv8-177	2024-12-31	tcgplayer
173	sv8-172	https://prices.pokemontcg.io/tcgplayer/sv8-172	2024-12-31	tcgplayer
174	sv8-171	https://prices.pokemontcg.io/tcgplayer/sv8-171	2024-12-31	tcgplayer
175	sv8-178	https://prices.pokemontcg.io/tcgplayer/sv8-178	2024-12-31	tcgplayer
176	sv8-179	https://prices.pokemontcg.io/tcgplayer/sv8-179	2024-12-31	tcgplayer
177	sv8-173	https://prices.pokemontcg.io/tcgplayer/sv8-173	2024-12-31	tcgplayer
178	sv8-174	https://prices.pokemontcg.io/tcgplayer/sv8-174	2024-12-31	tcgplayer
179	sv8-175	https://prices.pokemontcg.io/tcgplayer/sv8-175	2024-12-31	tcgplayer
180	sv8-176	https://prices.pokemontcg.io/tcgplayer/sv8-176	2024-12-31	tcgplayer
181	sv8-181	https://prices.pokemontcg.io/tcgplayer/sv8-181	2024-12-31	tcgplayer
182	sv8-182	https://prices.pokemontcg.io/tcgplayer/sv8-182	2024-12-31	tcgplayer
183	sv8-194	https://prices.pokemontcg.io/tcgplayer/sv8-194	2024-12-31	tcgplayer
184	sv8-187	https://prices.pokemontcg.io/tcgplayer/sv8-187	2024-12-31	tcgplayer
185	sv8-188	https://prices.pokemontcg.io/tcgplayer/sv8-188	2024-12-31	tcgplayer
186	sv8-186	https://prices.pokemontcg.io/tcgplayer/sv8-186	2024-12-31	tcgplayer
187	sv8-191	https://prices.pokemontcg.io/tcgplayer/sv8-191	2024-12-31	tcgplayer
188	sv8-195	https://prices.pokemontcg.io/tcgplayer/sv8-195	2024-12-31	tcgplayer
189	sv8-183	https://prices.pokemontcg.io/tcgplayer/sv8-183	2024-12-31	tcgplayer
190	sv8-185	https://prices.pokemontcg.io/tcgplayer/sv8-185	2024-12-31	tcgplayer
191	sv8-189	https://prices.pokemontcg.io/tcgplayer/sv8-189	2024-12-31	tcgplayer
192	sv8-184	https://prices.pokemontcg.io/tcgplayer/sv8-184	2024-12-31	tcgplayer
193	sv8-190	https://prices.pokemontcg.io/tcgplayer/sv8-190	2024-12-31	tcgplayer
194	sv8-192	https://prices.pokemontcg.io/tcgplayer/sv8-192	2024-12-31	tcgplayer
195	sv8-193	https://prices.pokemontcg.io/tcgplayer/sv8-193	2024-12-31	tcgplayer
196	sv8-199	https://prices.pokemontcg.io/tcgplayer/sv8-199	2024-12-31	tcgplayer
197	sv8-201	https://prices.pokemontcg.io/tcgplayer/sv8-201	2024-12-31	tcgplayer
198	sv8-206	https://prices.pokemontcg.io/tcgplayer/sv8-206	2024-12-31	tcgplayer
199	sv8-209	https://prices.pokemontcg.io/tcgplayer/sv8-209	2024-12-31	tcgplayer
200	sv8-203	https://prices.pokemontcg.io/tcgplayer/sv8-203	2024-12-31	tcgplayer
201	sv8-212	https://prices.pokemontcg.io/tcgplayer/sv8-212	2024-12-31	tcgplayer
202	sv8-205	https://prices.pokemontcg.io/tcgplayer/sv8-205	2024-12-31	tcgplayer
203	sv8-204	https://prices.pokemontcg.io/tcgplayer/sv8-204	2024-12-31	tcgplayer
204	sv8-213	https://prices.pokemontcg.io/tcgplayer/sv8-213	2024-12-31	tcgplayer
205	sv8-207	https://prices.pokemontcg.io/tcgplayer/sv8-207	2024-12-31	tcgplayer
206	sv8-208	https://prices.pokemontcg.io/tcgplayer/sv8-208	2024-12-31	tcgplayer
207	sv8-197	https://prices.pokemontcg.io/tcgplayer/sv8-197	2024-12-31	tcgplayer
208	sv8-196	https://prices.pokemontcg.io/tcgplayer/sv8-196	2024-12-31	tcgplayer
209	sv8-198	https://prices.pokemontcg.io/tcgplayer/sv8-198	2024-12-31	tcgplayer
210	sv8-200	https://prices.pokemontcg.io/tcgplayer/sv8-200	2024-12-31	tcgplayer
211	sv8-202	https://prices.pokemontcg.io/tcgplayer/sv8-202	2024-12-31	tcgplayer
212	sv8-210	https://prices.pokemontcg.io/tcgplayer/sv8-210	2024-12-31	tcgplayer
213	sv8-211	https://prices.pokemontcg.io/tcgplayer/sv8-211	2024-12-31	tcgplayer
214	sv8-214	https://prices.pokemontcg.io/tcgplayer/sv8-214	2024-12-31	tcgplayer
215	sv8-215	https://prices.pokemontcg.io/tcgplayer/sv8-215	2024-12-31	tcgplayer
216	sv8-220	https://prices.pokemontcg.io/tcgplayer/sv8-220	2024-12-31	tcgplayer
217	sv8-216	https://prices.pokemontcg.io/tcgplayer/sv8-216	2024-12-31	tcgplayer
218	sv8-222	https://prices.pokemontcg.io/tcgplayer/sv8-222	2024-12-31	tcgplayer
219	sv8-223	https://prices.pokemontcg.io/tcgplayer/sv8-223	2024-12-31	tcgplayer
220	sv8-217	https://prices.pokemontcg.io/tcgplayer/sv8-217	2024-12-31	tcgplayer
221	sv8-221	https://prices.pokemontcg.io/tcgplayer/sv8-221	2024-12-31	tcgplayer
222	sv8-218	https://prices.pokemontcg.io/tcgplayer/sv8-218	2024-12-31	tcgplayer
223	sv8-219	https://prices.pokemontcg.io/tcgplayer/sv8-219	2024-12-31	tcgplayer
224	sv8-225	https://prices.pokemontcg.io/tcgplayer/sv8-225	2024-12-31	tcgplayer
225	sv8-224	https://prices.pokemontcg.io/tcgplayer/sv8-224	2024-12-31	tcgplayer
226	sv8-226	https://prices.pokemontcg.io/tcgplayer/sv8-226	2024-12-31	tcgplayer
227	sv8-230	https://prices.pokemontcg.io/tcgplayer/sv8-230	2024-12-31	tcgplayer
228	sv8-232	https://prices.pokemontcg.io/tcgplayer/sv8-232	2024-12-31	tcgplayer
229	sv8-234	https://prices.pokemontcg.io/tcgplayer/sv8-234	2024-12-31	tcgplayer
230	sv8-238	https://prices.pokemontcg.io/tcgplayer/sv8-238	2024-12-31	tcgplayer
231	sv8-236	https://prices.pokemontcg.io/tcgplayer/sv8-236	2024-12-31	tcgplayer
232	sv8-237	https://prices.pokemontcg.io/tcgplayer/sv8-237	2024-12-31	tcgplayer
233	sv8-231	https://prices.pokemontcg.io/tcgplayer/sv8-231	2024-12-31	tcgplayer
234	sv8-227	https://prices.pokemontcg.io/tcgplayer/sv8-227	2024-12-31	tcgplayer
235	sv8-228	https://prices.pokemontcg.io/tcgplayer/sv8-228	2024-12-31	tcgplayer
236	sv8-229	https://prices.pokemontcg.io/tcgplayer/sv8-229	2024-12-31	tcgplayer
237	sv8-233	https://prices.pokemontcg.io/tcgplayer/sv8-233	2024-12-31	tcgplayer
238	sv8-235	https://prices.pokemontcg.io/tcgplayer/sv8-235	2024-12-31	tcgplayer
239	sv8-239	https://prices.pokemontcg.io/tcgplayer/sv8-239	2024-12-31	tcgplayer
240	sv8-240	https://prices.pokemontcg.io/tcgplayer/sv8-240	2024-12-31	tcgplayer
241	sv8-241	https://prices.pokemontcg.io/tcgplayer/sv8-241	2024-12-31	tcgplayer
242	sv8-245	https://prices.pokemontcg.io/tcgplayer/sv8-245	2024-12-31	tcgplayer
243	sv8-244	https://prices.pokemontcg.io/tcgplayer/sv8-244	2024-12-31	tcgplayer
244	sv8-247	https://prices.pokemontcg.io/tcgplayer/sv8-247	2024-12-31	tcgplayer
245	sv8-249	https://prices.pokemontcg.io/tcgplayer/sv8-249	2024-12-31	tcgplayer
246	sv8-242	https://prices.pokemontcg.io/tcgplayer/sv8-242	2024-12-31	tcgplayer
247	sv8-243	https://prices.pokemontcg.io/tcgplayer/sv8-243	2024-12-31	tcgplayer
248	sv8-246	https://prices.pokemontcg.io/tcgplayer/sv8-246	2024-12-31	tcgplayer
249	sv8-248	https://prices.pokemontcg.io/tcgplayer/sv8-248	2024-12-31	tcgplayer
250	sv8-250	https://prices.pokemontcg.io/tcgplayer/sv8-250	2024-12-31	tcgplayer
251	sv8-1	https://prices.pokemontcg.io/cardmarket/sv8-1	2024-12-31	cardmarket
252	sv8-2	https://prices.pokemontcg.io/cardmarket/sv8-2	2024-12-31	cardmarket
253	sv8-3	https://prices.pokemontcg.io/cardmarket/sv8-3	2024-12-31	cardmarket
254	sv8-11	https://prices.pokemontcg.io/cardmarket/sv8-11	2024-12-31	cardmarket
255	sv8-14	https://prices.pokemontcg.io/cardmarket/sv8-14	2024-12-31	cardmarket
256	sv8-16	https://prices.pokemontcg.io/cardmarket/sv8-16	2024-12-31	cardmarket
257	sv8-17	https://prices.pokemontcg.io/cardmarket/sv8-17	2024-12-31	cardmarket
258	sv8-24	https://prices.pokemontcg.io/cardmarket/sv8-24	2024-12-31	cardmarket
259	sv8-27	https://prices.pokemontcg.io/cardmarket/sv8-27	2024-12-31	cardmarket
260	sv8-30	https://prices.pokemontcg.io/cardmarket/sv8-30	2024-12-31	cardmarket
261	sv8-31	https://prices.pokemontcg.io/cardmarket/sv8-31	2024-12-31	cardmarket
262	sv8-29	https://prices.pokemontcg.io/cardmarket/sv8-29	2024-12-31	cardmarket
263	sv8-25	https://prices.pokemontcg.io/cardmarket/sv8-25	2024-12-31	cardmarket
264	sv8-4	https://prices.pokemontcg.io/cardmarket/sv8-4	2024-12-31	cardmarket
265	sv8-6	https://prices.pokemontcg.io/cardmarket/sv8-6	2024-12-31	cardmarket
266	sv8-5	https://prices.pokemontcg.io/cardmarket/sv8-5	2024-12-31	cardmarket
267	sv8-8	https://prices.pokemontcg.io/cardmarket/sv8-8	2024-12-31	cardmarket
268	sv8-9	https://prices.pokemontcg.io/cardmarket/sv8-9	2024-12-31	cardmarket
269	sv8-10	https://prices.pokemontcg.io/cardmarket/sv8-10	2024-12-31	cardmarket
270	sv8-15	https://prices.pokemontcg.io/cardmarket/sv8-15	2024-12-31	cardmarket
271	sv8-28	https://prices.pokemontcg.io/cardmarket/sv8-28	2024-12-31	cardmarket
272	sv8-7	https://prices.pokemontcg.io/cardmarket/sv8-7	2024-12-31	cardmarket
273	sv8-13	https://prices.pokemontcg.io/cardmarket/sv8-13	2024-12-31	cardmarket
274	sv8-18	https://prices.pokemontcg.io/cardmarket/sv8-18	2024-12-31	cardmarket
275	sv8-19	https://prices.pokemontcg.io/cardmarket/sv8-19	2024-12-31	cardmarket
276	sv8-21	https://prices.pokemontcg.io/cardmarket/sv8-21	2024-12-31	cardmarket
277	sv8-23	https://prices.pokemontcg.io/cardmarket/sv8-23	2024-12-31	cardmarket
278	sv8-20	https://prices.pokemontcg.io/cardmarket/sv8-20	2024-12-31	cardmarket
279	sv8-22	https://prices.pokemontcg.io/cardmarket/sv8-22	2024-12-31	cardmarket
280	sv8-12	https://prices.pokemontcg.io/cardmarket/sv8-12	2024-12-31	cardmarket
281	sv8-26	https://prices.pokemontcg.io/cardmarket/sv8-26	2024-12-31	cardmarket
282	sv8-36	https://prices.pokemontcg.io/cardmarket/sv8-36	2024-12-31	cardmarket
283	sv8-38	https://prices.pokemontcg.io/cardmarket/sv8-38	2024-12-31	cardmarket
284	sv8-34	https://prices.pokemontcg.io/cardmarket/sv8-34	2024-12-31	cardmarket
285	sv8-39	https://prices.pokemontcg.io/cardmarket/sv8-39	2024-12-31	cardmarket
286	sv8-40	https://prices.pokemontcg.io/cardmarket/sv8-40	2024-12-31	cardmarket
287	sv8-43	https://prices.pokemontcg.io/cardmarket/sv8-43	2024-12-31	cardmarket
288	sv8-45	https://prices.pokemontcg.io/cardmarket/sv8-45	2024-12-31	cardmarket
289	sv8-46	https://prices.pokemontcg.io/cardmarket/sv8-46	2024-12-31	cardmarket
290	sv8-32	https://prices.pokemontcg.io/cardmarket/sv8-32	2024-12-31	cardmarket
291	sv8-37	https://prices.pokemontcg.io/cardmarket/sv8-37	2024-12-31	cardmarket
292	sv8-47	https://prices.pokemontcg.io/cardmarket/sv8-47	2024-12-31	cardmarket
293	sv8-42	https://prices.pokemontcg.io/cardmarket/sv8-42	2024-12-31	cardmarket
294	sv8-44	https://prices.pokemontcg.io/cardmarket/sv8-44	2024-12-31	cardmarket
295	sv8-33	https://prices.pokemontcg.io/cardmarket/sv8-33	2024-12-31	cardmarket
296	sv8-35	https://prices.pokemontcg.io/cardmarket/sv8-35	2024-12-31	cardmarket
297	sv8-41	https://prices.pokemontcg.io/cardmarket/sv8-41	2024-12-31	cardmarket
298	sv8-48	https://prices.pokemontcg.io/cardmarket/sv8-48	2024-12-31	cardmarket
299	sv8-49	https://prices.pokemontcg.io/cardmarket/sv8-49	2024-12-31	cardmarket
300	sv8-52	https://prices.pokemontcg.io/cardmarket/sv8-52	2024-12-31	cardmarket
301	sv8-51	https://prices.pokemontcg.io/cardmarket/sv8-51	2024-12-31	cardmarket
302	sv8-54	https://prices.pokemontcg.io/cardmarket/sv8-54	2024-12-31	cardmarket
303	sv8-50	https://prices.pokemontcg.io/cardmarket/sv8-50	2024-12-31	cardmarket
304	sv8-53	https://prices.pokemontcg.io/cardmarket/sv8-53	2024-12-31	cardmarket
305	sv8-57	https://prices.pokemontcg.io/cardmarket/sv8-57	2024-12-31	cardmarket
306	sv8-56	https://prices.pokemontcg.io/cardmarket/sv8-56	2024-12-31	cardmarket
307	sv8-55	https://prices.pokemontcg.io/cardmarket/sv8-55	2024-12-31	cardmarket
308	sv8-58	https://prices.pokemontcg.io/cardmarket/sv8-58	2024-12-31	cardmarket
309	sv8-59	https://prices.pokemontcg.io/cardmarket/sv8-59	2024-12-31	cardmarket
310	sv8-60	https://prices.pokemontcg.io/cardmarket/sv8-60	2024-12-31	cardmarket
311	sv8-61	https://prices.pokemontcg.io/cardmarket/sv8-61	2024-12-31	cardmarket
312	sv8-62	https://prices.pokemontcg.io/cardmarket/sv8-62	2024-12-31	cardmarket
313	sv8-68	https://prices.pokemontcg.io/cardmarket/sv8-68	2024-12-31	cardmarket
314	sv8-71	https://prices.pokemontcg.io/cardmarket/sv8-71	2024-12-31	cardmarket
315	sv8-69	https://prices.pokemontcg.io/cardmarket/sv8-69	2024-12-31	cardmarket
316	sv8-66	https://prices.pokemontcg.io/cardmarket/sv8-66	2024-12-31	cardmarket
317	sv8-63	https://prices.pokemontcg.io/cardmarket/sv8-63	2024-12-31	cardmarket
318	sv8-67	https://prices.pokemontcg.io/cardmarket/sv8-67	2024-12-31	cardmarket
319	sv8-72	https://prices.pokemontcg.io/cardmarket/sv8-72	2024-12-31	cardmarket
320	sv8-70	https://prices.pokemontcg.io/cardmarket/sv8-70	2024-12-31	cardmarket
321	sv8-64	https://prices.pokemontcg.io/cardmarket/sv8-64	2024-12-31	cardmarket
322	sv8-65	https://prices.pokemontcg.io/cardmarket/sv8-65	2024-12-31	cardmarket
323	sv8-73	https://prices.pokemontcg.io/cardmarket/sv8-73	2024-12-31	cardmarket
324	sv8-74	https://prices.pokemontcg.io/cardmarket/sv8-74	2024-12-31	cardmarket
325	sv8-75	https://prices.pokemontcg.io/cardmarket/sv8-75	2024-12-31	cardmarket
326	sv8-76	https://prices.pokemontcg.io/cardmarket/sv8-76	2024-12-31	cardmarket
327	sv8-77	https://prices.pokemontcg.io/cardmarket/sv8-77	2024-12-31	cardmarket
328	sv8-78	https://prices.pokemontcg.io/cardmarket/sv8-78	2024-12-31	cardmarket
329	sv8-79	https://prices.pokemontcg.io/cardmarket/sv8-79	2024-12-31	cardmarket
330	sv8-80	https://prices.pokemontcg.io/cardmarket/sv8-80	2024-12-31	cardmarket
331	sv8-81	https://prices.pokemontcg.io/cardmarket/sv8-81	2024-12-31	cardmarket
332	sv8-82	https://prices.pokemontcg.io/cardmarket/sv8-82	2024-12-31	cardmarket
333	sv8-83	https://prices.pokemontcg.io/cardmarket/sv8-83	2024-12-31	cardmarket
334	sv8-84	https://prices.pokemontcg.io/cardmarket/sv8-84	2024-12-31	cardmarket
335	sv8-85	https://prices.pokemontcg.io/cardmarket/sv8-85	2024-12-31	cardmarket
336	sv8-86	https://prices.pokemontcg.io/cardmarket/sv8-86	2024-12-31	cardmarket
337	sv8-87	https://prices.pokemontcg.io/cardmarket/sv8-87	2024-12-31	cardmarket
338	sv8-88	https://prices.pokemontcg.io/cardmarket/sv8-88	2024-12-31	cardmarket
339	sv8-89	https://prices.pokemontcg.io/cardmarket/sv8-89	2024-12-31	cardmarket
340	sv8-90	https://prices.pokemontcg.io/cardmarket/sv8-90	2024-12-31	cardmarket
341	sv8-91	https://prices.pokemontcg.io/cardmarket/sv8-91	2024-12-31	cardmarket
342	sv8-92	https://prices.pokemontcg.io/cardmarket/sv8-92	2024-12-31	cardmarket
343	sv8-95	https://prices.pokemontcg.io/cardmarket/sv8-95	2024-12-31	cardmarket
344	sv8-97	https://prices.pokemontcg.io/cardmarket/sv8-97	2024-12-31	cardmarket
345	sv8-94	https://prices.pokemontcg.io/cardmarket/sv8-94	2024-12-31	cardmarket
346	sv8-96	https://prices.pokemontcg.io/cardmarket/sv8-96	2024-12-31	cardmarket
347	sv8-99	https://prices.pokemontcg.io/cardmarket/sv8-99	2024-12-31	cardmarket
348	sv8-93	https://prices.pokemontcg.io/cardmarket/sv8-93	2024-12-31	cardmarket
349	sv8-98	https://prices.pokemontcg.io/cardmarket/sv8-98	2024-12-31	cardmarket
350	sv8-100	https://prices.pokemontcg.io/cardmarket/sv8-100	2024-12-31	cardmarket
351	sv8-101	https://prices.pokemontcg.io/cardmarket/sv8-101	2024-12-31	cardmarket
352	sv8-102	https://prices.pokemontcg.io/cardmarket/sv8-102	2024-12-31	cardmarket
353	sv8-103	https://prices.pokemontcg.io/cardmarket/sv8-103	2024-12-31	cardmarket
354	sv8-104	https://prices.pokemontcg.io/cardmarket/sv8-104	2024-12-31	cardmarket
355	sv8-105	https://prices.pokemontcg.io/cardmarket/sv8-105	2024-12-31	cardmarket
356	sv8-106	https://prices.pokemontcg.io/cardmarket/sv8-106	2024-12-31	cardmarket
357	sv8-107	https://prices.pokemontcg.io/cardmarket/sv8-107	2024-12-31	cardmarket
358	sv8-108	https://prices.pokemontcg.io/cardmarket/sv8-108	2024-12-31	cardmarket
359	sv8-109	https://prices.pokemontcg.io/cardmarket/sv8-109	2024-12-31	cardmarket
360	sv8-110	https://prices.pokemontcg.io/cardmarket/sv8-110	2024-12-31	cardmarket
361	sv8-111	https://prices.pokemontcg.io/cardmarket/sv8-111	2024-12-31	cardmarket
362	sv8-112	https://prices.pokemontcg.io/cardmarket/sv8-112	2024-12-31	cardmarket
363	sv8-113	https://prices.pokemontcg.io/cardmarket/sv8-113	2024-12-31	cardmarket
364	sv8-114	https://prices.pokemontcg.io/cardmarket/sv8-114	2024-12-31	cardmarket
365	sv8-115	https://prices.pokemontcg.io/cardmarket/sv8-115	2024-12-31	cardmarket
366	sv8-117	https://prices.pokemontcg.io/cardmarket/sv8-117	2024-12-31	cardmarket
367	sv8-120	https://prices.pokemontcg.io/cardmarket/sv8-120	2024-12-31	cardmarket
368	sv8-119	https://prices.pokemontcg.io/cardmarket/sv8-119	2024-12-31	cardmarket
369	sv8-121	https://prices.pokemontcg.io/cardmarket/sv8-121	2024-12-31	cardmarket
370	sv8-118	https://prices.pokemontcg.io/cardmarket/sv8-118	2024-12-31	cardmarket
371	sv8-116	https://prices.pokemontcg.io/cardmarket/sv8-116	2024-12-31	cardmarket
372	sv8-122	https://prices.pokemontcg.io/cardmarket/sv8-122	2024-12-31	cardmarket
373	sv8-123	https://prices.pokemontcg.io/cardmarket/sv8-123	2024-12-31	cardmarket
374	sv8-124	https://prices.pokemontcg.io/cardmarket/sv8-124	2024-12-31	cardmarket
375	sv8-125	https://prices.pokemontcg.io/cardmarket/sv8-125	2024-12-31	cardmarket
376	sv8-126	https://prices.pokemontcg.io/cardmarket/sv8-126	2024-12-31	cardmarket
377	sv8-127	https://prices.pokemontcg.io/cardmarket/sv8-127	2024-12-31	cardmarket
378	sv8-128	https://prices.pokemontcg.io/cardmarket/sv8-128	2024-12-31	cardmarket
379	sv8-129	https://prices.pokemontcg.io/cardmarket/sv8-129	2024-12-31	cardmarket
380	sv8-130	https://prices.pokemontcg.io/cardmarket/sv8-130	2024-12-31	cardmarket
381	sv8-131	https://prices.pokemontcg.io/cardmarket/sv8-131	2024-12-31	cardmarket
382	sv8-132	https://prices.pokemontcg.io/cardmarket/sv8-132	2024-12-31	cardmarket
383	sv8-134	https://prices.pokemontcg.io/cardmarket/sv8-134	2024-12-31	cardmarket
384	sv8-139	https://prices.pokemontcg.io/cardmarket/sv8-139	2024-12-31	cardmarket
385	sv8-148	https://prices.pokemontcg.io/cardmarket/sv8-148	2024-12-31	cardmarket
386	sv8-149	https://prices.pokemontcg.io/cardmarket/sv8-149	2024-12-31	cardmarket
387	sv8-150	https://prices.pokemontcg.io/cardmarket/sv8-150	2024-12-31	cardmarket
388	sv8-133	https://prices.pokemontcg.io/cardmarket/sv8-133	2024-12-31	cardmarket
389	sv8-140	https://prices.pokemontcg.io/cardmarket/sv8-140	2024-12-31	cardmarket
390	sv8-142	https://prices.pokemontcg.io/cardmarket/sv8-142	2024-12-31	cardmarket
391	sv8-146	https://prices.pokemontcg.io/cardmarket/sv8-146	2024-12-31	cardmarket
392	sv8-141	https://prices.pokemontcg.io/cardmarket/sv8-141	2024-12-31	cardmarket
393	sv8-135	https://prices.pokemontcg.io/cardmarket/sv8-135	2024-12-31	cardmarket
394	sv8-147	https://prices.pokemontcg.io/cardmarket/sv8-147	2024-12-31	cardmarket
395	sv8-136	https://prices.pokemontcg.io/cardmarket/sv8-136	2024-12-31	cardmarket
396	sv8-138	https://prices.pokemontcg.io/cardmarket/sv8-138	2024-12-31	cardmarket
397	sv8-143	https://prices.pokemontcg.io/cardmarket/sv8-143	2024-12-31	cardmarket
398	sv8-144	https://prices.pokemontcg.io/cardmarket/sv8-144	2024-12-31	cardmarket
399	sv8-137	https://prices.pokemontcg.io/cardmarket/sv8-137	2024-12-31	cardmarket
400	sv8-145	https://prices.pokemontcg.io/cardmarket/sv8-145	2024-12-31	cardmarket
401	sv8-155	https://prices.pokemontcg.io/cardmarket/sv8-155	2024-12-31	cardmarket
402	sv8-153	https://prices.pokemontcg.io/cardmarket/sv8-153	2024-12-31	cardmarket
403	sv8-163	https://prices.pokemontcg.io/cardmarket/sv8-163	2024-12-31	cardmarket
404	sv8-159	https://prices.pokemontcg.io/cardmarket/sv8-159	2024-12-31	cardmarket
405	sv8-168	https://prices.pokemontcg.io/cardmarket/sv8-168	2024-12-31	cardmarket
406	sv8-157	https://prices.pokemontcg.io/cardmarket/sv8-157	2024-12-31	cardmarket
407	sv8-162	https://prices.pokemontcg.io/cardmarket/sv8-162	2024-12-31	cardmarket
408	sv8-166	https://prices.pokemontcg.io/cardmarket/sv8-166	2024-12-31	cardmarket
409	sv8-151	https://prices.pokemontcg.io/cardmarket/sv8-151	2024-12-31	cardmarket
410	sv8-165	https://prices.pokemontcg.io/cardmarket/sv8-165	2024-12-31	cardmarket
411	sv8-154	https://prices.pokemontcg.io/cardmarket/sv8-154	2024-12-31	cardmarket
412	sv8-152	https://prices.pokemontcg.io/cardmarket/sv8-152	2024-12-31	cardmarket
413	sv8-158	https://prices.pokemontcg.io/cardmarket/sv8-158	2024-12-31	cardmarket
414	sv8-160	https://prices.pokemontcg.io/cardmarket/sv8-160	2024-12-31	cardmarket
415	sv8-167	https://prices.pokemontcg.io/cardmarket/sv8-167	2024-12-31	cardmarket
416	sv8-156	https://prices.pokemontcg.io/cardmarket/sv8-156	2024-12-31	cardmarket
417	sv8-161	https://prices.pokemontcg.io/cardmarket/sv8-161	2024-12-31	cardmarket
418	sv8-164	https://prices.pokemontcg.io/cardmarket/sv8-164	2024-12-31	cardmarket
419	sv8-169	https://prices.pokemontcg.io/cardmarket/sv8-169	2024-12-31	cardmarket
420	sv8-170	https://prices.pokemontcg.io/cardmarket/sv8-170	2024-12-31	cardmarket
421	sv8-180	https://prices.pokemontcg.io/cardmarket/sv8-180	2024-12-31	cardmarket
422	sv8-177	https://prices.pokemontcg.io/cardmarket/sv8-177	2024-12-31	cardmarket
423	sv8-172	https://prices.pokemontcg.io/cardmarket/sv8-172	2024-12-31	cardmarket
424	sv8-171	https://prices.pokemontcg.io/cardmarket/sv8-171	2024-12-31	cardmarket
425	sv8-178	https://prices.pokemontcg.io/cardmarket/sv8-178	2024-12-31	cardmarket
426	sv8-179	https://prices.pokemontcg.io/cardmarket/sv8-179	2024-12-31	cardmarket
427	sv8-173	https://prices.pokemontcg.io/cardmarket/sv8-173	2024-12-31	cardmarket
428	sv8-174	https://prices.pokemontcg.io/cardmarket/sv8-174	2024-12-31	cardmarket
429	sv8-175	https://prices.pokemontcg.io/cardmarket/sv8-175	2024-12-31	cardmarket
430	sv8-176	https://prices.pokemontcg.io/cardmarket/sv8-176	2024-12-31	cardmarket
431	sv8-181	https://prices.pokemontcg.io/cardmarket/sv8-181	2024-12-31	cardmarket
432	sv8-182	https://prices.pokemontcg.io/cardmarket/sv8-182	2024-12-31	cardmarket
433	sv8-194	https://prices.pokemontcg.io/cardmarket/sv8-194	2024-12-31	cardmarket
434	sv8-187	https://prices.pokemontcg.io/cardmarket/sv8-187	2024-12-31	cardmarket
435	sv8-188	https://prices.pokemontcg.io/cardmarket/sv8-188	2024-12-31	cardmarket
436	sv8-186	https://prices.pokemontcg.io/cardmarket/sv8-186	2024-12-31	cardmarket
437	sv8-191	https://prices.pokemontcg.io/cardmarket/sv8-191	2024-12-31	cardmarket
438	sv8-195	https://prices.pokemontcg.io/cardmarket/sv8-195	2024-12-31	cardmarket
439	sv8-183	https://prices.pokemontcg.io/cardmarket/sv8-183	2024-12-31	cardmarket
440	sv8-185	https://prices.pokemontcg.io/cardmarket/sv8-185	2024-12-31	cardmarket
441	sv8-189	https://prices.pokemontcg.io/cardmarket/sv8-189	2024-12-31	cardmarket
442	sv8-184	https://prices.pokemontcg.io/cardmarket/sv8-184	2024-12-31	cardmarket
443	sv8-190	https://prices.pokemontcg.io/cardmarket/sv8-190	2024-12-31	cardmarket
444	sv8-192	https://prices.pokemontcg.io/cardmarket/sv8-192	2024-12-31	cardmarket
445	sv8-193	https://prices.pokemontcg.io/cardmarket/sv8-193	2024-12-31	cardmarket
446	sv8-199	https://prices.pokemontcg.io/cardmarket/sv8-199	2024-12-31	cardmarket
447	sv8-201	https://prices.pokemontcg.io/cardmarket/sv8-201	2024-12-31	cardmarket
448	sv8-206	https://prices.pokemontcg.io/cardmarket/sv8-206	2024-12-31	cardmarket
449	sv8-209	https://prices.pokemontcg.io/cardmarket/sv8-209	2024-12-31	cardmarket
450	sv8-203	https://prices.pokemontcg.io/cardmarket/sv8-203	2024-12-31	cardmarket
451	sv8-212	https://prices.pokemontcg.io/cardmarket/sv8-212	2024-12-31	cardmarket
452	sv8-205	https://prices.pokemontcg.io/cardmarket/sv8-205	2024-12-31	cardmarket
453	sv8-204	https://prices.pokemontcg.io/cardmarket/sv8-204	2024-12-31	cardmarket
454	sv8-213	https://prices.pokemontcg.io/cardmarket/sv8-213	2024-12-31	cardmarket
455	sv8-207	https://prices.pokemontcg.io/cardmarket/sv8-207	2024-12-31	cardmarket
456	sv8-208	https://prices.pokemontcg.io/cardmarket/sv8-208	2024-12-31	cardmarket
457	sv8-197	https://prices.pokemontcg.io/cardmarket/sv8-197	2024-12-31	cardmarket
458	sv8-196	https://prices.pokemontcg.io/cardmarket/sv8-196	2024-12-31	cardmarket
459	sv8-198	https://prices.pokemontcg.io/cardmarket/sv8-198	2024-12-31	cardmarket
460	sv8-200	https://prices.pokemontcg.io/cardmarket/sv8-200	2024-12-31	cardmarket
461	sv8-202	https://prices.pokemontcg.io/cardmarket/sv8-202	2024-12-31	cardmarket
462	sv8-210	https://prices.pokemontcg.io/cardmarket/sv8-210	2024-12-31	cardmarket
463	sv8-211	https://prices.pokemontcg.io/cardmarket/sv8-211	2024-12-31	cardmarket
464	sv8-214	https://prices.pokemontcg.io/cardmarket/sv8-214	2024-12-31	cardmarket
465	sv8-215	https://prices.pokemontcg.io/cardmarket/sv8-215	2024-12-31	cardmarket
466	sv8-220	https://prices.pokemontcg.io/cardmarket/sv8-220	2024-12-31	cardmarket
467	sv8-216	https://prices.pokemontcg.io/cardmarket/sv8-216	2024-12-31	cardmarket
468	sv8-222	https://prices.pokemontcg.io/cardmarket/sv8-222	2024-12-31	cardmarket
469	sv8-223	https://prices.pokemontcg.io/cardmarket/sv8-223	2024-12-31	cardmarket
470	sv8-217	https://prices.pokemontcg.io/cardmarket/sv8-217	2024-12-31	cardmarket
471	sv8-221	https://prices.pokemontcg.io/cardmarket/sv8-221	2024-12-31	cardmarket
472	sv8-218	https://prices.pokemontcg.io/cardmarket/sv8-218	2024-12-31	cardmarket
473	sv8-219	https://prices.pokemontcg.io/cardmarket/sv8-219	2024-12-31	cardmarket
474	sv8-225	https://prices.pokemontcg.io/cardmarket/sv8-225	2024-12-31	cardmarket
475	sv8-224	https://prices.pokemontcg.io/cardmarket/sv8-224	2024-12-31	cardmarket
476	sv8-226	https://prices.pokemontcg.io/cardmarket/sv8-226	2024-12-31	cardmarket
477	sv8-230	https://prices.pokemontcg.io/cardmarket/sv8-230	2024-12-31	cardmarket
478	sv8-232	https://prices.pokemontcg.io/cardmarket/sv8-232	2024-12-31	cardmarket
479	sv8-234	https://prices.pokemontcg.io/cardmarket/sv8-234	2024-12-31	cardmarket
480	sv8-238	https://prices.pokemontcg.io/cardmarket/sv8-238	2024-12-31	cardmarket
481	sv8-236	https://prices.pokemontcg.io/cardmarket/sv8-236	2024-12-31	cardmarket
482	sv8-237	https://prices.pokemontcg.io/cardmarket/sv8-237	2024-12-31	cardmarket
483	sv8-231	https://prices.pokemontcg.io/cardmarket/sv8-231	2024-12-31	cardmarket
484	sv8-227	https://prices.pokemontcg.io/cardmarket/sv8-227	2024-12-31	cardmarket
485	sv8-228	https://prices.pokemontcg.io/cardmarket/sv8-228	2024-12-31	cardmarket
486	sv8-229	https://prices.pokemontcg.io/cardmarket/sv8-229	2024-12-31	cardmarket
487	sv8-233	https://prices.pokemontcg.io/cardmarket/sv8-233	2024-12-31	cardmarket
488	sv8-235	https://prices.pokemontcg.io/cardmarket/sv8-235	2024-12-31	cardmarket
489	sv8-239	https://prices.pokemontcg.io/cardmarket/sv8-239	2024-12-31	cardmarket
490	sv8-240	https://prices.pokemontcg.io/cardmarket/sv8-240	2024-12-31	cardmarket
491	sv8-241	https://prices.pokemontcg.io/cardmarket/sv8-241	2024-12-31	cardmarket
492	sv8-245	https://prices.pokemontcg.io/cardmarket/sv8-245	2024-12-31	cardmarket
493	sv8-244	https://prices.pokemontcg.io/cardmarket/sv8-244	2024-12-31	cardmarket
494	sv8-247	https://prices.pokemontcg.io/cardmarket/sv8-247	2024-12-31	cardmarket
495	sv8-249	https://prices.pokemontcg.io/cardmarket/sv8-249	2024-12-31	cardmarket
496	sv8-242	https://prices.pokemontcg.io/cardmarket/sv8-242	2024-12-31	cardmarket
497	sv8-243	https://prices.pokemontcg.io/cardmarket/sv8-243	2024-12-31	cardmarket
498	sv8-246	https://prices.pokemontcg.io/cardmarket/sv8-246	2024-12-31	cardmarket
499	sv8-248	https://prices.pokemontcg.io/cardmarket/sv8-248	2024-12-31	cardmarket
500	sv8-250	https://prices.pokemontcg.io/cardmarket/sv8-250	2024-12-31	cardmarket
501	sve-1	https://prices.pokemontcg.io/tcgplayer/sve-1	2023-07-20	tcgplayer
502	sve-2	https://prices.pokemontcg.io/tcgplayer/sve-2	2023-07-20	tcgplayer
503	sve-3	https://prices.pokemontcg.io/tcgplayer/sve-3	2023-07-20	tcgplayer
504	sve-4	https://prices.pokemontcg.io/tcgplayer/sve-4	2023-07-20	tcgplayer
505	sve-5	https://prices.pokemontcg.io/tcgplayer/sve-5	2023-07-20	tcgplayer
506	sve-6	https://prices.pokemontcg.io/tcgplayer/sve-6	2023-07-20	tcgplayer
507	sve-7	https://prices.pokemontcg.io/tcgplayer/sve-7	2023-07-20	tcgplayer
508	sve-8	https://prices.pokemontcg.io/tcgplayer/sve-8	2023-07-20	tcgplayer
509	sve-9	https://prices.pokemontcg.io/tcgplayer/sve-9	2024-09-19	tcgplayer
510	sve-10	https://prices.pokemontcg.io/tcgplayer/sve-10	2024-09-19	tcgplayer
511	sve-11	https://prices.pokemontcg.io/tcgplayer/sve-11	2024-09-19	tcgplayer
512	sve-12	https://prices.pokemontcg.io/tcgplayer/sve-12	2024-09-19	tcgplayer
513	sve-13	https://prices.pokemontcg.io/tcgplayer/sve-13	2024-09-19	tcgplayer
514	sve-14	https://prices.pokemontcg.io/tcgplayer/sve-14	2024-09-19	tcgplayer
515	sve-15	https://prices.pokemontcg.io/tcgplayer/sve-15	2024-09-19	tcgplayer
516	sve-16	https://prices.pokemontcg.io/tcgplayer/sve-16	2024-09-19	tcgplayer
517	sve-1	https://prices.pokemontcg.io/cardmarket/sve-1	2023-07-20	cardmarket
518	sve-2	https://prices.pokemontcg.io/cardmarket/sve-2	2023-07-20	cardmarket
519	sve-3	https://prices.pokemontcg.io/cardmarket/sve-3	2023-07-20	cardmarket
520	sve-4	https://prices.pokemontcg.io/cardmarket/sve-4	2023-07-20	cardmarket
521	sve-5	https://prices.pokemontcg.io/cardmarket/sve-5	2023-07-20	cardmarket
522	sve-6	https://prices.pokemontcg.io/cardmarket/sve-6	2023-07-20	cardmarket
523	sve-7	https://prices.pokemontcg.io/cardmarket/sve-7	2023-07-20	cardmarket
524	sve-8	https://prices.pokemontcg.io/cardmarket/sve-8	2023-07-20	cardmarket
525	sve-9	https://prices.pokemontcg.io/cardmarket/sve-9	2024-09-19	cardmarket
526	sve-10	https://prices.pokemontcg.io/cardmarket/sve-10	2024-09-19	cardmarket
527	sve-11	https://prices.pokemontcg.io/cardmarket/sve-11	2024-09-19	cardmarket
528	sve-12	https://prices.pokemontcg.io/cardmarket/sve-12	2024-09-19	cardmarket
529	sve-13	https://prices.pokemontcg.io/cardmarket/sve-13	2024-09-19	cardmarket
530	sve-14	https://prices.pokemontcg.io/cardmarket/sve-14	2024-09-19	cardmarket
531	sve-15	https://prices.pokemontcg.io/cardmarket/sve-15	2024-09-19	cardmarket
532	sve-16	https://prices.pokemontcg.io/cardmarket/sve-16	2024-09-19	cardmarket
533	sv3-1	https://prices.pokemontcg.io/tcgplayer/sv3-1	2024-12-31	tcgplayer
534	sv3-2	https://prices.pokemontcg.io/tcgplayer/sv3-2	2024-12-31	tcgplayer
535	sv3-3	https://prices.pokemontcg.io/tcgplayer/sv3-3	2024-12-31	tcgplayer
536	sv3-4	https://prices.pokemontcg.io/tcgplayer/sv3-4	2024-12-31	tcgplayer
537	sv3-5	https://prices.pokemontcg.io/tcgplayer/sv3-5	2024-12-31	tcgplayer
538	sv3-6	https://prices.pokemontcg.io/tcgplayer/sv3-6	2024-12-31	tcgplayer
539	sv3-7	https://prices.pokemontcg.io/tcgplayer/sv3-7	2024-12-31	tcgplayer
540	sv3-8	https://prices.pokemontcg.io/tcgplayer/sv3-8	2024-12-31	tcgplayer
541	sv3-9	https://prices.pokemontcg.io/tcgplayer/sv3-9	2024-12-31	tcgplayer
542	sv3-10	https://prices.pokemontcg.io/tcgplayer/sv3-10	2024-12-31	tcgplayer
543	sv3-11	https://prices.pokemontcg.io/tcgplayer/sv3-11	2024-12-31	tcgplayer
544	sv3-12	https://prices.pokemontcg.io/tcgplayer/sv3-12	2024-12-31	tcgplayer
545	sv3-13	https://prices.pokemontcg.io/tcgplayer/sv3-13	2024-12-31	tcgplayer
546	sv3-14	https://prices.pokemontcg.io/tcgplayer/sv3-14	2024-12-31	tcgplayer
547	sv3-15	https://prices.pokemontcg.io/tcgplayer/sv3-15	2024-12-31	tcgplayer
548	sv3-16	https://prices.pokemontcg.io/tcgplayer/sv3-16	2024-12-31	tcgplayer
549	sv3-17	https://prices.pokemontcg.io/tcgplayer/sv3-17	2024-12-31	tcgplayer
550	sv3-18	https://prices.pokemontcg.io/tcgplayer/sv3-18	2024-12-31	tcgplayer
551	sv3-19	https://prices.pokemontcg.io/tcgplayer/sv3-19	2024-12-31	tcgplayer
552	sv3-20	https://prices.pokemontcg.io/tcgplayer/sv3-20	2024-12-31	tcgplayer
553	sv3-21	https://prices.pokemontcg.io/tcgplayer/sv3-21	2024-12-31	tcgplayer
554	sv3-22	https://prices.pokemontcg.io/tcgplayer/sv3-22	2024-12-31	tcgplayer
555	sv3-23	https://prices.pokemontcg.io/tcgplayer/sv3-23	2024-12-31	tcgplayer
556	sv3-24	https://prices.pokemontcg.io/tcgplayer/sv3-24	2024-12-31	tcgplayer
557	sv3-25	https://prices.pokemontcg.io/tcgplayer/sv3-25	2024-12-31	tcgplayer
558	sv3-26	https://prices.pokemontcg.io/tcgplayer/sv3-26	2024-12-31	tcgplayer
559	sv3-27	https://prices.pokemontcg.io/tcgplayer/sv3-27	2024-12-31	tcgplayer
560	sv3-28	https://prices.pokemontcg.io/tcgplayer/sv3-28	2024-12-31	tcgplayer
561	sv3-29	https://prices.pokemontcg.io/tcgplayer/sv3-29	2024-12-31	tcgplayer
562	sv3-30	https://prices.pokemontcg.io/tcgplayer/sv3-30	2024-12-31	tcgplayer
563	sv3-31	https://prices.pokemontcg.io/tcgplayer/sv3-31	2024-12-31	tcgplayer
564	sv3-32	https://prices.pokemontcg.io/tcgplayer/sv3-32	2024-12-31	tcgplayer
565	sv3-33	https://prices.pokemontcg.io/tcgplayer/sv3-33	2024-12-31	tcgplayer
566	sv3-34	https://prices.pokemontcg.io/tcgplayer/sv3-34	2024-12-31	tcgplayer
567	sv3-35	https://prices.pokemontcg.io/tcgplayer/sv3-35	2024-12-31	tcgplayer
568	sv3-36	https://prices.pokemontcg.io/tcgplayer/sv3-36	2024-12-31	tcgplayer
569	sv3-37	https://prices.pokemontcg.io/tcgplayer/sv3-37	2024-12-31	tcgplayer
570	sv3-38	https://prices.pokemontcg.io/tcgplayer/sv3-38	2024-12-31	tcgplayer
571	sv3-39	https://prices.pokemontcg.io/tcgplayer/sv3-39	2024-12-31	tcgplayer
572	sv3-40	https://prices.pokemontcg.io/tcgplayer/sv3-40	2024-12-31	tcgplayer
573	sv3-41	https://prices.pokemontcg.io/tcgplayer/sv3-41	2024-12-31	tcgplayer
574	sv3-42	https://prices.pokemontcg.io/tcgplayer/sv3-42	2024-12-31	tcgplayer
575	sv3-43	https://prices.pokemontcg.io/tcgplayer/sv3-43	2024-12-31	tcgplayer
576	sv3-44	https://prices.pokemontcg.io/tcgplayer/sv3-44	2024-12-31	tcgplayer
577	sv3-45	https://prices.pokemontcg.io/tcgplayer/sv3-45	2024-12-31	tcgplayer
578	sv3-46	https://prices.pokemontcg.io/tcgplayer/sv3-46	2024-12-31	tcgplayer
579	sv3-47	https://prices.pokemontcg.io/tcgplayer/sv3-47	2024-12-31	tcgplayer
580	sv3-48	https://prices.pokemontcg.io/tcgplayer/sv3-48	2024-12-31	tcgplayer
581	sv3-49	https://prices.pokemontcg.io/tcgplayer/sv3-49	2024-12-31	tcgplayer
582	sv3-50	https://prices.pokemontcg.io/tcgplayer/sv3-50	2024-12-31	tcgplayer
583	sv3-51	https://prices.pokemontcg.io/tcgplayer/sv3-51	2024-12-31	tcgplayer
584	sv3-52	https://prices.pokemontcg.io/tcgplayer/sv3-52	2024-12-31	tcgplayer
585	sv3-53	https://prices.pokemontcg.io/tcgplayer/sv3-53	2024-12-31	tcgplayer
586	sv3-54	https://prices.pokemontcg.io/tcgplayer/sv3-54	2024-12-31	tcgplayer
587	sv3-55	https://prices.pokemontcg.io/tcgplayer/sv3-55	2024-12-31	tcgplayer
588	sv3-56	https://prices.pokemontcg.io/tcgplayer/sv3-56	2024-12-31	tcgplayer
589	sv3-57	https://prices.pokemontcg.io/tcgplayer/sv3-57	2024-12-31	tcgplayer
590	sv3-58	https://prices.pokemontcg.io/tcgplayer/sv3-58	2024-12-31	tcgplayer
591	sv3-59	https://prices.pokemontcg.io/tcgplayer/sv3-59	2024-12-31	tcgplayer
592	sv3-60	https://prices.pokemontcg.io/tcgplayer/sv3-60	2024-12-31	tcgplayer
593	sv3-61	https://prices.pokemontcg.io/tcgplayer/sv3-61	2024-12-31	tcgplayer
594	sv3-62	https://prices.pokemontcg.io/tcgplayer/sv3-62	2024-12-31	tcgplayer
595	sv3-63	https://prices.pokemontcg.io/tcgplayer/sv3-63	2024-12-31	tcgplayer
596	sv3-64	https://prices.pokemontcg.io/tcgplayer/sv3-64	2024-12-31	tcgplayer
597	sv3-65	https://prices.pokemontcg.io/tcgplayer/sv3-65	2024-12-31	tcgplayer
598	sv3-66	https://prices.pokemontcg.io/tcgplayer/sv3-66	2024-12-31	tcgplayer
599	sv3-67	https://prices.pokemontcg.io/tcgplayer/sv3-67	2024-12-31	tcgplayer
600	sv3-68	https://prices.pokemontcg.io/tcgplayer/sv3-68	2024-12-31	tcgplayer
601	sv3-69	https://prices.pokemontcg.io/tcgplayer/sv3-69	2024-12-31	tcgplayer
602	sv3-70	https://prices.pokemontcg.io/tcgplayer/sv3-70	2024-12-31	tcgplayer
603	sv3-71	https://prices.pokemontcg.io/tcgplayer/sv3-71	2024-12-31	tcgplayer
604	sv3-72	https://prices.pokemontcg.io/tcgplayer/sv3-72	2024-12-31	tcgplayer
605	sv3-73	https://prices.pokemontcg.io/tcgplayer/sv3-73	2024-12-31	tcgplayer
606	sv3-74	https://prices.pokemontcg.io/tcgplayer/sv3-74	2024-12-31	tcgplayer
607	sv3-75	https://prices.pokemontcg.io/tcgplayer/sv3-75	2024-12-31	tcgplayer
608	sv3-76	https://prices.pokemontcg.io/tcgplayer/sv3-76	2024-12-31	tcgplayer
609	sv3-77	https://prices.pokemontcg.io/tcgplayer/sv3-77	2024-12-31	tcgplayer
610	sv3-78	https://prices.pokemontcg.io/tcgplayer/sv3-78	2024-12-31	tcgplayer
611	sv3-79	https://prices.pokemontcg.io/tcgplayer/sv3-79	2024-12-31	tcgplayer
612	sv3-80	https://prices.pokemontcg.io/tcgplayer/sv3-80	2024-12-31	tcgplayer
613	sv3-81	https://prices.pokemontcg.io/tcgplayer/sv3-81	2024-12-31	tcgplayer
614	sv3-82	https://prices.pokemontcg.io/tcgplayer/sv3-82	2024-12-31	tcgplayer
615	sv3-83	https://prices.pokemontcg.io/tcgplayer/sv3-83	2024-12-31	tcgplayer
616	sv3-84	https://prices.pokemontcg.io/tcgplayer/sv3-84	2024-12-31	tcgplayer
617	sv3-85	https://prices.pokemontcg.io/tcgplayer/sv3-85	2024-12-31	tcgplayer
618	sv3-86	https://prices.pokemontcg.io/tcgplayer/sv3-86	2024-12-31	tcgplayer
619	sv3-87	https://prices.pokemontcg.io/tcgplayer/sv3-87	2024-12-31	tcgplayer
620	sv3-88	https://prices.pokemontcg.io/tcgplayer/sv3-88	2024-12-31	tcgplayer
621	sv3-89	https://prices.pokemontcg.io/tcgplayer/sv3-89	2024-12-31	tcgplayer
622	sv3-90	https://prices.pokemontcg.io/tcgplayer/sv3-90	2024-12-31	tcgplayer
623	sv3-91	https://prices.pokemontcg.io/tcgplayer/sv3-91	2024-12-31	tcgplayer
624	sv3-92	https://prices.pokemontcg.io/tcgplayer/sv3-92	2024-12-31	tcgplayer
625	sv3-93	https://prices.pokemontcg.io/tcgplayer/sv3-93	2024-12-31	tcgplayer
626	sv3-94	https://prices.pokemontcg.io/tcgplayer/sv3-94	2024-12-31	tcgplayer
627	sv3-95	https://prices.pokemontcg.io/tcgplayer/sv3-95	2024-12-31	tcgplayer
628	sv3-96	https://prices.pokemontcg.io/tcgplayer/sv3-96	2024-12-31	tcgplayer
629	sv3-97	https://prices.pokemontcg.io/tcgplayer/sv3-97	2024-12-31	tcgplayer
630	sv3-98	https://prices.pokemontcg.io/tcgplayer/sv3-98	2024-12-31	tcgplayer
631	sv3-99	https://prices.pokemontcg.io/tcgplayer/sv3-99	2024-12-31	tcgplayer
632	sv3-100	https://prices.pokemontcg.io/tcgplayer/sv3-100	2024-12-31	tcgplayer
633	sv3-101	https://prices.pokemontcg.io/tcgplayer/sv3-101	2024-12-31	tcgplayer
634	sv3-102	https://prices.pokemontcg.io/tcgplayer/sv3-102	2024-12-31	tcgplayer
635	sv3-103	https://prices.pokemontcg.io/tcgplayer/sv3-103	2024-12-31	tcgplayer
636	sv3-104	https://prices.pokemontcg.io/tcgplayer/sv3-104	2024-12-31	tcgplayer
637	sv3-105	https://prices.pokemontcg.io/tcgplayer/sv3-105	2024-12-31	tcgplayer
638	sv3-106	https://prices.pokemontcg.io/tcgplayer/sv3-106	2024-12-31	tcgplayer
639	sv3-107	https://prices.pokemontcg.io/tcgplayer/sv3-107	2024-12-31	tcgplayer
640	sv3-108	https://prices.pokemontcg.io/tcgplayer/sv3-108	2024-12-31	tcgplayer
641	sv3-109	https://prices.pokemontcg.io/tcgplayer/sv3-109	2024-12-31	tcgplayer
642	sv3-110	https://prices.pokemontcg.io/tcgplayer/sv3-110	2024-12-31	tcgplayer
643	sv3-111	https://prices.pokemontcg.io/tcgplayer/sv3-111	2024-12-31	tcgplayer
644	sv3-112	https://prices.pokemontcg.io/tcgplayer/sv3-112	2024-12-31	tcgplayer
645	sv3-113	https://prices.pokemontcg.io/tcgplayer/sv3-113	2024-12-31	tcgplayer
646	sv3-114	https://prices.pokemontcg.io/tcgplayer/sv3-114	2024-12-31	tcgplayer
647	sv3-115	https://prices.pokemontcg.io/tcgplayer/sv3-115	2024-12-31	tcgplayer
648	sv3-116	https://prices.pokemontcg.io/tcgplayer/sv3-116	2024-12-31	tcgplayer
649	sv3-117	https://prices.pokemontcg.io/tcgplayer/sv3-117	2024-12-31	tcgplayer
650	sv3-118	https://prices.pokemontcg.io/tcgplayer/sv3-118	2024-12-31	tcgplayer
651	sv3-119	https://prices.pokemontcg.io/tcgplayer/sv3-119	2024-12-31	tcgplayer
652	sv3-120	https://prices.pokemontcg.io/tcgplayer/sv3-120	2024-12-31	tcgplayer
653	sv3-121	https://prices.pokemontcg.io/tcgplayer/sv3-121	2024-12-31	tcgplayer
654	sv3-122	https://prices.pokemontcg.io/tcgplayer/sv3-122	2024-12-31	tcgplayer
655	sv3-123	https://prices.pokemontcg.io/tcgplayer/sv3-123	2024-12-31	tcgplayer
656	sv3-124	https://prices.pokemontcg.io/tcgplayer/sv3-124	2024-12-31	tcgplayer
657	sv3-125	https://prices.pokemontcg.io/tcgplayer/sv3-125	2024-12-31	tcgplayer
658	sv3-126	https://prices.pokemontcg.io/tcgplayer/sv3-126	2024-12-31	tcgplayer
659	sv3-127	https://prices.pokemontcg.io/tcgplayer/sv3-127	2024-12-31	tcgplayer
660	sv3-128	https://prices.pokemontcg.io/tcgplayer/sv3-128	2024-12-31	tcgplayer
661	sv3-129	https://prices.pokemontcg.io/tcgplayer/sv3-129	2024-12-31	tcgplayer
662	sv3-130	https://prices.pokemontcg.io/tcgplayer/sv3-130	2024-12-31	tcgplayer
663	sv3-131	https://prices.pokemontcg.io/tcgplayer/sv3-131	2024-12-31	tcgplayer
664	sv3-132	https://prices.pokemontcg.io/tcgplayer/sv3-132	2024-12-31	tcgplayer
665	sv3-133	https://prices.pokemontcg.io/tcgplayer/sv3-133	2024-12-31	tcgplayer
666	sv3-134	https://prices.pokemontcg.io/tcgplayer/sv3-134	2024-12-31	tcgplayer
667	sv3-135	https://prices.pokemontcg.io/tcgplayer/sv3-135	2024-12-31	tcgplayer
668	sv3-136	https://prices.pokemontcg.io/tcgplayer/sv3-136	2024-12-31	tcgplayer
669	sv3-137	https://prices.pokemontcg.io/tcgplayer/sv3-137	2024-12-31	tcgplayer
670	sv3-138	https://prices.pokemontcg.io/tcgplayer/sv3-138	2024-12-31	tcgplayer
671	sv3-139	https://prices.pokemontcg.io/tcgplayer/sv3-139	2024-12-31	tcgplayer
672	sv3-140	https://prices.pokemontcg.io/tcgplayer/sv3-140	2024-12-31	tcgplayer
673	sv3-141	https://prices.pokemontcg.io/tcgplayer/sv3-141	2024-12-31	tcgplayer
674	sv3-142	https://prices.pokemontcg.io/tcgplayer/sv3-142	2024-12-31	tcgplayer
675	sv3-143	https://prices.pokemontcg.io/tcgplayer/sv3-143	2024-12-31	tcgplayer
676	sv3-144	https://prices.pokemontcg.io/tcgplayer/sv3-144	2024-12-31	tcgplayer
677	sv3-145	https://prices.pokemontcg.io/tcgplayer/sv3-145	2024-12-31	tcgplayer
678	sv3-146	https://prices.pokemontcg.io/tcgplayer/sv3-146	2024-12-31	tcgplayer
679	sv3-147	https://prices.pokemontcg.io/tcgplayer/sv3-147	2024-12-31	tcgplayer
680	sv3-148	https://prices.pokemontcg.io/tcgplayer/sv3-148	2024-12-31	tcgplayer
681	sv3-149	https://prices.pokemontcg.io/tcgplayer/sv3-149	2024-12-31	tcgplayer
682	sv3-150	https://prices.pokemontcg.io/tcgplayer/sv3-150	2024-12-31	tcgplayer
683	sv3-151	https://prices.pokemontcg.io/tcgplayer/sv3-151	2024-12-31	tcgplayer
684	sv3-152	https://prices.pokemontcg.io/tcgplayer/sv3-152	2024-12-31	tcgplayer
685	sv3-153	https://prices.pokemontcg.io/tcgplayer/sv3-153	2024-12-31	tcgplayer
686	sv3-154	https://prices.pokemontcg.io/tcgplayer/sv3-154	2024-12-31	tcgplayer
687	sv3-155	https://prices.pokemontcg.io/tcgplayer/sv3-155	2024-12-31	tcgplayer
688	sv3-156	https://prices.pokemontcg.io/tcgplayer/sv3-156	2024-12-31	tcgplayer
689	sv3-157	https://prices.pokemontcg.io/tcgplayer/sv3-157	2024-12-31	tcgplayer
690	sv3-158	https://prices.pokemontcg.io/tcgplayer/sv3-158	2024-12-31	tcgplayer
691	sv3-159	https://prices.pokemontcg.io/tcgplayer/sv3-159	2024-12-31	tcgplayer
692	sv3-160	https://prices.pokemontcg.io/tcgplayer/sv3-160	2024-12-31	tcgplayer
693	sv3-161	https://prices.pokemontcg.io/tcgplayer/sv3-161	2024-12-31	tcgplayer
694	sv3-162	https://prices.pokemontcg.io/tcgplayer/sv3-162	2024-12-31	tcgplayer
695	sv3-163	https://prices.pokemontcg.io/tcgplayer/sv3-163	2024-12-31	tcgplayer
696	sv3-164	https://prices.pokemontcg.io/tcgplayer/sv3-164	2024-12-31	tcgplayer
697	sv3-165	https://prices.pokemontcg.io/tcgplayer/sv3-165	2024-12-31	tcgplayer
698	sv3-166	https://prices.pokemontcg.io/tcgplayer/sv3-166	2024-12-31	tcgplayer
699	sv3-167	https://prices.pokemontcg.io/tcgplayer/sv3-167	2024-12-31	tcgplayer
700	sv3-168	https://prices.pokemontcg.io/tcgplayer/sv3-168	2024-12-31	tcgplayer
701	sv3-169	https://prices.pokemontcg.io/tcgplayer/sv3-169	2024-12-31	tcgplayer
702	sv3-170	https://prices.pokemontcg.io/tcgplayer/sv3-170	2024-12-31	tcgplayer
703	sv3-171	https://prices.pokemontcg.io/tcgplayer/sv3-171	2024-12-31	tcgplayer
704	sv3-172	https://prices.pokemontcg.io/tcgplayer/sv3-172	2024-12-31	tcgplayer
705	sv3-173	https://prices.pokemontcg.io/tcgplayer/sv3-173	2024-12-31	tcgplayer
706	sv3-174	https://prices.pokemontcg.io/tcgplayer/sv3-174	2024-12-31	tcgplayer
707	sv3-175	https://prices.pokemontcg.io/tcgplayer/sv3-175	2024-12-31	tcgplayer
708	sv3-176	https://prices.pokemontcg.io/tcgplayer/sv3-176	2024-12-31	tcgplayer
709	sv3-177	https://prices.pokemontcg.io/tcgplayer/sv3-177	2024-12-31	tcgplayer
710	sv3-178	https://prices.pokemontcg.io/tcgplayer/sv3-178	2024-12-31	tcgplayer
711	sv3-179	https://prices.pokemontcg.io/tcgplayer/sv3-179	2024-12-31	tcgplayer
712	sv3-180	https://prices.pokemontcg.io/tcgplayer/sv3-180	2024-12-31	tcgplayer
713	sv3-181	https://prices.pokemontcg.io/tcgplayer/sv3-181	2024-12-31	tcgplayer
714	sv3-182	https://prices.pokemontcg.io/tcgplayer/sv3-182	2024-12-31	tcgplayer
715	sv3-183	https://prices.pokemontcg.io/tcgplayer/sv3-183	2024-12-31	tcgplayer
716	sv3-184	https://prices.pokemontcg.io/tcgplayer/sv3-184	2024-12-31	tcgplayer
717	sv3-185	https://prices.pokemontcg.io/tcgplayer/sv3-185	2024-12-31	tcgplayer
718	sv3-186	https://prices.pokemontcg.io/tcgplayer/sv3-186	2024-12-31	tcgplayer
719	sv3-187	https://prices.pokemontcg.io/tcgplayer/sv3-187	2024-12-31	tcgplayer
720	sv3-188	https://prices.pokemontcg.io/tcgplayer/sv3-188	2024-12-31	tcgplayer
721	sv3-189	https://prices.pokemontcg.io/tcgplayer/sv3-189	2024-12-31	tcgplayer
722	sv3-190	https://prices.pokemontcg.io/tcgplayer/sv3-190	2024-12-31	tcgplayer
723	sv3-191	https://prices.pokemontcg.io/tcgplayer/sv3-191	2024-12-31	tcgplayer
724	sv3-192	https://prices.pokemontcg.io/tcgplayer/sv3-192	2024-12-31	tcgplayer
725	sv3-193	https://prices.pokemontcg.io/tcgplayer/sv3-193	2024-12-31	tcgplayer
726	sv3-194	https://prices.pokemontcg.io/tcgplayer/sv3-194	2024-12-31	tcgplayer
727	sv3-195	https://prices.pokemontcg.io/tcgplayer/sv3-195	2024-12-31	tcgplayer
728	sv3-196	https://prices.pokemontcg.io/tcgplayer/sv3-196	2024-12-31	tcgplayer
729	sv3-197	https://prices.pokemontcg.io/tcgplayer/sv3-197	2024-12-31	tcgplayer
730	sv3-198	https://prices.pokemontcg.io/tcgplayer/sv3-198	2024-12-31	tcgplayer
731	sv3-199	https://prices.pokemontcg.io/tcgplayer/sv3-199	2024-12-31	tcgplayer
732	sv3-200	https://prices.pokemontcg.io/tcgplayer/sv3-200	2024-12-31	tcgplayer
733	sv3-201	https://prices.pokemontcg.io/tcgplayer/sv3-201	2024-12-31	tcgplayer
734	sv3-202	https://prices.pokemontcg.io/tcgplayer/sv3-202	2024-12-31	tcgplayer
735	sv3-203	https://prices.pokemontcg.io/tcgplayer/sv3-203	2024-12-31	tcgplayer
736	sv3-204	https://prices.pokemontcg.io/tcgplayer/sv3-204	2024-12-31	tcgplayer
737	sv3-205	https://prices.pokemontcg.io/tcgplayer/sv3-205	2024-12-31	tcgplayer
738	sv3-206	https://prices.pokemontcg.io/tcgplayer/sv3-206	2024-12-31	tcgplayer
739	sv3-207	https://prices.pokemontcg.io/tcgplayer/sv3-207	2024-12-31	tcgplayer
740	sv3-208	https://prices.pokemontcg.io/tcgplayer/sv3-208	2024-12-31	tcgplayer
741	sv3-209	https://prices.pokemontcg.io/tcgplayer/sv3-209	2024-12-31	tcgplayer
742	sv3-210	https://prices.pokemontcg.io/tcgplayer/sv3-210	2024-12-31	tcgplayer
743	sv3-211	https://prices.pokemontcg.io/tcgplayer/sv3-211	2024-12-31	tcgplayer
744	sv3-212	https://prices.pokemontcg.io/tcgplayer/sv3-212	2024-12-31	tcgplayer
745	sv3-213	https://prices.pokemontcg.io/tcgplayer/sv3-213	2024-12-31	tcgplayer
746	sv3-214	https://prices.pokemontcg.io/tcgplayer/sv3-214	2024-12-31	tcgplayer
747	sv3-215	https://prices.pokemontcg.io/tcgplayer/sv3-215	2024-12-31	tcgplayer
748	sv3-216	https://prices.pokemontcg.io/tcgplayer/sv3-216	2024-12-31	tcgplayer
749	sv3-217	https://prices.pokemontcg.io/tcgplayer/sv3-217	2024-12-31	tcgplayer
750	sv3-218	https://prices.pokemontcg.io/tcgplayer/sv3-218	2024-12-31	tcgplayer
751	sv3-219	https://prices.pokemontcg.io/tcgplayer/sv3-219	2024-12-31	tcgplayer
752	sv3-220	https://prices.pokemontcg.io/tcgplayer/sv3-220	2024-12-31	tcgplayer
753	sv3-221	https://prices.pokemontcg.io/tcgplayer/sv3-221	2024-12-31	tcgplayer
754	sv3-222	https://prices.pokemontcg.io/tcgplayer/sv3-222	2024-12-31	tcgplayer
755	sv3-223	https://prices.pokemontcg.io/tcgplayer/sv3-223	2024-12-31	tcgplayer
756	sv3-224	https://prices.pokemontcg.io/tcgplayer/sv3-224	2024-12-31	tcgplayer
757	sv3-225	https://prices.pokemontcg.io/tcgplayer/sv3-225	2024-12-31	tcgplayer
758	sv3-226	https://prices.pokemontcg.io/tcgplayer/sv3-226	2024-12-31	tcgplayer
759	sv3-227	https://prices.pokemontcg.io/tcgplayer/sv3-227	2024-12-31	tcgplayer
760	sv3-228	https://prices.pokemontcg.io/tcgplayer/sv3-228	2024-12-31	tcgplayer
761	sv3-229	https://prices.pokemontcg.io/tcgplayer/sv3-229	2024-12-31	tcgplayer
762	sv3-230	https://prices.pokemontcg.io/tcgplayer/sv3-230	2024-12-31	tcgplayer
763	sv3-1	https://prices.pokemontcg.io/cardmarket/sv3-1	2024-12-31	cardmarket
764	sv3-2	https://prices.pokemontcg.io/cardmarket/sv3-2	2024-12-31	cardmarket
765	sv3-3	https://prices.pokemontcg.io/cardmarket/sv3-3	2024-12-31	cardmarket
766	sv3-4	https://prices.pokemontcg.io/cardmarket/sv3-4	2024-12-31	cardmarket
767	sv3-5	https://prices.pokemontcg.io/cardmarket/sv3-5	2024-12-31	cardmarket
768	sv3-6	https://prices.pokemontcg.io/cardmarket/sv3-6	2024-12-31	cardmarket
769	sv3-7	https://prices.pokemontcg.io/cardmarket/sv3-7	2024-12-31	cardmarket
770	sv3-8	https://prices.pokemontcg.io/cardmarket/sv3-8	2024-12-31	cardmarket
771	sv3-9	https://prices.pokemontcg.io/cardmarket/sv3-9	2024-12-31	cardmarket
772	sv3-10	https://prices.pokemontcg.io/cardmarket/sv3-10	2024-12-31	cardmarket
773	sv3-11	https://prices.pokemontcg.io/cardmarket/sv3-11	2024-12-31	cardmarket
774	sv3-12	https://prices.pokemontcg.io/cardmarket/sv3-12	2024-12-31	cardmarket
775	sv3-13	https://prices.pokemontcg.io/cardmarket/sv3-13	2024-12-31	cardmarket
776	sv3-14	https://prices.pokemontcg.io/cardmarket/sv3-14	2024-12-31	cardmarket
777	sv3-15	https://prices.pokemontcg.io/cardmarket/sv3-15	2024-12-31	cardmarket
778	sv3-16	https://prices.pokemontcg.io/cardmarket/sv3-16	2024-12-31	cardmarket
779	sv3-17	https://prices.pokemontcg.io/cardmarket/sv3-17	2024-12-31	cardmarket
780	sv3-18	https://prices.pokemontcg.io/cardmarket/sv3-18	2024-12-31	cardmarket
781	sv3-19	https://prices.pokemontcg.io/cardmarket/sv3-19	2024-12-31	cardmarket
782	sv3-20	https://prices.pokemontcg.io/cardmarket/sv3-20	2024-12-31	cardmarket
783	sv3-21	https://prices.pokemontcg.io/cardmarket/sv3-21	2024-12-31	cardmarket
784	sv3-22	https://prices.pokemontcg.io/cardmarket/sv3-22	2024-12-31	cardmarket
785	sv3-23	https://prices.pokemontcg.io/cardmarket/sv3-23	2024-12-31	cardmarket
786	sv3-24	https://prices.pokemontcg.io/cardmarket/sv3-24	2024-12-31	cardmarket
787	sv3-25	https://prices.pokemontcg.io/cardmarket/sv3-25	2024-12-31	cardmarket
788	sv3-26	https://prices.pokemontcg.io/cardmarket/sv3-26	2024-12-31	cardmarket
789	sv3-27	https://prices.pokemontcg.io/cardmarket/sv3-27	2024-12-31	cardmarket
790	sv3-28	https://prices.pokemontcg.io/cardmarket/sv3-28	2024-12-31	cardmarket
791	sv3-29	https://prices.pokemontcg.io/cardmarket/sv3-29	2024-12-31	cardmarket
792	sv3-30	https://prices.pokemontcg.io/cardmarket/sv3-30	2024-12-31	cardmarket
793	sv3-31	https://prices.pokemontcg.io/cardmarket/sv3-31	2024-12-31	cardmarket
794	sv3-32	https://prices.pokemontcg.io/cardmarket/sv3-32	2024-12-31	cardmarket
795	sv3-33	https://prices.pokemontcg.io/cardmarket/sv3-33	2024-12-31	cardmarket
796	sv3-34	https://prices.pokemontcg.io/cardmarket/sv3-34	2024-12-31	cardmarket
797	sv3-35	https://prices.pokemontcg.io/cardmarket/sv3-35	2024-12-31	cardmarket
798	sv3-36	https://prices.pokemontcg.io/cardmarket/sv3-36	2024-12-31	cardmarket
799	sv3-37	https://prices.pokemontcg.io/cardmarket/sv3-37	2024-12-31	cardmarket
800	sv3-38	https://prices.pokemontcg.io/cardmarket/sv3-38	2024-12-31	cardmarket
801	sv3-39	https://prices.pokemontcg.io/cardmarket/sv3-39	2024-12-31	cardmarket
802	sv3-40	https://prices.pokemontcg.io/cardmarket/sv3-40	2024-12-31	cardmarket
803	sv3-41	https://prices.pokemontcg.io/cardmarket/sv3-41	2024-12-31	cardmarket
804	sv3-42	https://prices.pokemontcg.io/cardmarket/sv3-42	2024-12-31	cardmarket
805	sv3-43	https://prices.pokemontcg.io/cardmarket/sv3-43	2024-12-31	cardmarket
806	sv3-44	https://prices.pokemontcg.io/cardmarket/sv3-44	2024-12-31	cardmarket
807	sv3-45	https://prices.pokemontcg.io/cardmarket/sv3-45	2024-12-31	cardmarket
808	sv3-46	https://prices.pokemontcg.io/cardmarket/sv3-46	2024-12-31	cardmarket
809	sv3-47	https://prices.pokemontcg.io/cardmarket/sv3-47	2024-12-31	cardmarket
810	sv3-48	https://prices.pokemontcg.io/cardmarket/sv3-48	2024-12-31	cardmarket
811	sv3-49	https://prices.pokemontcg.io/cardmarket/sv3-49	2024-12-31	cardmarket
812	sv3-50	https://prices.pokemontcg.io/cardmarket/sv3-50	2024-12-31	cardmarket
813	sv3-51	https://prices.pokemontcg.io/cardmarket/sv3-51	2024-12-31	cardmarket
814	sv3-52	https://prices.pokemontcg.io/cardmarket/sv3-52	2024-12-31	cardmarket
815	sv3-53	https://prices.pokemontcg.io/cardmarket/sv3-53	2024-12-31	cardmarket
816	sv3-54	https://prices.pokemontcg.io/cardmarket/sv3-54	2024-12-31	cardmarket
817	sv3-55	https://prices.pokemontcg.io/cardmarket/sv3-55	2024-12-31	cardmarket
818	sv3-56	https://prices.pokemontcg.io/cardmarket/sv3-56	2024-12-31	cardmarket
819	sv3-57	https://prices.pokemontcg.io/cardmarket/sv3-57	2024-12-31	cardmarket
820	sv3-58	https://prices.pokemontcg.io/cardmarket/sv3-58	2024-12-31	cardmarket
821	sv3-59	https://prices.pokemontcg.io/cardmarket/sv3-59	2024-12-31	cardmarket
822	sv3-60	https://prices.pokemontcg.io/cardmarket/sv3-60	2024-12-31	cardmarket
823	sv3-61	https://prices.pokemontcg.io/cardmarket/sv3-61	2024-12-31	cardmarket
824	sv3-62	https://prices.pokemontcg.io/cardmarket/sv3-62	2024-12-31	cardmarket
825	sv3-63	https://prices.pokemontcg.io/cardmarket/sv3-63	2024-12-31	cardmarket
826	sv3-64	https://prices.pokemontcg.io/cardmarket/sv3-64	2024-12-31	cardmarket
827	sv3-65	https://prices.pokemontcg.io/cardmarket/sv3-65	2024-12-31	cardmarket
828	sv3-66	https://prices.pokemontcg.io/cardmarket/sv3-66	2024-12-31	cardmarket
829	sv3-67	https://prices.pokemontcg.io/cardmarket/sv3-67	2024-12-31	cardmarket
830	sv3-68	https://prices.pokemontcg.io/cardmarket/sv3-68	2024-12-31	cardmarket
831	sv3-69	https://prices.pokemontcg.io/cardmarket/sv3-69	2024-12-31	cardmarket
832	sv3-70	https://prices.pokemontcg.io/cardmarket/sv3-70	2024-12-31	cardmarket
833	sv3-71	https://prices.pokemontcg.io/cardmarket/sv3-71	2024-12-31	cardmarket
834	sv3-72	https://prices.pokemontcg.io/cardmarket/sv3-72	2024-12-31	cardmarket
835	sv3-73	https://prices.pokemontcg.io/cardmarket/sv3-73	2024-12-31	cardmarket
836	sv3-74	https://prices.pokemontcg.io/cardmarket/sv3-74	2024-12-31	cardmarket
837	sv3-75	https://prices.pokemontcg.io/cardmarket/sv3-75	2024-12-31	cardmarket
838	sv3-76	https://prices.pokemontcg.io/cardmarket/sv3-76	2024-12-31	cardmarket
839	sv3-77	https://prices.pokemontcg.io/cardmarket/sv3-77	2024-12-31	cardmarket
840	sv3-78	https://prices.pokemontcg.io/cardmarket/sv3-78	2024-12-31	cardmarket
841	sv3-79	https://prices.pokemontcg.io/cardmarket/sv3-79	2024-12-31	cardmarket
842	sv3-80	https://prices.pokemontcg.io/cardmarket/sv3-80	2024-12-31	cardmarket
843	sv3-81	https://prices.pokemontcg.io/cardmarket/sv3-81	2024-12-31	cardmarket
844	sv3-82	https://prices.pokemontcg.io/cardmarket/sv3-82	2024-12-31	cardmarket
845	sv3-83	https://prices.pokemontcg.io/cardmarket/sv3-83	2024-12-31	cardmarket
846	sv3-84	https://prices.pokemontcg.io/cardmarket/sv3-84	2024-12-31	cardmarket
847	sv3-85	https://prices.pokemontcg.io/cardmarket/sv3-85	2024-12-31	cardmarket
848	sv3-86	https://prices.pokemontcg.io/cardmarket/sv3-86	2024-12-31	cardmarket
849	sv3-87	https://prices.pokemontcg.io/cardmarket/sv3-87	2024-12-31	cardmarket
850	sv3-88	https://prices.pokemontcg.io/cardmarket/sv3-88	2024-12-31	cardmarket
851	sv3-89	https://prices.pokemontcg.io/cardmarket/sv3-89	2024-12-31	cardmarket
852	sv3-90	https://prices.pokemontcg.io/cardmarket/sv3-90	2024-12-31	cardmarket
853	sv3-91	https://prices.pokemontcg.io/cardmarket/sv3-91	2024-12-31	cardmarket
854	sv3-92	https://prices.pokemontcg.io/cardmarket/sv3-92	2024-12-31	cardmarket
855	sv3-93	https://prices.pokemontcg.io/cardmarket/sv3-93	2024-12-31	cardmarket
856	sv3-94	https://prices.pokemontcg.io/cardmarket/sv3-94	2024-12-31	cardmarket
857	sv3-95	https://prices.pokemontcg.io/cardmarket/sv3-95	2024-12-31	cardmarket
858	sv3-96	https://prices.pokemontcg.io/cardmarket/sv3-96	2024-12-31	cardmarket
859	sv3-97	https://prices.pokemontcg.io/cardmarket/sv3-97	2024-12-31	cardmarket
860	sv3-98	https://prices.pokemontcg.io/cardmarket/sv3-98	2024-12-31	cardmarket
861	sv3-99	https://prices.pokemontcg.io/cardmarket/sv3-99	2024-12-31	cardmarket
862	sv3-100	https://prices.pokemontcg.io/cardmarket/sv3-100	2024-12-31	cardmarket
863	sv3-101	https://prices.pokemontcg.io/cardmarket/sv3-101	2024-12-31	cardmarket
864	sv3-102	https://prices.pokemontcg.io/cardmarket/sv3-102	2024-12-31	cardmarket
865	sv3-103	https://prices.pokemontcg.io/cardmarket/sv3-103	2024-12-31	cardmarket
866	sv3-104	https://prices.pokemontcg.io/cardmarket/sv3-104	2024-12-31	cardmarket
867	sv3-105	https://prices.pokemontcg.io/cardmarket/sv3-105	2024-12-31	cardmarket
868	sv3-106	https://prices.pokemontcg.io/cardmarket/sv3-106	2024-12-31	cardmarket
869	sv3-107	https://prices.pokemontcg.io/cardmarket/sv3-107	2024-12-31	cardmarket
870	sv3-108	https://prices.pokemontcg.io/cardmarket/sv3-108	2024-12-31	cardmarket
871	sv3-109	https://prices.pokemontcg.io/cardmarket/sv3-109	2024-12-31	cardmarket
872	sv3-110	https://prices.pokemontcg.io/cardmarket/sv3-110	2024-12-31	cardmarket
873	sv3-111	https://prices.pokemontcg.io/cardmarket/sv3-111	2024-12-31	cardmarket
874	sv3-112	https://prices.pokemontcg.io/cardmarket/sv3-112	2024-12-31	cardmarket
875	sv3-113	https://prices.pokemontcg.io/cardmarket/sv3-113	2024-12-31	cardmarket
876	sv3-114	https://prices.pokemontcg.io/cardmarket/sv3-114	2024-12-31	cardmarket
877	sv3-115	https://prices.pokemontcg.io/cardmarket/sv3-115	2024-12-31	cardmarket
878	sv3-116	https://prices.pokemontcg.io/cardmarket/sv3-116	2024-12-31	cardmarket
879	sv3-117	https://prices.pokemontcg.io/cardmarket/sv3-117	2024-12-31	cardmarket
880	sv3-118	https://prices.pokemontcg.io/cardmarket/sv3-118	2024-12-31	cardmarket
881	sv3-119	https://prices.pokemontcg.io/cardmarket/sv3-119	2024-12-31	cardmarket
882	sv3-120	https://prices.pokemontcg.io/cardmarket/sv3-120	2024-12-31	cardmarket
883	sv3-121	https://prices.pokemontcg.io/cardmarket/sv3-121	2024-12-31	cardmarket
884	sv3-122	https://prices.pokemontcg.io/cardmarket/sv3-122	2024-12-31	cardmarket
885	sv3-123	https://prices.pokemontcg.io/cardmarket/sv3-123	2024-12-31	cardmarket
886	sv3-124	https://prices.pokemontcg.io/cardmarket/sv3-124	2024-12-31	cardmarket
887	sv3-125	https://prices.pokemontcg.io/cardmarket/sv3-125	2024-12-31	cardmarket
888	sv3-126	https://prices.pokemontcg.io/cardmarket/sv3-126	2024-12-31	cardmarket
889	sv3-127	https://prices.pokemontcg.io/cardmarket/sv3-127	2024-12-31	cardmarket
890	sv3-128	https://prices.pokemontcg.io/cardmarket/sv3-128	2024-12-31	cardmarket
891	sv3-129	https://prices.pokemontcg.io/cardmarket/sv3-129	2024-12-31	cardmarket
892	sv3-130	https://prices.pokemontcg.io/cardmarket/sv3-130	2024-12-31	cardmarket
893	sv3-131	https://prices.pokemontcg.io/cardmarket/sv3-131	2024-12-31	cardmarket
894	sv3-132	https://prices.pokemontcg.io/cardmarket/sv3-132	2024-12-31	cardmarket
895	sv3-133	https://prices.pokemontcg.io/cardmarket/sv3-133	2024-12-31	cardmarket
896	sv3-134	https://prices.pokemontcg.io/cardmarket/sv3-134	2024-12-31	cardmarket
897	sv3-135	https://prices.pokemontcg.io/cardmarket/sv3-135	2024-12-31	cardmarket
898	sv3-136	https://prices.pokemontcg.io/cardmarket/sv3-136	2024-12-31	cardmarket
899	sv3-137	https://prices.pokemontcg.io/cardmarket/sv3-137	2024-12-31	cardmarket
900	sv3-138	https://prices.pokemontcg.io/cardmarket/sv3-138	2024-12-31	cardmarket
901	sv3-139	https://prices.pokemontcg.io/cardmarket/sv3-139	2024-12-31	cardmarket
902	sv3-140	https://prices.pokemontcg.io/cardmarket/sv3-140	2024-12-31	cardmarket
903	sv3-141	https://prices.pokemontcg.io/cardmarket/sv3-141	2024-12-31	cardmarket
904	sv3-142	https://prices.pokemontcg.io/cardmarket/sv3-142	2024-12-31	cardmarket
905	sv3-143	https://prices.pokemontcg.io/cardmarket/sv3-143	2024-12-31	cardmarket
906	sv3-144	https://prices.pokemontcg.io/cardmarket/sv3-144	2024-12-31	cardmarket
907	sv3-145	https://prices.pokemontcg.io/cardmarket/sv3-145	2024-12-31	cardmarket
908	sv3-146	https://prices.pokemontcg.io/cardmarket/sv3-146	2024-12-31	cardmarket
909	sv3-147	https://prices.pokemontcg.io/cardmarket/sv3-147	2024-12-31	cardmarket
910	sv3-148	https://prices.pokemontcg.io/cardmarket/sv3-148	2024-12-31	cardmarket
911	sv3-149	https://prices.pokemontcg.io/cardmarket/sv3-149	2024-12-31	cardmarket
912	sv3-150	https://prices.pokemontcg.io/cardmarket/sv3-150	2024-12-31	cardmarket
913	sv3-151	https://prices.pokemontcg.io/cardmarket/sv3-151	2024-12-31	cardmarket
914	sv3-152	https://prices.pokemontcg.io/cardmarket/sv3-152	2024-12-31	cardmarket
915	sv3-153	https://prices.pokemontcg.io/cardmarket/sv3-153	2024-12-31	cardmarket
916	sv3-154	https://prices.pokemontcg.io/cardmarket/sv3-154	2024-12-31	cardmarket
917	sv3-155	https://prices.pokemontcg.io/cardmarket/sv3-155	2024-12-31	cardmarket
918	sv3-156	https://prices.pokemontcg.io/cardmarket/sv3-156	2024-12-31	cardmarket
919	sv3-157	https://prices.pokemontcg.io/cardmarket/sv3-157	2024-12-31	cardmarket
920	sv3-158	https://prices.pokemontcg.io/cardmarket/sv3-158	2024-12-31	cardmarket
921	sv3-159	https://prices.pokemontcg.io/cardmarket/sv3-159	2024-12-31	cardmarket
922	sv3-160	https://prices.pokemontcg.io/cardmarket/sv3-160	2024-12-31	cardmarket
923	sv3-161	https://prices.pokemontcg.io/cardmarket/sv3-161	2024-12-31	cardmarket
924	sv3-162	https://prices.pokemontcg.io/cardmarket/sv3-162	2024-12-31	cardmarket
925	sv3-163	https://prices.pokemontcg.io/cardmarket/sv3-163	2024-12-31	cardmarket
926	sv3-164	https://prices.pokemontcg.io/cardmarket/sv3-164	2024-12-31	cardmarket
927	sv3-165	https://prices.pokemontcg.io/cardmarket/sv3-165	2024-12-31	cardmarket
928	sv3-166	https://prices.pokemontcg.io/cardmarket/sv3-166	2024-12-31	cardmarket
929	sv3-167	https://prices.pokemontcg.io/cardmarket/sv3-167	2024-12-31	cardmarket
930	sv3-168	https://prices.pokemontcg.io/cardmarket/sv3-168	2024-12-31	cardmarket
931	sv3-169	https://prices.pokemontcg.io/cardmarket/sv3-169	2024-12-31	cardmarket
932	sv3-170	https://prices.pokemontcg.io/cardmarket/sv3-170	2024-12-31	cardmarket
933	sv3-171	https://prices.pokemontcg.io/cardmarket/sv3-171	2024-12-31	cardmarket
934	sv3-172	https://prices.pokemontcg.io/cardmarket/sv3-172	2024-12-31	cardmarket
935	sv3-173	https://prices.pokemontcg.io/cardmarket/sv3-173	2024-12-31	cardmarket
936	sv3-174	https://prices.pokemontcg.io/cardmarket/sv3-174	2024-12-31	cardmarket
937	sv3-175	https://prices.pokemontcg.io/cardmarket/sv3-175	2024-12-31	cardmarket
938	sv3-176	https://prices.pokemontcg.io/cardmarket/sv3-176	2024-12-31	cardmarket
939	sv3-177	https://prices.pokemontcg.io/cardmarket/sv3-177	2024-12-31	cardmarket
940	sv3-178	https://prices.pokemontcg.io/cardmarket/sv3-178	2024-12-31	cardmarket
941	sv3-179	https://prices.pokemontcg.io/cardmarket/sv3-179	2024-12-31	cardmarket
942	sv3-180	https://prices.pokemontcg.io/cardmarket/sv3-180	2024-12-31	cardmarket
943	sv3-181	https://prices.pokemontcg.io/cardmarket/sv3-181	2024-12-31	cardmarket
944	sv3-182	https://prices.pokemontcg.io/cardmarket/sv3-182	2024-12-31	cardmarket
945	sv3-183	https://prices.pokemontcg.io/cardmarket/sv3-183	2024-12-31	cardmarket
946	sv3-184	https://prices.pokemontcg.io/cardmarket/sv3-184	2024-12-31	cardmarket
947	sv3-185	https://prices.pokemontcg.io/cardmarket/sv3-185	2024-12-31	cardmarket
948	sv3-186	https://prices.pokemontcg.io/cardmarket/sv3-186	2024-12-31	cardmarket
949	sv3-187	https://prices.pokemontcg.io/cardmarket/sv3-187	2024-12-31	cardmarket
950	sv3-188	https://prices.pokemontcg.io/cardmarket/sv3-188	2024-12-31	cardmarket
951	sv3-189	https://prices.pokemontcg.io/cardmarket/sv3-189	2024-12-31	cardmarket
952	sv3-190	https://prices.pokemontcg.io/cardmarket/sv3-190	2024-12-31	cardmarket
953	sv3-191	https://prices.pokemontcg.io/cardmarket/sv3-191	2024-12-31	cardmarket
954	sv3-192	https://prices.pokemontcg.io/cardmarket/sv3-192	2024-12-31	cardmarket
955	sv3-193	https://prices.pokemontcg.io/cardmarket/sv3-193	2024-12-31	cardmarket
956	sv3-194	https://prices.pokemontcg.io/cardmarket/sv3-194	2024-12-31	cardmarket
957	sv3-195	https://prices.pokemontcg.io/cardmarket/sv3-195	2024-12-31	cardmarket
958	sv3-196	https://prices.pokemontcg.io/cardmarket/sv3-196	2024-12-31	cardmarket
959	sv3-197	https://prices.pokemontcg.io/cardmarket/sv3-197	2024-12-31	cardmarket
960	sv3-198	https://prices.pokemontcg.io/cardmarket/sv3-198	2024-12-31	cardmarket
961	sv3-199	https://prices.pokemontcg.io/cardmarket/sv3-199	2024-12-31	cardmarket
962	sv3-200	https://prices.pokemontcg.io/cardmarket/sv3-200	2024-12-31	cardmarket
963	sv3-201	https://prices.pokemontcg.io/cardmarket/sv3-201	2024-12-31	cardmarket
964	sv3-202	https://prices.pokemontcg.io/cardmarket/sv3-202	2024-12-31	cardmarket
965	sv3-203	https://prices.pokemontcg.io/cardmarket/sv3-203	2024-12-31	cardmarket
966	sv3-204	https://prices.pokemontcg.io/cardmarket/sv3-204	2024-12-31	cardmarket
967	sv3-205	https://prices.pokemontcg.io/cardmarket/sv3-205	2024-12-31	cardmarket
968	sv3-206	https://prices.pokemontcg.io/cardmarket/sv3-206	2024-12-31	cardmarket
969	sv3-207	https://prices.pokemontcg.io/cardmarket/sv3-207	2024-12-31	cardmarket
970	sv3-208	https://prices.pokemontcg.io/cardmarket/sv3-208	2024-12-31	cardmarket
971	sv3-209	https://prices.pokemontcg.io/cardmarket/sv3-209	2024-12-31	cardmarket
972	sv3-210	https://prices.pokemontcg.io/cardmarket/sv3-210	2024-12-31	cardmarket
973	sv3-211	https://prices.pokemontcg.io/cardmarket/sv3-211	2024-12-31	cardmarket
974	sv3-212	https://prices.pokemontcg.io/cardmarket/sv3-212	2024-12-31	cardmarket
975	sv3-213	https://prices.pokemontcg.io/cardmarket/sv3-213	2024-12-31	cardmarket
976	sv3-214	https://prices.pokemontcg.io/cardmarket/sv3-214	2024-12-31	cardmarket
977	sv3-215	https://prices.pokemontcg.io/cardmarket/sv3-215	2024-12-31	cardmarket
978	sv3-216	https://prices.pokemontcg.io/cardmarket/sv3-216	2024-12-31	cardmarket
979	sv3-217	https://prices.pokemontcg.io/cardmarket/sv3-217	2024-12-31	cardmarket
980	sv3-218	https://prices.pokemontcg.io/cardmarket/sv3-218	2024-12-31	cardmarket
981	sv3-219	https://prices.pokemontcg.io/cardmarket/sv3-219	2024-12-31	cardmarket
982	sv3-220	https://prices.pokemontcg.io/cardmarket/sv3-220	2024-12-31	cardmarket
983	sv3-221	https://prices.pokemontcg.io/cardmarket/sv3-221	2024-12-31	cardmarket
984	sv3-222	https://prices.pokemontcg.io/cardmarket/sv3-222	2024-12-31	cardmarket
985	sv3-223	https://prices.pokemontcg.io/cardmarket/sv3-223	2024-12-31	cardmarket
986	sv3-224	https://prices.pokemontcg.io/cardmarket/sv3-224	2024-12-31	cardmarket
987	sv3-225	https://prices.pokemontcg.io/cardmarket/sv3-225	2024-12-31	cardmarket
988	sv3-226	https://prices.pokemontcg.io/cardmarket/sv3-226	2024-12-31	cardmarket
989	sv3-227	https://prices.pokemontcg.io/cardmarket/sv3-227	2024-12-31	cardmarket
990	sv3-228	https://prices.pokemontcg.io/cardmarket/sv3-228	2024-12-31	cardmarket
991	sv3-229	https://prices.pokemontcg.io/cardmarket/sv3-229	2024-12-31	cardmarket
992	sv3-230	https://prices.pokemontcg.io/cardmarket/sv3-230	2024-12-31	cardmarket
993	sv3pt5-1	https://prices.pokemontcg.io/tcgplayer/sv3pt5-1	2024-12-31	tcgplayer
994	sv3pt5-2	https://prices.pokemontcg.io/tcgplayer/sv3pt5-2	2024-12-31	tcgplayer
995	sv3pt5-3	https://prices.pokemontcg.io/tcgplayer/sv3pt5-3	2024-12-31	tcgplayer
996	sv3pt5-4	https://prices.pokemontcg.io/tcgplayer/sv3pt5-4	2024-12-31	tcgplayer
997	sv3pt5-5	https://prices.pokemontcg.io/tcgplayer/sv3pt5-5	2024-12-31	tcgplayer
998	sv3pt5-6	https://prices.pokemontcg.io/tcgplayer/sv3pt5-6	2024-12-31	tcgplayer
999	sv3pt5-7	https://prices.pokemontcg.io/tcgplayer/sv3pt5-7	2024-12-31	tcgplayer
1000	sv3pt5-8	https://prices.pokemontcg.io/tcgplayer/sv3pt5-8	2024-12-31	tcgplayer
1001	sv3pt5-9	https://prices.pokemontcg.io/tcgplayer/sv3pt5-9	2024-12-31	tcgplayer
1002	sv3pt5-10	https://prices.pokemontcg.io/tcgplayer/sv3pt5-10	2024-12-31	tcgplayer
1003	sv3pt5-11	https://prices.pokemontcg.io/tcgplayer/sv3pt5-11	2024-12-31	tcgplayer
1004	sv3pt5-12	https://prices.pokemontcg.io/tcgplayer/sv3pt5-12	2024-12-31	tcgplayer
1005	sv3pt5-13	https://prices.pokemontcg.io/tcgplayer/sv3pt5-13	2024-12-31	tcgplayer
1006	sv3pt5-14	https://prices.pokemontcg.io/tcgplayer/sv3pt5-14	2024-12-31	tcgplayer
1007	sv3pt5-15	https://prices.pokemontcg.io/tcgplayer/sv3pt5-15	2024-12-31	tcgplayer
1008	sv3pt5-16	https://prices.pokemontcg.io/tcgplayer/sv3pt5-16	2024-12-31	tcgplayer
1009	sv3pt5-17	https://prices.pokemontcg.io/tcgplayer/sv3pt5-17	2024-12-31	tcgplayer
1010	sv3pt5-18	https://prices.pokemontcg.io/tcgplayer/sv3pt5-18	2024-12-31	tcgplayer
1011	sv3pt5-19	https://prices.pokemontcg.io/tcgplayer/sv3pt5-19	2024-12-31	tcgplayer
1012	sv3pt5-20	https://prices.pokemontcg.io/tcgplayer/sv3pt5-20	2024-12-31	tcgplayer
1013	sv3pt5-21	https://prices.pokemontcg.io/tcgplayer/sv3pt5-21	2024-12-31	tcgplayer
1014	sv3pt5-22	https://prices.pokemontcg.io/tcgplayer/sv3pt5-22	2024-12-31	tcgplayer
1015	sv3pt5-23	https://prices.pokemontcg.io/tcgplayer/sv3pt5-23	2024-12-31	tcgplayer
1016	sv3pt5-24	https://prices.pokemontcg.io/tcgplayer/sv3pt5-24	2024-12-31	tcgplayer
1017	sv3pt5-25	https://prices.pokemontcg.io/tcgplayer/sv3pt5-25	2024-12-31	tcgplayer
1018	sv3pt5-26	https://prices.pokemontcg.io/tcgplayer/sv3pt5-26	2024-12-31	tcgplayer
1019	sv3pt5-27	https://prices.pokemontcg.io/tcgplayer/sv3pt5-27	2024-12-31	tcgplayer
1020	sv3pt5-28	https://prices.pokemontcg.io/tcgplayer/sv3pt5-28	2024-12-31	tcgplayer
1021	sv3pt5-29	https://prices.pokemontcg.io/tcgplayer/sv3pt5-29	2024-12-31	tcgplayer
1022	sv3pt5-30	https://prices.pokemontcg.io/tcgplayer/sv3pt5-30	2024-12-31	tcgplayer
1023	sv3pt5-31	https://prices.pokemontcg.io/tcgplayer/sv3pt5-31	2024-12-31	tcgplayer
1024	sv3pt5-32	https://prices.pokemontcg.io/tcgplayer/sv3pt5-32	2024-12-31	tcgplayer
1025	sv3pt5-33	https://prices.pokemontcg.io/tcgplayer/sv3pt5-33	2024-12-31	tcgplayer
1026	sv3pt5-34	https://prices.pokemontcg.io/tcgplayer/sv3pt5-34	2024-12-31	tcgplayer
1027	sv3pt5-35	https://prices.pokemontcg.io/tcgplayer/sv3pt5-35	2024-12-31	tcgplayer
1028	sv3pt5-36	https://prices.pokemontcg.io/tcgplayer/sv3pt5-36	2024-12-31	tcgplayer
1029	sv3pt5-37	https://prices.pokemontcg.io/tcgplayer/sv3pt5-37	2024-12-31	tcgplayer
1030	sv3pt5-38	https://prices.pokemontcg.io/tcgplayer/sv3pt5-38	2024-12-31	tcgplayer
1031	sv3pt5-39	https://prices.pokemontcg.io/tcgplayer/sv3pt5-39	2024-12-31	tcgplayer
1032	sv3pt5-40	https://prices.pokemontcg.io/tcgplayer/sv3pt5-40	2024-12-31	tcgplayer
1033	sv3pt5-41	https://prices.pokemontcg.io/tcgplayer/sv3pt5-41	2024-12-31	tcgplayer
1034	sv3pt5-42	https://prices.pokemontcg.io/tcgplayer/sv3pt5-42	2024-12-31	tcgplayer
1035	sv3pt5-43	https://prices.pokemontcg.io/tcgplayer/sv3pt5-43	2024-12-31	tcgplayer
1036	sv3pt5-44	https://prices.pokemontcg.io/tcgplayer/sv3pt5-44	2024-12-31	tcgplayer
1037	sv3pt5-45	https://prices.pokemontcg.io/tcgplayer/sv3pt5-45	2024-12-31	tcgplayer
1038	sv3pt5-46	https://prices.pokemontcg.io/tcgplayer/sv3pt5-46	2024-12-31	tcgplayer
1039	sv3pt5-47	https://prices.pokemontcg.io/tcgplayer/sv3pt5-47	2024-12-31	tcgplayer
1040	sv3pt5-48	https://prices.pokemontcg.io/tcgplayer/sv3pt5-48	2024-12-31	tcgplayer
1041	sv3pt5-49	https://prices.pokemontcg.io/tcgplayer/sv3pt5-49	2024-12-31	tcgplayer
1042	sv3pt5-50	https://prices.pokemontcg.io/tcgplayer/sv3pt5-50	2024-12-31	tcgplayer
1043	sv3pt5-51	https://prices.pokemontcg.io/tcgplayer/sv3pt5-51	2024-12-31	tcgplayer
1044	sv3pt5-52	https://prices.pokemontcg.io/tcgplayer/sv3pt5-52	2024-12-31	tcgplayer
1045	sv3pt5-53	https://prices.pokemontcg.io/tcgplayer/sv3pt5-53	2024-12-31	tcgplayer
1046	sv3pt5-54	https://prices.pokemontcg.io/tcgplayer/sv3pt5-54	2024-12-31	tcgplayer
1047	sv3pt5-55	https://prices.pokemontcg.io/tcgplayer/sv3pt5-55	2024-12-31	tcgplayer
1048	sv3pt5-56	https://prices.pokemontcg.io/tcgplayer/sv3pt5-56	2024-12-31	tcgplayer
1049	sv3pt5-57	https://prices.pokemontcg.io/tcgplayer/sv3pt5-57	2024-12-31	tcgplayer
1050	sv3pt5-58	https://prices.pokemontcg.io/tcgplayer/sv3pt5-58	2024-12-31	tcgplayer
1051	sv3pt5-59	https://prices.pokemontcg.io/tcgplayer/sv3pt5-59	2024-12-31	tcgplayer
1052	sv3pt5-60	https://prices.pokemontcg.io/tcgplayer/sv3pt5-60	2024-12-31	tcgplayer
1053	sv3pt5-61	https://prices.pokemontcg.io/tcgplayer/sv3pt5-61	2024-12-31	tcgplayer
1054	sv3pt5-62	https://prices.pokemontcg.io/tcgplayer/sv3pt5-62	2024-12-31	tcgplayer
1055	sv3pt5-63	https://prices.pokemontcg.io/tcgplayer/sv3pt5-63	2024-12-31	tcgplayer
1056	sv3pt5-64	https://prices.pokemontcg.io/tcgplayer/sv3pt5-64	2024-12-31	tcgplayer
1057	sv3pt5-65	https://prices.pokemontcg.io/tcgplayer/sv3pt5-65	2024-12-31	tcgplayer
1058	sv3pt5-66	https://prices.pokemontcg.io/tcgplayer/sv3pt5-66	2024-12-31	tcgplayer
1059	sv3pt5-67	https://prices.pokemontcg.io/tcgplayer/sv3pt5-67	2024-12-31	tcgplayer
1060	sv3pt5-68	https://prices.pokemontcg.io/tcgplayer/sv3pt5-68	2024-12-31	tcgplayer
1061	sv3pt5-69	https://prices.pokemontcg.io/tcgplayer/sv3pt5-69	2024-12-31	tcgplayer
1062	sv3pt5-70	https://prices.pokemontcg.io/tcgplayer/sv3pt5-70	2024-12-31	tcgplayer
1063	sv3pt5-71	https://prices.pokemontcg.io/tcgplayer/sv3pt5-71	2024-12-31	tcgplayer
1064	sv3pt5-72	https://prices.pokemontcg.io/tcgplayer/sv3pt5-72	2024-12-31	tcgplayer
1065	sv3pt5-73	https://prices.pokemontcg.io/tcgplayer/sv3pt5-73	2024-12-31	tcgplayer
1066	sv3pt5-74	https://prices.pokemontcg.io/tcgplayer/sv3pt5-74	2024-12-31	tcgplayer
1067	sv3pt5-75	https://prices.pokemontcg.io/tcgplayer/sv3pt5-75	2024-12-31	tcgplayer
1068	sv3pt5-76	https://prices.pokemontcg.io/tcgplayer/sv3pt5-76	2024-12-31	tcgplayer
1069	sv3pt5-77	https://prices.pokemontcg.io/tcgplayer/sv3pt5-77	2024-12-31	tcgplayer
1070	sv3pt5-78	https://prices.pokemontcg.io/tcgplayer/sv3pt5-78	2024-12-31	tcgplayer
1071	sv3pt5-79	https://prices.pokemontcg.io/tcgplayer/sv3pt5-79	2024-12-31	tcgplayer
1072	sv3pt5-80	https://prices.pokemontcg.io/tcgplayer/sv3pt5-80	2024-12-31	tcgplayer
1073	sv3pt5-81	https://prices.pokemontcg.io/tcgplayer/sv3pt5-81	2024-12-31	tcgplayer
1074	sv3pt5-82	https://prices.pokemontcg.io/tcgplayer/sv3pt5-82	2024-12-31	tcgplayer
1075	sv3pt5-83	https://prices.pokemontcg.io/tcgplayer/sv3pt5-83	2024-12-31	tcgplayer
1076	sv3pt5-84	https://prices.pokemontcg.io/tcgplayer/sv3pt5-84	2024-12-31	tcgplayer
1077	sv3pt5-85	https://prices.pokemontcg.io/tcgplayer/sv3pt5-85	2024-12-31	tcgplayer
1078	sv3pt5-86	https://prices.pokemontcg.io/tcgplayer/sv3pt5-86	2024-12-31	tcgplayer
1079	sv3pt5-87	https://prices.pokemontcg.io/tcgplayer/sv3pt5-87	2024-12-31	tcgplayer
1080	sv3pt5-88	https://prices.pokemontcg.io/tcgplayer/sv3pt5-88	2024-12-31	tcgplayer
1081	sv3pt5-89	https://prices.pokemontcg.io/tcgplayer/sv3pt5-89	2024-12-31	tcgplayer
1082	sv3pt5-90	https://prices.pokemontcg.io/tcgplayer/sv3pt5-90	2024-12-31	tcgplayer
1083	sv3pt5-91	https://prices.pokemontcg.io/tcgplayer/sv3pt5-91	2024-12-31	tcgplayer
1084	sv3pt5-92	https://prices.pokemontcg.io/tcgplayer/sv3pt5-92	2024-12-31	tcgplayer
1085	sv3pt5-93	https://prices.pokemontcg.io/tcgplayer/sv3pt5-93	2024-12-31	tcgplayer
1086	sv3pt5-94	https://prices.pokemontcg.io/tcgplayer/sv3pt5-94	2024-12-31	tcgplayer
1087	sv3pt5-95	https://prices.pokemontcg.io/tcgplayer/sv3pt5-95	2024-12-31	tcgplayer
1088	sv3pt5-96	https://prices.pokemontcg.io/tcgplayer/sv3pt5-96	2024-12-31	tcgplayer
1089	sv3pt5-97	https://prices.pokemontcg.io/tcgplayer/sv3pt5-97	2024-12-31	tcgplayer
1090	sv3pt5-98	https://prices.pokemontcg.io/tcgplayer/sv3pt5-98	2024-12-31	tcgplayer
1091	sv3pt5-99	https://prices.pokemontcg.io/tcgplayer/sv3pt5-99	2024-12-31	tcgplayer
1092	sv3pt5-100	https://prices.pokemontcg.io/tcgplayer/sv3pt5-100	2024-12-31	tcgplayer
1093	sv3pt5-101	https://prices.pokemontcg.io/tcgplayer/sv3pt5-101	2024-12-31	tcgplayer
1094	sv3pt5-102	https://prices.pokemontcg.io/tcgplayer/sv3pt5-102	2024-12-31	tcgplayer
1095	sv3pt5-103	https://prices.pokemontcg.io/tcgplayer/sv3pt5-103	2024-12-31	tcgplayer
1096	sv3pt5-104	https://prices.pokemontcg.io/tcgplayer/sv3pt5-104	2024-12-31	tcgplayer
1097	sv3pt5-105	https://prices.pokemontcg.io/tcgplayer/sv3pt5-105	2024-12-31	tcgplayer
1098	sv3pt5-106	https://prices.pokemontcg.io/tcgplayer/sv3pt5-106	2024-12-31	tcgplayer
1099	sv3pt5-107	https://prices.pokemontcg.io/tcgplayer/sv3pt5-107	2024-12-31	tcgplayer
1100	sv3pt5-108	https://prices.pokemontcg.io/tcgplayer/sv3pt5-108	2024-12-31	tcgplayer
1101	sv3pt5-109	https://prices.pokemontcg.io/tcgplayer/sv3pt5-109	2024-12-31	tcgplayer
1102	sv3pt5-110	https://prices.pokemontcg.io/tcgplayer/sv3pt5-110	2024-12-31	tcgplayer
1103	sv3pt5-111	https://prices.pokemontcg.io/tcgplayer/sv3pt5-111	2024-12-31	tcgplayer
1104	sv3pt5-112	https://prices.pokemontcg.io/tcgplayer/sv3pt5-112	2024-12-31	tcgplayer
1105	sv3pt5-113	https://prices.pokemontcg.io/tcgplayer/sv3pt5-113	2024-12-31	tcgplayer
1106	sv3pt5-114	https://prices.pokemontcg.io/tcgplayer/sv3pt5-114	2024-12-31	tcgplayer
1107	sv3pt5-115	https://prices.pokemontcg.io/tcgplayer/sv3pt5-115	2024-12-31	tcgplayer
1108	sv3pt5-116	https://prices.pokemontcg.io/tcgplayer/sv3pt5-116	2024-12-31	tcgplayer
1109	sv3pt5-117	https://prices.pokemontcg.io/tcgplayer/sv3pt5-117	2024-12-31	tcgplayer
1110	sv3pt5-118	https://prices.pokemontcg.io/tcgplayer/sv3pt5-118	2024-12-31	tcgplayer
1111	sv3pt5-119	https://prices.pokemontcg.io/tcgplayer/sv3pt5-119	2024-12-31	tcgplayer
1112	sv3pt5-120	https://prices.pokemontcg.io/tcgplayer/sv3pt5-120	2024-12-31	tcgplayer
1113	sv3pt5-121	https://prices.pokemontcg.io/tcgplayer/sv3pt5-121	2024-12-31	tcgplayer
1114	sv3pt5-122	https://prices.pokemontcg.io/tcgplayer/sv3pt5-122	2024-12-31	tcgplayer
1115	sv3pt5-123	https://prices.pokemontcg.io/tcgplayer/sv3pt5-123	2024-12-31	tcgplayer
1116	sv3pt5-124	https://prices.pokemontcg.io/tcgplayer/sv3pt5-124	2024-12-31	tcgplayer
1117	sv3pt5-125	https://prices.pokemontcg.io/tcgplayer/sv3pt5-125	2024-12-31	tcgplayer
1118	sv3pt5-126	https://prices.pokemontcg.io/tcgplayer/sv3pt5-126	2024-12-31	tcgplayer
1119	sv3pt5-127	https://prices.pokemontcg.io/tcgplayer/sv3pt5-127	2024-12-31	tcgplayer
1120	sv3pt5-128	https://prices.pokemontcg.io/tcgplayer/sv3pt5-128	2024-12-31	tcgplayer
1121	sv3pt5-129	https://prices.pokemontcg.io/tcgplayer/sv3pt5-129	2024-12-31	tcgplayer
1122	sv3pt5-130	https://prices.pokemontcg.io/tcgplayer/sv3pt5-130	2024-12-31	tcgplayer
1123	sv3pt5-131	https://prices.pokemontcg.io/tcgplayer/sv3pt5-131	2024-12-31	tcgplayer
1124	sv3pt5-132	https://prices.pokemontcg.io/tcgplayer/sv3pt5-132	2024-12-31	tcgplayer
1125	sv3pt5-133	https://prices.pokemontcg.io/tcgplayer/sv3pt5-133	2024-12-31	tcgplayer
1126	sv3pt5-134	https://prices.pokemontcg.io/tcgplayer/sv3pt5-134	2024-12-31	tcgplayer
1127	sv3pt5-135	https://prices.pokemontcg.io/tcgplayer/sv3pt5-135	2024-12-31	tcgplayer
1128	sv3pt5-136	https://prices.pokemontcg.io/tcgplayer/sv3pt5-136	2024-12-31	tcgplayer
1129	sv3pt5-137	https://prices.pokemontcg.io/tcgplayer/sv3pt5-137	2024-12-31	tcgplayer
1130	sv3pt5-138	https://prices.pokemontcg.io/tcgplayer/sv3pt5-138	2024-12-31	tcgplayer
1131	sv3pt5-139	https://prices.pokemontcg.io/tcgplayer/sv3pt5-139	2024-12-31	tcgplayer
1132	sv3pt5-140	https://prices.pokemontcg.io/tcgplayer/sv3pt5-140	2024-12-31	tcgplayer
1133	sv3pt5-141	https://prices.pokemontcg.io/tcgplayer/sv3pt5-141	2024-12-31	tcgplayer
1134	sv3pt5-142	https://prices.pokemontcg.io/tcgplayer/sv3pt5-142	2024-12-31	tcgplayer
1135	sv3pt5-143	https://prices.pokemontcg.io/tcgplayer/sv3pt5-143	2024-12-31	tcgplayer
1136	sv3pt5-144	https://prices.pokemontcg.io/tcgplayer/sv3pt5-144	2024-12-31	tcgplayer
1137	sv3pt5-145	https://prices.pokemontcg.io/tcgplayer/sv3pt5-145	2024-12-31	tcgplayer
1138	sv3pt5-146	https://prices.pokemontcg.io/tcgplayer/sv3pt5-146	2024-12-31	tcgplayer
1139	sv3pt5-147	https://prices.pokemontcg.io/tcgplayer/sv3pt5-147	2024-12-31	tcgplayer
1140	sv3pt5-148	https://prices.pokemontcg.io/tcgplayer/sv3pt5-148	2024-12-31	tcgplayer
1141	sv3pt5-149	https://prices.pokemontcg.io/tcgplayer/sv3pt5-149	2024-12-31	tcgplayer
1142	sv3pt5-150	https://prices.pokemontcg.io/tcgplayer/sv3pt5-150	2024-12-31	tcgplayer
1143	sv3pt5-151	https://prices.pokemontcg.io/tcgplayer/sv3pt5-151	2024-12-31	tcgplayer
1144	sv3pt5-152	https://prices.pokemontcg.io/tcgplayer/sv3pt5-152	2024-12-31	tcgplayer
1145	sv3pt5-153	https://prices.pokemontcg.io/tcgplayer/sv3pt5-153	2024-12-31	tcgplayer
1146	sv3pt5-154	https://prices.pokemontcg.io/tcgplayer/sv3pt5-154	2024-12-31	tcgplayer
1147	sv3pt5-155	https://prices.pokemontcg.io/tcgplayer/sv3pt5-155	2024-12-31	tcgplayer
1148	sv3pt5-156	https://prices.pokemontcg.io/tcgplayer/sv3pt5-156	2024-12-31	tcgplayer
1149	sv3pt5-157	https://prices.pokemontcg.io/tcgplayer/sv3pt5-157	2024-12-31	tcgplayer
1150	sv3pt5-158	https://prices.pokemontcg.io/tcgplayer/sv3pt5-158	2024-12-31	tcgplayer
1151	sv3pt5-159	https://prices.pokemontcg.io/tcgplayer/sv3pt5-159	2024-12-31	tcgplayer
1152	sv3pt5-160	https://prices.pokemontcg.io/tcgplayer/sv3pt5-160	2024-12-31	tcgplayer
1153	sv3pt5-161	https://prices.pokemontcg.io/tcgplayer/sv3pt5-161	2024-12-31	tcgplayer
1154	sv3pt5-162	https://prices.pokemontcg.io/tcgplayer/sv3pt5-162	2024-12-31	tcgplayer
1155	sv3pt5-163	https://prices.pokemontcg.io/tcgplayer/sv3pt5-163	2024-12-31	tcgplayer
1156	sv3pt5-164	https://prices.pokemontcg.io/tcgplayer/sv3pt5-164	2024-12-31	tcgplayer
1157	sv3pt5-165	https://prices.pokemontcg.io/tcgplayer/sv3pt5-165	2024-12-31	tcgplayer
1158	sv3pt5-166	https://prices.pokemontcg.io/tcgplayer/sv3pt5-166	2024-12-31	tcgplayer
1159	sv3pt5-167	https://prices.pokemontcg.io/tcgplayer/sv3pt5-167	2024-12-31	tcgplayer
1160	sv3pt5-168	https://prices.pokemontcg.io/tcgplayer/sv3pt5-168	2024-12-31	tcgplayer
1161	sv3pt5-169	https://prices.pokemontcg.io/tcgplayer/sv3pt5-169	2024-12-31	tcgplayer
1162	sv3pt5-170	https://prices.pokemontcg.io/tcgplayer/sv3pt5-170	2024-12-31	tcgplayer
1163	sv3pt5-171	https://prices.pokemontcg.io/tcgplayer/sv3pt5-171	2024-12-31	tcgplayer
1164	sv3pt5-172	https://prices.pokemontcg.io/tcgplayer/sv3pt5-172	2024-12-31	tcgplayer
1165	sv3pt5-173	https://prices.pokemontcg.io/tcgplayer/sv3pt5-173	2024-12-31	tcgplayer
1166	sv3pt5-174	https://prices.pokemontcg.io/tcgplayer/sv3pt5-174	2024-12-31	tcgplayer
1167	sv3pt5-175	https://prices.pokemontcg.io/tcgplayer/sv3pt5-175	2024-12-31	tcgplayer
1168	sv3pt5-176	https://prices.pokemontcg.io/tcgplayer/sv3pt5-176	2024-12-31	tcgplayer
1169	sv3pt5-177	https://prices.pokemontcg.io/tcgplayer/sv3pt5-177	2024-12-31	tcgplayer
1170	sv3pt5-178	https://prices.pokemontcg.io/tcgplayer/sv3pt5-178	2024-12-31	tcgplayer
1171	sv3pt5-179	https://prices.pokemontcg.io/tcgplayer/sv3pt5-179	2024-12-31	tcgplayer
1172	sv3pt5-180	https://prices.pokemontcg.io/tcgplayer/sv3pt5-180	2024-12-31	tcgplayer
1173	sv3pt5-181	https://prices.pokemontcg.io/tcgplayer/sv3pt5-181	2024-12-31	tcgplayer
1174	sv3pt5-182	https://prices.pokemontcg.io/tcgplayer/sv3pt5-182	2024-12-31	tcgplayer
1175	sv3pt5-183	https://prices.pokemontcg.io/tcgplayer/sv3pt5-183	2024-12-31	tcgplayer
1176	sv3pt5-184	https://prices.pokemontcg.io/tcgplayer/sv3pt5-184	2024-12-31	tcgplayer
1177	sv3pt5-185	https://prices.pokemontcg.io/tcgplayer/sv3pt5-185	2024-12-31	tcgplayer
1178	sv3pt5-186	https://prices.pokemontcg.io/tcgplayer/sv3pt5-186	2024-12-31	tcgplayer
1179	sv3pt5-187	https://prices.pokemontcg.io/tcgplayer/sv3pt5-187	2024-12-31	tcgplayer
1180	sv3pt5-188	https://prices.pokemontcg.io/tcgplayer/sv3pt5-188	2024-12-31	tcgplayer
1181	sv3pt5-189	https://prices.pokemontcg.io/tcgplayer/sv3pt5-189	2024-12-31	tcgplayer
1182	sv3pt5-190	https://prices.pokemontcg.io/tcgplayer/sv3pt5-190	2024-12-31	tcgplayer
1183	sv3pt5-191	https://prices.pokemontcg.io/tcgplayer/sv3pt5-191	2024-12-31	tcgplayer
1184	sv3pt5-192	https://prices.pokemontcg.io/tcgplayer/sv3pt5-192	2024-12-31	tcgplayer
1185	sv3pt5-193	https://prices.pokemontcg.io/tcgplayer/sv3pt5-193	2024-12-31	tcgplayer
1186	sv3pt5-194	https://prices.pokemontcg.io/tcgplayer/sv3pt5-194	2024-12-31	tcgplayer
1187	sv3pt5-195	https://prices.pokemontcg.io/tcgplayer/sv3pt5-195	2024-12-31	tcgplayer
1188	sv3pt5-196	https://prices.pokemontcg.io/tcgplayer/sv3pt5-196	2024-12-31	tcgplayer
1189	sv3pt5-197	https://prices.pokemontcg.io/tcgplayer/sv3pt5-197	2024-12-31	tcgplayer
1190	sv3pt5-198	https://prices.pokemontcg.io/tcgplayer/sv3pt5-198	2024-12-31	tcgplayer
1191	sv3pt5-199	https://prices.pokemontcg.io/tcgplayer/sv3pt5-199	2024-12-31	tcgplayer
1192	sv3pt5-200	https://prices.pokemontcg.io/tcgplayer/sv3pt5-200	2024-12-31	tcgplayer
1193	sv3pt5-201	https://prices.pokemontcg.io/tcgplayer/sv3pt5-201	2024-12-31	tcgplayer
1194	sv3pt5-202	https://prices.pokemontcg.io/tcgplayer/sv3pt5-202	2024-12-31	tcgplayer
1195	sv3pt5-203	https://prices.pokemontcg.io/tcgplayer/sv3pt5-203	2024-12-31	tcgplayer
1196	sv3pt5-204	https://prices.pokemontcg.io/tcgplayer/sv3pt5-204	2024-12-31	tcgplayer
1197	sv3pt5-205	https://prices.pokemontcg.io/tcgplayer/sv3pt5-205	2024-12-31	tcgplayer
1198	sv3pt5-206	https://prices.pokemontcg.io/tcgplayer/sv3pt5-206	2024-12-31	tcgplayer
1199	sv3pt5-207	https://prices.pokemontcg.io/tcgplayer/sv3pt5-207	2024-12-31	tcgplayer
1200	sv3pt5-1	https://prices.pokemontcg.io/cardmarket/sv3pt5-1	2024-12-31	cardmarket
1201	sv3pt5-2	https://prices.pokemontcg.io/cardmarket/sv3pt5-2	2024-12-31	cardmarket
1202	sv3pt5-3	https://prices.pokemontcg.io/cardmarket/sv3pt5-3	2024-12-31	cardmarket
1203	sv3pt5-4	https://prices.pokemontcg.io/cardmarket/sv3pt5-4	2024-12-31	cardmarket
1204	sv3pt5-5	https://prices.pokemontcg.io/cardmarket/sv3pt5-5	2024-12-31	cardmarket
1205	sv3pt5-6	https://prices.pokemontcg.io/cardmarket/sv3pt5-6	2024-12-31	cardmarket
1206	sv3pt5-7	https://prices.pokemontcg.io/cardmarket/sv3pt5-7	2024-12-31	cardmarket
1207	sv3pt5-8	https://prices.pokemontcg.io/cardmarket/sv3pt5-8	2024-12-31	cardmarket
1208	sv3pt5-9	https://prices.pokemontcg.io/cardmarket/sv3pt5-9	2024-12-31	cardmarket
1209	sv3pt5-10	https://prices.pokemontcg.io/cardmarket/sv3pt5-10	2024-12-31	cardmarket
1210	sv3pt5-11	https://prices.pokemontcg.io/cardmarket/sv3pt5-11	2024-12-31	cardmarket
1211	sv3pt5-12	https://prices.pokemontcg.io/cardmarket/sv3pt5-12	2024-12-31	cardmarket
1212	sv3pt5-13	https://prices.pokemontcg.io/cardmarket/sv3pt5-13	2024-12-31	cardmarket
1213	sv3pt5-14	https://prices.pokemontcg.io/cardmarket/sv3pt5-14	2024-12-31	cardmarket
1214	sv3pt5-15	https://prices.pokemontcg.io/cardmarket/sv3pt5-15	2024-12-31	cardmarket
1215	sv3pt5-16	https://prices.pokemontcg.io/cardmarket/sv3pt5-16	2024-12-31	cardmarket
1216	sv3pt5-17	https://prices.pokemontcg.io/cardmarket/sv3pt5-17	2024-12-31	cardmarket
1217	sv3pt5-18	https://prices.pokemontcg.io/cardmarket/sv3pt5-18	2024-12-31	cardmarket
1218	sv3pt5-19	https://prices.pokemontcg.io/cardmarket/sv3pt5-19	2024-12-31	cardmarket
1219	sv3pt5-20	https://prices.pokemontcg.io/cardmarket/sv3pt5-20	2024-12-31	cardmarket
1220	sv3pt5-21	https://prices.pokemontcg.io/cardmarket/sv3pt5-21	2024-12-31	cardmarket
1221	sv3pt5-22	https://prices.pokemontcg.io/cardmarket/sv3pt5-22	2024-12-31	cardmarket
1222	sv3pt5-23	https://prices.pokemontcg.io/cardmarket/sv3pt5-23	2024-12-31	cardmarket
1223	sv3pt5-24	https://prices.pokemontcg.io/cardmarket/sv3pt5-24	2024-12-31	cardmarket
1224	sv3pt5-25	https://prices.pokemontcg.io/cardmarket/sv3pt5-25	2024-12-31	cardmarket
1225	sv3pt5-26	https://prices.pokemontcg.io/cardmarket/sv3pt5-26	2024-12-31	cardmarket
1226	sv3pt5-27	https://prices.pokemontcg.io/cardmarket/sv3pt5-27	2024-12-31	cardmarket
1227	sv3pt5-28	https://prices.pokemontcg.io/cardmarket/sv3pt5-28	2024-12-31	cardmarket
1228	sv3pt5-29	https://prices.pokemontcg.io/cardmarket/sv3pt5-29	2024-12-31	cardmarket
1229	sv3pt5-30	https://prices.pokemontcg.io/cardmarket/sv3pt5-30	2024-12-31	cardmarket
1230	sv3pt5-31	https://prices.pokemontcg.io/cardmarket/sv3pt5-31	2024-12-31	cardmarket
1231	sv3pt5-32	https://prices.pokemontcg.io/cardmarket/sv3pt5-32	2024-12-31	cardmarket
1232	sv3pt5-33	https://prices.pokemontcg.io/cardmarket/sv3pt5-33	2024-12-31	cardmarket
1233	sv3pt5-34	https://prices.pokemontcg.io/cardmarket/sv3pt5-34	2024-12-31	cardmarket
1234	sv3pt5-35	https://prices.pokemontcg.io/cardmarket/sv3pt5-35	2024-12-31	cardmarket
1235	sv3pt5-36	https://prices.pokemontcg.io/cardmarket/sv3pt5-36	2024-12-31	cardmarket
1236	sv3pt5-37	https://prices.pokemontcg.io/cardmarket/sv3pt5-37	2024-12-31	cardmarket
1237	sv3pt5-38	https://prices.pokemontcg.io/cardmarket/sv3pt5-38	2024-12-31	cardmarket
1238	sv3pt5-39	https://prices.pokemontcg.io/cardmarket/sv3pt5-39	2024-12-31	cardmarket
1239	sv3pt5-40	https://prices.pokemontcg.io/cardmarket/sv3pt5-40	2024-12-31	cardmarket
1240	sv3pt5-41	https://prices.pokemontcg.io/cardmarket/sv3pt5-41	2024-12-31	cardmarket
1241	sv3pt5-42	https://prices.pokemontcg.io/cardmarket/sv3pt5-42	2024-12-31	cardmarket
1242	sv3pt5-43	https://prices.pokemontcg.io/cardmarket/sv3pt5-43	2024-12-31	cardmarket
1243	sv3pt5-44	https://prices.pokemontcg.io/cardmarket/sv3pt5-44	2024-12-31	cardmarket
1244	sv3pt5-45	https://prices.pokemontcg.io/cardmarket/sv3pt5-45	2024-12-31	cardmarket
1245	sv3pt5-46	https://prices.pokemontcg.io/cardmarket/sv3pt5-46	2024-12-31	cardmarket
1246	sv3pt5-47	https://prices.pokemontcg.io/cardmarket/sv3pt5-47	2024-12-31	cardmarket
1247	sv3pt5-48	https://prices.pokemontcg.io/cardmarket/sv3pt5-48	2024-12-31	cardmarket
1248	sv3pt5-49	https://prices.pokemontcg.io/cardmarket/sv3pt5-49	2024-12-31	cardmarket
1249	sv3pt5-50	https://prices.pokemontcg.io/cardmarket/sv3pt5-50	2024-12-31	cardmarket
1250	sv3pt5-51	https://prices.pokemontcg.io/cardmarket/sv3pt5-51	2024-12-31	cardmarket
1251	sv3pt5-52	https://prices.pokemontcg.io/cardmarket/sv3pt5-52	2024-12-31	cardmarket
1252	sv3pt5-53	https://prices.pokemontcg.io/cardmarket/sv3pt5-53	2024-12-31	cardmarket
1253	sv3pt5-54	https://prices.pokemontcg.io/cardmarket/sv3pt5-54	2024-12-31	cardmarket
1254	sv3pt5-55	https://prices.pokemontcg.io/cardmarket/sv3pt5-55	2024-12-31	cardmarket
1255	sv3pt5-56	https://prices.pokemontcg.io/cardmarket/sv3pt5-56	2024-12-31	cardmarket
1256	sv3pt5-57	https://prices.pokemontcg.io/cardmarket/sv3pt5-57	2024-12-31	cardmarket
1257	sv3pt5-58	https://prices.pokemontcg.io/cardmarket/sv3pt5-58	2024-12-31	cardmarket
1258	sv3pt5-59	https://prices.pokemontcg.io/cardmarket/sv3pt5-59	2024-12-31	cardmarket
1259	sv3pt5-60	https://prices.pokemontcg.io/cardmarket/sv3pt5-60	2024-12-31	cardmarket
1260	sv3pt5-61	https://prices.pokemontcg.io/cardmarket/sv3pt5-61	2024-12-31	cardmarket
1261	sv3pt5-62	https://prices.pokemontcg.io/cardmarket/sv3pt5-62	2024-12-31	cardmarket
1262	sv3pt5-63	https://prices.pokemontcg.io/cardmarket/sv3pt5-63	2024-12-31	cardmarket
1263	sv3pt5-64	https://prices.pokemontcg.io/cardmarket/sv3pt5-64	2024-12-31	cardmarket
1264	sv3pt5-65	https://prices.pokemontcg.io/cardmarket/sv3pt5-65	2024-12-31	cardmarket
1265	sv3pt5-66	https://prices.pokemontcg.io/cardmarket/sv3pt5-66	2024-12-31	cardmarket
1266	sv3pt5-67	https://prices.pokemontcg.io/cardmarket/sv3pt5-67	2024-12-31	cardmarket
1267	sv3pt5-68	https://prices.pokemontcg.io/cardmarket/sv3pt5-68	2024-12-31	cardmarket
1268	sv3pt5-69	https://prices.pokemontcg.io/cardmarket/sv3pt5-69	2024-12-31	cardmarket
1269	sv3pt5-70	https://prices.pokemontcg.io/cardmarket/sv3pt5-70	2024-12-31	cardmarket
1270	sv3pt5-71	https://prices.pokemontcg.io/cardmarket/sv3pt5-71	2024-12-31	cardmarket
1271	sv3pt5-72	https://prices.pokemontcg.io/cardmarket/sv3pt5-72	2024-12-31	cardmarket
1272	sv3pt5-73	https://prices.pokemontcg.io/cardmarket/sv3pt5-73	2024-12-31	cardmarket
1273	sv3pt5-74	https://prices.pokemontcg.io/cardmarket/sv3pt5-74	2024-12-31	cardmarket
1274	sv3pt5-75	https://prices.pokemontcg.io/cardmarket/sv3pt5-75	2024-12-31	cardmarket
1275	sv3pt5-76	https://prices.pokemontcg.io/cardmarket/sv3pt5-76	2024-12-31	cardmarket
1276	sv3pt5-77	https://prices.pokemontcg.io/cardmarket/sv3pt5-77	2024-12-31	cardmarket
1277	sv3pt5-78	https://prices.pokemontcg.io/cardmarket/sv3pt5-78	2024-12-31	cardmarket
1278	sv3pt5-79	https://prices.pokemontcg.io/cardmarket/sv3pt5-79	2024-12-31	cardmarket
1279	sv3pt5-80	https://prices.pokemontcg.io/cardmarket/sv3pt5-80	2024-12-31	cardmarket
1280	sv3pt5-81	https://prices.pokemontcg.io/cardmarket/sv3pt5-81	2024-12-31	cardmarket
1281	sv3pt5-82	https://prices.pokemontcg.io/cardmarket/sv3pt5-82	2024-12-31	cardmarket
1282	sv3pt5-83	https://prices.pokemontcg.io/cardmarket/sv3pt5-83	2024-12-31	cardmarket
1283	sv3pt5-84	https://prices.pokemontcg.io/cardmarket/sv3pt5-84	2024-12-31	cardmarket
1284	sv3pt5-85	https://prices.pokemontcg.io/cardmarket/sv3pt5-85	2024-12-31	cardmarket
1285	sv3pt5-86	https://prices.pokemontcg.io/cardmarket/sv3pt5-86	2024-12-31	cardmarket
1286	sv3pt5-87	https://prices.pokemontcg.io/cardmarket/sv3pt5-87	2024-12-31	cardmarket
1287	sv3pt5-88	https://prices.pokemontcg.io/cardmarket/sv3pt5-88	2024-12-31	cardmarket
1288	sv3pt5-89	https://prices.pokemontcg.io/cardmarket/sv3pt5-89	2024-12-31	cardmarket
1289	sv3pt5-90	https://prices.pokemontcg.io/cardmarket/sv3pt5-90	2024-12-31	cardmarket
1290	sv3pt5-91	https://prices.pokemontcg.io/cardmarket/sv3pt5-91	2024-12-31	cardmarket
1291	sv3pt5-92	https://prices.pokemontcg.io/cardmarket/sv3pt5-92	2024-12-31	cardmarket
1292	sv3pt5-93	https://prices.pokemontcg.io/cardmarket/sv3pt5-93	2024-12-31	cardmarket
1293	sv3pt5-94	https://prices.pokemontcg.io/cardmarket/sv3pt5-94	2024-12-31	cardmarket
1294	sv3pt5-95	https://prices.pokemontcg.io/cardmarket/sv3pt5-95	2024-12-31	cardmarket
1295	sv3pt5-96	https://prices.pokemontcg.io/cardmarket/sv3pt5-96	2024-12-31	cardmarket
1296	sv3pt5-97	https://prices.pokemontcg.io/cardmarket/sv3pt5-97	2024-12-31	cardmarket
1297	sv3pt5-98	https://prices.pokemontcg.io/cardmarket/sv3pt5-98	2024-12-31	cardmarket
1298	sv3pt5-99	https://prices.pokemontcg.io/cardmarket/sv3pt5-99	2024-12-31	cardmarket
1299	sv3pt5-100	https://prices.pokemontcg.io/cardmarket/sv3pt5-100	2024-12-31	cardmarket
1300	sv3pt5-101	https://prices.pokemontcg.io/cardmarket/sv3pt5-101	2024-12-31	cardmarket
1301	sv3pt5-102	https://prices.pokemontcg.io/cardmarket/sv3pt5-102	2024-12-31	cardmarket
1302	sv3pt5-103	https://prices.pokemontcg.io/cardmarket/sv3pt5-103	2024-12-31	cardmarket
1303	sv3pt5-104	https://prices.pokemontcg.io/cardmarket/sv3pt5-104	2024-12-31	cardmarket
1304	sv3pt5-105	https://prices.pokemontcg.io/cardmarket/sv3pt5-105	2024-12-31	cardmarket
1305	sv3pt5-106	https://prices.pokemontcg.io/cardmarket/sv3pt5-106	2024-12-31	cardmarket
1306	sv3pt5-107	https://prices.pokemontcg.io/cardmarket/sv3pt5-107	2024-12-31	cardmarket
1307	sv3pt5-108	https://prices.pokemontcg.io/cardmarket/sv3pt5-108	2024-12-31	cardmarket
1308	sv3pt5-109	https://prices.pokemontcg.io/cardmarket/sv3pt5-109	2024-12-31	cardmarket
1309	sv3pt5-110	https://prices.pokemontcg.io/cardmarket/sv3pt5-110	2024-12-31	cardmarket
1310	sv3pt5-111	https://prices.pokemontcg.io/cardmarket/sv3pt5-111	2024-12-31	cardmarket
1311	sv3pt5-112	https://prices.pokemontcg.io/cardmarket/sv3pt5-112	2024-12-31	cardmarket
1312	sv3pt5-113	https://prices.pokemontcg.io/cardmarket/sv3pt5-113	2024-12-31	cardmarket
1313	sv3pt5-114	https://prices.pokemontcg.io/cardmarket/sv3pt5-114	2024-12-31	cardmarket
1314	sv3pt5-115	https://prices.pokemontcg.io/cardmarket/sv3pt5-115	2024-12-31	cardmarket
1315	sv3pt5-116	https://prices.pokemontcg.io/cardmarket/sv3pt5-116	2024-12-31	cardmarket
1316	sv3pt5-117	https://prices.pokemontcg.io/cardmarket/sv3pt5-117	2024-12-31	cardmarket
1317	sv3pt5-118	https://prices.pokemontcg.io/cardmarket/sv3pt5-118	2024-12-31	cardmarket
1318	sv3pt5-119	https://prices.pokemontcg.io/cardmarket/sv3pt5-119	2024-12-31	cardmarket
1319	sv3pt5-120	https://prices.pokemontcg.io/cardmarket/sv3pt5-120	2024-12-31	cardmarket
1320	sv3pt5-121	https://prices.pokemontcg.io/cardmarket/sv3pt5-121	2024-12-31	cardmarket
1321	sv3pt5-122	https://prices.pokemontcg.io/cardmarket/sv3pt5-122	2024-12-31	cardmarket
1322	sv3pt5-123	https://prices.pokemontcg.io/cardmarket/sv3pt5-123	2024-12-31	cardmarket
1323	sv3pt5-124	https://prices.pokemontcg.io/cardmarket/sv3pt5-124	2024-12-31	cardmarket
1324	sv3pt5-125	https://prices.pokemontcg.io/cardmarket/sv3pt5-125	2024-12-31	cardmarket
1325	sv3pt5-126	https://prices.pokemontcg.io/cardmarket/sv3pt5-126	2024-12-31	cardmarket
1326	sv3pt5-127	https://prices.pokemontcg.io/cardmarket/sv3pt5-127	2024-12-31	cardmarket
1327	sv3pt5-128	https://prices.pokemontcg.io/cardmarket/sv3pt5-128	2024-12-31	cardmarket
1328	sv3pt5-129	https://prices.pokemontcg.io/cardmarket/sv3pt5-129	2024-12-31	cardmarket
1329	sv3pt5-130	https://prices.pokemontcg.io/cardmarket/sv3pt5-130	2024-12-31	cardmarket
1330	sv3pt5-131	https://prices.pokemontcg.io/cardmarket/sv3pt5-131	2024-12-31	cardmarket
1331	sv3pt5-132	https://prices.pokemontcg.io/cardmarket/sv3pt5-132	2024-12-31	cardmarket
1332	sv3pt5-133	https://prices.pokemontcg.io/cardmarket/sv3pt5-133	2024-12-31	cardmarket
1333	sv3pt5-134	https://prices.pokemontcg.io/cardmarket/sv3pt5-134	2024-12-31	cardmarket
1334	sv3pt5-135	https://prices.pokemontcg.io/cardmarket/sv3pt5-135	2024-12-31	cardmarket
1335	sv3pt5-136	https://prices.pokemontcg.io/cardmarket/sv3pt5-136	2024-12-31	cardmarket
1336	sv3pt5-137	https://prices.pokemontcg.io/cardmarket/sv3pt5-137	2024-12-31	cardmarket
1337	sv3pt5-138	https://prices.pokemontcg.io/cardmarket/sv3pt5-138	2024-12-31	cardmarket
1338	sv3pt5-139	https://prices.pokemontcg.io/cardmarket/sv3pt5-139	2024-12-31	cardmarket
1339	sv3pt5-140	https://prices.pokemontcg.io/cardmarket/sv3pt5-140	2024-12-31	cardmarket
1340	sv3pt5-141	https://prices.pokemontcg.io/cardmarket/sv3pt5-141	2024-12-31	cardmarket
1341	sv3pt5-142	https://prices.pokemontcg.io/cardmarket/sv3pt5-142	2024-12-31	cardmarket
1342	sv3pt5-143	https://prices.pokemontcg.io/cardmarket/sv3pt5-143	2024-12-31	cardmarket
1343	sv3pt5-144	https://prices.pokemontcg.io/cardmarket/sv3pt5-144	2024-12-31	cardmarket
1344	sv3pt5-145	https://prices.pokemontcg.io/cardmarket/sv3pt5-145	2024-12-31	cardmarket
1345	sv3pt5-146	https://prices.pokemontcg.io/cardmarket/sv3pt5-146	2024-12-31	cardmarket
1346	sv3pt5-147	https://prices.pokemontcg.io/cardmarket/sv3pt5-147	2024-12-31	cardmarket
1347	sv3pt5-148	https://prices.pokemontcg.io/cardmarket/sv3pt5-148	2024-12-31	cardmarket
1348	sv3pt5-149	https://prices.pokemontcg.io/cardmarket/sv3pt5-149	2024-12-31	cardmarket
1349	sv3pt5-150	https://prices.pokemontcg.io/cardmarket/sv3pt5-150	2024-12-31	cardmarket
1350	sv3pt5-151	https://prices.pokemontcg.io/cardmarket/sv3pt5-151	2024-12-31	cardmarket
1351	sv3pt5-152	https://prices.pokemontcg.io/cardmarket/sv3pt5-152	2024-12-31	cardmarket
1352	sv3pt5-153	https://prices.pokemontcg.io/cardmarket/sv3pt5-153	2024-12-31	cardmarket
1353	sv3pt5-154	https://prices.pokemontcg.io/cardmarket/sv3pt5-154	2024-12-31	cardmarket
1354	sv3pt5-155	https://prices.pokemontcg.io/cardmarket/sv3pt5-155	2024-12-31	cardmarket
1355	sv3pt5-156	https://prices.pokemontcg.io/cardmarket/sv3pt5-156	2024-12-31	cardmarket
1356	sv3pt5-157	https://prices.pokemontcg.io/cardmarket/sv3pt5-157	2024-12-31	cardmarket
1357	sv3pt5-158	https://prices.pokemontcg.io/cardmarket/sv3pt5-158	2024-12-31	cardmarket
1358	sv3pt5-159	https://prices.pokemontcg.io/cardmarket/sv3pt5-159	2024-12-31	cardmarket
1359	sv3pt5-160	https://prices.pokemontcg.io/cardmarket/sv3pt5-160	2024-12-31	cardmarket
1360	sv3pt5-161	https://prices.pokemontcg.io/cardmarket/sv3pt5-161	2024-12-31	cardmarket
1361	sv3pt5-162	https://prices.pokemontcg.io/cardmarket/sv3pt5-162	2024-12-31	cardmarket
1362	sv3pt5-163	https://prices.pokemontcg.io/cardmarket/sv3pt5-163	2024-12-31	cardmarket
1363	sv3pt5-164	https://prices.pokemontcg.io/cardmarket/sv3pt5-164	2024-12-31	cardmarket
1364	sv3pt5-165	https://prices.pokemontcg.io/cardmarket/sv3pt5-165	2024-12-31	cardmarket
1365	sv3pt5-166	https://prices.pokemontcg.io/cardmarket/sv3pt5-166	2024-12-31	cardmarket
1366	sv3pt5-167	https://prices.pokemontcg.io/cardmarket/sv3pt5-167	2024-12-31	cardmarket
1367	sv3pt5-168	https://prices.pokemontcg.io/cardmarket/sv3pt5-168	2024-12-31	cardmarket
1368	sv3pt5-169	https://prices.pokemontcg.io/cardmarket/sv3pt5-169	2024-12-31	cardmarket
1369	sv3pt5-170	https://prices.pokemontcg.io/cardmarket/sv3pt5-170	2024-12-31	cardmarket
1370	sv3pt5-171	https://prices.pokemontcg.io/cardmarket/sv3pt5-171	2024-12-31	cardmarket
1371	sv3pt5-172	https://prices.pokemontcg.io/cardmarket/sv3pt5-172	2024-12-31	cardmarket
1372	sv3pt5-173	https://prices.pokemontcg.io/cardmarket/sv3pt5-173	2024-12-31	cardmarket
1373	sv3pt5-174	https://prices.pokemontcg.io/cardmarket/sv3pt5-174	2024-12-31	cardmarket
1374	sv3pt5-175	https://prices.pokemontcg.io/cardmarket/sv3pt5-175	2024-12-31	cardmarket
1375	sv3pt5-176	https://prices.pokemontcg.io/cardmarket/sv3pt5-176	2024-12-31	cardmarket
1376	sv3pt5-177	https://prices.pokemontcg.io/cardmarket/sv3pt5-177	2024-12-31	cardmarket
1377	sv3pt5-178	https://prices.pokemontcg.io/cardmarket/sv3pt5-178	2024-12-31	cardmarket
1378	sv3pt5-179	https://prices.pokemontcg.io/cardmarket/sv3pt5-179	2024-12-31	cardmarket
1379	sv3pt5-180	https://prices.pokemontcg.io/cardmarket/sv3pt5-180	2024-12-31	cardmarket
1380	sv3pt5-181	https://prices.pokemontcg.io/cardmarket/sv3pt5-181	2024-12-31	cardmarket
1381	sv3pt5-182	https://prices.pokemontcg.io/cardmarket/sv3pt5-182	2024-12-31	cardmarket
1382	sv3pt5-183	https://prices.pokemontcg.io/cardmarket/sv3pt5-183	2024-12-31	cardmarket
1383	sv3pt5-184	https://prices.pokemontcg.io/cardmarket/sv3pt5-184	2024-12-31	cardmarket
1384	sv3pt5-185	https://prices.pokemontcg.io/cardmarket/sv3pt5-185	2024-12-31	cardmarket
1385	sv3pt5-186	https://prices.pokemontcg.io/cardmarket/sv3pt5-186	2024-12-31	cardmarket
1386	sv3pt5-187	https://prices.pokemontcg.io/cardmarket/sv3pt5-187	2024-12-31	cardmarket
1387	sv3pt5-188	https://prices.pokemontcg.io/cardmarket/sv3pt5-188	2024-12-31	cardmarket
1388	sv3pt5-189	https://prices.pokemontcg.io/cardmarket/sv3pt5-189	2024-12-31	cardmarket
1389	sv3pt5-190	https://prices.pokemontcg.io/cardmarket/sv3pt5-190	2024-12-31	cardmarket
1390	sv3pt5-191	https://prices.pokemontcg.io/cardmarket/sv3pt5-191	2024-12-31	cardmarket
1391	sv3pt5-192	https://prices.pokemontcg.io/cardmarket/sv3pt5-192	2024-12-31	cardmarket
1392	sv3pt5-193	https://prices.pokemontcg.io/cardmarket/sv3pt5-193	2024-12-31	cardmarket
1393	sv3pt5-194	https://prices.pokemontcg.io/cardmarket/sv3pt5-194	2024-12-31	cardmarket
1394	sv3pt5-195	https://prices.pokemontcg.io/cardmarket/sv3pt5-195	2024-12-31	cardmarket
1395	sv3pt5-196	https://prices.pokemontcg.io/cardmarket/sv3pt5-196	2024-12-31	cardmarket
1396	sv3pt5-197	https://prices.pokemontcg.io/cardmarket/sv3pt5-197	2024-12-31	cardmarket
1397	sv3pt5-198	https://prices.pokemontcg.io/cardmarket/sv3pt5-198	2024-12-31	cardmarket
1398	sv3pt5-199	https://prices.pokemontcg.io/cardmarket/sv3pt5-199	2024-12-31	cardmarket
1399	sv3pt5-200	https://prices.pokemontcg.io/cardmarket/sv3pt5-200	2024-12-31	cardmarket
1400	sv3pt5-201	https://prices.pokemontcg.io/cardmarket/sv3pt5-201	2024-12-31	cardmarket
1401	sv3pt5-202	https://prices.pokemontcg.io/cardmarket/sv3pt5-202	2024-12-31	cardmarket
1402	sv3pt5-203	https://prices.pokemontcg.io/cardmarket/sv3pt5-203	2024-12-31	cardmarket
1403	sv3pt5-204	https://prices.pokemontcg.io/cardmarket/sv3pt5-204	2024-12-31	cardmarket
1404	sv3pt5-205	https://prices.pokemontcg.io/cardmarket/sv3pt5-205	2024-12-31	cardmarket
1405	sv3pt5-206	https://prices.pokemontcg.io/cardmarket/sv3pt5-206	2024-12-31	cardmarket
1406	sv3pt5-207	https://prices.pokemontcg.io/cardmarket/sv3pt5-207	2024-12-31	cardmarket
1407	sv4-1	https://prices.pokemontcg.io/tcgplayer/sv4-1	2024-12-31	tcgplayer
1408	sv4-2	https://prices.pokemontcg.io/tcgplayer/sv4-2	2024-12-31	tcgplayer
1409	sv4-4	https://prices.pokemontcg.io/tcgplayer/sv4-4	2024-12-31	tcgplayer
1410	sv4-5	https://prices.pokemontcg.io/tcgplayer/sv4-5	2024-12-31	tcgplayer
1411	sv4-3	https://prices.pokemontcg.io/tcgplayer/sv4-3	2024-12-31	tcgplayer
1412	sv4-6	https://prices.pokemontcg.io/tcgplayer/sv4-6	2024-12-31	tcgplayer
1413	sv4-7	https://prices.pokemontcg.io/tcgplayer/sv4-7	2024-12-31	tcgplayer
1414	sv4-8	https://prices.pokemontcg.io/tcgplayer/sv4-8	2024-12-31	tcgplayer
1415	sv4-10	https://prices.pokemontcg.io/tcgplayer/sv4-10	2024-12-31	tcgplayer
1416	sv4-9	https://prices.pokemontcg.io/tcgplayer/sv4-9	2024-12-31	tcgplayer
1417	sv4-14	https://prices.pokemontcg.io/tcgplayer/sv4-14	2024-12-31	tcgplayer
1418	sv4-11	https://prices.pokemontcg.io/tcgplayer/sv4-11	2024-12-31	tcgplayer
1419	sv4-24	https://prices.pokemontcg.io/tcgplayer/sv4-24	2024-12-31	tcgplayer
1420	sv4-26	https://prices.pokemontcg.io/tcgplayer/sv4-26	2024-12-31	tcgplayer
1421	sv4-27	https://prices.pokemontcg.io/tcgplayer/sv4-27	2024-12-31	tcgplayer
1422	sv4-35	https://prices.pokemontcg.io/tcgplayer/sv4-35	2024-12-31	tcgplayer
1423	sv4-12	https://prices.pokemontcg.io/tcgplayer/sv4-12	2024-12-31	tcgplayer
1424	sv4-13	https://prices.pokemontcg.io/tcgplayer/sv4-13	2024-12-31	tcgplayer
1425	sv4-17	https://prices.pokemontcg.io/tcgplayer/sv4-17	2024-12-31	tcgplayer
1426	sv4-21	https://prices.pokemontcg.io/tcgplayer/sv4-21	2024-12-31	tcgplayer
1427	sv4-22	https://prices.pokemontcg.io/tcgplayer/sv4-22	2024-12-31	tcgplayer
1428	sv4-31	https://prices.pokemontcg.io/tcgplayer/sv4-31	2024-12-31	tcgplayer
1429	sv4-32	https://prices.pokemontcg.io/tcgplayer/sv4-32	2024-12-31	tcgplayer
1430	sv4-16	https://prices.pokemontcg.io/tcgplayer/sv4-16	2024-12-31	tcgplayer
1431	sv4-20	https://prices.pokemontcg.io/tcgplayer/sv4-20	2024-12-31	tcgplayer
1432	sv4-25	https://prices.pokemontcg.io/tcgplayer/sv4-25	2024-12-31	tcgplayer
1433	sv4-28	https://prices.pokemontcg.io/tcgplayer/sv4-28	2024-12-31	tcgplayer
1434	sv4-30	https://prices.pokemontcg.io/tcgplayer/sv4-30	2024-12-31	tcgplayer
1435	sv4-33	https://prices.pokemontcg.io/tcgplayer/sv4-33	2024-12-31	tcgplayer
1436	sv4-15	https://prices.pokemontcg.io/tcgplayer/sv4-15	2024-12-31	tcgplayer
1437	sv4-18	https://prices.pokemontcg.io/tcgplayer/sv4-18	2024-12-31	tcgplayer
1438	sv4-19	https://prices.pokemontcg.io/tcgplayer/sv4-19	2024-12-31	tcgplayer
1439	sv4-23	https://prices.pokemontcg.io/tcgplayer/sv4-23	2024-12-31	tcgplayer
1440	sv4-29	https://prices.pokemontcg.io/tcgplayer/sv4-29	2024-12-31	tcgplayer
1441	sv4-34	https://prices.pokemontcg.io/tcgplayer/sv4-34	2024-12-31	tcgplayer
1442	sv4-36	https://prices.pokemontcg.io/tcgplayer/sv4-36	2024-12-31	tcgplayer
1443	sv4-38	https://prices.pokemontcg.io/tcgplayer/sv4-38	2024-12-31	tcgplayer
1444	sv4-39	https://prices.pokemontcg.io/tcgplayer/sv4-39	2024-12-31	tcgplayer
1445	sv4-57	https://prices.pokemontcg.io/tcgplayer/sv4-57	2024-12-31	tcgplayer
1446	sv4-60	https://prices.pokemontcg.io/tcgplayer/sv4-60	2024-12-31	tcgplayer
1447	sv4-62	https://prices.pokemontcg.io/tcgplayer/sv4-62	2024-12-31	tcgplayer
1448	sv4-65	https://prices.pokemontcg.io/tcgplayer/sv4-65	2024-12-31	tcgplayer
1449	sv4-67	https://prices.pokemontcg.io/tcgplayer/sv4-67	2024-12-31	tcgplayer
1450	sv4-68	https://prices.pokemontcg.io/tcgplayer/sv4-68	2024-12-31	tcgplayer
1451	sv4-70	https://prices.pokemontcg.io/tcgplayer/sv4-70	2024-12-31	tcgplayer
1452	sv4-73	https://prices.pokemontcg.io/tcgplayer/sv4-73	2024-12-31	tcgplayer
1453	sv4-42	https://prices.pokemontcg.io/tcgplayer/sv4-42	2024-12-31	tcgplayer
1454	sv4-44	https://prices.pokemontcg.io/tcgplayer/sv4-44	2024-12-31	tcgplayer
1455	sv4-47	https://prices.pokemontcg.io/tcgplayer/sv4-47	2024-12-31	tcgplayer
1456	sv4-54	https://prices.pokemontcg.io/tcgplayer/sv4-54	2024-12-31	tcgplayer
1457	sv4-56	https://prices.pokemontcg.io/tcgplayer/sv4-56	2024-12-31	tcgplayer
1458	sv4-40	https://prices.pokemontcg.io/tcgplayer/sv4-40	2024-12-31	tcgplayer
1459	sv4-45	https://prices.pokemontcg.io/tcgplayer/sv4-45	2024-12-31	tcgplayer
1460	sv4-48	https://prices.pokemontcg.io/tcgplayer/sv4-48	2024-12-31	tcgplayer
1461	sv4-51	https://prices.pokemontcg.io/tcgplayer/sv4-51	2024-12-31	tcgplayer
1462	sv4-52	https://prices.pokemontcg.io/tcgplayer/sv4-52	2024-12-31	tcgplayer
1463	sv4-59	https://prices.pokemontcg.io/tcgplayer/sv4-59	2024-12-31	tcgplayer
1464	sv4-61	https://prices.pokemontcg.io/tcgplayer/sv4-61	2024-12-31	tcgplayer
1465	sv4-63	https://prices.pokemontcg.io/tcgplayer/sv4-63	2024-12-31	tcgplayer
1466	sv4-64	https://prices.pokemontcg.io/tcgplayer/sv4-64	2024-12-31	tcgplayer
1467	sv4-66	https://prices.pokemontcg.io/tcgplayer/sv4-66	2024-12-31	tcgplayer
1468	sv4-69	https://prices.pokemontcg.io/tcgplayer/sv4-69	2024-12-31	tcgplayer
1469	sv4-72	https://prices.pokemontcg.io/tcgplayer/sv4-72	2024-12-31	tcgplayer
1470	sv4-37	https://prices.pokemontcg.io/tcgplayer/sv4-37	2024-12-31	tcgplayer
1471	sv4-41	https://prices.pokemontcg.io/tcgplayer/sv4-41	2024-12-31	tcgplayer
1472	sv4-43	https://prices.pokemontcg.io/tcgplayer/sv4-43	2024-12-31	tcgplayer
1473	sv4-46	https://prices.pokemontcg.io/tcgplayer/sv4-46	2024-12-31	tcgplayer
1474	sv4-49	https://prices.pokemontcg.io/tcgplayer/sv4-49	2024-12-31	tcgplayer
1475	sv4-50	https://prices.pokemontcg.io/tcgplayer/sv4-50	2024-12-31	tcgplayer
1476	sv4-53	https://prices.pokemontcg.io/tcgplayer/sv4-53	2024-12-31	tcgplayer
1477	sv4-55	https://prices.pokemontcg.io/tcgplayer/sv4-55	2024-12-31	tcgplayer
1478	sv4-58	https://prices.pokemontcg.io/tcgplayer/sv4-58	2024-12-31	tcgplayer
1479	sv4-71	https://prices.pokemontcg.io/tcgplayer/sv4-71	2024-12-31	tcgplayer
1480	sv4-75	https://prices.pokemontcg.io/tcgplayer/sv4-75	2024-12-31	tcgplayer
1481	sv4-77	https://prices.pokemontcg.io/tcgplayer/sv4-77	2024-12-31	tcgplayer
1482	sv4-84	https://prices.pokemontcg.io/tcgplayer/sv4-84	2024-12-31	tcgplayer
1483	sv4-85	https://prices.pokemontcg.io/tcgplayer/sv4-85	2024-12-31	tcgplayer
1484	sv4-74	https://prices.pokemontcg.io/tcgplayer/sv4-74	2024-12-31	tcgplayer
1485	sv4-76	https://prices.pokemontcg.io/tcgplayer/sv4-76	2024-12-31	tcgplayer
1486	sv4-78	https://prices.pokemontcg.io/tcgplayer/sv4-78	2024-12-31	tcgplayer
1487	sv4-79	https://prices.pokemontcg.io/tcgplayer/sv4-79	2024-12-31	tcgplayer
1488	sv4-80	https://prices.pokemontcg.io/tcgplayer/sv4-80	2024-12-31	tcgplayer
1489	sv4-83	https://prices.pokemontcg.io/tcgplayer/sv4-83	2024-12-31	tcgplayer
1490	sv4-81	https://prices.pokemontcg.io/tcgplayer/sv4-81	2024-12-31	tcgplayer
1491	sv4-82	https://prices.pokemontcg.io/tcgplayer/sv4-82	2024-12-31	tcgplayer
1492	sv4-86	https://prices.pokemontcg.io/tcgplayer/sv4-86	2024-12-31	tcgplayer
1493	sv4-99	https://prices.pokemontcg.io/tcgplayer/sv4-99	2024-12-31	tcgplayer
1494	sv4-106	https://prices.pokemontcg.io/tcgplayer/sv4-106	2024-12-31	tcgplayer
1495	sv4-110	https://prices.pokemontcg.io/tcgplayer/sv4-110	2024-12-31	tcgplayer
1496	sv4-116	https://prices.pokemontcg.io/tcgplayer/sv4-116	2024-12-31	tcgplayer
1497	sv4-88	https://prices.pokemontcg.io/tcgplayer/sv4-88	2024-12-31	tcgplayer
1498	sv4-87	https://prices.pokemontcg.io/tcgplayer/sv4-87	2024-12-31	tcgplayer
1499	sv4-92	https://prices.pokemontcg.io/tcgplayer/sv4-92	2024-12-31	tcgplayer
1500	sv4-94	https://prices.pokemontcg.io/tcgplayer/sv4-94	2024-12-31	tcgplayer
1501	sv4-96	https://prices.pokemontcg.io/tcgplayer/sv4-96	2024-12-31	tcgplayer
1502	sv4-100	https://prices.pokemontcg.io/tcgplayer/sv4-100	2024-12-31	tcgplayer
1503	sv4-105	https://prices.pokemontcg.io/tcgplayer/sv4-105	2024-12-31	tcgplayer
1504	sv4-108	https://prices.pokemontcg.io/tcgplayer/sv4-108	2024-12-31	tcgplayer
1505	sv4-111	https://prices.pokemontcg.io/tcgplayer/sv4-111	2024-12-31	tcgplayer
1506	sv4-112	https://prices.pokemontcg.io/tcgplayer/sv4-112	2024-12-31	tcgplayer
1507	sv4-113	https://prices.pokemontcg.io/tcgplayer/sv4-113	2024-12-31	tcgplayer
1508	sv4-118	https://prices.pokemontcg.io/tcgplayer/sv4-118	2024-12-31	tcgplayer
1509	sv4-120	https://prices.pokemontcg.io/tcgplayer/sv4-120	2024-12-31	tcgplayer
1510	sv4-89	https://prices.pokemontcg.io/tcgplayer/sv4-89	2024-12-31	tcgplayer
1511	sv4-90	https://prices.pokemontcg.io/tcgplayer/sv4-90	2024-12-31	tcgplayer
1512	sv4-114	https://prices.pokemontcg.io/tcgplayer/sv4-114	2024-12-31	tcgplayer
1513	sv4-115	https://prices.pokemontcg.io/tcgplayer/sv4-115	2024-12-31	tcgplayer
1514	sv4-121	https://prices.pokemontcg.io/tcgplayer/sv4-121	2024-12-31	tcgplayer
1515	sv4-91	https://prices.pokemontcg.io/tcgplayer/sv4-91	2024-12-31	tcgplayer
1516	sv4-93	https://prices.pokemontcg.io/tcgplayer/sv4-93	2024-12-31	tcgplayer
1517	sv4-95	https://prices.pokemontcg.io/tcgplayer/sv4-95	2024-12-31	tcgplayer
1518	sv4-97	https://prices.pokemontcg.io/tcgplayer/sv4-97	2024-12-31	tcgplayer
1519	sv4-98	https://prices.pokemontcg.io/tcgplayer/sv4-98	2024-12-31	tcgplayer
1520	sv4-101	https://prices.pokemontcg.io/tcgplayer/sv4-101	2024-12-31	tcgplayer
1521	sv4-102	https://prices.pokemontcg.io/tcgplayer/sv4-102	2024-12-31	tcgplayer
1522	sv4-103	https://prices.pokemontcg.io/tcgplayer/sv4-103	2024-12-31	tcgplayer
1523	sv4-104	https://prices.pokemontcg.io/tcgplayer/sv4-104	2024-12-31	tcgplayer
1524	sv4-107	https://prices.pokemontcg.io/tcgplayer/sv4-107	2024-12-31	tcgplayer
1525	sv4-109	https://prices.pokemontcg.io/tcgplayer/sv4-109	2024-12-31	tcgplayer
1526	sv4-117	https://prices.pokemontcg.io/tcgplayer/sv4-117	2024-12-31	tcgplayer
1527	sv4-119	https://prices.pokemontcg.io/tcgplayer/sv4-119	2024-12-31	tcgplayer
1528	sv4-122	https://prices.pokemontcg.io/tcgplayer/sv4-122	2024-12-31	tcgplayer
1529	sv4-123	https://prices.pokemontcg.io/tcgplayer/sv4-123	2024-12-31	tcgplayer
1530	sv4-124	https://prices.pokemontcg.io/tcgplayer/sv4-124	2024-12-31	tcgplayer
1531	sv4-125	https://prices.pokemontcg.io/tcgplayer/sv4-125	2024-12-31	tcgplayer
1532	sv4-126	https://prices.pokemontcg.io/tcgplayer/sv4-126	2024-12-31	tcgplayer
1533	sv4-128	https://prices.pokemontcg.io/tcgplayer/sv4-128	2024-12-31	tcgplayer
1534	sv4-127	https://prices.pokemontcg.io/tcgplayer/sv4-127	2024-12-31	tcgplayer
1535	sv4-130	https://prices.pokemontcg.io/tcgplayer/sv4-130	2024-12-31	tcgplayer
1536	sv4-131	https://prices.pokemontcg.io/tcgplayer/sv4-131	2024-12-31	tcgplayer
1537	sv4-129	https://prices.pokemontcg.io/tcgplayer/sv4-129	2024-12-31	tcgplayer
1538	sv4-132	https://prices.pokemontcg.io/tcgplayer/sv4-132	2024-12-31	tcgplayer
1539	sv4-133	https://prices.pokemontcg.io/tcgplayer/sv4-133	2024-12-31	tcgplayer
1540	sv4-135	https://prices.pokemontcg.io/tcgplayer/sv4-135	2024-12-31	tcgplayer
1541	sv4-136	https://prices.pokemontcg.io/tcgplayer/sv4-136	2024-12-31	tcgplayer
1542	sv4-137	https://prices.pokemontcg.io/tcgplayer/sv4-137	2024-12-31	tcgplayer
1543	sv4-139	https://prices.pokemontcg.io/tcgplayer/sv4-139	2024-12-31	tcgplayer
1544	sv4-142	https://prices.pokemontcg.io/tcgplayer/sv4-142	2024-12-31	tcgplayer
1545	sv4-143	https://prices.pokemontcg.io/tcgplayer/sv4-143	2024-12-31	tcgplayer
1546	sv4-144	https://prices.pokemontcg.io/tcgplayer/sv4-144	2024-12-31	tcgplayer
1547	sv4-138	https://prices.pokemontcg.io/tcgplayer/sv4-138	2024-12-31	tcgplayer
1548	sv4-140	https://prices.pokemontcg.io/tcgplayer/sv4-140	2024-12-31	tcgplayer
1549	sv4-145	https://prices.pokemontcg.io/tcgplayer/sv4-145	2024-12-31	tcgplayer
1550	sv4-134	https://prices.pokemontcg.io/tcgplayer/sv4-134	2024-12-31	tcgplayer
1551	sv4-141	https://prices.pokemontcg.io/tcgplayer/sv4-141	2024-12-31	tcgplayer
1552	sv4-146	https://prices.pokemontcg.io/tcgplayer/sv4-146	2024-12-31	tcgplayer
1553	sv4-147	https://prices.pokemontcg.io/tcgplayer/sv4-147	2024-12-31	tcgplayer
1554	sv4-148	https://prices.pokemontcg.io/tcgplayer/sv4-148	2024-12-31	tcgplayer
1555	sv4-149	https://prices.pokemontcg.io/tcgplayer/sv4-149	2024-12-31	tcgplayer
1556	sv4-152	https://prices.pokemontcg.io/tcgplayer/sv4-152	2024-12-31	tcgplayer
1557	sv4-159	https://prices.pokemontcg.io/tcgplayer/sv4-159	2024-12-31	tcgplayer
1558	sv4-166	https://prices.pokemontcg.io/tcgplayer/sv4-166	2024-12-31	tcgplayer
1559	sv4-176	https://prices.pokemontcg.io/tcgplayer/sv4-176	2024-12-31	tcgplayer
1560	sv4-177	https://prices.pokemontcg.io/tcgplayer/sv4-177	2024-12-31	tcgplayer
1561	sv4-151	https://prices.pokemontcg.io/tcgplayer/sv4-151	2024-12-31	tcgplayer
1562	sv4-167	https://prices.pokemontcg.io/tcgplayer/sv4-167	2024-12-31	tcgplayer
1563	sv4-170	https://prices.pokemontcg.io/tcgplayer/sv4-170	2024-12-31	tcgplayer
1564	sv4-174	https://prices.pokemontcg.io/tcgplayer/sv4-174	2024-12-31	tcgplayer
1565	sv4-175	https://prices.pokemontcg.io/tcgplayer/sv4-175	2024-12-31	tcgplayer
1566	sv4-179	https://prices.pokemontcg.io/tcgplayer/sv4-179	2024-12-31	tcgplayer
1567	sv4-150	https://prices.pokemontcg.io/tcgplayer/sv4-150	2024-12-31	tcgplayer
1568	sv4-153	https://prices.pokemontcg.io/tcgplayer/sv4-153	2024-12-31	tcgplayer
1569	sv4-155	https://prices.pokemontcg.io/tcgplayer/sv4-155	2024-12-31	tcgplayer
1570	sv4-156	https://prices.pokemontcg.io/tcgplayer/sv4-156	2024-12-31	tcgplayer
1571	sv4-160	https://prices.pokemontcg.io/tcgplayer/sv4-160	2024-12-31	tcgplayer
1572	sv4-162	https://prices.pokemontcg.io/tcgplayer/sv4-162	2024-12-31	tcgplayer
1573	sv4-163	https://prices.pokemontcg.io/tcgplayer/sv4-163	2024-12-31	tcgplayer
1574	sv4-172	https://prices.pokemontcg.io/tcgplayer/sv4-172	2024-12-31	tcgplayer
1575	sv4-154	https://prices.pokemontcg.io/tcgplayer/sv4-154	2024-12-31	tcgplayer
1576	sv4-157	https://prices.pokemontcg.io/tcgplayer/sv4-157	2024-12-31	tcgplayer
1577	sv4-158	https://prices.pokemontcg.io/tcgplayer/sv4-158	2024-12-31	tcgplayer
1578	sv4-161	https://prices.pokemontcg.io/tcgplayer/sv4-161	2024-12-31	tcgplayer
1579	sv4-164	https://prices.pokemontcg.io/tcgplayer/sv4-164	2024-12-31	tcgplayer
1580	sv4-165	https://prices.pokemontcg.io/tcgplayer/sv4-165	2024-12-31	tcgplayer
1581	sv4-168	https://prices.pokemontcg.io/tcgplayer/sv4-168	2024-12-31	tcgplayer
1582	sv4-169	https://prices.pokemontcg.io/tcgplayer/sv4-169	2024-12-31	tcgplayer
1583	sv4-171	https://prices.pokemontcg.io/tcgplayer/sv4-171	2024-12-31	tcgplayer
1584	sv4-173	https://prices.pokemontcg.io/tcgplayer/sv4-173	2024-12-31	tcgplayer
1585	sv4-178	https://prices.pokemontcg.io/tcgplayer/sv4-178	2024-12-31	tcgplayer
1586	sv4-182	https://prices.pokemontcg.io/tcgplayer/sv4-182	2024-12-31	tcgplayer
1587	sv4-183	https://prices.pokemontcg.io/tcgplayer/sv4-183	2024-12-31	tcgplayer
1588	sv4-184	https://prices.pokemontcg.io/tcgplayer/sv4-184	2024-12-31	tcgplayer
1589	sv4-180	https://prices.pokemontcg.io/tcgplayer/sv4-180	2024-12-31	tcgplayer
1590	sv4-181	https://prices.pokemontcg.io/tcgplayer/sv4-181	2024-12-31	tcgplayer
1591	sv4-186	https://prices.pokemontcg.io/tcgplayer/sv4-186	2024-12-31	tcgplayer
1592	sv4-190	https://prices.pokemontcg.io/tcgplayer/sv4-190	2024-12-31	tcgplayer
1593	sv4-185	https://prices.pokemontcg.io/tcgplayer/sv4-185	2024-12-31	tcgplayer
1594	sv4-187	https://prices.pokemontcg.io/tcgplayer/sv4-187	2024-12-31	tcgplayer
1595	sv4-189	https://prices.pokemontcg.io/tcgplayer/sv4-189	2024-12-31	tcgplayer
1596	sv4-191	https://prices.pokemontcg.io/tcgplayer/sv4-191	2024-12-31	tcgplayer
1597	sv4-193	https://prices.pokemontcg.io/tcgplayer/sv4-193	2024-12-31	tcgplayer
1598	sv4-188	https://prices.pokemontcg.io/tcgplayer/sv4-188	2024-12-31	tcgplayer
1599	sv4-194	https://prices.pokemontcg.io/tcgplayer/sv4-194	2024-12-31	tcgplayer
1600	sv4-192	https://prices.pokemontcg.io/tcgplayer/sv4-192	2024-12-31	tcgplayer
1601	sv4-197	https://prices.pokemontcg.io/tcgplayer/sv4-197	2024-12-31	tcgplayer
1602	sv4-203	https://prices.pokemontcg.io/tcgplayer/sv4-203	2024-12-31	tcgplayer
1603	sv4-213	https://prices.pokemontcg.io/tcgplayer/sv4-213	2024-12-31	tcgplayer
1604	sv4-218	https://prices.pokemontcg.io/tcgplayer/sv4-218	2024-12-31	tcgplayer
1605	sv4-216	https://prices.pokemontcg.io/tcgplayer/sv4-216	2024-12-31	tcgplayer
1606	sv4-226	https://prices.pokemontcg.io/tcgplayer/sv4-226	2024-12-31	tcgplayer
1607	sv4-220	https://prices.pokemontcg.io/tcgplayer/sv4-220	2024-12-31	tcgplayer
1608	sv4-227	https://prices.pokemontcg.io/tcgplayer/sv4-227	2024-12-31	tcgplayer
1609	sv4-225	https://prices.pokemontcg.io/tcgplayer/sv4-225	2024-12-31	tcgplayer
1610	sv4-228	https://prices.pokemontcg.io/tcgplayer/sv4-228	2024-12-31	tcgplayer
1611	sv4-230	https://prices.pokemontcg.io/tcgplayer/sv4-230	2024-12-31	tcgplayer
1612	sv4-232	https://prices.pokemontcg.io/tcgplayer/sv4-232	2024-12-31	tcgplayer
1613	sv4-196	https://prices.pokemontcg.io/tcgplayer/sv4-196	2024-12-31	tcgplayer
1614	sv4-200	https://prices.pokemontcg.io/tcgplayer/sv4-200	2024-12-31	tcgplayer
1615	sv4-201	https://prices.pokemontcg.io/tcgplayer/sv4-201	2024-12-31	tcgplayer
1616	sv4-204	https://prices.pokemontcg.io/tcgplayer/sv4-204	2024-12-31	tcgplayer
1617	sv4-205	https://prices.pokemontcg.io/tcgplayer/sv4-205	2024-12-31	tcgplayer
1618	sv4-209	https://prices.pokemontcg.io/tcgplayer/sv4-209	2024-12-31	tcgplayer
1619	sv4-210	https://prices.pokemontcg.io/tcgplayer/sv4-210	2024-12-31	tcgplayer
1620	sv4-211	https://prices.pokemontcg.io/tcgplayer/sv4-211	2024-12-31	tcgplayer
1621	sv4-212	https://prices.pokemontcg.io/tcgplayer/sv4-212	2024-12-31	tcgplayer
1622	sv4-219	https://prices.pokemontcg.io/tcgplayer/sv4-219	2024-12-31	tcgplayer
1623	sv4-223	https://prices.pokemontcg.io/tcgplayer/sv4-223	2024-12-31	tcgplayer
1624	sv4-224	https://prices.pokemontcg.io/tcgplayer/sv4-224	2024-12-31	tcgplayer
1625	sv4-195	https://prices.pokemontcg.io/tcgplayer/sv4-195	2024-12-31	tcgplayer
1626	sv4-198	https://prices.pokemontcg.io/tcgplayer/sv4-198	2024-12-31	tcgplayer
1627	sv4-199	https://prices.pokemontcg.io/tcgplayer/sv4-199	2024-12-31	tcgplayer
1628	sv4-202	https://prices.pokemontcg.io/tcgplayer/sv4-202	2024-12-31	tcgplayer
1629	sv4-206	https://prices.pokemontcg.io/tcgplayer/sv4-206	2024-12-31	tcgplayer
1630	sv4-207	https://prices.pokemontcg.io/tcgplayer/sv4-207	2024-12-31	tcgplayer
1631	sv4-208	https://prices.pokemontcg.io/tcgplayer/sv4-208	2024-12-31	tcgplayer
1632	sv4-214	https://prices.pokemontcg.io/tcgplayer/sv4-214	2024-12-31	tcgplayer
1633	sv4-215	https://prices.pokemontcg.io/tcgplayer/sv4-215	2024-12-31	tcgplayer
1634	sv4-217	https://prices.pokemontcg.io/tcgplayer/sv4-217	2024-12-31	tcgplayer
1635	sv4-221	https://prices.pokemontcg.io/tcgplayer/sv4-221	2024-12-31	tcgplayer
1636	sv4-222	https://prices.pokemontcg.io/tcgplayer/sv4-222	2024-12-31	tcgplayer
1637	sv4-229	https://prices.pokemontcg.io/tcgplayer/sv4-229	2024-12-31	tcgplayer
1638	sv4-231	https://prices.pokemontcg.io/tcgplayer/sv4-231	2024-12-31	tcgplayer
1639	sv4-233	https://prices.pokemontcg.io/tcgplayer/sv4-233	2024-12-31	tcgplayer
1640	sv4-237	https://prices.pokemontcg.io/tcgplayer/sv4-237	2024-12-31	tcgplayer
1641	sv4-234	https://prices.pokemontcg.io/tcgplayer/sv4-234	2024-12-31	tcgplayer
1642	sv4-235	https://prices.pokemontcg.io/tcgplayer/sv4-235	2024-12-31	tcgplayer
1643	sv4-236	https://prices.pokemontcg.io/tcgplayer/sv4-236	2024-12-31	tcgplayer
1644	sv4-238	https://prices.pokemontcg.io/tcgplayer/sv4-238	2024-12-31	tcgplayer
1645	sv4-239	https://prices.pokemontcg.io/tcgplayer/sv4-239	2024-12-31	tcgplayer
1646	sv4-240	https://prices.pokemontcg.io/tcgplayer/sv4-240	2024-12-31	tcgplayer
1647	sv4-241	https://prices.pokemontcg.io/tcgplayer/sv4-241	2024-12-31	tcgplayer
1648	sv4-242	https://prices.pokemontcg.io/tcgplayer/sv4-242	2024-12-31	tcgplayer
1649	sv4-247	https://prices.pokemontcg.io/tcgplayer/sv4-247	2024-12-31	tcgplayer
1650	sv4-249	https://prices.pokemontcg.io/tcgplayer/sv4-249	2024-12-31	tcgplayer
1651	sv4-250	https://prices.pokemontcg.io/tcgplayer/sv4-250	2024-12-31	tcgplayer
1652	sv4-248	https://prices.pokemontcg.io/tcgplayer/sv4-248	2024-12-31	tcgplayer
1653	sv4-243	https://prices.pokemontcg.io/tcgplayer/sv4-243	2024-12-31	tcgplayer
1654	sv4-245	https://prices.pokemontcg.io/tcgplayer/sv4-245	2024-12-31	tcgplayer
1655	sv4-246	https://prices.pokemontcg.io/tcgplayer/sv4-246	2024-12-31	tcgplayer
1656	sv4-251	https://prices.pokemontcg.io/tcgplayer/sv4-251	2024-12-31	tcgplayer
1657	sv4-1	https://prices.pokemontcg.io/cardmarket/sv4-1	2024-12-31	cardmarket
1658	sv4-2	https://prices.pokemontcg.io/cardmarket/sv4-2	2024-12-31	cardmarket
1659	sv4-4	https://prices.pokemontcg.io/cardmarket/sv4-4	2024-12-31	cardmarket
1660	sv4-5	https://prices.pokemontcg.io/cardmarket/sv4-5	2024-12-31	cardmarket
1661	sv4-3	https://prices.pokemontcg.io/cardmarket/sv4-3	2024-12-31	cardmarket
1662	sv4-6	https://prices.pokemontcg.io/cardmarket/sv4-6	2024-12-31	cardmarket
1663	sv4-7	https://prices.pokemontcg.io/cardmarket/sv4-7	2024-12-31	cardmarket
1664	sv4-8	https://prices.pokemontcg.io/cardmarket/sv4-8	2024-12-31	cardmarket
1665	sv4-10	https://prices.pokemontcg.io/cardmarket/sv4-10	2024-12-31	cardmarket
1666	sv4-9	https://prices.pokemontcg.io/cardmarket/sv4-9	2024-12-31	cardmarket
1667	sv4-14	https://prices.pokemontcg.io/cardmarket/sv4-14	2024-12-31	cardmarket
1668	sv4-11	https://prices.pokemontcg.io/cardmarket/sv4-11	2024-12-31	cardmarket
1669	sv4-24	https://prices.pokemontcg.io/cardmarket/sv4-24	2024-12-31	cardmarket
1670	sv4-26	https://prices.pokemontcg.io/cardmarket/sv4-26	2024-12-31	cardmarket
1671	sv4-27	https://prices.pokemontcg.io/cardmarket/sv4-27	2024-12-31	cardmarket
1672	sv4-35	https://prices.pokemontcg.io/cardmarket/sv4-35	2024-12-31	cardmarket
1673	sv4-12	https://prices.pokemontcg.io/cardmarket/sv4-12	2024-12-31	cardmarket
1674	sv4-13	https://prices.pokemontcg.io/cardmarket/sv4-13	2024-12-31	cardmarket
1675	sv4-17	https://prices.pokemontcg.io/cardmarket/sv4-17	2024-12-31	cardmarket
1676	sv4-21	https://prices.pokemontcg.io/cardmarket/sv4-21	2024-12-31	cardmarket
1677	sv4-22	https://prices.pokemontcg.io/cardmarket/sv4-22	2024-12-31	cardmarket
1678	sv4-31	https://prices.pokemontcg.io/cardmarket/sv4-31	2024-12-31	cardmarket
1679	sv4-32	https://prices.pokemontcg.io/cardmarket/sv4-32	2024-12-31	cardmarket
1680	sv4-16	https://prices.pokemontcg.io/cardmarket/sv4-16	2024-12-31	cardmarket
1681	sv4-20	https://prices.pokemontcg.io/cardmarket/sv4-20	2024-12-31	cardmarket
1682	sv4-25	https://prices.pokemontcg.io/cardmarket/sv4-25	2024-12-31	cardmarket
1683	sv4-28	https://prices.pokemontcg.io/cardmarket/sv4-28	2024-12-31	cardmarket
1684	sv4-30	https://prices.pokemontcg.io/cardmarket/sv4-30	2024-12-31	cardmarket
1685	sv4-33	https://prices.pokemontcg.io/cardmarket/sv4-33	2024-12-31	cardmarket
1686	sv4-15	https://prices.pokemontcg.io/cardmarket/sv4-15	2024-12-31	cardmarket
1687	sv4-18	https://prices.pokemontcg.io/cardmarket/sv4-18	2024-12-31	cardmarket
1688	sv4-19	https://prices.pokemontcg.io/cardmarket/sv4-19	2024-12-31	cardmarket
1689	sv4-23	https://prices.pokemontcg.io/cardmarket/sv4-23	2024-12-31	cardmarket
1690	sv4-29	https://prices.pokemontcg.io/cardmarket/sv4-29	2024-12-31	cardmarket
1691	sv4-34	https://prices.pokemontcg.io/cardmarket/sv4-34	2024-12-31	cardmarket
1692	sv4-36	https://prices.pokemontcg.io/cardmarket/sv4-36	2024-12-31	cardmarket
1693	sv4-38	https://prices.pokemontcg.io/cardmarket/sv4-38	2024-12-31	cardmarket
1694	sv4-39	https://prices.pokemontcg.io/cardmarket/sv4-39	2024-12-31	cardmarket
1695	sv4-57	https://prices.pokemontcg.io/cardmarket/sv4-57	2024-12-31	cardmarket
1696	sv4-60	https://prices.pokemontcg.io/cardmarket/sv4-60	2024-12-31	cardmarket
1697	sv4-62	https://prices.pokemontcg.io/cardmarket/sv4-62	2024-12-31	cardmarket
1698	sv4-65	https://prices.pokemontcg.io/cardmarket/sv4-65	2024-12-31	cardmarket
1699	sv4-67	https://prices.pokemontcg.io/cardmarket/sv4-67	2024-12-31	cardmarket
1700	sv4-68	https://prices.pokemontcg.io/cardmarket/sv4-68	2024-12-31	cardmarket
1701	sv4-70	https://prices.pokemontcg.io/cardmarket/sv4-70	2024-12-31	cardmarket
1702	sv4-73	https://prices.pokemontcg.io/cardmarket/sv4-73	2024-12-31	cardmarket
1703	sv4-42	https://prices.pokemontcg.io/cardmarket/sv4-42	2024-12-31	cardmarket
1704	sv4-44	https://prices.pokemontcg.io/cardmarket/sv4-44	2024-12-31	cardmarket
1705	sv4-47	https://prices.pokemontcg.io/cardmarket/sv4-47	2024-12-31	cardmarket
1706	sv4-54	https://prices.pokemontcg.io/cardmarket/sv4-54	2024-12-31	cardmarket
1707	sv4-56	https://prices.pokemontcg.io/cardmarket/sv4-56	2024-12-31	cardmarket
1708	sv4-40	https://prices.pokemontcg.io/cardmarket/sv4-40	2024-12-31	cardmarket
1709	sv4-45	https://prices.pokemontcg.io/cardmarket/sv4-45	2024-12-31	cardmarket
1710	sv4-48	https://prices.pokemontcg.io/cardmarket/sv4-48	2024-12-31	cardmarket
1711	sv4-51	https://prices.pokemontcg.io/cardmarket/sv4-51	2024-12-31	cardmarket
1712	sv4-52	https://prices.pokemontcg.io/cardmarket/sv4-52	2024-12-31	cardmarket
1713	sv4-59	https://prices.pokemontcg.io/cardmarket/sv4-59	2024-12-31	cardmarket
1714	sv4-61	https://prices.pokemontcg.io/cardmarket/sv4-61	2024-12-31	cardmarket
1715	sv4-63	https://prices.pokemontcg.io/cardmarket/sv4-63	2024-12-31	cardmarket
1716	sv4-64	https://prices.pokemontcg.io/cardmarket/sv4-64	2024-12-31	cardmarket
1717	sv4-66	https://prices.pokemontcg.io/cardmarket/sv4-66	2024-12-31	cardmarket
1718	sv4-69	https://prices.pokemontcg.io/cardmarket/sv4-69	2024-12-31	cardmarket
1719	sv4-72	https://prices.pokemontcg.io/cardmarket/sv4-72	2024-12-31	cardmarket
1720	sv4-37	https://prices.pokemontcg.io/cardmarket/sv4-37	2024-12-31	cardmarket
1721	sv4-41	https://prices.pokemontcg.io/cardmarket/sv4-41	2024-12-31	cardmarket
1722	sv4-43	https://prices.pokemontcg.io/cardmarket/sv4-43	2024-12-31	cardmarket
1723	sv4-46	https://prices.pokemontcg.io/cardmarket/sv4-46	2024-12-31	cardmarket
1724	sv4-49	https://prices.pokemontcg.io/cardmarket/sv4-49	2024-12-31	cardmarket
1725	sv4-50	https://prices.pokemontcg.io/cardmarket/sv4-50	2024-12-31	cardmarket
1726	sv4-53	https://prices.pokemontcg.io/cardmarket/sv4-53	2024-12-31	cardmarket
1727	sv4-55	https://prices.pokemontcg.io/cardmarket/sv4-55	2024-12-31	cardmarket
1728	sv4-58	https://prices.pokemontcg.io/cardmarket/sv4-58	2024-12-31	cardmarket
1729	sv4-71	https://prices.pokemontcg.io/cardmarket/sv4-71	2024-12-31	cardmarket
1730	sv4-75	https://prices.pokemontcg.io/cardmarket/sv4-75	2024-12-31	cardmarket
1731	sv4-77	https://prices.pokemontcg.io/cardmarket/sv4-77	2024-12-31	cardmarket
1732	sv4-84	https://prices.pokemontcg.io/cardmarket/sv4-84	2024-12-31	cardmarket
1733	sv4-85	https://prices.pokemontcg.io/cardmarket/sv4-85	2024-12-31	cardmarket
1734	sv4-74	https://prices.pokemontcg.io/cardmarket/sv4-74	2024-12-31	cardmarket
1735	sv4-76	https://prices.pokemontcg.io/cardmarket/sv4-76	2024-12-31	cardmarket
1736	sv4-78	https://prices.pokemontcg.io/cardmarket/sv4-78	2024-12-31	cardmarket
1737	sv4-79	https://prices.pokemontcg.io/cardmarket/sv4-79	2024-12-31	cardmarket
1738	sv4-80	https://prices.pokemontcg.io/cardmarket/sv4-80	2024-12-31	cardmarket
1739	sv4-83	https://prices.pokemontcg.io/cardmarket/sv4-83	2024-12-31	cardmarket
1740	sv4-81	https://prices.pokemontcg.io/cardmarket/sv4-81	2024-12-31	cardmarket
1741	sv4-82	https://prices.pokemontcg.io/cardmarket/sv4-82	2024-12-31	cardmarket
1742	sv4-86	https://prices.pokemontcg.io/cardmarket/sv4-86	2024-12-31	cardmarket
1743	sv4-99	https://prices.pokemontcg.io/cardmarket/sv4-99	2024-12-31	cardmarket
1744	sv4-106	https://prices.pokemontcg.io/cardmarket/sv4-106	2024-12-31	cardmarket
1745	sv4-110	https://prices.pokemontcg.io/cardmarket/sv4-110	2024-12-31	cardmarket
1746	sv4-116	https://prices.pokemontcg.io/cardmarket/sv4-116	2024-12-31	cardmarket
1747	sv4-88	https://prices.pokemontcg.io/cardmarket/sv4-88	2024-12-31	cardmarket
1748	sv4-87	https://prices.pokemontcg.io/cardmarket/sv4-87	2024-12-31	cardmarket
1749	sv4-92	https://prices.pokemontcg.io/cardmarket/sv4-92	2024-12-31	cardmarket
1750	sv4-94	https://prices.pokemontcg.io/cardmarket/sv4-94	2024-12-31	cardmarket
1751	sv4-96	https://prices.pokemontcg.io/cardmarket/sv4-96	2024-12-31	cardmarket
1752	sv4-100	https://prices.pokemontcg.io/cardmarket/sv4-100	2024-12-31	cardmarket
1753	sv4-105	https://prices.pokemontcg.io/cardmarket/sv4-105	2024-12-31	cardmarket
1754	sv4-108	https://prices.pokemontcg.io/cardmarket/sv4-108	2024-12-31	cardmarket
1755	sv4-111	https://prices.pokemontcg.io/cardmarket/sv4-111	2024-12-31	cardmarket
1756	sv4-112	https://prices.pokemontcg.io/cardmarket/sv4-112	2024-12-31	cardmarket
1757	sv4-113	https://prices.pokemontcg.io/cardmarket/sv4-113	2024-12-31	cardmarket
1758	sv4-118	https://prices.pokemontcg.io/cardmarket/sv4-118	2024-12-31	cardmarket
1759	sv4-120	https://prices.pokemontcg.io/cardmarket/sv4-120	2024-12-31	cardmarket
1760	sv4-89	https://prices.pokemontcg.io/cardmarket/sv4-89	2024-12-31	cardmarket
1761	sv4-90	https://prices.pokemontcg.io/cardmarket/sv4-90	2024-12-31	cardmarket
1762	sv4-114	https://prices.pokemontcg.io/cardmarket/sv4-114	2024-12-31	cardmarket
1763	sv4-115	https://prices.pokemontcg.io/cardmarket/sv4-115	2024-12-31	cardmarket
1764	sv4-121	https://prices.pokemontcg.io/cardmarket/sv4-121	2024-12-31	cardmarket
1765	sv4-91	https://prices.pokemontcg.io/cardmarket/sv4-91	2024-12-31	cardmarket
1766	sv4-93	https://prices.pokemontcg.io/cardmarket/sv4-93	2024-12-31	cardmarket
1767	sv4-95	https://prices.pokemontcg.io/cardmarket/sv4-95	2024-12-31	cardmarket
1768	sv4-97	https://prices.pokemontcg.io/cardmarket/sv4-97	2024-12-31	cardmarket
1769	sv4-98	https://prices.pokemontcg.io/cardmarket/sv4-98	2024-12-31	cardmarket
1770	sv4-101	https://prices.pokemontcg.io/cardmarket/sv4-101	2024-12-31	cardmarket
1771	sv4-102	https://prices.pokemontcg.io/cardmarket/sv4-102	2024-12-31	cardmarket
1772	sv4-103	https://prices.pokemontcg.io/cardmarket/sv4-103	2024-12-31	cardmarket
1773	sv4-104	https://prices.pokemontcg.io/cardmarket/sv4-104	2024-12-31	cardmarket
1774	sv4-107	https://prices.pokemontcg.io/cardmarket/sv4-107	2024-12-31	cardmarket
1775	sv4-109	https://prices.pokemontcg.io/cardmarket/sv4-109	2024-12-31	cardmarket
1776	sv4-117	https://prices.pokemontcg.io/cardmarket/sv4-117	2024-12-31	cardmarket
1777	sv4-119	https://prices.pokemontcg.io/cardmarket/sv4-119	2024-12-31	cardmarket
1778	sv4-122	https://prices.pokemontcg.io/cardmarket/sv4-122	2024-12-31	cardmarket
1779	sv4-123	https://prices.pokemontcg.io/cardmarket/sv4-123	2024-12-31	cardmarket
1780	sv4-124	https://prices.pokemontcg.io/cardmarket/sv4-124	2024-12-31	cardmarket
1781	sv4-125	https://prices.pokemontcg.io/cardmarket/sv4-125	2024-12-31	cardmarket
1782	sv4-126	https://prices.pokemontcg.io/cardmarket/sv4-126	2024-12-31	cardmarket
1783	sv4-128	https://prices.pokemontcg.io/cardmarket/sv4-128	2024-12-31	cardmarket
1784	sv4-127	https://prices.pokemontcg.io/cardmarket/sv4-127	2024-12-31	cardmarket
1785	sv4-130	https://prices.pokemontcg.io/cardmarket/sv4-130	2024-12-31	cardmarket
1786	sv4-131	https://prices.pokemontcg.io/cardmarket/sv4-131	2024-12-31	cardmarket
1787	sv4-129	https://prices.pokemontcg.io/cardmarket/sv4-129	2024-12-31	cardmarket
1788	sv4-132	https://prices.pokemontcg.io/cardmarket/sv4-132	2024-12-31	cardmarket
1789	sv4-133	https://prices.pokemontcg.io/cardmarket/sv4-133	2024-12-31	cardmarket
1790	sv4-135	https://prices.pokemontcg.io/cardmarket/sv4-135	2024-12-31	cardmarket
1791	sv4-136	https://prices.pokemontcg.io/cardmarket/sv4-136	2024-12-31	cardmarket
1792	sv4-137	https://prices.pokemontcg.io/cardmarket/sv4-137	2024-12-31	cardmarket
1793	sv4-139	https://prices.pokemontcg.io/cardmarket/sv4-139	2024-12-31	cardmarket
1794	sv4-142	https://prices.pokemontcg.io/cardmarket/sv4-142	2024-12-31	cardmarket
1795	sv4-143	https://prices.pokemontcg.io/cardmarket/sv4-143	2024-12-31	cardmarket
1796	sv4-144	https://prices.pokemontcg.io/cardmarket/sv4-144	2024-12-31	cardmarket
1797	sv4-138	https://prices.pokemontcg.io/cardmarket/sv4-138	2024-12-31	cardmarket
1798	sv4-140	https://prices.pokemontcg.io/cardmarket/sv4-140	2024-12-31	cardmarket
1799	sv4-145	https://prices.pokemontcg.io/cardmarket/sv4-145	2024-12-31	cardmarket
1800	sv4-134	https://prices.pokemontcg.io/cardmarket/sv4-134	2024-12-31	cardmarket
1801	sv4-141	https://prices.pokemontcg.io/cardmarket/sv4-141	2024-12-31	cardmarket
1802	sv4-146	https://prices.pokemontcg.io/cardmarket/sv4-146	2024-12-31	cardmarket
1803	sv4-147	https://prices.pokemontcg.io/cardmarket/sv4-147	2024-12-31	cardmarket
1804	sv4-148	https://prices.pokemontcg.io/cardmarket/sv4-148	2024-12-31	cardmarket
1805	sv4-149	https://prices.pokemontcg.io/cardmarket/sv4-149	2024-12-31	cardmarket
1806	sv4-152	https://prices.pokemontcg.io/cardmarket/sv4-152	2024-12-31	cardmarket
1807	sv4-159	https://prices.pokemontcg.io/cardmarket/sv4-159	2024-12-31	cardmarket
1808	sv4-166	https://prices.pokemontcg.io/cardmarket/sv4-166	2024-12-31	cardmarket
1809	sv4-176	https://prices.pokemontcg.io/cardmarket/sv4-176	2024-12-31	cardmarket
1810	sv4-177	https://prices.pokemontcg.io/cardmarket/sv4-177	2024-12-31	cardmarket
1811	sv4-151	https://prices.pokemontcg.io/cardmarket/sv4-151	2024-12-31	cardmarket
1812	sv4-167	https://prices.pokemontcg.io/cardmarket/sv4-167	2024-12-31	cardmarket
1813	sv4-170	https://prices.pokemontcg.io/cardmarket/sv4-170	2024-12-31	cardmarket
1814	sv4-174	https://prices.pokemontcg.io/cardmarket/sv4-174	2024-12-31	cardmarket
1815	sv4-175	https://prices.pokemontcg.io/cardmarket/sv4-175	2024-12-31	cardmarket
1816	sv4-179	https://prices.pokemontcg.io/cardmarket/sv4-179	2024-12-31	cardmarket
1817	sv4-150	https://prices.pokemontcg.io/cardmarket/sv4-150	2024-12-31	cardmarket
1818	sv4-153	https://prices.pokemontcg.io/cardmarket/sv4-153	2024-12-31	cardmarket
1819	sv4-155	https://prices.pokemontcg.io/cardmarket/sv4-155	2024-12-31	cardmarket
1820	sv4-156	https://prices.pokemontcg.io/cardmarket/sv4-156	2024-12-31	cardmarket
1821	sv4-160	https://prices.pokemontcg.io/cardmarket/sv4-160	2024-12-31	cardmarket
1822	sv4-162	https://prices.pokemontcg.io/cardmarket/sv4-162	2024-12-31	cardmarket
1823	sv4-163	https://prices.pokemontcg.io/cardmarket/sv4-163	2024-12-31	cardmarket
1824	sv4-172	https://prices.pokemontcg.io/cardmarket/sv4-172	2024-12-31	cardmarket
1825	sv4-154	https://prices.pokemontcg.io/cardmarket/sv4-154	2024-12-31	cardmarket
1826	sv4-157	https://prices.pokemontcg.io/cardmarket/sv4-157	2024-12-31	cardmarket
1827	sv4-158	https://prices.pokemontcg.io/cardmarket/sv4-158	2024-12-31	cardmarket
1828	sv4-161	https://prices.pokemontcg.io/cardmarket/sv4-161	2024-12-31	cardmarket
1829	sv4-164	https://prices.pokemontcg.io/cardmarket/sv4-164	2024-12-31	cardmarket
1830	sv4-165	https://prices.pokemontcg.io/cardmarket/sv4-165	2024-12-31	cardmarket
1831	sv4-168	https://prices.pokemontcg.io/cardmarket/sv4-168	2024-12-31	cardmarket
1832	sv4-169	https://prices.pokemontcg.io/cardmarket/sv4-169	2024-12-31	cardmarket
1833	sv4-171	https://prices.pokemontcg.io/cardmarket/sv4-171	2024-12-31	cardmarket
1834	sv4-173	https://prices.pokemontcg.io/cardmarket/sv4-173	2024-12-31	cardmarket
1835	sv4-178	https://prices.pokemontcg.io/cardmarket/sv4-178	2024-12-31	cardmarket
1836	sv4-182	https://prices.pokemontcg.io/cardmarket/sv4-182	2024-12-31	cardmarket
1837	sv4-183	https://prices.pokemontcg.io/cardmarket/sv4-183	2024-12-31	cardmarket
1838	sv4-184	https://prices.pokemontcg.io/cardmarket/sv4-184	2024-12-31	cardmarket
1839	sv4-180	https://prices.pokemontcg.io/cardmarket/sv4-180	2024-12-31	cardmarket
1840	sv4-181	https://prices.pokemontcg.io/cardmarket/sv4-181	2024-12-31	cardmarket
1841	sv4-186	https://prices.pokemontcg.io/cardmarket/sv4-186	2024-12-31	cardmarket
1842	sv4-190	https://prices.pokemontcg.io/cardmarket/sv4-190	2024-12-31	cardmarket
1843	sv4-185	https://prices.pokemontcg.io/cardmarket/sv4-185	2024-12-31	cardmarket
1844	sv4-187	https://prices.pokemontcg.io/cardmarket/sv4-187	2024-12-31	cardmarket
1845	sv4-189	https://prices.pokemontcg.io/cardmarket/sv4-189	2024-12-31	cardmarket
1846	sv4-191	https://prices.pokemontcg.io/cardmarket/sv4-191	2024-12-31	cardmarket
1847	sv4-193	https://prices.pokemontcg.io/cardmarket/sv4-193	2024-12-31	cardmarket
1848	sv4-188	https://prices.pokemontcg.io/cardmarket/sv4-188	2024-12-31	cardmarket
1849	sv4-194	https://prices.pokemontcg.io/cardmarket/sv4-194	2024-12-31	cardmarket
1850	sv4-192	https://prices.pokemontcg.io/cardmarket/sv4-192	2024-12-31	cardmarket
1851	sv4-197	https://prices.pokemontcg.io/cardmarket/sv4-197	2024-12-31	cardmarket
1852	sv4-203	https://prices.pokemontcg.io/cardmarket/sv4-203	2024-12-31	cardmarket
1853	sv4-213	https://prices.pokemontcg.io/cardmarket/sv4-213	2024-12-31	cardmarket
1854	sv4-218	https://prices.pokemontcg.io/cardmarket/sv4-218	2024-12-31	cardmarket
1855	sv4-216	https://prices.pokemontcg.io/cardmarket/sv4-216	2024-12-31	cardmarket
1856	sv4-226	https://prices.pokemontcg.io/cardmarket/sv4-226	2024-12-31	cardmarket
1857	sv4-220	https://prices.pokemontcg.io/cardmarket/sv4-220	2024-12-31	cardmarket
1858	sv4-227	https://prices.pokemontcg.io/cardmarket/sv4-227	2024-12-31	cardmarket
1859	sv4-225	https://prices.pokemontcg.io/cardmarket/sv4-225	2024-12-31	cardmarket
1860	sv4-228	https://prices.pokemontcg.io/cardmarket/sv4-228	2024-12-31	cardmarket
1861	sv4-230	https://prices.pokemontcg.io/cardmarket/sv4-230	2024-12-31	cardmarket
1862	sv4-232	https://prices.pokemontcg.io/cardmarket/sv4-232	2024-12-31	cardmarket
1863	sv4-196	https://prices.pokemontcg.io/cardmarket/sv4-196	2024-12-31	cardmarket
1864	sv4-200	https://prices.pokemontcg.io/cardmarket/sv4-200	2024-12-31	cardmarket
1865	sv4-201	https://prices.pokemontcg.io/cardmarket/sv4-201	2024-12-31	cardmarket
1866	sv4-204	https://prices.pokemontcg.io/cardmarket/sv4-204	2024-12-31	cardmarket
1867	sv4-205	https://prices.pokemontcg.io/cardmarket/sv4-205	2024-12-31	cardmarket
1868	sv4-209	https://prices.pokemontcg.io/cardmarket/sv4-209	2024-12-31	cardmarket
1869	sv4-210	https://prices.pokemontcg.io/cardmarket/sv4-210	2024-12-31	cardmarket
1870	sv4-211	https://prices.pokemontcg.io/cardmarket/sv4-211	2024-12-31	cardmarket
1871	sv4-212	https://prices.pokemontcg.io/cardmarket/sv4-212	2024-12-31	cardmarket
1872	sv4-219	https://prices.pokemontcg.io/cardmarket/sv4-219	2024-12-31	cardmarket
1873	sv4-223	https://prices.pokemontcg.io/cardmarket/sv4-223	2024-12-31	cardmarket
1874	sv4-224	https://prices.pokemontcg.io/cardmarket/sv4-224	2024-12-31	cardmarket
1875	sv4-195	https://prices.pokemontcg.io/cardmarket/sv4-195	2024-12-31	cardmarket
1876	sv4-198	https://prices.pokemontcg.io/cardmarket/sv4-198	2024-12-31	cardmarket
1877	sv4-199	https://prices.pokemontcg.io/cardmarket/sv4-199	2024-12-31	cardmarket
1878	sv4-202	https://prices.pokemontcg.io/cardmarket/sv4-202	2024-12-31	cardmarket
1879	sv4-206	https://prices.pokemontcg.io/cardmarket/sv4-206	2024-12-31	cardmarket
1880	sv4-207	https://prices.pokemontcg.io/cardmarket/sv4-207	2024-12-31	cardmarket
1881	sv4-208	https://prices.pokemontcg.io/cardmarket/sv4-208	2024-12-31	cardmarket
1882	sv4-214	https://prices.pokemontcg.io/cardmarket/sv4-214	2024-12-31	cardmarket
1883	sv4-215	https://prices.pokemontcg.io/cardmarket/sv4-215	2024-12-31	cardmarket
1884	sv4-217	https://prices.pokemontcg.io/cardmarket/sv4-217	2024-12-31	cardmarket
1885	sv4-221	https://prices.pokemontcg.io/cardmarket/sv4-221	2024-12-31	cardmarket
1886	sv4-222	https://prices.pokemontcg.io/cardmarket/sv4-222	2024-12-31	cardmarket
1887	sv4-229	https://prices.pokemontcg.io/cardmarket/sv4-229	2024-12-31	cardmarket
1888	sv4-231	https://prices.pokemontcg.io/cardmarket/sv4-231	2024-12-31	cardmarket
1889	sv4-233	https://prices.pokemontcg.io/cardmarket/sv4-233	2024-12-31	cardmarket
1890	sv4-237	https://prices.pokemontcg.io/cardmarket/sv4-237	2024-12-31	cardmarket
1891	sv4-234	https://prices.pokemontcg.io/cardmarket/sv4-234	2024-12-31	cardmarket
1892	sv4-235	https://prices.pokemontcg.io/cardmarket/sv4-235	2024-12-31	cardmarket
1893	sv4-236	https://prices.pokemontcg.io/cardmarket/sv4-236	2024-12-31	cardmarket
1894	sv4-238	https://prices.pokemontcg.io/cardmarket/sv4-238	2024-12-31	cardmarket
1895	sv4-239	https://prices.pokemontcg.io/cardmarket/sv4-239	2024-12-31	cardmarket
1896	sv4-240	https://prices.pokemontcg.io/cardmarket/sv4-240	2024-12-31	cardmarket
1897	sv4-241	https://prices.pokemontcg.io/cardmarket/sv4-241	2024-12-31	cardmarket
1898	sv4-242	https://prices.pokemontcg.io/cardmarket/sv4-242	2024-12-31	cardmarket
1899	sv4-247	https://prices.pokemontcg.io/cardmarket/sv4-247	2024-12-31	cardmarket
1900	sv4-249	https://prices.pokemontcg.io/cardmarket/sv4-249	2024-12-31	cardmarket
1901	sv4-250	https://prices.pokemontcg.io/cardmarket/sv4-250	2024-12-31	cardmarket
1902	sv4-248	https://prices.pokemontcg.io/cardmarket/sv4-248	2024-12-31	cardmarket
1903	sv4-243	https://prices.pokemontcg.io/cardmarket/sv4-243	2024-12-31	cardmarket
1904	sv4-245	https://prices.pokemontcg.io/cardmarket/sv4-245	2024-12-31	cardmarket
1905	sv4-246	https://prices.pokemontcg.io/cardmarket/sv4-246	2024-12-31	cardmarket
1906	sv4-251	https://prices.pokemontcg.io/cardmarket/sv4-251	2024-12-31	cardmarket
1907	sv4pt5-1	https://prices.pokemontcg.io/tcgplayer/sv4pt5-1	2024-12-31	tcgplayer
1908	sv4pt5-2	https://prices.pokemontcg.io/tcgplayer/sv4pt5-2	2024-12-31	tcgplayer
1909	sv4pt5-3	https://prices.pokemontcg.io/tcgplayer/sv4pt5-3	2024-12-31	tcgplayer
1910	sv4pt5-4	https://prices.pokemontcg.io/tcgplayer/sv4pt5-4	2024-12-31	tcgplayer
1911	sv4pt5-5	https://prices.pokemontcg.io/tcgplayer/sv4pt5-5	2024-12-31	tcgplayer
1912	sv4pt5-6	https://prices.pokemontcg.io/tcgplayer/sv4pt5-6	2024-12-31	tcgplayer
1913	sv4pt5-7	https://prices.pokemontcg.io/tcgplayer/sv4pt5-7	2024-12-31	tcgplayer
1914	sv4pt5-8	https://prices.pokemontcg.io/tcgplayer/sv4pt5-8	2024-12-31	tcgplayer
1915	sv4pt5-9	https://prices.pokemontcg.io/tcgplayer/sv4pt5-9	2024-12-31	tcgplayer
1916	sv4pt5-10	https://prices.pokemontcg.io/tcgplayer/sv4pt5-10	2024-12-31	tcgplayer
1917	sv4pt5-11	https://prices.pokemontcg.io/tcgplayer/sv4pt5-11	2024-12-31	tcgplayer
1918	sv4pt5-12	https://prices.pokemontcg.io/tcgplayer/sv4pt5-12	2024-12-31	tcgplayer
1919	sv4pt5-13	https://prices.pokemontcg.io/tcgplayer/sv4pt5-13	2024-12-31	tcgplayer
1920	sv4pt5-14	https://prices.pokemontcg.io/tcgplayer/sv4pt5-14	2024-12-31	tcgplayer
1921	sv4pt5-15	https://prices.pokemontcg.io/tcgplayer/sv4pt5-15	2024-12-31	tcgplayer
1922	sv4pt5-16	https://prices.pokemontcg.io/tcgplayer/sv4pt5-16	2024-12-31	tcgplayer
1923	sv4pt5-17	https://prices.pokemontcg.io/tcgplayer/sv4pt5-17	2024-12-31	tcgplayer
1924	sv4pt5-18	https://prices.pokemontcg.io/tcgplayer/sv4pt5-18	2024-12-31	tcgplayer
1925	sv4pt5-19	https://prices.pokemontcg.io/tcgplayer/sv4pt5-19	2024-12-31	tcgplayer
1926	sv4pt5-20	https://prices.pokemontcg.io/tcgplayer/sv4pt5-20	2024-12-31	tcgplayer
1927	sv4pt5-21	https://prices.pokemontcg.io/tcgplayer/sv4pt5-21	2024-12-31	tcgplayer
1928	sv4pt5-22	https://prices.pokemontcg.io/tcgplayer/sv4pt5-22	2024-12-31	tcgplayer
1929	sv4pt5-23	https://prices.pokemontcg.io/tcgplayer/sv4pt5-23	2024-12-31	tcgplayer
1930	sv4pt5-24	https://prices.pokemontcg.io/tcgplayer/sv4pt5-24	2024-12-31	tcgplayer
1931	sv4pt5-25	https://prices.pokemontcg.io/tcgplayer/sv4pt5-25	2024-12-31	tcgplayer
1932	sv4pt5-26	https://prices.pokemontcg.io/tcgplayer/sv4pt5-26	2024-12-31	tcgplayer
1933	sv4pt5-27	https://prices.pokemontcg.io/tcgplayer/sv4pt5-27	2024-12-31	tcgplayer
1934	sv4pt5-28	https://prices.pokemontcg.io/tcgplayer/sv4pt5-28	2024-12-31	tcgplayer
1935	sv4pt5-29	https://prices.pokemontcg.io/tcgplayer/sv4pt5-29	2024-12-31	tcgplayer
1936	sv4pt5-30	https://prices.pokemontcg.io/tcgplayer/sv4pt5-30	2024-12-31	tcgplayer
1937	sv4pt5-31	https://prices.pokemontcg.io/tcgplayer/sv4pt5-31	2024-12-31	tcgplayer
1938	sv4pt5-32	https://prices.pokemontcg.io/tcgplayer/sv4pt5-32	2024-12-31	tcgplayer
1939	sv4pt5-33	https://prices.pokemontcg.io/tcgplayer/sv4pt5-33	2024-12-31	tcgplayer
1940	sv4pt5-34	https://prices.pokemontcg.io/tcgplayer/sv4pt5-34	2024-12-31	tcgplayer
1941	sv4pt5-35	https://prices.pokemontcg.io/tcgplayer/sv4pt5-35	2024-12-31	tcgplayer
1942	sv4pt5-36	https://prices.pokemontcg.io/tcgplayer/sv4pt5-36	2024-12-31	tcgplayer
1943	sv4pt5-37	https://prices.pokemontcg.io/tcgplayer/sv4pt5-37	2024-12-31	tcgplayer
1944	sv4pt5-38	https://prices.pokemontcg.io/tcgplayer/sv4pt5-38	2024-12-31	tcgplayer
1945	sv4pt5-39	https://prices.pokemontcg.io/tcgplayer/sv4pt5-39	2024-12-31	tcgplayer
1946	sv4pt5-40	https://prices.pokemontcg.io/tcgplayer/sv4pt5-40	2024-12-31	tcgplayer
1947	sv4pt5-41	https://prices.pokemontcg.io/tcgplayer/sv4pt5-41	2024-12-31	tcgplayer
1948	sv4pt5-42	https://prices.pokemontcg.io/tcgplayer/sv4pt5-42	2024-12-31	tcgplayer
1949	sv4pt5-43	https://prices.pokemontcg.io/tcgplayer/sv4pt5-43	2024-12-31	tcgplayer
1950	sv4pt5-44	https://prices.pokemontcg.io/tcgplayer/sv4pt5-44	2024-12-31	tcgplayer
1951	sv4pt5-45	https://prices.pokemontcg.io/tcgplayer/sv4pt5-45	2024-12-31	tcgplayer
1952	sv4pt5-46	https://prices.pokemontcg.io/tcgplayer/sv4pt5-46	2024-12-31	tcgplayer
1953	sv4pt5-47	https://prices.pokemontcg.io/tcgplayer/sv4pt5-47	2024-12-31	tcgplayer
1954	sv4pt5-48	https://prices.pokemontcg.io/tcgplayer/sv4pt5-48	2024-12-31	tcgplayer
1955	sv4pt5-49	https://prices.pokemontcg.io/tcgplayer/sv4pt5-49	2024-12-31	tcgplayer
1956	sv4pt5-50	https://prices.pokemontcg.io/tcgplayer/sv4pt5-50	2024-12-31	tcgplayer
1957	sv4pt5-51	https://prices.pokemontcg.io/tcgplayer/sv4pt5-51	2024-12-31	tcgplayer
1958	sv4pt5-52	https://prices.pokemontcg.io/tcgplayer/sv4pt5-52	2024-12-31	tcgplayer
1959	sv4pt5-53	https://prices.pokemontcg.io/tcgplayer/sv4pt5-53	2024-12-31	tcgplayer
1960	sv4pt5-54	https://prices.pokemontcg.io/tcgplayer/sv4pt5-54	2024-12-31	tcgplayer
1961	sv4pt5-55	https://prices.pokemontcg.io/tcgplayer/sv4pt5-55	2024-12-31	tcgplayer
1962	sv4pt5-56	https://prices.pokemontcg.io/tcgplayer/sv4pt5-56	2024-12-31	tcgplayer
1963	sv4pt5-57	https://prices.pokemontcg.io/tcgplayer/sv4pt5-57	2024-12-31	tcgplayer
1964	sv4pt5-58	https://prices.pokemontcg.io/tcgplayer/sv4pt5-58	2024-12-31	tcgplayer
1965	sv4pt5-59	https://prices.pokemontcg.io/tcgplayer/sv4pt5-59	2024-12-31	tcgplayer
1966	sv4pt5-60	https://prices.pokemontcg.io/tcgplayer/sv4pt5-60	2024-12-31	tcgplayer
1967	sv4pt5-61	https://prices.pokemontcg.io/tcgplayer/sv4pt5-61	2024-12-31	tcgplayer
1968	sv4pt5-62	https://prices.pokemontcg.io/tcgplayer/sv4pt5-62	2024-12-31	tcgplayer
1969	sv4pt5-63	https://prices.pokemontcg.io/tcgplayer/sv4pt5-63	2024-12-31	tcgplayer
1970	sv4pt5-64	https://prices.pokemontcg.io/tcgplayer/sv4pt5-64	2024-12-31	tcgplayer
1971	sv4pt5-65	https://prices.pokemontcg.io/tcgplayer/sv4pt5-65	2024-12-31	tcgplayer
1972	sv4pt5-66	https://prices.pokemontcg.io/tcgplayer/sv4pt5-66	2024-12-31	tcgplayer
1973	sv4pt5-67	https://prices.pokemontcg.io/tcgplayer/sv4pt5-67	2024-12-31	tcgplayer
1974	sv4pt5-68	https://prices.pokemontcg.io/tcgplayer/sv4pt5-68	2024-12-31	tcgplayer
1975	sv4pt5-69	https://prices.pokemontcg.io/tcgplayer/sv4pt5-69	2024-12-31	tcgplayer
1976	sv4pt5-70	https://prices.pokemontcg.io/tcgplayer/sv4pt5-70	2024-12-31	tcgplayer
1977	sv4pt5-71	https://prices.pokemontcg.io/tcgplayer/sv4pt5-71	2024-12-31	tcgplayer
1978	sv4pt5-72	https://prices.pokemontcg.io/tcgplayer/sv4pt5-72	2024-12-31	tcgplayer
1979	sv4pt5-73	https://prices.pokemontcg.io/tcgplayer/sv4pt5-73	2024-12-31	tcgplayer
1980	sv4pt5-74	https://prices.pokemontcg.io/tcgplayer/sv4pt5-74	2024-12-31	tcgplayer
1981	sv4pt5-75	https://prices.pokemontcg.io/tcgplayer/sv4pt5-75	2024-12-31	tcgplayer
1982	sv4pt5-76	https://prices.pokemontcg.io/tcgplayer/sv4pt5-76	2024-12-31	tcgplayer
1983	sv4pt5-77	https://prices.pokemontcg.io/tcgplayer/sv4pt5-77	2024-12-31	tcgplayer
1984	sv4pt5-78	https://prices.pokemontcg.io/tcgplayer/sv4pt5-78	2024-12-31	tcgplayer
1985	sv4pt5-79	https://prices.pokemontcg.io/tcgplayer/sv4pt5-79	2024-12-31	tcgplayer
1986	sv4pt5-80	https://prices.pokemontcg.io/tcgplayer/sv4pt5-80	2024-12-31	tcgplayer
1987	sv4pt5-81	https://prices.pokemontcg.io/tcgplayer/sv4pt5-81	2024-12-31	tcgplayer
1988	sv4pt5-82	https://prices.pokemontcg.io/tcgplayer/sv4pt5-82	2024-12-31	tcgplayer
1989	sv4pt5-83	https://prices.pokemontcg.io/tcgplayer/sv4pt5-83	2024-12-31	tcgplayer
1990	sv4pt5-84	https://prices.pokemontcg.io/tcgplayer/sv4pt5-84	2024-12-31	tcgplayer
1991	sv4pt5-85	https://prices.pokemontcg.io/tcgplayer/sv4pt5-85	2024-12-31	tcgplayer
1992	sv4pt5-86	https://prices.pokemontcg.io/tcgplayer/sv4pt5-86	2024-12-31	tcgplayer
1993	sv4pt5-87	https://prices.pokemontcg.io/tcgplayer/sv4pt5-87	2024-12-31	tcgplayer
1994	sv4pt5-88	https://prices.pokemontcg.io/tcgplayer/sv4pt5-88	2024-12-31	tcgplayer
1995	sv4pt5-89	https://prices.pokemontcg.io/tcgplayer/sv4pt5-89	2024-12-31	tcgplayer
1996	sv4pt5-90	https://prices.pokemontcg.io/tcgplayer/sv4pt5-90	2024-12-31	tcgplayer
1997	sv4pt5-91	https://prices.pokemontcg.io/tcgplayer/sv4pt5-91	2024-12-31	tcgplayer
1998	sv4pt5-92	https://prices.pokemontcg.io/tcgplayer/sv4pt5-92	2024-12-31	tcgplayer
1999	sv4pt5-93	https://prices.pokemontcg.io/tcgplayer/sv4pt5-93	2024-12-31	tcgplayer
2000	sv4pt5-94	https://prices.pokemontcg.io/tcgplayer/sv4pt5-94	2024-12-31	tcgplayer
2001	sv4pt5-95	https://prices.pokemontcg.io/tcgplayer/sv4pt5-95	2024-12-31	tcgplayer
2002	sv4pt5-96	https://prices.pokemontcg.io/tcgplayer/sv4pt5-96	2024-12-31	tcgplayer
2003	sv4pt5-97	https://prices.pokemontcg.io/tcgplayer/sv4pt5-97	2024-12-31	tcgplayer
2004	sv4pt5-98	https://prices.pokemontcg.io/tcgplayer/sv4pt5-98	2024-12-31	tcgplayer
2005	sv4pt5-99	https://prices.pokemontcg.io/tcgplayer/sv4pt5-99	2024-12-31	tcgplayer
2006	sv4pt5-100	https://prices.pokemontcg.io/tcgplayer/sv4pt5-100	2024-12-31	tcgplayer
2007	sv4pt5-101	https://prices.pokemontcg.io/tcgplayer/sv4pt5-101	2024-12-31	tcgplayer
2008	sv4pt5-102	https://prices.pokemontcg.io/tcgplayer/sv4pt5-102	2024-12-31	tcgplayer
2009	sv4pt5-103	https://prices.pokemontcg.io/tcgplayer/sv4pt5-103	2024-12-31	tcgplayer
2010	sv4pt5-104	https://prices.pokemontcg.io/tcgplayer/sv4pt5-104	2024-12-31	tcgplayer
2011	sv4pt5-105	https://prices.pokemontcg.io/tcgplayer/sv4pt5-105	2024-12-31	tcgplayer
2012	sv4pt5-106	https://prices.pokemontcg.io/tcgplayer/sv4pt5-106	2024-12-31	tcgplayer
2013	sv4pt5-107	https://prices.pokemontcg.io/tcgplayer/sv4pt5-107	2024-12-31	tcgplayer
2014	sv4pt5-108	https://prices.pokemontcg.io/tcgplayer/sv4pt5-108	2024-12-31	tcgplayer
2015	sv4pt5-109	https://prices.pokemontcg.io/tcgplayer/sv4pt5-109	2024-12-31	tcgplayer
2016	sv4pt5-110	https://prices.pokemontcg.io/tcgplayer/sv4pt5-110	2024-12-31	tcgplayer
2017	sv4pt5-111	https://prices.pokemontcg.io/tcgplayer/sv4pt5-111	2024-12-31	tcgplayer
2018	sv4pt5-112	https://prices.pokemontcg.io/tcgplayer/sv4pt5-112	2024-12-31	tcgplayer
2019	sv4pt5-113	https://prices.pokemontcg.io/tcgplayer/sv4pt5-113	2024-12-31	tcgplayer
2020	sv4pt5-114	https://prices.pokemontcg.io/tcgplayer/sv4pt5-114	2024-12-31	tcgplayer
2021	sv4pt5-115	https://prices.pokemontcg.io/tcgplayer/sv4pt5-115	2024-12-31	tcgplayer
2022	sv4pt5-116	https://prices.pokemontcg.io/tcgplayer/sv4pt5-116	2024-12-31	tcgplayer
2023	sv4pt5-117	https://prices.pokemontcg.io/tcgplayer/sv4pt5-117	2024-12-31	tcgplayer
2024	sv4pt5-118	https://prices.pokemontcg.io/tcgplayer/sv4pt5-118	2024-12-31	tcgplayer
2025	sv4pt5-119	https://prices.pokemontcg.io/tcgplayer/sv4pt5-119	2024-12-31	tcgplayer
2026	sv4pt5-120	https://prices.pokemontcg.io/tcgplayer/sv4pt5-120	2024-12-31	tcgplayer
2027	sv4pt5-121	https://prices.pokemontcg.io/tcgplayer/sv4pt5-121	2024-12-31	tcgplayer
2028	sv4pt5-122	https://prices.pokemontcg.io/tcgplayer/sv4pt5-122	2024-12-31	tcgplayer
2029	sv4pt5-123	https://prices.pokemontcg.io/tcgplayer/sv4pt5-123	2024-12-31	tcgplayer
2030	sv4pt5-124	https://prices.pokemontcg.io/tcgplayer/sv4pt5-124	2024-12-31	tcgplayer
2031	sv4pt5-125	https://prices.pokemontcg.io/tcgplayer/sv4pt5-125	2024-12-31	tcgplayer
2032	sv4pt5-126	https://prices.pokemontcg.io/tcgplayer/sv4pt5-126	2024-12-31	tcgplayer
2033	sv4pt5-127	https://prices.pokemontcg.io/tcgplayer/sv4pt5-127	2024-12-31	tcgplayer
2034	sv4pt5-129	https://prices.pokemontcg.io/tcgplayer/sv4pt5-129	2024-12-31	tcgplayer
2035	sv4pt5-130	https://prices.pokemontcg.io/tcgplayer/sv4pt5-130	2024-12-31	tcgplayer
2036	sv4pt5-131	https://prices.pokemontcg.io/tcgplayer/sv4pt5-131	2024-12-31	tcgplayer
2037	sv4pt5-132	https://prices.pokemontcg.io/tcgplayer/sv4pt5-132	2024-12-31	tcgplayer
2038	sv4pt5-133	https://prices.pokemontcg.io/tcgplayer/sv4pt5-133	2024-12-31	tcgplayer
2039	sv4pt5-134	https://prices.pokemontcg.io/tcgplayer/sv4pt5-134	2024-12-31	tcgplayer
2040	sv4pt5-135	https://prices.pokemontcg.io/tcgplayer/sv4pt5-135	2024-12-31	tcgplayer
2041	sv4pt5-136	https://prices.pokemontcg.io/tcgplayer/sv4pt5-136	2024-12-31	tcgplayer
2042	sv4pt5-137	https://prices.pokemontcg.io/tcgplayer/sv4pt5-137	2024-12-31	tcgplayer
2043	sv4pt5-138	https://prices.pokemontcg.io/tcgplayer/sv4pt5-138	2024-12-31	tcgplayer
2044	sv4pt5-139	https://prices.pokemontcg.io/tcgplayer/sv4pt5-139	2024-12-31	tcgplayer
2045	sv4pt5-140	https://prices.pokemontcg.io/tcgplayer/sv4pt5-140	2024-12-31	tcgplayer
2046	sv4pt5-141	https://prices.pokemontcg.io/tcgplayer/sv4pt5-141	2024-12-31	tcgplayer
2047	sv4pt5-142	https://prices.pokemontcg.io/tcgplayer/sv4pt5-142	2024-12-31	tcgplayer
2048	sv4pt5-143	https://prices.pokemontcg.io/tcgplayer/sv4pt5-143	2024-12-31	tcgplayer
2049	sv4pt5-144	https://prices.pokemontcg.io/tcgplayer/sv4pt5-144	2024-12-31	tcgplayer
2050	sv4pt5-145	https://prices.pokemontcg.io/tcgplayer/sv4pt5-145	2024-12-31	tcgplayer
2051	sv4pt5-146	https://prices.pokemontcg.io/tcgplayer/sv4pt5-146	2024-12-31	tcgplayer
2052	sv4pt5-147	https://prices.pokemontcg.io/tcgplayer/sv4pt5-147	2024-12-31	tcgplayer
2053	sv4pt5-148	https://prices.pokemontcg.io/tcgplayer/sv4pt5-148	2024-12-31	tcgplayer
2054	sv4pt5-149	https://prices.pokemontcg.io/tcgplayer/sv4pt5-149	2024-12-31	tcgplayer
2055	sv4pt5-150	https://prices.pokemontcg.io/tcgplayer/sv4pt5-150	2024-12-31	tcgplayer
2056	sv4pt5-151	https://prices.pokemontcg.io/tcgplayer/sv4pt5-151	2024-12-31	tcgplayer
2057	sv4pt5-152	https://prices.pokemontcg.io/tcgplayer/sv4pt5-152	2024-12-31	tcgplayer
2058	sv4pt5-153	https://prices.pokemontcg.io/tcgplayer/sv4pt5-153	2024-12-31	tcgplayer
2059	sv4pt5-154	https://prices.pokemontcg.io/tcgplayer/sv4pt5-154	2024-12-31	tcgplayer
2060	sv4pt5-155	https://prices.pokemontcg.io/tcgplayer/sv4pt5-155	2024-12-31	tcgplayer
2061	sv4pt5-156	https://prices.pokemontcg.io/tcgplayer/sv4pt5-156	2024-12-31	tcgplayer
2062	sv4pt5-157	https://prices.pokemontcg.io/tcgplayer/sv4pt5-157	2024-12-31	tcgplayer
2063	sv4pt5-158	https://prices.pokemontcg.io/tcgplayer/sv4pt5-158	2024-12-31	tcgplayer
2064	sv4pt5-159	https://prices.pokemontcg.io/tcgplayer/sv4pt5-159	2024-12-31	tcgplayer
2065	sv4pt5-160	https://prices.pokemontcg.io/tcgplayer/sv4pt5-160	2024-12-31	tcgplayer
2066	sv4pt5-161	https://prices.pokemontcg.io/tcgplayer/sv4pt5-161	2024-12-31	tcgplayer
2067	sv4pt5-162	https://prices.pokemontcg.io/tcgplayer/sv4pt5-162	2024-12-31	tcgplayer
2068	sv4pt5-163	https://prices.pokemontcg.io/tcgplayer/sv4pt5-163	2024-12-31	tcgplayer
2069	sv4pt5-164	https://prices.pokemontcg.io/tcgplayer/sv4pt5-164	2024-12-31	tcgplayer
2070	sv4pt5-165	https://prices.pokemontcg.io/tcgplayer/sv4pt5-165	2024-12-31	tcgplayer
2071	sv4pt5-166	https://prices.pokemontcg.io/tcgplayer/sv4pt5-166	2024-12-31	tcgplayer
2072	sv4pt5-167	https://prices.pokemontcg.io/tcgplayer/sv4pt5-167	2024-12-31	tcgplayer
2073	sv4pt5-168	https://prices.pokemontcg.io/tcgplayer/sv4pt5-168	2024-12-31	tcgplayer
2074	sv4pt5-169	https://prices.pokemontcg.io/tcgplayer/sv4pt5-169	2024-12-31	tcgplayer
2075	sv4pt5-170	https://prices.pokemontcg.io/tcgplayer/sv4pt5-170	2024-12-31	tcgplayer
2076	sv4pt5-171	https://prices.pokemontcg.io/tcgplayer/sv4pt5-171	2024-12-31	tcgplayer
2077	sv4pt5-172	https://prices.pokemontcg.io/tcgplayer/sv4pt5-172	2024-12-31	tcgplayer
2078	sv4pt5-173	https://prices.pokemontcg.io/tcgplayer/sv4pt5-173	2024-12-31	tcgplayer
2079	sv4pt5-174	https://prices.pokemontcg.io/tcgplayer/sv4pt5-174	2024-12-31	tcgplayer
2080	sv4pt5-175	https://prices.pokemontcg.io/tcgplayer/sv4pt5-175	2024-12-31	tcgplayer
2081	sv4pt5-176	https://prices.pokemontcg.io/tcgplayer/sv4pt5-176	2024-12-31	tcgplayer
2082	sv4pt5-177	https://prices.pokemontcg.io/tcgplayer/sv4pt5-177	2024-12-31	tcgplayer
2083	sv4pt5-178	https://prices.pokemontcg.io/tcgplayer/sv4pt5-178	2024-12-31	tcgplayer
2084	sv4pt5-179	https://prices.pokemontcg.io/tcgplayer/sv4pt5-179	2024-12-31	tcgplayer
2085	sv4pt5-180	https://prices.pokemontcg.io/tcgplayer/sv4pt5-180	2024-12-31	tcgplayer
2086	sv4pt5-181	https://prices.pokemontcg.io/tcgplayer/sv4pt5-181	2024-12-31	tcgplayer
2087	sv4pt5-182	https://prices.pokemontcg.io/tcgplayer/sv4pt5-182	2024-12-31	tcgplayer
2088	sv4pt5-183	https://prices.pokemontcg.io/tcgplayer/sv4pt5-183	2024-12-31	tcgplayer
2089	sv4pt5-184	https://prices.pokemontcg.io/tcgplayer/sv4pt5-184	2024-12-31	tcgplayer
2090	sv4pt5-185	https://prices.pokemontcg.io/tcgplayer/sv4pt5-185	2024-12-31	tcgplayer
2091	sv4pt5-186	https://prices.pokemontcg.io/tcgplayer/sv4pt5-186	2024-12-31	tcgplayer
2092	sv4pt5-187	https://prices.pokemontcg.io/tcgplayer/sv4pt5-187	2024-12-31	tcgplayer
2093	sv4pt5-188	https://prices.pokemontcg.io/tcgplayer/sv4pt5-188	2024-12-31	tcgplayer
2094	sv4pt5-189	https://prices.pokemontcg.io/tcgplayer/sv4pt5-189	2024-12-31	tcgplayer
2095	sv4pt5-190	https://prices.pokemontcg.io/tcgplayer/sv4pt5-190	2024-12-31	tcgplayer
2096	sv4pt5-191	https://prices.pokemontcg.io/tcgplayer/sv4pt5-191	2024-12-31	tcgplayer
2097	sv4pt5-192	https://prices.pokemontcg.io/tcgplayer/sv4pt5-192	2024-12-31	tcgplayer
2098	sv4pt5-193	https://prices.pokemontcg.io/tcgplayer/sv4pt5-193	2024-12-31	tcgplayer
2099	sv4pt5-194	https://prices.pokemontcg.io/tcgplayer/sv4pt5-194	2024-12-31	tcgplayer
2100	sv4pt5-195	https://prices.pokemontcg.io/tcgplayer/sv4pt5-195	2024-12-31	tcgplayer
2101	sv4pt5-196	https://prices.pokemontcg.io/tcgplayer/sv4pt5-196	2024-12-31	tcgplayer
2102	sv4pt5-197	https://prices.pokemontcg.io/tcgplayer/sv4pt5-197	2024-12-31	tcgplayer
2103	sv4pt5-198	https://prices.pokemontcg.io/tcgplayer/sv4pt5-198	2024-12-31	tcgplayer
2104	sv4pt5-199	https://prices.pokemontcg.io/tcgplayer/sv4pt5-199	2024-12-31	tcgplayer
2105	sv4pt5-200	https://prices.pokemontcg.io/tcgplayer/sv4pt5-200	2024-12-31	tcgplayer
2106	sv4pt5-201	https://prices.pokemontcg.io/tcgplayer/sv4pt5-201	2024-12-31	tcgplayer
2107	sv4pt5-202	https://prices.pokemontcg.io/tcgplayer/sv4pt5-202	2024-12-31	tcgplayer
2108	sv4pt5-203	https://prices.pokemontcg.io/tcgplayer/sv4pt5-203	2024-12-31	tcgplayer
2109	sv4pt5-204	https://prices.pokemontcg.io/tcgplayer/sv4pt5-204	2024-12-31	tcgplayer
2110	sv4pt5-205	https://prices.pokemontcg.io/tcgplayer/sv4pt5-205	2024-12-31	tcgplayer
2111	sv4pt5-206	https://prices.pokemontcg.io/tcgplayer/sv4pt5-206	2024-12-31	tcgplayer
2112	sv4pt5-207	https://prices.pokemontcg.io/tcgplayer/sv4pt5-207	2024-12-31	tcgplayer
2113	sv4pt5-208	https://prices.pokemontcg.io/tcgplayer/sv4pt5-208	2024-12-31	tcgplayer
2114	sv4pt5-209	https://prices.pokemontcg.io/tcgplayer/sv4pt5-209	2024-12-31	tcgplayer
2115	sv4pt5-210	https://prices.pokemontcg.io/tcgplayer/sv4pt5-210	2024-12-31	tcgplayer
2116	sv4pt5-211	https://prices.pokemontcg.io/tcgplayer/sv4pt5-211	2024-12-31	tcgplayer
2117	sv4pt5-212	https://prices.pokemontcg.io/tcgplayer/sv4pt5-212	2024-12-31	tcgplayer
2118	sv4pt5-213	https://prices.pokemontcg.io/tcgplayer/sv4pt5-213	2024-12-31	tcgplayer
2119	sv4pt5-214	https://prices.pokemontcg.io/tcgplayer/sv4pt5-214	2024-12-31	tcgplayer
2120	sv4pt5-215	https://prices.pokemontcg.io/tcgplayer/sv4pt5-215	2024-12-31	tcgplayer
2121	sv4pt5-216	https://prices.pokemontcg.io/tcgplayer/sv4pt5-216	2024-12-31	tcgplayer
2122	sv4pt5-217	https://prices.pokemontcg.io/tcgplayer/sv4pt5-217	2024-12-31	tcgplayer
2123	sv4pt5-218	https://prices.pokemontcg.io/tcgplayer/sv4pt5-218	2024-12-31	tcgplayer
2124	sv4pt5-219	https://prices.pokemontcg.io/tcgplayer/sv4pt5-219	2024-12-31	tcgplayer
2125	sv4pt5-220	https://prices.pokemontcg.io/tcgplayer/sv4pt5-220	2024-12-31	tcgplayer
2126	sv4pt5-221	https://prices.pokemontcg.io/tcgplayer/sv4pt5-221	2024-12-31	tcgplayer
2127	sv4pt5-222	https://prices.pokemontcg.io/tcgplayer/sv4pt5-222	2024-12-31	tcgplayer
2128	sv4pt5-223	https://prices.pokemontcg.io/tcgplayer/sv4pt5-223	2024-12-31	tcgplayer
2129	sv4pt5-224	https://prices.pokemontcg.io/tcgplayer/sv4pt5-224	2024-12-31	tcgplayer
2130	sv4pt5-225	https://prices.pokemontcg.io/tcgplayer/sv4pt5-225	2024-12-31	tcgplayer
2131	sv4pt5-226	https://prices.pokemontcg.io/tcgplayer/sv4pt5-226	2024-12-31	tcgplayer
2132	sv4pt5-227	https://prices.pokemontcg.io/tcgplayer/sv4pt5-227	2024-12-31	tcgplayer
2133	sv4pt5-228	https://prices.pokemontcg.io/tcgplayer/sv4pt5-228	2024-12-31	tcgplayer
2134	sv4pt5-229	https://prices.pokemontcg.io/tcgplayer/sv4pt5-229	2024-12-31	tcgplayer
2135	sv4pt5-230	https://prices.pokemontcg.io/tcgplayer/sv4pt5-230	2024-12-31	tcgplayer
2136	sv4pt5-231	https://prices.pokemontcg.io/tcgplayer/sv4pt5-231	2024-12-31	tcgplayer
2137	sv4pt5-232	https://prices.pokemontcg.io/tcgplayer/sv4pt5-232	2024-12-31	tcgplayer
2138	sv4pt5-233	https://prices.pokemontcg.io/tcgplayer/sv4pt5-233	2024-12-31	tcgplayer
2139	sv4pt5-234	https://prices.pokemontcg.io/tcgplayer/sv4pt5-234	2024-12-31	tcgplayer
2140	sv4pt5-235	https://prices.pokemontcg.io/tcgplayer/sv4pt5-235	2024-12-31	tcgplayer
2141	sv4pt5-236	https://prices.pokemontcg.io/tcgplayer/sv4pt5-236	2024-12-31	tcgplayer
2142	sv4pt5-237	https://prices.pokemontcg.io/tcgplayer/sv4pt5-237	2024-12-31	tcgplayer
2143	sv4pt5-238	https://prices.pokemontcg.io/tcgplayer/sv4pt5-238	2024-12-31	tcgplayer
2144	sv4pt5-239	https://prices.pokemontcg.io/tcgplayer/sv4pt5-239	2024-12-31	tcgplayer
2145	sv4pt5-240	https://prices.pokemontcg.io/tcgplayer/sv4pt5-240	2024-12-31	tcgplayer
2146	sv4pt5-241	https://prices.pokemontcg.io/tcgplayer/sv4pt5-241	2024-12-31	tcgplayer
2147	sv4pt5-242	https://prices.pokemontcg.io/tcgplayer/sv4pt5-242	2024-12-31	tcgplayer
2148	sv4pt5-243	https://prices.pokemontcg.io/tcgplayer/sv4pt5-243	2024-12-31	tcgplayer
2149	sv4pt5-244	https://prices.pokemontcg.io/tcgplayer/sv4pt5-244	2024-12-31	tcgplayer
2150	sv4pt5-245	https://prices.pokemontcg.io/tcgplayer/sv4pt5-245	2024-12-31	tcgplayer
2151	sv4pt5-1	https://prices.pokemontcg.io/cardmarket/sv4pt5-1	2024-12-31	cardmarket
2152	sv4pt5-2	https://prices.pokemontcg.io/cardmarket/sv4pt5-2	2024-12-31	cardmarket
2153	sv4pt5-3	https://prices.pokemontcg.io/cardmarket/sv4pt5-3	2024-12-31	cardmarket
2154	sv4pt5-4	https://prices.pokemontcg.io/cardmarket/sv4pt5-4	2024-12-31	cardmarket
2155	sv4pt5-5	https://prices.pokemontcg.io/cardmarket/sv4pt5-5	2024-12-31	cardmarket
2156	sv4pt5-6	https://prices.pokemontcg.io/cardmarket/sv4pt5-6	2024-12-31	cardmarket
2157	sv4pt5-7	https://prices.pokemontcg.io/cardmarket/sv4pt5-7	2024-12-31	cardmarket
2158	sv4pt5-8	https://prices.pokemontcg.io/cardmarket/sv4pt5-8	2024-12-31	cardmarket
2159	sv4pt5-9	https://prices.pokemontcg.io/cardmarket/sv4pt5-9	2024-12-31	cardmarket
2160	sv4pt5-10	https://prices.pokemontcg.io/cardmarket/sv4pt5-10	2024-12-31	cardmarket
2161	sv4pt5-11	https://prices.pokemontcg.io/cardmarket/sv4pt5-11	2024-12-31	cardmarket
2162	sv4pt5-12	https://prices.pokemontcg.io/cardmarket/sv4pt5-12	2024-12-31	cardmarket
2163	sv4pt5-13	https://prices.pokemontcg.io/cardmarket/sv4pt5-13	2024-12-31	cardmarket
2164	sv4pt5-14	https://prices.pokemontcg.io/cardmarket/sv4pt5-14	2024-12-31	cardmarket
2165	sv4pt5-15	https://prices.pokemontcg.io/cardmarket/sv4pt5-15	2024-12-31	cardmarket
2166	sv4pt5-16	https://prices.pokemontcg.io/cardmarket/sv4pt5-16	2024-12-31	cardmarket
2167	sv4pt5-17	https://prices.pokemontcg.io/cardmarket/sv4pt5-17	2024-12-31	cardmarket
2168	sv4pt5-18	https://prices.pokemontcg.io/cardmarket/sv4pt5-18	2024-12-31	cardmarket
2169	sv4pt5-19	https://prices.pokemontcg.io/cardmarket/sv4pt5-19	2024-12-31	cardmarket
2170	sv4pt5-20	https://prices.pokemontcg.io/cardmarket/sv4pt5-20	2024-12-31	cardmarket
2171	sv4pt5-21	https://prices.pokemontcg.io/cardmarket/sv4pt5-21	2024-12-31	cardmarket
2172	sv4pt5-22	https://prices.pokemontcg.io/cardmarket/sv4pt5-22	2024-12-31	cardmarket
2173	sv4pt5-23	https://prices.pokemontcg.io/cardmarket/sv4pt5-23	2024-12-31	cardmarket
2174	sv4pt5-24	https://prices.pokemontcg.io/cardmarket/sv4pt5-24	2024-12-31	cardmarket
2175	sv4pt5-25	https://prices.pokemontcg.io/cardmarket/sv4pt5-25	2024-12-31	cardmarket
2176	sv4pt5-26	https://prices.pokemontcg.io/cardmarket/sv4pt5-26	2024-12-31	cardmarket
2177	sv4pt5-27	https://prices.pokemontcg.io/cardmarket/sv4pt5-27	2024-12-31	cardmarket
2178	sv4pt5-28	https://prices.pokemontcg.io/cardmarket/sv4pt5-28	2024-12-31	cardmarket
2179	sv4pt5-29	https://prices.pokemontcg.io/cardmarket/sv4pt5-29	2024-12-31	cardmarket
2180	sv4pt5-30	https://prices.pokemontcg.io/cardmarket/sv4pt5-30	2024-12-31	cardmarket
2181	sv4pt5-31	https://prices.pokemontcg.io/cardmarket/sv4pt5-31	2024-12-31	cardmarket
2182	sv4pt5-32	https://prices.pokemontcg.io/cardmarket/sv4pt5-32	2024-12-31	cardmarket
2183	sv4pt5-33	https://prices.pokemontcg.io/cardmarket/sv4pt5-33	2024-12-31	cardmarket
2184	sv4pt5-34	https://prices.pokemontcg.io/cardmarket/sv4pt5-34	2024-12-31	cardmarket
2185	sv4pt5-35	https://prices.pokemontcg.io/cardmarket/sv4pt5-35	2024-12-31	cardmarket
2186	sv4pt5-36	https://prices.pokemontcg.io/cardmarket/sv4pt5-36	2024-12-31	cardmarket
2187	sv4pt5-37	https://prices.pokemontcg.io/cardmarket/sv4pt5-37	2024-12-31	cardmarket
2188	sv4pt5-38	https://prices.pokemontcg.io/cardmarket/sv4pt5-38	2024-12-31	cardmarket
2189	sv4pt5-39	https://prices.pokemontcg.io/cardmarket/sv4pt5-39	2024-12-31	cardmarket
2190	sv4pt5-40	https://prices.pokemontcg.io/cardmarket/sv4pt5-40	2024-12-31	cardmarket
2191	sv4pt5-41	https://prices.pokemontcg.io/cardmarket/sv4pt5-41	2024-12-31	cardmarket
2192	sv4pt5-42	https://prices.pokemontcg.io/cardmarket/sv4pt5-42	2024-12-31	cardmarket
2193	sv4pt5-43	https://prices.pokemontcg.io/cardmarket/sv4pt5-43	2024-12-31	cardmarket
2194	sv4pt5-44	https://prices.pokemontcg.io/cardmarket/sv4pt5-44	2024-12-31	cardmarket
2195	sv4pt5-45	https://prices.pokemontcg.io/cardmarket/sv4pt5-45	2024-12-31	cardmarket
2196	sv4pt5-46	https://prices.pokemontcg.io/cardmarket/sv4pt5-46	2024-12-31	cardmarket
2197	sv4pt5-47	https://prices.pokemontcg.io/cardmarket/sv4pt5-47	2024-12-31	cardmarket
2198	sv4pt5-48	https://prices.pokemontcg.io/cardmarket/sv4pt5-48	2024-12-31	cardmarket
2199	sv4pt5-49	https://prices.pokemontcg.io/cardmarket/sv4pt5-49	2024-12-31	cardmarket
2200	sv4pt5-50	https://prices.pokemontcg.io/cardmarket/sv4pt5-50	2024-12-31	cardmarket
2201	sv4pt5-51	https://prices.pokemontcg.io/cardmarket/sv4pt5-51	2024-12-31	cardmarket
2202	sv4pt5-52	https://prices.pokemontcg.io/cardmarket/sv4pt5-52	2024-12-31	cardmarket
2203	sv4pt5-53	https://prices.pokemontcg.io/cardmarket/sv4pt5-53	2024-12-31	cardmarket
2204	sv4pt5-54	https://prices.pokemontcg.io/cardmarket/sv4pt5-54	2024-12-31	cardmarket
2205	sv4pt5-55	https://prices.pokemontcg.io/cardmarket/sv4pt5-55	2024-12-31	cardmarket
2206	sv4pt5-56	https://prices.pokemontcg.io/cardmarket/sv4pt5-56	2024-12-31	cardmarket
2207	sv4pt5-57	https://prices.pokemontcg.io/cardmarket/sv4pt5-57	2024-12-31	cardmarket
2208	sv4pt5-58	https://prices.pokemontcg.io/cardmarket/sv4pt5-58	2024-12-31	cardmarket
2209	sv4pt5-59	https://prices.pokemontcg.io/cardmarket/sv4pt5-59	2024-12-31	cardmarket
2210	sv4pt5-60	https://prices.pokemontcg.io/cardmarket/sv4pt5-60	2024-12-31	cardmarket
2211	sv4pt5-61	https://prices.pokemontcg.io/cardmarket/sv4pt5-61	2024-12-31	cardmarket
2212	sv4pt5-62	https://prices.pokemontcg.io/cardmarket/sv4pt5-62	2024-12-31	cardmarket
2213	sv4pt5-63	https://prices.pokemontcg.io/cardmarket/sv4pt5-63	2024-12-31	cardmarket
2214	sv4pt5-64	https://prices.pokemontcg.io/cardmarket/sv4pt5-64	2024-12-31	cardmarket
2215	sv4pt5-65	https://prices.pokemontcg.io/cardmarket/sv4pt5-65	2024-12-31	cardmarket
2216	sv4pt5-66	https://prices.pokemontcg.io/cardmarket/sv4pt5-66	2024-12-31	cardmarket
2217	sv4pt5-67	https://prices.pokemontcg.io/cardmarket/sv4pt5-67	2024-12-31	cardmarket
2218	sv4pt5-68	https://prices.pokemontcg.io/cardmarket/sv4pt5-68	2024-12-31	cardmarket
2219	sv4pt5-69	https://prices.pokemontcg.io/cardmarket/sv4pt5-69	2024-12-31	cardmarket
2220	sv4pt5-70	https://prices.pokemontcg.io/cardmarket/sv4pt5-70	2024-12-31	cardmarket
2221	sv4pt5-71	https://prices.pokemontcg.io/cardmarket/sv4pt5-71	2024-12-31	cardmarket
2222	sv4pt5-72	https://prices.pokemontcg.io/cardmarket/sv4pt5-72	2024-12-31	cardmarket
2223	sv4pt5-73	https://prices.pokemontcg.io/cardmarket/sv4pt5-73	2024-12-31	cardmarket
2224	sv4pt5-74	https://prices.pokemontcg.io/cardmarket/sv4pt5-74	2024-12-31	cardmarket
2225	sv4pt5-75	https://prices.pokemontcg.io/cardmarket/sv4pt5-75	2024-12-31	cardmarket
2226	sv4pt5-76	https://prices.pokemontcg.io/cardmarket/sv4pt5-76	2024-12-31	cardmarket
2227	sv4pt5-77	https://prices.pokemontcg.io/cardmarket/sv4pt5-77	2024-12-31	cardmarket
2228	sv4pt5-78	https://prices.pokemontcg.io/cardmarket/sv4pt5-78	2024-12-31	cardmarket
2229	sv4pt5-79	https://prices.pokemontcg.io/cardmarket/sv4pt5-79	2024-12-31	cardmarket
2230	sv4pt5-80	https://prices.pokemontcg.io/cardmarket/sv4pt5-80	2024-12-31	cardmarket
2231	sv4pt5-81	https://prices.pokemontcg.io/cardmarket/sv4pt5-81	2024-12-31	cardmarket
2232	sv4pt5-82	https://prices.pokemontcg.io/cardmarket/sv4pt5-82	2024-12-31	cardmarket
2233	sv4pt5-83	https://prices.pokemontcg.io/cardmarket/sv4pt5-83	2024-12-31	cardmarket
2234	sv4pt5-84	https://prices.pokemontcg.io/cardmarket/sv4pt5-84	2024-12-31	cardmarket
2235	sv4pt5-85	https://prices.pokemontcg.io/cardmarket/sv4pt5-85	2024-12-31	cardmarket
2236	sv4pt5-86	https://prices.pokemontcg.io/cardmarket/sv4pt5-86	2024-12-31	cardmarket
2237	sv4pt5-87	https://prices.pokemontcg.io/cardmarket/sv4pt5-87	2024-12-31	cardmarket
2238	sv4pt5-88	https://prices.pokemontcg.io/cardmarket/sv4pt5-88	2024-12-31	cardmarket
2239	sv4pt5-89	https://prices.pokemontcg.io/cardmarket/sv4pt5-89	2024-12-31	cardmarket
2240	sv4pt5-90	https://prices.pokemontcg.io/cardmarket/sv4pt5-90	2024-12-31	cardmarket
2241	sv4pt5-91	https://prices.pokemontcg.io/cardmarket/sv4pt5-91	2024-12-31	cardmarket
2242	sv4pt5-92	https://prices.pokemontcg.io/cardmarket/sv4pt5-92	2024-12-31	cardmarket
2243	sv4pt5-93	https://prices.pokemontcg.io/cardmarket/sv4pt5-93	2024-12-31	cardmarket
2244	sv4pt5-94	https://prices.pokemontcg.io/cardmarket/sv4pt5-94	2024-12-31	cardmarket
2245	sv4pt5-95	https://prices.pokemontcg.io/cardmarket/sv4pt5-95	2024-12-31	cardmarket
2246	sv4pt5-96	https://prices.pokemontcg.io/cardmarket/sv4pt5-96	2024-12-31	cardmarket
2247	sv4pt5-97	https://prices.pokemontcg.io/cardmarket/sv4pt5-97	2024-12-31	cardmarket
2248	sv4pt5-98	https://prices.pokemontcg.io/cardmarket/sv4pt5-98	2024-12-31	cardmarket
2249	sv4pt5-99	https://prices.pokemontcg.io/cardmarket/sv4pt5-99	2024-12-31	cardmarket
2250	sv4pt5-100	https://prices.pokemontcg.io/cardmarket/sv4pt5-100	2024-12-31	cardmarket
2251	sv4pt5-101	https://prices.pokemontcg.io/cardmarket/sv4pt5-101	2024-12-31	cardmarket
2252	sv4pt5-102	https://prices.pokemontcg.io/cardmarket/sv4pt5-102	2024-12-31	cardmarket
2253	sv4pt5-103	https://prices.pokemontcg.io/cardmarket/sv4pt5-103	2024-12-31	cardmarket
2254	sv4pt5-104	https://prices.pokemontcg.io/cardmarket/sv4pt5-104	2024-12-31	cardmarket
2255	sv4pt5-105	https://prices.pokemontcg.io/cardmarket/sv4pt5-105	2024-12-31	cardmarket
2256	sv4pt5-106	https://prices.pokemontcg.io/cardmarket/sv4pt5-106	2024-12-31	cardmarket
2257	sv4pt5-107	https://prices.pokemontcg.io/cardmarket/sv4pt5-107	2024-12-31	cardmarket
2258	sv4pt5-108	https://prices.pokemontcg.io/cardmarket/sv4pt5-108	2024-12-31	cardmarket
2259	sv4pt5-109	https://prices.pokemontcg.io/cardmarket/sv4pt5-109	2024-12-31	cardmarket
2260	sv4pt5-110	https://prices.pokemontcg.io/cardmarket/sv4pt5-110	2024-12-31	cardmarket
2261	sv4pt5-111	https://prices.pokemontcg.io/cardmarket/sv4pt5-111	2024-12-31	cardmarket
2262	sv4pt5-112	https://prices.pokemontcg.io/cardmarket/sv4pt5-112	2024-12-31	cardmarket
2263	sv4pt5-113	https://prices.pokemontcg.io/cardmarket/sv4pt5-113	2024-12-31	cardmarket
2264	sv4pt5-114	https://prices.pokemontcg.io/cardmarket/sv4pt5-114	2024-12-31	cardmarket
2265	sv4pt5-115	https://prices.pokemontcg.io/cardmarket/sv4pt5-115	2024-12-31	cardmarket
2266	sv4pt5-116	https://prices.pokemontcg.io/cardmarket/sv4pt5-116	2024-12-31	cardmarket
2267	sv4pt5-117	https://prices.pokemontcg.io/cardmarket/sv4pt5-117	2024-12-31	cardmarket
2268	sv4pt5-118	https://prices.pokemontcg.io/cardmarket/sv4pt5-118	2024-12-31	cardmarket
2269	sv4pt5-119	https://prices.pokemontcg.io/cardmarket/sv4pt5-119	2024-12-31	cardmarket
2270	sv4pt5-120	https://prices.pokemontcg.io/cardmarket/sv4pt5-120	2024-12-31	cardmarket
2271	sv4pt5-121	https://prices.pokemontcg.io/cardmarket/sv4pt5-121	2024-12-31	cardmarket
2272	sv4pt5-122	https://prices.pokemontcg.io/cardmarket/sv4pt5-122	2024-12-31	cardmarket
2273	sv4pt5-123	https://prices.pokemontcg.io/cardmarket/sv4pt5-123	2024-12-31	cardmarket
2274	sv4pt5-124	https://prices.pokemontcg.io/cardmarket/sv4pt5-124	2024-12-31	cardmarket
2275	sv4pt5-125	https://prices.pokemontcg.io/cardmarket/sv4pt5-125	2024-12-31	cardmarket
2276	sv4pt5-126	https://prices.pokemontcg.io/cardmarket/sv4pt5-126	2024-12-31	cardmarket
2277	sv4pt5-127	https://prices.pokemontcg.io/cardmarket/sv4pt5-127	2024-12-31	cardmarket
2278	sv4pt5-128	https://prices.pokemontcg.io/cardmarket/sv4pt5-128	2024-12-31	cardmarket
2279	sv4pt5-129	https://prices.pokemontcg.io/cardmarket/sv4pt5-129	2024-12-31	cardmarket
2280	sv4pt5-130	https://prices.pokemontcg.io/cardmarket/sv4pt5-130	2024-12-31	cardmarket
2281	sv4pt5-131	https://prices.pokemontcg.io/cardmarket/sv4pt5-131	2024-12-31	cardmarket
2282	sv4pt5-132	https://prices.pokemontcg.io/cardmarket/sv4pt5-132	2024-12-31	cardmarket
2283	sv4pt5-133	https://prices.pokemontcg.io/cardmarket/sv4pt5-133	2024-12-31	cardmarket
2284	sv4pt5-134	https://prices.pokemontcg.io/cardmarket/sv4pt5-134	2024-12-31	cardmarket
2285	sv4pt5-135	https://prices.pokemontcg.io/cardmarket/sv4pt5-135	2024-12-31	cardmarket
2286	sv4pt5-136	https://prices.pokemontcg.io/cardmarket/sv4pt5-136	2024-12-31	cardmarket
2287	sv4pt5-137	https://prices.pokemontcg.io/cardmarket/sv4pt5-137	2024-12-31	cardmarket
2288	sv4pt5-138	https://prices.pokemontcg.io/cardmarket/sv4pt5-138	2024-12-31	cardmarket
2289	sv4pt5-139	https://prices.pokemontcg.io/cardmarket/sv4pt5-139	2024-12-31	cardmarket
2290	sv4pt5-140	https://prices.pokemontcg.io/cardmarket/sv4pt5-140	2024-12-31	cardmarket
2291	sv4pt5-141	https://prices.pokemontcg.io/cardmarket/sv4pt5-141	2024-12-31	cardmarket
2292	sv4pt5-142	https://prices.pokemontcg.io/cardmarket/sv4pt5-142	2024-12-31	cardmarket
2293	sv4pt5-143	https://prices.pokemontcg.io/cardmarket/sv4pt5-143	2024-12-31	cardmarket
2294	sv4pt5-144	https://prices.pokemontcg.io/cardmarket/sv4pt5-144	2024-12-31	cardmarket
2295	sv4pt5-145	https://prices.pokemontcg.io/cardmarket/sv4pt5-145	2024-12-31	cardmarket
2296	sv4pt5-146	https://prices.pokemontcg.io/cardmarket/sv4pt5-146	2024-12-31	cardmarket
2297	sv4pt5-147	https://prices.pokemontcg.io/cardmarket/sv4pt5-147	2024-12-31	cardmarket
2298	sv4pt5-148	https://prices.pokemontcg.io/cardmarket/sv4pt5-148	2024-12-31	cardmarket
2299	sv4pt5-149	https://prices.pokemontcg.io/cardmarket/sv4pt5-149	2024-12-31	cardmarket
2300	sv4pt5-150	https://prices.pokemontcg.io/cardmarket/sv4pt5-150	2024-12-31	cardmarket
2301	sv4pt5-151	https://prices.pokemontcg.io/cardmarket/sv4pt5-151	2024-12-31	cardmarket
2302	sv4pt5-152	https://prices.pokemontcg.io/cardmarket/sv4pt5-152	2024-12-31	cardmarket
2303	sv4pt5-153	https://prices.pokemontcg.io/cardmarket/sv4pt5-153	2024-12-31	cardmarket
2304	sv4pt5-154	https://prices.pokemontcg.io/cardmarket/sv4pt5-154	2024-12-31	cardmarket
2305	sv4pt5-155	https://prices.pokemontcg.io/cardmarket/sv4pt5-155	2024-12-31	cardmarket
2306	sv4pt5-156	https://prices.pokemontcg.io/cardmarket/sv4pt5-156	2024-12-31	cardmarket
2307	sv4pt5-157	https://prices.pokemontcg.io/cardmarket/sv4pt5-157	2024-12-31	cardmarket
2308	sv4pt5-158	https://prices.pokemontcg.io/cardmarket/sv4pt5-158	2024-12-31	cardmarket
2309	sv4pt5-159	https://prices.pokemontcg.io/cardmarket/sv4pt5-159	2024-12-31	cardmarket
2310	sv4pt5-160	https://prices.pokemontcg.io/cardmarket/sv4pt5-160	2024-12-31	cardmarket
2311	sv4pt5-161	https://prices.pokemontcg.io/cardmarket/sv4pt5-161	2024-12-31	cardmarket
2312	sv4pt5-162	https://prices.pokemontcg.io/cardmarket/sv4pt5-162	2024-12-31	cardmarket
2313	sv4pt5-163	https://prices.pokemontcg.io/cardmarket/sv4pt5-163	2024-12-31	cardmarket
2314	sv4pt5-164	https://prices.pokemontcg.io/cardmarket/sv4pt5-164	2024-12-31	cardmarket
2315	sv4pt5-165	https://prices.pokemontcg.io/cardmarket/sv4pt5-165	2024-12-31	cardmarket
2316	sv4pt5-166	https://prices.pokemontcg.io/cardmarket/sv4pt5-166	2024-12-31	cardmarket
2317	sv4pt5-167	https://prices.pokemontcg.io/cardmarket/sv4pt5-167	2024-12-31	cardmarket
2318	sv4pt5-168	https://prices.pokemontcg.io/cardmarket/sv4pt5-168	2024-12-31	cardmarket
2319	sv4pt5-169	https://prices.pokemontcg.io/cardmarket/sv4pt5-169	2024-12-31	cardmarket
2320	sv4pt5-170	https://prices.pokemontcg.io/cardmarket/sv4pt5-170	2024-12-31	cardmarket
2321	sv4pt5-171	https://prices.pokemontcg.io/cardmarket/sv4pt5-171	2024-12-31	cardmarket
2322	sv4pt5-172	https://prices.pokemontcg.io/cardmarket/sv4pt5-172	2024-12-31	cardmarket
2323	sv4pt5-173	https://prices.pokemontcg.io/cardmarket/sv4pt5-173	2024-12-31	cardmarket
2324	sv4pt5-174	https://prices.pokemontcg.io/cardmarket/sv4pt5-174	2024-12-31	cardmarket
2325	sv4pt5-175	https://prices.pokemontcg.io/cardmarket/sv4pt5-175	2024-12-31	cardmarket
2326	sv4pt5-176	https://prices.pokemontcg.io/cardmarket/sv4pt5-176	2024-12-31	cardmarket
2327	sv4pt5-177	https://prices.pokemontcg.io/cardmarket/sv4pt5-177	2024-12-31	cardmarket
2328	sv4pt5-178	https://prices.pokemontcg.io/cardmarket/sv4pt5-178	2024-12-31	cardmarket
2329	sv4pt5-179	https://prices.pokemontcg.io/cardmarket/sv4pt5-179	2024-12-31	cardmarket
2330	sv4pt5-180	https://prices.pokemontcg.io/cardmarket/sv4pt5-180	2024-12-31	cardmarket
2331	sv4pt5-181	https://prices.pokemontcg.io/cardmarket/sv4pt5-181	2024-12-31	cardmarket
2332	sv4pt5-182	https://prices.pokemontcg.io/cardmarket/sv4pt5-182	2024-12-31	cardmarket
2333	sv4pt5-183	https://prices.pokemontcg.io/cardmarket/sv4pt5-183	2024-12-31	cardmarket
2334	sv4pt5-184	https://prices.pokemontcg.io/cardmarket/sv4pt5-184	2024-12-31	cardmarket
2335	sv4pt5-185	https://prices.pokemontcg.io/cardmarket/sv4pt5-185	2024-12-31	cardmarket
2336	sv4pt5-186	https://prices.pokemontcg.io/cardmarket/sv4pt5-186	2024-12-31	cardmarket
2337	sv4pt5-187	https://prices.pokemontcg.io/cardmarket/sv4pt5-187	2024-12-31	cardmarket
2338	sv4pt5-188	https://prices.pokemontcg.io/cardmarket/sv4pt5-188	2024-12-31	cardmarket
2339	sv4pt5-189	https://prices.pokemontcg.io/cardmarket/sv4pt5-189	2024-12-31	cardmarket
2340	sv4pt5-190	https://prices.pokemontcg.io/cardmarket/sv4pt5-190	2024-12-31	cardmarket
2341	sv4pt5-191	https://prices.pokemontcg.io/cardmarket/sv4pt5-191	2024-12-31	cardmarket
2342	sv4pt5-192	https://prices.pokemontcg.io/cardmarket/sv4pt5-192	2024-12-31	cardmarket
2343	sv4pt5-193	https://prices.pokemontcg.io/cardmarket/sv4pt5-193	2024-12-31	cardmarket
2344	sv4pt5-194	https://prices.pokemontcg.io/cardmarket/sv4pt5-194	2024-12-31	cardmarket
2345	sv4pt5-195	https://prices.pokemontcg.io/cardmarket/sv4pt5-195	2024-12-31	cardmarket
2346	sv4pt5-196	https://prices.pokemontcg.io/cardmarket/sv4pt5-196	2024-12-31	cardmarket
2347	sv4pt5-197	https://prices.pokemontcg.io/cardmarket/sv4pt5-197	2024-12-31	cardmarket
2348	sv4pt5-198	https://prices.pokemontcg.io/cardmarket/sv4pt5-198	2024-12-31	cardmarket
2349	sv4pt5-199	https://prices.pokemontcg.io/cardmarket/sv4pt5-199	2024-12-31	cardmarket
2350	sv4pt5-200	https://prices.pokemontcg.io/cardmarket/sv4pt5-200	2024-12-31	cardmarket
2351	sv4pt5-201	https://prices.pokemontcg.io/cardmarket/sv4pt5-201	2024-12-31	cardmarket
2352	sv4pt5-202	https://prices.pokemontcg.io/cardmarket/sv4pt5-202	2024-12-31	cardmarket
2353	sv4pt5-203	https://prices.pokemontcg.io/cardmarket/sv4pt5-203	2024-12-31	cardmarket
2354	sv4pt5-204	https://prices.pokemontcg.io/cardmarket/sv4pt5-204	2024-12-31	cardmarket
2355	sv4pt5-205	https://prices.pokemontcg.io/cardmarket/sv4pt5-205	2024-12-31	cardmarket
2356	sv4pt5-206	https://prices.pokemontcg.io/cardmarket/sv4pt5-206	2024-12-31	cardmarket
2357	sv4pt5-207	https://prices.pokemontcg.io/cardmarket/sv4pt5-207	2024-12-31	cardmarket
2358	sv4pt5-208	https://prices.pokemontcg.io/cardmarket/sv4pt5-208	2024-12-31	cardmarket
2359	sv4pt5-209	https://prices.pokemontcg.io/cardmarket/sv4pt5-209	2024-12-31	cardmarket
2360	sv4pt5-210	https://prices.pokemontcg.io/cardmarket/sv4pt5-210	2024-12-31	cardmarket
2361	sv4pt5-211	https://prices.pokemontcg.io/cardmarket/sv4pt5-211	2024-12-31	cardmarket
2362	sv4pt5-212	https://prices.pokemontcg.io/cardmarket/sv4pt5-212	2024-12-31	cardmarket
2363	sv4pt5-213	https://prices.pokemontcg.io/cardmarket/sv4pt5-213	2024-12-31	cardmarket
2364	sv4pt5-214	https://prices.pokemontcg.io/cardmarket/sv4pt5-214	2024-12-31	cardmarket
2365	sv4pt5-215	https://prices.pokemontcg.io/cardmarket/sv4pt5-215	2024-12-31	cardmarket
2366	sv4pt5-216	https://prices.pokemontcg.io/cardmarket/sv4pt5-216	2024-12-31	cardmarket
2367	sv4pt5-217	https://prices.pokemontcg.io/cardmarket/sv4pt5-217	2024-12-31	cardmarket
2368	sv4pt5-218	https://prices.pokemontcg.io/cardmarket/sv4pt5-218	2024-12-31	cardmarket
2369	sv4pt5-219	https://prices.pokemontcg.io/cardmarket/sv4pt5-219	2024-12-31	cardmarket
2370	sv4pt5-220	https://prices.pokemontcg.io/cardmarket/sv4pt5-220	2024-12-31	cardmarket
2371	sv4pt5-221	https://prices.pokemontcg.io/cardmarket/sv4pt5-221	2024-12-31	cardmarket
2372	sv4pt5-222	https://prices.pokemontcg.io/cardmarket/sv4pt5-222	2024-12-31	cardmarket
2373	sv4pt5-223	https://prices.pokemontcg.io/cardmarket/sv4pt5-223	2024-12-31	cardmarket
2374	sv4pt5-224	https://prices.pokemontcg.io/cardmarket/sv4pt5-224	2024-12-31	cardmarket
2375	sv4pt5-225	https://prices.pokemontcg.io/cardmarket/sv4pt5-225	2024-12-31	cardmarket
2376	sv4pt5-226	https://prices.pokemontcg.io/cardmarket/sv4pt5-226	2024-12-31	cardmarket
2377	sv4pt5-227	https://prices.pokemontcg.io/cardmarket/sv4pt5-227	2024-12-31	cardmarket
2378	sv4pt5-228	https://prices.pokemontcg.io/cardmarket/sv4pt5-228	2024-12-31	cardmarket
2379	sv4pt5-229	https://prices.pokemontcg.io/cardmarket/sv4pt5-229	2024-12-31	cardmarket
2380	sv4pt5-230	https://prices.pokemontcg.io/cardmarket/sv4pt5-230	2024-12-31	cardmarket
2381	sv4pt5-231	https://prices.pokemontcg.io/cardmarket/sv4pt5-231	2024-12-31	cardmarket
2382	sv4pt5-232	https://prices.pokemontcg.io/cardmarket/sv4pt5-232	2024-12-31	cardmarket
2383	sv4pt5-233	https://prices.pokemontcg.io/cardmarket/sv4pt5-233	2024-12-31	cardmarket
2384	sv4pt5-234	https://prices.pokemontcg.io/cardmarket/sv4pt5-234	2024-12-31	cardmarket
2385	sv4pt5-235	https://prices.pokemontcg.io/cardmarket/sv4pt5-235	2024-12-31	cardmarket
2386	sv4pt5-236	https://prices.pokemontcg.io/cardmarket/sv4pt5-236	2024-12-31	cardmarket
2387	sv4pt5-237	https://prices.pokemontcg.io/cardmarket/sv4pt5-237	2024-12-31	cardmarket
2388	sv4pt5-238	https://prices.pokemontcg.io/cardmarket/sv4pt5-238	2024-12-31	cardmarket
2389	sv4pt5-239	https://prices.pokemontcg.io/cardmarket/sv4pt5-239	2024-12-31	cardmarket
2390	sv4pt5-240	https://prices.pokemontcg.io/cardmarket/sv4pt5-240	2024-12-31	cardmarket
2391	sv4pt5-241	https://prices.pokemontcg.io/cardmarket/sv4pt5-241	2024-12-31	cardmarket
2392	sv4pt5-242	https://prices.pokemontcg.io/cardmarket/sv4pt5-242	2024-12-31	cardmarket
2393	sv4pt5-243	https://prices.pokemontcg.io/cardmarket/sv4pt5-243	2024-12-31	cardmarket
2394	sv4pt5-244	https://prices.pokemontcg.io/cardmarket/sv4pt5-244	2024-12-31	cardmarket
2395	sv4pt5-245	https://prices.pokemontcg.io/cardmarket/sv4pt5-245	2024-12-31	cardmarket
2396	sv5-1	https://prices.pokemontcg.io/tcgplayer/sv5-1	2024-12-31	tcgplayer
2397	sv5-2	https://prices.pokemontcg.io/tcgplayer/sv5-2	2024-12-31	tcgplayer
2398	sv5-3	https://prices.pokemontcg.io/tcgplayer/sv5-3	2024-12-31	tcgplayer
2399	sv5-4	https://prices.pokemontcg.io/tcgplayer/sv5-4	2024-12-31	tcgplayer
2400	sv5-5	https://prices.pokemontcg.io/tcgplayer/sv5-5	2024-12-31	tcgplayer
2401	sv5-6	https://prices.pokemontcg.io/tcgplayer/sv5-6	2024-12-31	tcgplayer
2402	sv5-7	https://prices.pokemontcg.io/tcgplayer/sv5-7	2024-12-31	tcgplayer
2403	sv5-8	https://prices.pokemontcg.io/tcgplayer/sv5-8	2024-12-31	tcgplayer
2404	sv5-9	https://prices.pokemontcg.io/tcgplayer/sv5-9	2024-12-31	tcgplayer
2405	sv5-10	https://prices.pokemontcg.io/tcgplayer/sv5-10	2024-12-31	tcgplayer
2406	sv5-11	https://prices.pokemontcg.io/tcgplayer/sv5-11	2024-12-31	tcgplayer
2407	sv5-12	https://prices.pokemontcg.io/tcgplayer/sv5-12	2024-12-31	tcgplayer
2408	sv5-13	https://prices.pokemontcg.io/tcgplayer/sv5-13	2024-12-31	tcgplayer
2409	sv5-14	https://prices.pokemontcg.io/tcgplayer/sv5-14	2024-12-31	tcgplayer
2410	sv5-15	https://prices.pokemontcg.io/tcgplayer/sv5-15	2024-12-31	tcgplayer
2411	sv5-16	https://prices.pokemontcg.io/tcgplayer/sv5-16	2024-12-31	tcgplayer
2412	sv5-17	https://prices.pokemontcg.io/tcgplayer/sv5-17	2024-12-31	tcgplayer
2413	sv5-18	https://prices.pokemontcg.io/tcgplayer/sv5-18	2024-12-31	tcgplayer
2414	sv5-19	https://prices.pokemontcg.io/tcgplayer/sv5-19	2024-12-31	tcgplayer
2415	sv5-20	https://prices.pokemontcg.io/tcgplayer/sv5-20	2024-12-31	tcgplayer
2416	sv5-21	https://prices.pokemontcg.io/tcgplayer/sv5-21	2024-12-31	tcgplayer
2417	sv5-22	https://prices.pokemontcg.io/tcgplayer/sv5-22	2024-12-31	tcgplayer
2418	sv5-23	https://prices.pokemontcg.io/tcgplayer/sv5-23	2024-12-31	tcgplayer
2419	sv5-24	https://prices.pokemontcg.io/tcgplayer/sv5-24	2024-12-31	tcgplayer
2420	sv5-25	https://prices.pokemontcg.io/tcgplayer/sv5-25	2024-12-31	tcgplayer
2421	sv5-26	https://prices.pokemontcg.io/tcgplayer/sv5-26	2024-12-31	tcgplayer
2422	sv5-27	https://prices.pokemontcg.io/tcgplayer/sv5-27	2024-12-31	tcgplayer
2423	sv5-28	https://prices.pokemontcg.io/tcgplayer/sv5-28	2024-12-31	tcgplayer
2424	sv5-29	https://prices.pokemontcg.io/tcgplayer/sv5-29	2024-12-31	tcgplayer
2425	sv5-30	https://prices.pokemontcg.io/tcgplayer/sv5-30	2024-12-31	tcgplayer
2426	sv5-31	https://prices.pokemontcg.io/tcgplayer/sv5-31	2024-12-31	tcgplayer
2427	sv5-32	https://prices.pokemontcg.io/tcgplayer/sv5-32	2024-12-31	tcgplayer
2428	sv5-33	https://prices.pokemontcg.io/tcgplayer/sv5-33	2024-12-31	tcgplayer
2429	sv5-34	https://prices.pokemontcg.io/tcgplayer/sv5-34	2024-12-31	tcgplayer
2430	sv5-35	https://prices.pokemontcg.io/tcgplayer/sv5-35	2024-12-31	tcgplayer
2431	sv5-36	https://prices.pokemontcg.io/tcgplayer/sv5-36	2024-12-31	tcgplayer
2432	sv5-37	https://prices.pokemontcg.io/tcgplayer/sv5-37	2024-12-31	tcgplayer
2433	sv5-38	https://prices.pokemontcg.io/tcgplayer/sv5-38	2024-12-31	tcgplayer
2434	sv5-39	https://prices.pokemontcg.io/tcgplayer/sv5-39	2024-12-31	tcgplayer
2435	sv5-40	https://prices.pokemontcg.io/tcgplayer/sv5-40	2024-12-31	tcgplayer
2436	sv5-41	https://prices.pokemontcg.io/tcgplayer/sv5-41	2024-12-31	tcgplayer
2437	sv5-42	https://prices.pokemontcg.io/tcgplayer/sv5-42	2024-12-31	tcgplayer
2438	sv5-43	https://prices.pokemontcg.io/tcgplayer/sv5-43	2024-12-31	tcgplayer
2439	sv5-44	https://prices.pokemontcg.io/tcgplayer/sv5-44	2024-12-31	tcgplayer
2440	sv5-45	https://prices.pokemontcg.io/tcgplayer/sv5-45	2024-12-31	tcgplayer
2441	sv5-46	https://prices.pokemontcg.io/tcgplayer/sv5-46	2024-12-31	tcgplayer
2442	sv5-47	https://prices.pokemontcg.io/tcgplayer/sv5-47	2024-12-31	tcgplayer
2443	sv5-48	https://prices.pokemontcg.io/tcgplayer/sv5-48	2024-12-31	tcgplayer
2444	sv5-49	https://prices.pokemontcg.io/tcgplayer/sv5-49	2024-12-31	tcgplayer
2445	sv5-50	https://prices.pokemontcg.io/tcgplayer/sv5-50	2024-12-31	tcgplayer
2446	sv5-51	https://prices.pokemontcg.io/tcgplayer/sv5-51	2024-12-31	tcgplayer
2447	sv5-52	https://prices.pokemontcg.io/tcgplayer/sv5-52	2024-12-31	tcgplayer
2448	sv5-53	https://prices.pokemontcg.io/tcgplayer/sv5-53	2024-12-31	tcgplayer
2449	sv5-54	https://prices.pokemontcg.io/tcgplayer/sv5-54	2024-12-31	tcgplayer
2450	sv5-55	https://prices.pokemontcg.io/tcgplayer/sv5-55	2024-12-31	tcgplayer
2451	sv5-56	https://prices.pokemontcg.io/tcgplayer/sv5-56	2024-12-31	tcgplayer
2452	sv5-57	https://prices.pokemontcg.io/tcgplayer/sv5-57	2024-12-31	tcgplayer
2453	sv5-58	https://prices.pokemontcg.io/tcgplayer/sv5-58	2024-12-31	tcgplayer
2454	sv5-59	https://prices.pokemontcg.io/tcgplayer/sv5-59	2024-12-31	tcgplayer
2455	sv5-60	https://prices.pokemontcg.io/tcgplayer/sv5-60	2024-12-31	tcgplayer
2456	sv5-61	https://prices.pokemontcg.io/tcgplayer/sv5-61	2024-12-31	tcgplayer
2457	sv5-62	https://prices.pokemontcg.io/tcgplayer/sv5-62	2024-12-31	tcgplayer
2458	sv5-63	https://prices.pokemontcg.io/tcgplayer/sv5-63	2024-12-31	tcgplayer
2459	sv5-64	https://prices.pokemontcg.io/tcgplayer/sv5-64	2024-12-31	tcgplayer
2460	sv5-65	https://prices.pokemontcg.io/tcgplayer/sv5-65	2024-12-31	tcgplayer
2461	sv5-66	https://prices.pokemontcg.io/tcgplayer/sv5-66	2024-12-31	tcgplayer
2462	sv5-67	https://prices.pokemontcg.io/tcgplayer/sv5-67	2024-12-31	tcgplayer
2463	sv5-68	https://prices.pokemontcg.io/tcgplayer/sv5-68	2024-12-31	tcgplayer
2464	sv5-69	https://prices.pokemontcg.io/tcgplayer/sv5-69	2024-12-31	tcgplayer
2465	sv5-70	https://prices.pokemontcg.io/tcgplayer/sv5-70	2024-12-31	tcgplayer
2466	sv5-71	https://prices.pokemontcg.io/tcgplayer/sv5-71	2024-12-31	tcgplayer
2467	sv5-72	https://prices.pokemontcg.io/tcgplayer/sv5-72	2024-12-31	tcgplayer
2468	sv5-73	https://prices.pokemontcg.io/tcgplayer/sv5-73	2024-12-31	tcgplayer
2469	sv5-74	https://prices.pokemontcg.io/tcgplayer/sv5-74	2024-12-31	tcgplayer
2470	sv5-75	https://prices.pokemontcg.io/tcgplayer/sv5-75	2024-12-31	tcgplayer
2471	sv5-76	https://prices.pokemontcg.io/tcgplayer/sv5-76	2024-12-31	tcgplayer
2472	sv5-77	https://prices.pokemontcg.io/tcgplayer/sv5-77	2024-12-31	tcgplayer
2473	sv5-78	https://prices.pokemontcg.io/tcgplayer/sv5-78	2024-12-31	tcgplayer
2474	sv5-79	https://prices.pokemontcg.io/tcgplayer/sv5-79	2024-12-31	tcgplayer
2475	sv5-80	https://prices.pokemontcg.io/tcgplayer/sv5-80	2024-12-31	tcgplayer
2476	sv5-81	https://prices.pokemontcg.io/tcgplayer/sv5-81	2024-12-31	tcgplayer
2477	sv5-82	https://prices.pokemontcg.io/tcgplayer/sv5-82	2024-12-31	tcgplayer
2478	sv5-83	https://prices.pokemontcg.io/tcgplayer/sv5-83	2024-12-31	tcgplayer
2479	sv5-84	https://prices.pokemontcg.io/tcgplayer/sv5-84	2024-12-31	tcgplayer
2480	sv5-85	https://prices.pokemontcg.io/tcgplayer/sv5-85	2024-12-31	tcgplayer
2481	sv5-86	https://prices.pokemontcg.io/tcgplayer/sv5-86	2024-12-31	tcgplayer
2482	sv5-87	https://prices.pokemontcg.io/tcgplayer/sv5-87	2024-12-31	tcgplayer
2483	sv5-88	https://prices.pokemontcg.io/tcgplayer/sv5-88	2024-12-31	tcgplayer
2484	sv5-89	https://prices.pokemontcg.io/tcgplayer/sv5-89	2024-12-31	tcgplayer
2485	sv5-90	https://prices.pokemontcg.io/tcgplayer/sv5-90	2024-12-31	tcgplayer
2486	sv5-91	https://prices.pokemontcg.io/tcgplayer/sv5-91	2024-12-31	tcgplayer
2487	sv5-92	https://prices.pokemontcg.io/tcgplayer/sv5-92	2024-12-31	tcgplayer
2488	sv5-93	https://prices.pokemontcg.io/tcgplayer/sv5-93	2024-12-31	tcgplayer
2489	sv5-94	https://prices.pokemontcg.io/tcgplayer/sv5-94	2024-12-31	tcgplayer
2490	sv5-95	https://prices.pokemontcg.io/tcgplayer/sv5-95	2024-12-31	tcgplayer
2491	sv5-96	https://prices.pokemontcg.io/tcgplayer/sv5-96	2024-12-31	tcgplayer
2492	sv5-97	https://prices.pokemontcg.io/tcgplayer/sv5-97	2024-12-31	tcgplayer
2493	sv5-98	https://prices.pokemontcg.io/tcgplayer/sv5-98	2024-12-31	tcgplayer
2494	sv5-99	https://prices.pokemontcg.io/tcgplayer/sv5-99	2024-12-31	tcgplayer
2495	sv5-100	https://prices.pokemontcg.io/tcgplayer/sv5-100	2024-12-31	tcgplayer
2496	sv5-101	https://prices.pokemontcg.io/tcgplayer/sv5-101	2024-12-31	tcgplayer
2497	sv5-102	https://prices.pokemontcg.io/tcgplayer/sv5-102	2024-12-31	tcgplayer
2498	sv5-103	https://prices.pokemontcg.io/tcgplayer/sv5-103	2024-12-31	tcgplayer
2499	sv5-104	https://prices.pokemontcg.io/tcgplayer/sv5-104	2024-12-31	tcgplayer
2500	sv5-105	https://prices.pokemontcg.io/tcgplayer/sv5-105	2024-12-31	tcgplayer
2501	sv5-106	https://prices.pokemontcg.io/tcgplayer/sv5-106	2024-12-31	tcgplayer
2502	sv5-107	https://prices.pokemontcg.io/tcgplayer/sv5-107	2024-12-31	tcgplayer
2503	sv5-108	https://prices.pokemontcg.io/tcgplayer/sv5-108	2024-12-31	tcgplayer
2504	sv5-109	https://prices.pokemontcg.io/tcgplayer/sv5-109	2024-12-31	tcgplayer
2505	sv5-110	https://prices.pokemontcg.io/tcgplayer/sv5-110	2024-12-31	tcgplayer
2506	sv5-111	https://prices.pokemontcg.io/tcgplayer/sv5-111	2024-12-31	tcgplayer
2507	sv5-112	https://prices.pokemontcg.io/tcgplayer/sv5-112	2024-12-31	tcgplayer
2508	sv5-113	https://prices.pokemontcg.io/tcgplayer/sv5-113	2024-12-31	tcgplayer
2509	sv5-114	https://prices.pokemontcg.io/tcgplayer/sv5-114	2024-12-31	tcgplayer
2510	sv5-115	https://prices.pokemontcg.io/tcgplayer/sv5-115	2024-12-31	tcgplayer
2511	sv5-116	https://prices.pokemontcg.io/tcgplayer/sv5-116	2024-12-31	tcgplayer
2512	sv5-117	https://prices.pokemontcg.io/tcgplayer/sv5-117	2024-12-31	tcgplayer
2513	sv5-118	https://prices.pokemontcg.io/tcgplayer/sv5-118	2024-12-31	tcgplayer
2514	sv5-119	https://prices.pokemontcg.io/tcgplayer/sv5-119	2024-12-31	tcgplayer
2515	sv5-120	https://prices.pokemontcg.io/tcgplayer/sv5-120	2024-12-31	tcgplayer
2516	sv5-121	https://prices.pokemontcg.io/tcgplayer/sv5-121	2024-12-31	tcgplayer
2517	sv5-122	https://prices.pokemontcg.io/tcgplayer/sv5-122	2024-12-31	tcgplayer
2518	sv5-123	https://prices.pokemontcg.io/tcgplayer/sv5-123	2024-12-31	tcgplayer
2519	sv5-124	https://prices.pokemontcg.io/tcgplayer/sv5-124	2024-12-31	tcgplayer
2520	sv5-125	https://prices.pokemontcg.io/tcgplayer/sv5-125	2024-12-31	tcgplayer
2521	sv5-126	https://prices.pokemontcg.io/tcgplayer/sv5-126	2024-12-31	tcgplayer
2522	sv5-127	https://prices.pokemontcg.io/tcgplayer/sv5-127	2024-12-31	tcgplayer
2523	sv5-128	https://prices.pokemontcg.io/tcgplayer/sv5-128	2024-12-31	tcgplayer
2524	sv5-129	https://prices.pokemontcg.io/tcgplayer/sv5-129	2024-12-31	tcgplayer
2525	sv5-130	https://prices.pokemontcg.io/tcgplayer/sv5-130	2024-12-31	tcgplayer
2526	sv5-131	https://prices.pokemontcg.io/tcgplayer/sv5-131	2024-12-31	tcgplayer
2527	sv5-132	https://prices.pokemontcg.io/tcgplayer/sv5-132	2024-12-31	tcgplayer
2528	sv5-133	https://prices.pokemontcg.io/tcgplayer/sv5-133	2024-12-31	tcgplayer
2529	sv5-134	https://prices.pokemontcg.io/tcgplayer/sv5-134	2024-12-31	tcgplayer
2530	sv5-135	https://prices.pokemontcg.io/tcgplayer/sv5-135	2024-12-31	tcgplayer
2531	sv5-136	https://prices.pokemontcg.io/tcgplayer/sv5-136	2024-12-31	tcgplayer
2532	sv5-137	https://prices.pokemontcg.io/tcgplayer/sv5-137	2024-12-31	tcgplayer
2533	sv5-138	https://prices.pokemontcg.io/tcgplayer/sv5-138	2024-12-31	tcgplayer
2534	sv5-139	https://prices.pokemontcg.io/tcgplayer/sv5-139	2024-12-31	tcgplayer
2535	sv5-140	https://prices.pokemontcg.io/tcgplayer/sv5-140	2024-12-31	tcgplayer
2536	sv5-141	https://prices.pokemontcg.io/tcgplayer/sv5-141	2024-12-31	tcgplayer
2537	sv5-142	https://prices.pokemontcg.io/tcgplayer/sv5-142	2024-12-31	tcgplayer
2538	sv5-143	https://prices.pokemontcg.io/tcgplayer/sv5-143	2024-12-31	tcgplayer
2539	sv5-144	https://prices.pokemontcg.io/tcgplayer/sv5-144	2024-12-31	tcgplayer
2540	sv5-145	https://prices.pokemontcg.io/tcgplayer/sv5-145	2024-12-31	tcgplayer
2541	sv5-146	https://prices.pokemontcg.io/tcgplayer/sv5-146	2024-12-31	tcgplayer
2542	sv5-147	https://prices.pokemontcg.io/tcgplayer/sv5-147	2024-12-31	tcgplayer
2543	sv5-148	https://prices.pokemontcg.io/tcgplayer/sv5-148	2024-12-31	tcgplayer
2544	sv5-149	https://prices.pokemontcg.io/tcgplayer/sv5-149	2024-12-31	tcgplayer
2545	sv5-150	https://prices.pokemontcg.io/tcgplayer/sv5-150	2024-12-31	tcgplayer
2546	sv5-151	https://prices.pokemontcg.io/tcgplayer/sv5-151	2024-12-31	tcgplayer
2547	sv5-152	https://prices.pokemontcg.io/tcgplayer/sv5-152	2024-12-31	tcgplayer
2548	sv5-153	https://prices.pokemontcg.io/tcgplayer/sv5-153	2024-12-31	tcgplayer
2549	sv5-154	https://prices.pokemontcg.io/tcgplayer/sv5-154	2024-12-31	tcgplayer
2550	sv5-155	https://prices.pokemontcg.io/tcgplayer/sv5-155	2024-12-31	tcgplayer
2551	sv5-156	https://prices.pokemontcg.io/tcgplayer/sv5-156	2024-12-31	tcgplayer
2552	sv5-157	https://prices.pokemontcg.io/tcgplayer/sv5-157	2024-12-31	tcgplayer
2553	sv5-158	https://prices.pokemontcg.io/tcgplayer/sv5-158	2024-12-31	tcgplayer
2554	sv5-159	https://prices.pokemontcg.io/tcgplayer/sv5-159	2024-12-31	tcgplayer
2555	sv5-160	https://prices.pokemontcg.io/tcgplayer/sv5-160	2024-12-31	tcgplayer
2556	sv5-161	https://prices.pokemontcg.io/tcgplayer/sv5-161	2024-12-31	tcgplayer
2557	sv5-162	https://prices.pokemontcg.io/tcgplayer/sv5-162	2024-12-31	tcgplayer
2558	sv5-163	https://prices.pokemontcg.io/tcgplayer/sv5-163	2024-12-31	tcgplayer
2559	sv5-164	https://prices.pokemontcg.io/tcgplayer/sv5-164	2024-12-31	tcgplayer
2560	sv5-165	https://prices.pokemontcg.io/tcgplayer/sv5-165	2024-12-31	tcgplayer
2561	sv5-166	https://prices.pokemontcg.io/tcgplayer/sv5-166	2024-12-31	tcgplayer
2562	sv5-167	https://prices.pokemontcg.io/tcgplayer/sv5-167	2024-12-31	tcgplayer
2563	sv5-168	https://prices.pokemontcg.io/tcgplayer/sv5-168	2024-12-31	tcgplayer
2564	sv5-169	https://prices.pokemontcg.io/tcgplayer/sv5-169	2024-12-31	tcgplayer
2565	sv5-170	https://prices.pokemontcg.io/tcgplayer/sv5-170	2024-12-31	tcgplayer
2566	sv5-171	https://prices.pokemontcg.io/tcgplayer/sv5-171	2024-12-31	tcgplayer
2567	sv5-172	https://prices.pokemontcg.io/tcgplayer/sv5-172	2024-12-31	tcgplayer
2568	sv5-173	https://prices.pokemontcg.io/tcgplayer/sv5-173	2024-12-31	tcgplayer
2569	sv5-174	https://prices.pokemontcg.io/tcgplayer/sv5-174	2024-12-31	tcgplayer
2570	sv5-175	https://prices.pokemontcg.io/tcgplayer/sv5-175	2024-12-31	tcgplayer
2571	sv5-176	https://prices.pokemontcg.io/tcgplayer/sv5-176	2024-12-31	tcgplayer
2572	sv5-177	https://prices.pokemontcg.io/tcgplayer/sv5-177	2024-12-31	tcgplayer
2573	sv5-178	https://prices.pokemontcg.io/tcgplayer/sv5-178	2024-12-31	tcgplayer
2574	sv5-179	https://prices.pokemontcg.io/tcgplayer/sv5-179	2024-12-31	tcgplayer
2575	sv5-180	https://prices.pokemontcg.io/tcgplayer/sv5-180	2024-12-31	tcgplayer
2576	sv5-181	https://prices.pokemontcg.io/tcgplayer/sv5-181	2024-12-31	tcgplayer
2577	sv5-182	https://prices.pokemontcg.io/tcgplayer/sv5-182	2024-12-31	tcgplayer
2578	sv5-183	https://prices.pokemontcg.io/tcgplayer/sv5-183	2024-12-31	tcgplayer
2579	sv5-184	https://prices.pokemontcg.io/tcgplayer/sv5-184	2024-12-31	tcgplayer
2580	sv5-185	https://prices.pokemontcg.io/tcgplayer/sv5-185	2024-12-31	tcgplayer
2581	sv5-186	https://prices.pokemontcg.io/tcgplayer/sv5-186	2024-12-31	tcgplayer
2582	sv5-187	https://prices.pokemontcg.io/tcgplayer/sv5-187	2024-12-31	tcgplayer
2583	sv5-188	https://prices.pokemontcg.io/tcgplayer/sv5-188	2024-12-31	tcgplayer
2584	sv5-189	https://prices.pokemontcg.io/tcgplayer/sv5-189	2024-12-31	tcgplayer
2585	sv5-190	https://prices.pokemontcg.io/tcgplayer/sv5-190	2024-12-31	tcgplayer
2586	sv5-191	https://prices.pokemontcg.io/tcgplayer/sv5-191	2024-12-31	tcgplayer
2587	sv5-192	https://prices.pokemontcg.io/tcgplayer/sv5-192	2024-12-31	tcgplayer
2588	sv5-193	https://prices.pokemontcg.io/tcgplayer/sv5-193	2024-12-31	tcgplayer
2589	sv5-194	https://prices.pokemontcg.io/tcgplayer/sv5-194	2024-12-31	tcgplayer
2590	sv5-195	https://prices.pokemontcg.io/tcgplayer/sv5-195	2024-12-31	tcgplayer
2591	sv5-196	https://prices.pokemontcg.io/tcgplayer/sv5-196	2024-12-31	tcgplayer
2592	sv5-197	https://prices.pokemontcg.io/tcgplayer/sv5-197	2024-12-31	tcgplayer
2593	sv5-198	https://prices.pokemontcg.io/tcgplayer/sv5-198	2024-12-31	tcgplayer
2594	sv5-199	https://prices.pokemontcg.io/tcgplayer/sv5-199	2024-12-31	tcgplayer
2595	sv5-200	https://prices.pokemontcg.io/tcgplayer/sv5-200	2024-12-31	tcgplayer
2596	sv5-201	https://prices.pokemontcg.io/tcgplayer/sv5-201	2024-12-31	tcgplayer
2597	sv5-202	https://prices.pokemontcg.io/tcgplayer/sv5-202	2024-12-31	tcgplayer
2598	sv5-203	https://prices.pokemontcg.io/tcgplayer/sv5-203	2024-12-31	tcgplayer
2599	sv5-204	https://prices.pokemontcg.io/tcgplayer/sv5-204	2024-12-31	tcgplayer
2600	sv5-205	https://prices.pokemontcg.io/tcgplayer/sv5-205	2024-12-31	tcgplayer
2601	sv5-206	https://prices.pokemontcg.io/tcgplayer/sv5-206	2024-12-31	tcgplayer
2602	sv5-207	https://prices.pokemontcg.io/tcgplayer/sv5-207	2024-12-31	tcgplayer
2603	sv5-208	https://prices.pokemontcg.io/tcgplayer/sv5-208	2024-12-31	tcgplayer
2604	sv5-209	https://prices.pokemontcg.io/tcgplayer/sv5-209	2024-12-31	tcgplayer
2605	sv5-210	https://prices.pokemontcg.io/tcgplayer/sv5-210	2024-12-31	tcgplayer
2606	sv5-211	https://prices.pokemontcg.io/tcgplayer/sv5-211	2024-12-31	tcgplayer
2607	sv5-212	https://prices.pokemontcg.io/tcgplayer/sv5-212	2024-12-31	tcgplayer
2608	sv5-213	https://prices.pokemontcg.io/tcgplayer/sv5-213	2024-12-31	tcgplayer
2609	sv5-214	https://prices.pokemontcg.io/tcgplayer/sv5-214	2024-12-31	tcgplayer
2610	sv5-215	https://prices.pokemontcg.io/tcgplayer/sv5-215	2024-12-31	tcgplayer
2611	sv5-216	https://prices.pokemontcg.io/tcgplayer/sv5-216	2024-12-31	tcgplayer
2612	sv5-217	https://prices.pokemontcg.io/tcgplayer/sv5-217	2024-12-31	tcgplayer
2613	sv5-218	https://prices.pokemontcg.io/tcgplayer/sv5-218	2024-12-31	tcgplayer
2614	sv5-1	https://prices.pokemontcg.io/cardmarket/sv5-1	2024-12-31	cardmarket
2615	sv5-2	https://prices.pokemontcg.io/cardmarket/sv5-2	2024-12-31	cardmarket
2616	sv5-3	https://prices.pokemontcg.io/cardmarket/sv5-3	2024-12-31	cardmarket
2617	sv5-4	https://prices.pokemontcg.io/cardmarket/sv5-4	2024-12-31	cardmarket
2618	sv5-5	https://prices.pokemontcg.io/cardmarket/sv5-5	2024-12-31	cardmarket
2619	sv5-6	https://prices.pokemontcg.io/cardmarket/sv5-6	2024-12-31	cardmarket
2620	sv5-7	https://prices.pokemontcg.io/cardmarket/sv5-7	2024-12-31	cardmarket
2621	sv5-8	https://prices.pokemontcg.io/cardmarket/sv5-8	2024-12-31	cardmarket
2622	sv5-9	https://prices.pokemontcg.io/cardmarket/sv5-9	2024-12-31	cardmarket
2623	sv5-10	https://prices.pokemontcg.io/cardmarket/sv5-10	2024-12-31	cardmarket
2624	sv5-11	https://prices.pokemontcg.io/cardmarket/sv5-11	2024-12-31	cardmarket
2625	sv5-12	https://prices.pokemontcg.io/cardmarket/sv5-12	2024-12-31	cardmarket
2626	sv5-13	https://prices.pokemontcg.io/cardmarket/sv5-13	2024-12-31	cardmarket
2627	sv5-14	https://prices.pokemontcg.io/cardmarket/sv5-14	2024-12-31	cardmarket
2628	sv5-15	https://prices.pokemontcg.io/cardmarket/sv5-15	2024-12-31	cardmarket
2629	sv5-16	https://prices.pokemontcg.io/cardmarket/sv5-16	2024-12-31	cardmarket
2630	sv5-17	https://prices.pokemontcg.io/cardmarket/sv5-17	2024-12-31	cardmarket
2631	sv5-18	https://prices.pokemontcg.io/cardmarket/sv5-18	2024-12-31	cardmarket
2632	sv5-19	https://prices.pokemontcg.io/cardmarket/sv5-19	2024-12-31	cardmarket
2633	sv5-20	https://prices.pokemontcg.io/cardmarket/sv5-20	2024-12-31	cardmarket
2634	sv5-21	https://prices.pokemontcg.io/cardmarket/sv5-21	2024-12-31	cardmarket
2635	sv5-22	https://prices.pokemontcg.io/cardmarket/sv5-22	2024-12-31	cardmarket
2636	sv5-23	https://prices.pokemontcg.io/cardmarket/sv5-23	2024-12-31	cardmarket
2637	sv5-24	https://prices.pokemontcg.io/cardmarket/sv5-24	2024-12-31	cardmarket
2638	sv5-25	https://prices.pokemontcg.io/cardmarket/sv5-25	2024-12-31	cardmarket
2639	sv5-26	https://prices.pokemontcg.io/cardmarket/sv5-26	2024-12-31	cardmarket
2640	sv5-27	https://prices.pokemontcg.io/cardmarket/sv5-27	2024-12-31	cardmarket
2641	sv5-28	https://prices.pokemontcg.io/cardmarket/sv5-28	2024-12-31	cardmarket
2642	sv5-29	https://prices.pokemontcg.io/cardmarket/sv5-29	2024-12-31	cardmarket
2643	sv5-30	https://prices.pokemontcg.io/cardmarket/sv5-30	2024-12-31	cardmarket
2644	sv5-31	https://prices.pokemontcg.io/cardmarket/sv5-31	2024-12-31	cardmarket
2645	sv5-32	https://prices.pokemontcg.io/cardmarket/sv5-32	2024-12-31	cardmarket
2646	sv5-33	https://prices.pokemontcg.io/cardmarket/sv5-33	2024-12-31	cardmarket
2647	sv5-34	https://prices.pokemontcg.io/cardmarket/sv5-34	2024-12-31	cardmarket
2648	sv5-35	https://prices.pokemontcg.io/cardmarket/sv5-35	2024-12-31	cardmarket
2649	sv5-36	https://prices.pokemontcg.io/cardmarket/sv5-36	2024-12-31	cardmarket
2650	sv5-37	https://prices.pokemontcg.io/cardmarket/sv5-37	2024-12-31	cardmarket
2651	sv5-38	https://prices.pokemontcg.io/cardmarket/sv5-38	2024-12-31	cardmarket
2652	sv5-39	https://prices.pokemontcg.io/cardmarket/sv5-39	2024-12-31	cardmarket
2653	sv5-40	https://prices.pokemontcg.io/cardmarket/sv5-40	2024-12-31	cardmarket
2654	sv5-41	https://prices.pokemontcg.io/cardmarket/sv5-41	2024-12-31	cardmarket
2655	sv5-42	https://prices.pokemontcg.io/cardmarket/sv5-42	2024-12-31	cardmarket
2656	sv5-43	https://prices.pokemontcg.io/cardmarket/sv5-43	2024-12-31	cardmarket
2657	sv5-44	https://prices.pokemontcg.io/cardmarket/sv5-44	2024-12-31	cardmarket
2658	sv5-45	https://prices.pokemontcg.io/cardmarket/sv5-45	2024-12-31	cardmarket
2659	sv5-46	https://prices.pokemontcg.io/cardmarket/sv5-46	2024-12-31	cardmarket
2660	sv5-47	https://prices.pokemontcg.io/cardmarket/sv5-47	2024-12-31	cardmarket
2661	sv5-48	https://prices.pokemontcg.io/cardmarket/sv5-48	2024-12-31	cardmarket
2662	sv5-49	https://prices.pokemontcg.io/cardmarket/sv5-49	2024-12-31	cardmarket
2663	sv5-50	https://prices.pokemontcg.io/cardmarket/sv5-50	2024-12-31	cardmarket
2664	sv5-51	https://prices.pokemontcg.io/cardmarket/sv5-51	2024-12-31	cardmarket
2665	sv5-52	https://prices.pokemontcg.io/cardmarket/sv5-52	2024-12-31	cardmarket
2666	sv5-53	https://prices.pokemontcg.io/cardmarket/sv5-53	2024-12-31	cardmarket
2667	sv5-54	https://prices.pokemontcg.io/cardmarket/sv5-54	2024-12-31	cardmarket
2668	sv5-55	https://prices.pokemontcg.io/cardmarket/sv5-55	2024-12-31	cardmarket
2669	sv5-56	https://prices.pokemontcg.io/cardmarket/sv5-56	2024-12-31	cardmarket
2670	sv5-57	https://prices.pokemontcg.io/cardmarket/sv5-57	2024-12-31	cardmarket
2671	sv5-58	https://prices.pokemontcg.io/cardmarket/sv5-58	2024-12-31	cardmarket
2672	sv5-59	https://prices.pokemontcg.io/cardmarket/sv5-59	2024-12-31	cardmarket
2673	sv5-60	https://prices.pokemontcg.io/cardmarket/sv5-60	2024-12-31	cardmarket
2674	sv5-61	https://prices.pokemontcg.io/cardmarket/sv5-61	2024-12-31	cardmarket
2675	sv5-62	https://prices.pokemontcg.io/cardmarket/sv5-62	2024-12-31	cardmarket
2676	sv5-63	https://prices.pokemontcg.io/cardmarket/sv5-63	2024-12-31	cardmarket
2677	sv5-64	https://prices.pokemontcg.io/cardmarket/sv5-64	2024-12-31	cardmarket
2678	sv5-65	https://prices.pokemontcg.io/cardmarket/sv5-65	2024-12-31	cardmarket
2679	sv5-66	https://prices.pokemontcg.io/cardmarket/sv5-66	2024-12-31	cardmarket
2680	sv5-67	https://prices.pokemontcg.io/cardmarket/sv5-67	2024-12-31	cardmarket
2681	sv5-68	https://prices.pokemontcg.io/cardmarket/sv5-68	2024-12-31	cardmarket
2682	sv5-69	https://prices.pokemontcg.io/cardmarket/sv5-69	2024-12-31	cardmarket
2683	sv5-70	https://prices.pokemontcg.io/cardmarket/sv5-70	2024-12-31	cardmarket
2684	sv5-71	https://prices.pokemontcg.io/cardmarket/sv5-71	2024-12-31	cardmarket
2685	sv5-72	https://prices.pokemontcg.io/cardmarket/sv5-72	2024-12-31	cardmarket
2686	sv5-73	https://prices.pokemontcg.io/cardmarket/sv5-73	2024-12-31	cardmarket
2687	sv5-74	https://prices.pokemontcg.io/cardmarket/sv5-74	2024-12-31	cardmarket
2688	sv5-75	https://prices.pokemontcg.io/cardmarket/sv5-75	2024-12-31	cardmarket
2689	sv5-76	https://prices.pokemontcg.io/cardmarket/sv5-76	2024-12-31	cardmarket
2690	sv5-77	https://prices.pokemontcg.io/cardmarket/sv5-77	2024-12-31	cardmarket
2691	sv5-78	https://prices.pokemontcg.io/cardmarket/sv5-78	2024-12-31	cardmarket
2692	sv5-79	https://prices.pokemontcg.io/cardmarket/sv5-79	2024-12-31	cardmarket
2693	sv5-80	https://prices.pokemontcg.io/cardmarket/sv5-80	2024-12-31	cardmarket
2694	sv5-81	https://prices.pokemontcg.io/cardmarket/sv5-81	2024-12-31	cardmarket
2695	sv5-82	https://prices.pokemontcg.io/cardmarket/sv5-82	2024-12-31	cardmarket
2696	sv5-83	https://prices.pokemontcg.io/cardmarket/sv5-83	2024-12-31	cardmarket
2697	sv5-84	https://prices.pokemontcg.io/cardmarket/sv5-84	2024-12-31	cardmarket
2698	sv5-85	https://prices.pokemontcg.io/cardmarket/sv5-85	2024-12-31	cardmarket
2699	sv5-86	https://prices.pokemontcg.io/cardmarket/sv5-86	2024-12-31	cardmarket
2700	sv5-87	https://prices.pokemontcg.io/cardmarket/sv5-87	2024-12-31	cardmarket
2701	sv5-88	https://prices.pokemontcg.io/cardmarket/sv5-88	2024-12-31	cardmarket
2702	sv5-89	https://prices.pokemontcg.io/cardmarket/sv5-89	2024-12-31	cardmarket
2703	sv5-90	https://prices.pokemontcg.io/cardmarket/sv5-90	2024-12-31	cardmarket
2704	sv5-91	https://prices.pokemontcg.io/cardmarket/sv5-91	2024-12-31	cardmarket
2705	sv5-92	https://prices.pokemontcg.io/cardmarket/sv5-92	2024-12-31	cardmarket
2706	sv5-93	https://prices.pokemontcg.io/cardmarket/sv5-93	2024-12-31	cardmarket
2707	sv5-94	https://prices.pokemontcg.io/cardmarket/sv5-94	2024-12-31	cardmarket
2708	sv5-95	https://prices.pokemontcg.io/cardmarket/sv5-95	2024-12-31	cardmarket
2709	sv5-96	https://prices.pokemontcg.io/cardmarket/sv5-96	2024-12-31	cardmarket
2710	sv5-97	https://prices.pokemontcg.io/cardmarket/sv5-97	2024-12-31	cardmarket
2711	sv5-98	https://prices.pokemontcg.io/cardmarket/sv5-98	2024-12-31	cardmarket
2712	sv5-99	https://prices.pokemontcg.io/cardmarket/sv5-99	2024-12-31	cardmarket
2713	sv5-100	https://prices.pokemontcg.io/cardmarket/sv5-100	2024-12-31	cardmarket
2714	sv5-101	https://prices.pokemontcg.io/cardmarket/sv5-101	2024-12-31	cardmarket
2715	sv5-102	https://prices.pokemontcg.io/cardmarket/sv5-102	2024-12-31	cardmarket
2716	sv5-103	https://prices.pokemontcg.io/cardmarket/sv5-103	2024-12-31	cardmarket
2717	sv5-104	https://prices.pokemontcg.io/cardmarket/sv5-104	2024-12-31	cardmarket
2718	sv5-105	https://prices.pokemontcg.io/cardmarket/sv5-105	2024-12-31	cardmarket
2719	sv5-106	https://prices.pokemontcg.io/cardmarket/sv5-106	2024-12-31	cardmarket
2720	sv5-107	https://prices.pokemontcg.io/cardmarket/sv5-107	2024-12-31	cardmarket
2721	sv5-108	https://prices.pokemontcg.io/cardmarket/sv5-108	2024-12-31	cardmarket
2722	sv5-109	https://prices.pokemontcg.io/cardmarket/sv5-109	2024-12-31	cardmarket
2723	sv5-110	https://prices.pokemontcg.io/cardmarket/sv5-110	2024-12-31	cardmarket
2724	sv5-111	https://prices.pokemontcg.io/cardmarket/sv5-111	2024-12-31	cardmarket
2725	sv5-112	https://prices.pokemontcg.io/cardmarket/sv5-112	2024-12-31	cardmarket
2726	sv5-113	https://prices.pokemontcg.io/cardmarket/sv5-113	2024-12-31	cardmarket
2727	sv5-114	https://prices.pokemontcg.io/cardmarket/sv5-114	2024-12-31	cardmarket
2728	sv5-115	https://prices.pokemontcg.io/cardmarket/sv5-115	2024-12-31	cardmarket
2729	sv5-116	https://prices.pokemontcg.io/cardmarket/sv5-116	2024-12-31	cardmarket
2730	sv5-117	https://prices.pokemontcg.io/cardmarket/sv5-117	2024-12-31	cardmarket
2731	sv5-118	https://prices.pokemontcg.io/cardmarket/sv5-118	2024-12-31	cardmarket
2732	sv5-119	https://prices.pokemontcg.io/cardmarket/sv5-119	2024-12-31	cardmarket
2733	sv5-120	https://prices.pokemontcg.io/cardmarket/sv5-120	2024-12-31	cardmarket
2734	sv5-121	https://prices.pokemontcg.io/cardmarket/sv5-121	2024-12-31	cardmarket
2735	sv5-122	https://prices.pokemontcg.io/cardmarket/sv5-122	2024-12-31	cardmarket
2736	sv5-123	https://prices.pokemontcg.io/cardmarket/sv5-123	2024-12-31	cardmarket
2737	sv5-124	https://prices.pokemontcg.io/cardmarket/sv5-124	2024-12-31	cardmarket
2738	sv5-125	https://prices.pokemontcg.io/cardmarket/sv5-125	2024-12-31	cardmarket
2739	sv5-126	https://prices.pokemontcg.io/cardmarket/sv5-126	2024-12-31	cardmarket
2740	sv5-127	https://prices.pokemontcg.io/cardmarket/sv5-127	2024-12-31	cardmarket
2741	sv5-128	https://prices.pokemontcg.io/cardmarket/sv5-128	2024-12-31	cardmarket
2742	sv5-129	https://prices.pokemontcg.io/cardmarket/sv5-129	2024-12-31	cardmarket
2743	sv5-130	https://prices.pokemontcg.io/cardmarket/sv5-130	2024-12-31	cardmarket
2744	sv5-131	https://prices.pokemontcg.io/cardmarket/sv5-131	2024-12-31	cardmarket
2745	sv5-132	https://prices.pokemontcg.io/cardmarket/sv5-132	2024-12-31	cardmarket
2746	sv5-133	https://prices.pokemontcg.io/cardmarket/sv5-133	2024-12-31	cardmarket
2747	sv5-134	https://prices.pokemontcg.io/cardmarket/sv5-134	2024-12-31	cardmarket
2748	sv5-135	https://prices.pokemontcg.io/cardmarket/sv5-135	2024-12-31	cardmarket
2749	sv5-136	https://prices.pokemontcg.io/cardmarket/sv5-136	2024-12-31	cardmarket
2750	sv5-137	https://prices.pokemontcg.io/cardmarket/sv5-137	2024-12-31	cardmarket
2751	sv5-138	https://prices.pokemontcg.io/cardmarket/sv5-138	2024-12-31	cardmarket
2752	sv5-139	https://prices.pokemontcg.io/cardmarket/sv5-139	2024-12-31	cardmarket
2753	sv5-140	https://prices.pokemontcg.io/cardmarket/sv5-140	2024-12-31	cardmarket
2754	sv5-141	https://prices.pokemontcg.io/cardmarket/sv5-141	2024-12-31	cardmarket
2755	sv5-142	https://prices.pokemontcg.io/cardmarket/sv5-142	2024-12-31	cardmarket
2756	sv5-143	https://prices.pokemontcg.io/cardmarket/sv5-143	2024-12-31	cardmarket
2757	sv5-144	https://prices.pokemontcg.io/cardmarket/sv5-144	2024-12-31	cardmarket
2758	sv5-145	https://prices.pokemontcg.io/cardmarket/sv5-145	2024-12-31	cardmarket
2759	sv5-146	https://prices.pokemontcg.io/cardmarket/sv5-146	2024-12-31	cardmarket
2760	sv5-147	https://prices.pokemontcg.io/cardmarket/sv5-147	2024-12-31	cardmarket
2761	sv5-148	https://prices.pokemontcg.io/cardmarket/sv5-148	2024-12-31	cardmarket
2762	sv5-149	https://prices.pokemontcg.io/cardmarket/sv5-149	2024-12-31	cardmarket
2763	sv5-150	https://prices.pokemontcg.io/cardmarket/sv5-150	2024-12-31	cardmarket
2764	sv5-151	https://prices.pokemontcg.io/cardmarket/sv5-151	2024-12-31	cardmarket
2765	sv5-152	https://prices.pokemontcg.io/cardmarket/sv5-152	2024-12-31	cardmarket
2766	sv5-153	https://prices.pokemontcg.io/cardmarket/sv5-153	2024-12-31	cardmarket
2767	sv5-154	https://prices.pokemontcg.io/cardmarket/sv5-154	2024-12-31	cardmarket
2768	sv5-155	https://prices.pokemontcg.io/cardmarket/sv5-155	2024-12-31	cardmarket
2769	sv5-156	https://prices.pokemontcg.io/cardmarket/sv5-156	2024-12-31	cardmarket
2770	sv5-157	https://prices.pokemontcg.io/cardmarket/sv5-157	2024-12-31	cardmarket
2771	sv5-158	https://prices.pokemontcg.io/cardmarket/sv5-158	2024-12-31	cardmarket
2772	sv5-159	https://prices.pokemontcg.io/cardmarket/sv5-159	2024-12-31	cardmarket
2773	sv5-160	https://prices.pokemontcg.io/cardmarket/sv5-160	2024-12-31	cardmarket
2774	sv5-161	https://prices.pokemontcg.io/cardmarket/sv5-161	2024-12-31	cardmarket
2775	sv5-162	https://prices.pokemontcg.io/cardmarket/sv5-162	2024-12-31	cardmarket
2776	sv5-163	https://prices.pokemontcg.io/cardmarket/sv5-163	2024-12-31	cardmarket
2777	sv5-164	https://prices.pokemontcg.io/cardmarket/sv5-164	2024-12-31	cardmarket
2778	sv5-165	https://prices.pokemontcg.io/cardmarket/sv5-165	2024-12-31	cardmarket
2779	sv5-166	https://prices.pokemontcg.io/cardmarket/sv5-166	2024-12-31	cardmarket
2780	sv5-167	https://prices.pokemontcg.io/cardmarket/sv5-167	2024-12-31	cardmarket
2781	sv5-168	https://prices.pokemontcg.io/cardmarket/sv5-168	2024-12-31	cardmarket
2782	sv5-169	https://prices.pokemontcg.io/cardmarket/sv5-169	2024-12-31	cardmarket
2783	sv5-170	https://prices.pokemontcg.io/cardmarket/sv5-170	2024-12-31	cardmarket
2784	sv5-171	https://prices.pokemontcg.io/cardmarket/sv5-171	2024-12-31	cardmarket
2785	sv5-172	https://prices.pokemontcg.io/cardmarket/sv5-172	2024-12-31	cardmarket
2786	sv5-173	https://prices.pokemontcg.io/cardmarket/sv5-173	2024-12-31	cardmarket
2787	sv5-174	https://prices.pokemontcg.io/cardmarket/sv5-174	2024-12-31	cardmarket
2788	sv5-175	https://prices.pokemontcg.io/cardmarket/sv5-175	2024-12-31	cardmarket
2789	sv5-176	https://prices.pokemontcg.io/cardmarket/sv5-176	2024-12-31	cardmarket
2790	sv5-177	https://prices.pokemontcg.io/cardmarket/sv5-177	2024-12-31	cardmarket
2791	sv5-178	https://prices.pokemontcg.io/cardmarket/sv5-178	2024-12-31	cardmarket
2792	sv5-179	https://prices.pokemontcg.io/cardmarket/sv5-179	2024-12-31	cardmarket
2793	sv5-180	https://prices.pokemontcg.io/cardmarket/sv5-180	2024-12-31	cardmarket
2794	sv5-181	https://prices.pokemontcg.io/cardmarket/sv5-181	2024-12-31	cardmarket
2795	sv5-182	https://prices.pokemontcg.io/cardmarket/sv5-182	2024-12-31	cardmarket
2796	sv5-183	https://prices.pokemontcg.io/cardmarket/sv5-183	2024-12-31	cardmarket
2797	sv5-184	https://prices.pokemontcg.io/cardmarket/sv5-184	2024-12-31	cardmarket
2798	sv5-185	https://prices.pokemontcg.io/cardmarket/sv5-185	2024-12-31	cardmarket
2799	sv5-186	https://prices.pokemontcg.io/cardmarket/sv5-186	2024-12-31	cardmarket
2800	sv5-187	https://prices.pokemontcg.io/cardmarket/sv5-187	2024-12-31	cardmarket
2801	sv5-188	https://prices.pokemontcg.io/cardmarket/sv5-188	2024-12-31	cardmarket
2802	sv5-189	https://prices.pokemontcg.io/cardmarket/sv5-189	2024-12-31	cardmarket
2803	sv5-190	https://prices.pokemontcg.io/cardmarket/sv5-190	2024-12-31	cardmarket
2804	sv5-191	https://prices.pokemontcg.io/cardmarket/sv5-191	2024-12-31	cardmarket
2805	sv5-192	https://prices.pokemontcg.io/cardmarket/sv5-192	2024-12-31	cardmarket
2806	sv5-193	https://prices.pokemontcg.io/cardmarket/sv5-193	2024-12-31	cardmarket
2807	sv5-194	https://prices.pokemontcg.io/cardmarket/sv5-194	2024-12-31	cardmarket
2808	sv5-195	https://prices.pokemontcg.io/cardmarket/sv5-195	2024-12-31	cardmarket
2809	sv5-196	https://prices.pokemontcg.io/cardmarket/sv5-196	2024-12-31	cardmarket
2810	sv5-197	https://prices.pokemontcg.io/cardmarket/sv5-197	2024-12-31	cardmarket
2811	sv5-198	https://prices.pokemontcg.io/cardmarket/sv5-198	2024-12-31	cardmarket
2812	sv5-199	https://prices.pokemontcg.io/cardmarket/sv5-199	2024-12-31	cardmarket
2813	sv5-200	https://prices.pokemontcg.io/cardmarket/sv5-200	2024-12-31	cardmarket
2814	sv5-201	https://prices.pokemontcg.io/cardmarket/sv5-201	2024-12-31	cardmarket
2815	sv5-202	https://prices.pokemontcg.io/cardmarket/sv5-202	2024-12-31	cardmarket
2816	sv5-203	https://prices.pokemontcg.io/cardmarket/sv5-203	2024-12-31	cardmarket
2817	sv5-204	https://prices.pokemontcg.io/cardmarket/sv5-204	2024-12-31	cardmarket
2818	sv5-205	https://prices.pokemontcg.io/cardmarket/sv5-205	2024-12-31	cardmarket
2819	sv5-206	https://prices.pokemontcg.io/cardmarket/sv5-206	2024-12-31	cardmarket
2820	sv5-207	https://prices.pokemontcg.io/cardmarket/sv5-207	2024-12-31	cardmarket
2821	sv5-208	https://prices.pokemontcg.io/cardmarket/sv5-208	2024-12-31	cardmarket
2822	sv5-209	https://prices.pokemontcg.io/cardmarket/sv5-209	2024-12-31	cardmarket
2823	sv5-210	https://prices.pokemontcg.io/cardmarket/sv5-210	2024-12-31	cardmarket
2824	sv5-211	https://prices.pokemontcg.io/cardmarket/sv5-211	2024-12-31	cardmarket
2825	sv5-212	https://prices.pokemontcg.io/cardmarket/sv5-212	2024-12-31	cardmarket
2826	sv5-213	https://prices.pokemontcg.io/cardmarket/sv5-213	2024-12-31	cardmarket
2827	sv5-214	https://prices.pokemontcg.io/cardmarket/sv5-214	2024-12-31	cardmarket
2828	sv5-215	https://prices.pokemontcg.io/cardmarket/sv5-215	2024-12-31	cardmarket
2829	sv5-216	https://prices.pokemontcg.io/cardmarket/sv5-216	2024-12-31	cardmarket
2830	sv5-217	https://prices.pokemontcg.io/cardmarket/sv5-217	2024-12-31	cardmarket
2831	sv5-218	https://prices.pokemontcg.io/cardmarket/sv5-218	2024-12-31	cardmarket
2832	sv6-1	https://prices.pokemontcg.io/tcgplayer/sv6-1	2024-12-31	tcgplayer
2833	sv6-2	https://prices.pokemontcg.io/tcgplayer/sv6-2	2024-12-31	tcgplayer
2834	sv6-3	https://prices.pokemontcg.io/tcgplayer/sv6-3	2024-12-31	tcgplayer
2835	sv6-4	https://prices.pokemontcg.io/tcgplayer/sv6-4	2024-12-31	tcgplayer
2836	sv6-5	https://prices.pokemontcg.io/tcgplayer/sv6-5	2024-12-31	tcgplayer
2837	sv6-6	https://prices.pokemontcg.io/tcgplayer/sv6-6	2024-12-31	tcgplayer
2838	sv6-7	https://prices.pokemontcg.io/tcgplayer/sv6-7	2024-12-31	tcgplayer
2839	sv6-8	https://prices.pokemontcg.io/tcgplayer/sv6-8	2024-12-31	tcgplayer
2840	sv6-9	https://prices.pokemontcg.io/tcgplayer/sv6-9	2024-12-31	tcgplayer
2841	sv6-10	https://prices.pokemontcg.io/tcgplayer/sv6-10	2024-12-31	tcgplayer
2842	sv6-11	https://prices.pokemontcg.io/tcgplayer/sv6-11	2024-12-31	tcgplayer
2843	sv6-12	https://prices.pokemontcg.io/tcgplayer/sv6-12	2024-12-31	tcgplayer
2844	sv6-13	https://prices.pokemontcg.io/tcgplayer/sv6-13	2024-12-31	tcgplayer
2845	sv6-14	https://prices.pokemontcg.io/tcgplayer/sv6-14	2024-12-31	tcgplayer
2846	sv6-15	https://prices.pokemontcg.io/tcgplayer/sv6-15	2024-12-31	tcgplayer
2847	sv6-16	https://prices.pokemontcg.io/tcgplayer/sv6-16	2024-12-31	tcgplayer
2848	sv6-17	https://prices.pokemontcg.io/tcgplayer/sv6-17	2024-12-31	tcgplayer
2849	sv6-18	https://prices.pokemontcg.io/tcgplayer/sv6-18	2024-12-31	tcgplayer
2850	sv6-19	https://prices.pokemontcg.io/tcgplayer/sv6-19	2024-12-31	tcgplayer
2851	sv6-20	https://prices.pokemontcg.io/tcgplayer/sv6-20	2024-12-31	tcgplayer
2852	sv6-21	https://prices.pokemontcg.io/tcgplayer/sv6-21	2024-12-31	tcgplayer
2853	sv6-22	https://prices.pokemontcg.io/tcgplayer/sv6-22	2024-12-31	tcgplayer
2854	sv6-23	https://prices.pokemontcg.io/tcgplayer/sv6-23	2024-12-31	tcgplayer
2855	sv6-24	https://prices.pokemontcg.io/tcgplayer/sv6-24	2024-12-31	tcgplayer
2856	sv6-25	https://prices.pokemontcg.io/tcgplayer/sv6-25	2024-12-31	tcgplayer
2857	sv6-26	https://prices.pokemontcg.io/tcgplayer/sv6-26	2024-12-31	tcgplayer
2858	sv6-27	https://prices.pokemontcg.io/tcgplayer/sv6-27	2024-12-31	tcgplayer
2859	sv6-28	https://prices.pokemontcg.io/tcgplayer/sv6-28	2024-12-31	tcgplayer
2860	sv6-29	https://prices.pokemontcg.io/tcgplayer/sv6-29	2024-12-31	tcgplayer
2861	sv6-30	https://prices.pokemontcg.io/tcgplayer/sv6-30	2024-12-31	tcgplayer
2862	sv6-31	https://prices.pokemontcg.io/tcgplayer/sv6-31	2024-12-31	tcgplayer
2863	sv6-32	https://prices.pokemontcg.io/tcgplayer/sv6-32	2024-12-31	tcgplayer
2864	sv6-33	https://prices.pokemontcg.io/tcgplayer/sv6-33	2024-12-31	tcgplayer
2865	sv6-34	https://prices.pokemontcg.io/tcgplayer/sv6-34	2024-12-31	tcgplayer
2866	sv6-35	https://prices.pokemontcg.io/tcgplayer/sv6-35	2024-12-31	tcgplayer
2867	sv6-36	https://prices.pokemontcg.io/tcgplayer/sv6-36	2024-12-31	tcgplayer
2868	sv6-37	https://prices.pokemontcg.io/tcgplayer/sv6-37	2024-12-31	tcgplayer
2869	sv6-38	https://prices.pokemontcg.io/tcgplayer/sv6-38	2024-12-31	tcgplayer
2870	sv6-39	https://prices.pokemontcg.io/tcgplayer/sv6-39	2024-12-31	tcgplayer
2871	sv6-40	https://prices.pokemontcg.io/tcgplayer/sv6-40	2024-12-31	tcgplayer
2872	sv6-41	https://prices.pokemontcg.io/tcgplayer/sv6-41	2024-12-31	tcgplayer
2873	sv6-42	https://prices.pokemontcg.io/tcgplayer/sv6-42	2024-12-31	tcgplayer
2874	sv6-43	https://prices.pokemontcg.io/tcgplayer/sv6-43	2024-12-31	tcgplayer
2875	sv6-44	https://prices.pokemontcg.io/tcgplayer/sv6-44	2024-12-31	tcgplayer
2876	sv6-45	https://prices.pokemontcg.io/tcgplayer/sv6-45	2024-12-31	tcgplayer
2877	sv6-46	https://prices.pokemontcg.io/tcgplayer/sv6-46	2024-12-31	tcgplayer
2878	sv6-47	https://prices.pokemontcg.io/tcgplayer/sv6-47	2024-12-31	tcgplayer
2879	sv6-48	https://prices.pokemontcg.io/tcgplayer/sv6-48	2024-12-31	tcgplayer
2880	sv6-49	https://prices.pokemontcg.io/tcgplayer/sv6-49	2024-12-31	tcgplayer
2881	sv6-50	https://prices.pokemontcg.io/tcgplayer/sv6-50	2024-12-31	tcgplayer
2882	sv6-51	https://prices.pokemontcg.io/tcgplayer/sv6-51	2024-12-31	tcgplayer
2883	sv6-52	https://prices.pokemontcg.io/tcgplayer/sv6-52	2024-12-31	tcgplayer
2884	sv6-53	https://prices.pokemontcg.io/tcgplayer/sv6-53	2024-12-31	tcgplayer
2885	sv6-54	https://prices.pokemontcg.io/tcgplayer/sv6-54	2024-12-31	tcgplayer
2886	sv6-55	https://prices.pokemontcg.io/tcgplayer/sv6-55	2024-12-31	tcgplayer
2887	sv6-56	https://prices.pokemontcg.io/tcgplayer/sv6-56	2024-12-31	tcgplayer
2888	sv6-57	https://prices.pokemontcg.io/tcgplayer/sv6-57	2024-12-31	tcgplayer
2889	sv6-58	https://prices.pokemontcg.io/tcgplayer/sv6-58	2024-12-31	tcgplayer
2890	sv6-59	https://prices.pokemontcg.io/tcgplayer/sv6-59	2024-12-31	tcgplayer
2891	sv6-60	https://prices.pokemontcg.io/tcgplayer/sv6-60	2024-12-31	tcgplayer
2892	sv6-61	https://prices.pokemontcg.io/tcgplayer/sv6-61	2024-12-31	tcgplayer
2893	sv6-62	https://prices.pokemontcg.io/tcgplayer/sv6-62	2024-12-31	tcgplayer
2894	sv6-63	https://prices.pokemontcg.io/tcgplayer/sv6-63	2024-12-31	tcgplayer
2895	sv6-64	https://prices.pokemontcg.io/tcgplayer/sv6-64	2024-12-31	tcgplayer
2896	sv6-65	https://prices.pokemontcg.io/tcgplayer/sv6-65	2024-12-31	tcgplayer
2897	sv6-66	https://prices.pokemontcg.io/tcgplayer/sv6-66	2024-12-31	tcgplayer
2898	sv6-67	https://prices.pokemontcg.io/tcgplayer/sv6-67	2024-12-31	tcgplayer
2899	sv6-68	https://prices.pokemontcg.io/tcgplayer/sv6-68	2024-12-31	tcgplayer
2900	sv6-69	https://prices.pokemontcg.io/tcgplayer/sv6-69	2024-12-31	tcgplayer
2901	sv6-70	https://prices.pokemontcg.io/tcgplayer/sv6-70	2024-12-31	tcgplayer
2902	sv6-71	https://prices.pokemontcg.io/tcgplayer/sv6-71	2024-12-31	tcgplayer
2903	sv6-72	https://prices.pokemontcg.io/tcgplayer/sv6-72	2024-12-31	tcgplayer
2904	sv6-73	https://prices.pokemontcg.io/tcgplayer/sv6-73	2024-12-31	tcgplayer
2905	sv6-74	https://prices.pokemontcg.io/tcgplayer/sv6-74	2024-12-31	tcgplayer
2906	sv6-75	https://prices.pokemontcg.io/tcgplayer/sv6-75	2024-12-31	tcgplayer
2907	sv6-76	https://prices.pokemontcg.io/tcgplayer/sv6-76	2024-12-31	tcgplayer
2908	sv6-77	https://prices.pokemontcg.io/tcgplayer/sv6-77	2024-12-31	tcgplayer
2909	sv6-78	https://prices.pokemontcg.io/tcgplayer/sv6-78	2024-12-31	tcgplayer
2910	sv6-79	https://prices.pokemontcg.io/tcgplayer/sv6-79	2024-12-31	tcgplayer
2911	sv6-80	https://prices.pokemontcg.io/tcgplayer/sv6-80	2024-12-31	tcgplayer
2912	sv6-81	https://prices.pokemontcg.io/tcgplayer/sv6-81	2024-12-31	tcgplayer
2913	sv6-82	https://prices.pokemontcg.io/tcgplayer/sv6-82	2024-12-31	tcgplayer
2914	sv6-83	https://prices.pokemontcg.io/tcgplayer/sv6-83	2024-12-31	tcgplayer
2915	sv6-84	https://prices.pokemontcg.io/tcgplayer/sv6-84	2024-12-31	tcgplayer
2916	sv6-85	https://prices.pokemontcg.io/tcgplayer/sv6-85	2024-12-31	tcgplayer
2917	sv6-86	https://prices.pokemontcg.io/tcgplayer/sv6-86	2024-12-31	tcgplayer
2918	sv6-87	https://prices.pokemontcg.io/tcgplayer/sv6-87	2024-12-31	tcgplayer
2919	sv6-88	https://prices.pokemontcg.io/tcgplayer/sv6-88	2024-12-31	tcgplayer
2920	sv6-89	https://prices.pokemontcg.io/tcgplayer/sv6-89	2024-12-31	tcgplayer
2921	sv6-90	https://prices.pokemontcg.io/tcgplayer/sv6-90	2024-12-31	tcgplayer
2922	sv6-91	https://prices.pokemontcg.io/tcgplayer/sv6-91	2024-12-31	tcgplayer
2923	sv6-92	https://prices.pokemontcg.io/tcgplayer/sv6-92	2024-12-31	tcgplayer
2924	sv6-93	https://prices.pokemontcg.io/tcgplayer/sv6-93	2024-12-31	tcgplayer
2925	sv6-94	https://prices.pokemontcg.io/tcgplayer/sv6-94	2024-12-31	tcgplayer
2926	sv6-95	https://prices.pokemontcg.io/tcgplayer/sv6-95	2024-12-31	tcgplayer
2927	sv6-96	https://prices.pokemontcg.io/tcgplayer/sv6-96	2024-12-31	tcgplayer
2928	sv6-97	https://prices.pokemontcg.io/tcgplayer/sv6-97	2024-12-31	tcgplayer
2929	sv6-98	https://prices.pokemontcg.io/tcgplayer/sv6-98	2024-12-31	tcgplayer
2930	sv6-99	https://prices.pokemontcg.io/tcgplayer/sv6-99	2024-12-31	tcgplayer
2931	sv6-100	https://prices.pokemontcg.io/tcgplayer/sv6-100	2024-12-31	tcgplayer
2932	sv6-101	https://prices.pokemontcg.io/tcgplayer/sv6-101	2024-12-31	tcgplayer
2933	sv6-102	https://prices.pokemontcg.io/tcgplayer/sv6-102	2024-12-31	tcgplayer
2934	sv6-103	https://prices.pokemontcg.io/tcgplayer/sv6-103	2024-12-31	tcgplayer
2935	sv6-104	https://prices.pokemontcg.io/tcgplayer/sv6-104	2024-12-31	tcgplayer
2936	sv6-105	https://prices.pokemontcg.io/tcgplayer/sv6-105	2024-12-31	tcgplayer
2937	sv6-106	https://prices.pokemontcg.io/tcgplayer/sv6-106	2024-12-31	tcgplayer
2938	sv6-107	https://prices.pokemontcg.io/tcgplayer/sv6-107	2024-12-31	tcgplayer
2939	sv6-108	https://prices.pokemontcg.io/tcgplayer/sv6-108	2024-12-31	tcgplayer
2940	sv6-109	https://prices.pokemontcg.io/tcgplayer/sv6-109	2024-12-31	tcgplayer
2941	sv6-110	https://prices.pokemontcg.io/tcgplayer/sv6-110	2024-12-31	tcgplayer
2942	sv6-111	https://prices.pokemontcg.io/tcgplayer/sv6-111	2024-12-31	tcgplayer
2943	sv6-112	https://prices.pokemontcg.io/tcgplayer/sv6-112	2024-12-31	tcgplayer
2944	sv6-113	https://prices.pokemontcg.io/tcgplayer/sv6-113	2024-12-31	tcgplayer
2945	sv6-114	https://prices.pokemontcg.io/tcgplayer/sv6-114	2024-12-31	tcgplayer
2946	sv6-115	https://prices.pokemontcg.io/tcgplayer/sv6-115	2024-12-31	tcgplayer
2947	sv6-116	https://prices.pokemontcg.io/tcgplayer/sv6-116	2024-12-31	tcgplayer
2948	sv6-117	https://prices.pokemontcg.io/tcgplayer/sv6-117	2024-12-31	tcgplayer
2949	sv6-118	https://prices.pokemontcg.io/tcgplayer/sv6-118	2024-12-31	tcgplayer
2950	sv6-119	https://prices.pokemontcg.io/tcgplayer/sv6-119	2024-12-31	tcgplayer
2951	sv6-120	https://prices.pokemontcg.io/tcgplayer/sv6-120	2024-12-31	tcgplayer
2952	sv6-121	https://prices.pokemontcg.io/tcgplayer/sv6-121	2024-12-31	tcgplayer
2953	sv6-122	https://prices.pokemontcg.io/tcgplayer/sv6-122	2024-12-31	tcgplayer
2954	sv6-123	https://prices.pokemontcg.io/tcgplayer/sv6-123	2024-12-31	tcgplayer
2955	sv6-124	https://prices.pokemontcg.io/tcgplayer/sv6-124	2024-12-31	tcgplayer
2956	sv6-125	https://prices.pokemontcg.io/tcgplayer/sv6-125	2024-12-31	tcgplayer
2957	sv6-126	https://prices.pokemontcg.io/tcgplayer/sv6-126	2024-12-31	tcgplayer
2958	sv6-127	https://prices.pokemontcg.io/tcgplayer/sv6-127	2024-12-31	tcgplayer
2959	sv6-128	https://prices.pokemontcg.io/tcgplayer/sv6-128	2024-12-31	tcgplayer
2960	sv6-129	https://prices.pokemontcg.io/tcgplayer/sv6-129	2024-12-31	tcgplayer
2961	sv6-130	https://prices.pokemontcg.io/tcgplayer/sv6-130	2024-12-31	tcgplayer
2962	sv6-131	https://prices.pokemontcg.io/tcgplayer/sv6-131	2024-12-31	tcgplayer
2963	sv6-132	https://prices.pokemontcg.io/tcgplayer/sv6-132	2024-12-31	tcgplayer
2964	sv6-133	https://prices.pokemontcg.io/tcgplayer/sv6-133	2024-12-31	tcgplayer
2965	sv6-134	https://prices.pokemontcg.io/tcgplayer/sv6-134	2024-12-31	tcgplayer
2966	sv6-135	https://prices.pokemontcg.io/tcgplayer/sv6-135	2024-12-31	tcgplayer
2967	sv6-136	https://prices.pokemontcg.io/tcgplayer/sv6-136	2024-12-31	tcgplayer
2968	sv6-137	https://prices.pokemontcg.io/tcgplayer/sv6-137	2024-12-31	tcgplayer
2969	sv6-138	https://prices.pokemontcg.io/tcgplayer/sv6-138	2024-12-31	tcgplayer
2970	sv6-139	https://prices.pokemontcg.io/tcgplayer/sv6-139	2024-12-31	tcgplayer
2971	sv6-140	https://prices.pokemontcg.io/tcgplayer/sv6-140	2024-12-31	tcgplayer
2972	sv6-141	https://prices.pokemontcg.io/tcgplayer/sv6-141	2024-12-31	tcgplayer
2973	sv6-142	https://prices.pokemontcg.io/tcgplayer/sv6-142	2024-12-31	tcgplayer
2974	sv6-143	https://prices.pokemontcg.io/tcgplayer/sv6-143	2024-12-31	tcgplayer
2975	sv6-144	https://prices.pokemontcg.io/tcgplayer/sv6-144	2024-12-31	tcgplayer
2976	sv6-145	https://prices.pokemontcg.io/tcgplayer/sv6-145	2024-12-31	tcgplayer
2977	sv6-146	https://prices.pokemontcg.io/tcgplayer/sv6-146	2024-12-31	tcgplayer
2978	sv6-147	https://prices.pokemontcg.io/tcgplayer/sv6-147	2024-12-31	tcgplayer
2979	sv6-148	https://prices.pokemontcg.io/tcgplayer/sv6-148	2024-12-31	tcgplayer
2980	sv6-149	https://prices.pokemontcg.io/tcgplayer/sv6-149	2024-12-31	tcgplayer
2981	sv6-150	https://prices.pokemontcg.io/tcgplayer/sv6-150	2024-12-31	tcgplayer
2982	sv6-151	https://prices.pokemontcg.io/tcgplayer/sv6-151	2024-12-31	tcgplayer
2983	sv6-152	https://prices.pokemontcg.io/tcgplayer/sv6-152	2024-12-31	tcgplayer
2984	sv6-153	https://prices.pokemontcg.io/tcgplayer/sv6-153	2024-12-31	tcgplayer
2985	sv6-154	https://prices.pokemontcg.io/tcgplayer/sv6-154	2024-12-31	tcgplayer
2986	sv6-155	https://prices.pokemontcg.io/tcgplayer/sv6-155	2024-12-31	tcgplayer
2987	sv6-156	https://prices.pokemontcg.io/tcgplayer/sv6-156	2024-12-31	tcgplayer
2988	sv6-157	https://prices.pokemontcg.io/tcgplayer/sv6-157	2024-12-31	tcgplayer
2989	sv6-158	https://prices.pokemontcg.io/tcgplayer/sv6-158	2024-12-31	tcgplayer
2990	sv6-159	https://prices.pokemontcg.io/tcgplayer/sv6-159	2024-12-31	tcgplayer
2991	sv6-160	https://prices.pokemontcg.io/tcgplayer/sv6-160	2024-12-31	tcgplayer
2992	sv6-161	https://prices.pokemontcg.io/tcgplayer/sv6-161	2024-12-31	tcgplayer
2993	sv6-162	https://prices.pokemontcg.io/tcgplayer/sv6-162	2024-12-31	tcgplayer
2994	sv6-163	https://prices.pokemontcg.io/tcgplayer/sv6-163	2024-12-31	tcgplayer
2995	sv6-164	https://prices.pokemontcg.io/tcgplayer/sv6-164	2024-12-31	tcgplayer
2996	sv6-165	https://prices.pokemontcg.io/tcgplayer/sv6-165	2024-12-31	tcgplayer
2997	sv6-166	https://prices.pokemontcg.io/tcgplayer/sv6-166	2024-12-31	tcgplayer
2998	sv6-167	https://prices.pokemontcg.io/tcgplayer/sv6-167	2024-12-31	tcgplayer
2999	sv6-168	https://prices.pokemontcg.io/tcgplayer/sv6-168	2024-12-31	tcgplayer
3000	sv6-169	https://prices.pokemontcg.io/tcgplayer/sv6-169	2024-12-31	tcgplayer
3001	sv6-170	https://prices.pokemontcg.io/tcgplayer/sv6-170	2024-12-31	tcgplayer
3002	sv6-171	https://prices.pokemontcg.io/tcgplayer/sv6-171	2024-12-31	tcgplayer
3003	sv6-172	https://prices.pokemontcg.io/tcgplayer/sv6-172	2024-12-31	tcgplayer
3004	sv6-173	https://prices.pokemontcg.io/tcgplayer/sv6-173	2024-12-31	tcgplayer
3005	sv6-174	https://prices.pokemontcg.io/tcgplayer/sv6-174	2024-12-31	tcgplayer
3006	sv6-175	https://prices.pokemontcg.io/tcgplayer/sv6-175	2024-12-31	tcgplayer
3007	sv6-176	https://prices.pokemontcg.io/tcgplayer/sv6-176	2024-12-31	tcgplayer
3008	sv6-177	https://prices.pokemontcg.io/tcgplayer/sv6-177	2024-12-31	tcgplayer
3009	sv6-178	https://prices.pokemontcg.io/tcgplayer/sv6-178	2024-12-31	tcgplayer
3010	sv6-179	https://prices.pokemontcg.io/tcgplayer/sv6-179	2024-12-31	tcgplayer
3011	sv6-180	https://prices.pokemontcg.io/tcgplayer/sv6-180	2024-12-31	tcgplayer
3012	sv6-181	https://prices.pokemontcg.io/tcgplayer/sv6-181	2024-12-31	tcgplayer
3013	sv6-182	https://prices.pokemontcg.io/tcgplayer/sv6-182	2024-12-31	tcgplayer
3014	sv6-183	https://prices.pokemontcg.io/tcgplayer/sv6-183	2024-12-31	tcgplayer
3015	sv6-184	https://prices.pokemontcg.io/tcgplayer/sv6-184	2024-12-31	tcgplayer
3016	sv6-185	https://prices.pokemontcg.io/tcgplayer/sv6-185	2024-12-31	tcgplayer
3017	sv6-186	https://prices.pokemontcg.io/tcgplayer/sv6-186	2024-12-31	tcgplayer
3018	sv6-187	https://prices.pokemontcg.io/tcgplayer/sv6-187	2024-12-31	tcgplayer
3019	sv6-188	https://prices.pokemontcg.io/tcgplayer/sv6-188	2024-12-31	tcgplayer
3020	sv6-189	https://prices.pokemontcg.io/tcgplayer/sv6-189	2024-12-31	tcgplayer
3021	sv6-190	https://prices.pokemontcg.io/tcgplayer/sv6-190	2024-12-31	tcgplayer
3022	sv6-191	https://prices.pokemontcg.io/tcgplayer/sv6-191	2024-12-31	tcgplayer
3023	sv6-192	https://prices.pokemontcg.io/tcgplayer/sv6-192	2024-12-31	tcgplayer
3024	sv6-193	https://prices.pokemontcg.io/tcgplayer/sv6-193	2024-12-31	tcgplayer
3025	sv6-194	https://prices.pokemontcg.io/tcgplayer/sv6-194	2024-12-31	tcgplayer
3026	sv6-195	https://prices.pokemontcg.io/tcgplayer/sv6-195	2024-12-31	tcgplayer
3027	sv6-196	https://prices.pokemontcg.io/tcgplayer/sv6-196	2024-12-31	tcgplayer
3028	sv6-197	https://prices.pokemontcg.io/tcgplayer/sv6-197	2024-12-31	tcgplayer
3029	sv6-198	https://prices.pokemontcg.io/tcgplayer/sv6-198	2024-12-31	tcgplayer
3030	sv6-199	https://prices.pokemontcg.io/tcgplayer/sv6-199	2024-12-31	tcgplayer
3031	sv6-200	https://prices.pokemontcg.io/tcgplayer/sv6-200	2024-12-31	tcgplayer
3032	sv6-201	https://prices.pokemontcg.io/tcgplayer/sv6-201	2024-12-31	tcgplayer
3033	sv6-202	https://prices.pokemontcg.io/tcgplayer/sv6-202	2024-12-31	tcgplayer
3034	sv6-203	https://prices.pokemontcg.io/tcgplayer/sv6-203	2024-12-31	tcgplayer
3035	sv6-204	https://prices.pokemontcg.io/tcgplayer/sv6-204	2024-12-31	tcgplayer
3036	sv6-205	https://prices.pokemontcg.io/tcgplayer/sv6-205	2024-12-31	tcgplayer
3037	sv6-206	https://prices.pokemontcg.io/tcgplayer/sv6-206	2024-12-31	tcgplayer
3038	sv6-207	https://prices.pokemontcg.io/tcgplayer/sv6-207	2024-12-31	tcgplayer
3039	sv6-208	https://prices.pokemontcg.io/tcgplayer/sv6-208	2024-12-31	tcgplayer
3040	sv6-209	https://prices.pokemontcg.io/tcgplayer/sv6-209	2024-12-31	tcgplayer
3041	sv6-210	https://prices.pokemontcg.io/tcgplayer/sv6-210	2024-12-31	tcgplayer
3042	sv6-211	https://prices.pokemontcg.io/tcgplayer/sv6-211	2024-12-31	tcgplayer
3043	sv6-212	https://prices.pokemontcg.io/tcgplayer/sv6-212	2024-12-31	tcgplayer
3044	sv6-213	https://prices.pokemontcg.io/tcgplayer/sv6-213	2024-12-31	tcgplayer
3045	sv6-214	https://prices.pokemontcg.io/tcgplayer/sv6-214	2024-12-31	tcgplayer
3046	sv6-215	https://prices.pokemontcg.io/tcgplayer/sv6-215	2024-12-31	tcgplayer
3047	sv6-216	https://prices.pokemontcg.io/tcgplayer/sv6-216	2024-12-31	tcgplayer
3048	sv6-217	https://prices.pokemontcg.io/tcgplayer/sv6-217	2024-12-31	tcgplayer
3049	sv6-218	https://prices.pokemontcg.io/tcgplayer/sv6-218	2024-12-31	tcgplayer
3050	sv6-219	https://prices.pokemontcg.io/tcgplayer/sv6-219	2024-12-31	tcgplayer
3051	sv6-220	https://prices.pokemontcg.io/tcgplayer/sv6-220	2024-12-31	tcgplayer
3052	sv6-221	https://prices.pokemontcg.io/tcgplayer/sv6-221	2024-12-31	tcgplayer
3053	sv6-222	https://prices.pokemontcg.io/tcgplayer/sv6-222	2024-12-31	tcgplayer
3054	sv6-223	https://prices.pokemontcg.io/tcgplayer/sv6-223	2024-12-31	tcgplayer
3055	sv6-224	https://prices.pokemontcg.io/tcgplayer/sv6-224	2024-12-31	tcgplayer
3056	sv6-225	https://prices.pokemontcg.io/tcgplayer/sv6-225	2024-12-31	tcgplayer
3057	sv6-226	https://prices.pokemontcg.io/tcgplayer/sv6-226	2024-12-31	tcgplayer
3058	sv6-1	https://prices.pokemontcg.io/cardmarket/sv6-1	2024-12-31	cardmarket
3059	sv6-2	https://prices.pokemontcg.io/cardmarket/sv6-2	2024-12-31	cardmarket
3060	sv6-3	https://prices.pokemontcg.io/cardmarket/sv6-3	2024-12-31	cardmarket
3061	sv6-4	https://prices.pokemontcg.io/cardmarket/sv6-4	2024-12-31	cardmarket
3062	sv6-5	https://prices.pokemontcg.io/cardmarket/sv6-5	2024-12-31	cardmarket
3063	sv6-6	https://prices.pokemontcg.io/cardmarket/sv6-6	2024-12-31	cardmarket
3064	sv6-7	https://prices.pokemontcg.io/cardmarket/sv6-7	2024-12-31	cardmarket
3065	sv6-8	https://prices.pokemontcg.io/cardmarket/sv6-8	2024-12-31	cardmarket
3066	sv6-9	https://prices.pokemontcg.io/cardmarket/sv6-9	2024-12-31	cardmarket
3067	sv6-10	https://prices.pokemontcg.io/cardmarket/sv6-10	2024-12-31	cardmarket
3068	sv6-11	https://prices.pokemontcg.io/cardmarket/sv6-11	2024-12-31	cardmarket
3069	sv6-12	https://prices.pokemontcg.io/cardmarket/sv6-12	2024-12-31	cardmarket
3070	sv6-13	https://prices.pokemontcg.io/cardmarket/sv6-13	2024-12-31	cardmarket
3071	sv6-14	https://prices.pokemontcg.io/cardmarket/sv6-14	2024-12-31	cardmarket
3072	sv6-15	https://prices.pokemontcg.io/cardmarket/sv6-15	2024-12-31	cardmarket
3073	sv6-16	https://prices.pokemontcg.io/cardmarket/sv6-16	2024-12-31	cardmarket
3074	sv6-17	https://prices.pokemontcg.io/cardmarket/sv6-17	2024-12-31	cardmarket
3075	sv6-18	https://prices.pokemontcg.io/cardmarket/sv6-18	2024-12-31	cardmarket
3076	sv6-19	https://prices.pokemontcg.io/cardmarket/sv6-19	2024-12-31	cardmarket
3077	sv6-20	https://prices.pokemontcg.io/cardmarket/sv6-20	2024-12-31	cardmarket
3078	sv6-21	https://prices.pokemontcg.io/cardmarket/sv6-21	2024-12-31	cardmarket
3079	sv6-22	https://prices.pokemontcg.io/cardmarket/sv6-22	2024-12-31	cardmarket
3080	sv6-23	https://prices.pokemontcg.io/cardmarket/sv6-23	2024-12-31	cardmarket
3081	sv6-24	https://prices.pokemontcg.io/cardmarket/sv6-24	2024-12-31	cardmarket
3082	sv6-25	https://prices.pokemontcg.io/cardmarket/sv6-25	2024-12-31	cardmarket
3083	sv6-26	https://prices.pokemontcg.io/cardmarket/sv6-26	2024-12-31	cardmarket
3084	sv6-27	https://prices.pokemontcg.io/cardmarket/sv6-27	2024-12-31	cardmarket
3085	sv6-28	https://prices.pokemontcg.io/cardmarket/sv6-28	2024-12-31	cardmarket
3086	sv6-29	https://prices.pokemontcg.io/cardmarket/sv6-29	2024-12-31	cardmarket
3087	sv6-30	https://prices.pokemontcg.io/cardmarket/sv6-30	2024-12-31	cardmarket
3088	sv6-31	https://prices.pokemontcg.io/cardmarket/sv6-31	2024-12-31	cardmarket
3089	sv6-32	https://prices.pokemontcg.io/cardmarket/sv6-32	2024-12-31	cardmarket
3090	sv6-33	https://prices.pokemontcg.io/cardmarket/sv6-33	2024-12-31	cardmarket
3091	sv6-34	https://prices.pokemontcg.io/cardmarket/sv6-34	2024-12-31	cardmarket
3092	sv6-35	https://prices.pokemontcg.io/cardmarket/sv6-35	2024-12-31	cardmarket
3093	sv6-36	https://prices.pokemontcg.io/cardmarket/sv6-36	2024-12-31	cardmarket
3094	sv6-37	https://prices.pokemontcg.io/cardmarket/sv6-37	2024-12-31	cardmarket
3095	sv6-38	https://prices.pokemontcg.io/cardmarket/sv6-38	2024-12-31	cardmarket
3096	sv6-39	https://prices.pokemontcg.io/cardmarket/sv6-39	2024-12-31	cardmarket
3097	sv6-40	https://prices.pokemontcg.io/cardmarket/sv6-40	2024-12-31	cardmarket
3098	sv6-41	https://prices.pokemontcg.io/cardmarket/sv6-41	2024-12-31	cardmarket
3099	sv6-42	https://prices.pokemontcg.io/cardmarket/sv6-42	2024-12-31	cardmarket
3100	sv6-43	https://prices.pokemontcg.io/cardmarket/sv6-43	2024-12-31	cardmarket
3101	sv6-44	https://prices.pokemontcg.io/cardmarket/sv6-44	2024-12-31	cardmarket
3102	sv6-45	https://prices.pokemontcg.io/cardmarket/sv6-45	2024-12-31	cardmarket
3103	sv6-46	https://prices.pokemontcg.io/cardmarket/sv6-46	2024-12-31	cardmarket
3104	sv6-47	https://prices.pokemontcg.io/cardmarket/sv6-47	2024-12-31	cardmarket
3105	sv6-48	https://prices.pokemontcg.io/cardmarket/sv6-48	2024-12-31	cardmarket
3106	sv6-49	https://prices.pokemontcg.io/cardmarket/sv6-49	2024-12-31	cardmarket
3107	sv6-50	https://prices.pokemontcg.io/cardmarket/sv6-50	2024-12-31	cardmarket
3108	sv6-51	https://prices.pokemontcg.io/cardmarket/sv6-51	2024-12-31	cardmarket
3109	sv6-52	https://prices.pokemontcg.io/cardmarket/sv6-52	2024-12-31	cardmarket
3110	sv6-53	https://prices.pokemontcg.io/cardmarket/sv6-53	2024-12-31	cardmarket
3111	sv6-54	https://prices.pokemontcg.io/cardmarket/sv6-54	2024-12-31	cardmarket
3112	sv6-55	https://prices.pokemontcg.io/cardmarket/sv6-55	2024-12-31	cardmarket
3113	sv6-56	https://prices.pokemontcg.io/cardmarket/sv6-56	2024-12-31	cardmarket
3114	sv6-57	https://prices.pokemontcg.io/cardmarket/sv6-57	2024-12-31	cardmarket
3115	sv6-58	https://prices.pokemontcg.io/cardmarket/sv6-58	2024-12-31	cardmarket
3116	sv6-59	https://prices.pokemontcg.io/cardmarket/sv6-59	2024-12-31	cardmarket
3117	sv6-60	https://prices.pokemontcg.io/cardmarket/sv6-60	2024-12-31	cardmarket
3118	sv6-61	https://prices.pokemontcg.io/cardmarket/sv6-61	2024-12-31	cardmarket
3119	sv6-62	https://prices.pokemontcg.io/cardmarket/sv6-62	2024-12-31	cardmarket
3120	sv6-63	https://prices.pokemontcg.io/cardmarket/sv6-63	2024-12-31	cardmarket
3121	sv6-64	https://prices.pokemontcg.io/cardmarket/sv6-64	2024-12-31	cardmarket
3122	sv6-65	https://prices.pokemontcg.io/cardmarket/sv6-65	2024-12-31	cardmarket
3123	sv6-66	https://prices.pokemontcg.io/cardmarket/sv6-66	2024-12-31	cardmarket
3124	sv6-67	https://prices.pokemontcg.io/cardmarket/sv6-67	2024-12-31	cardmarket
3125	sv6-68	https://prices.pokemontcg.io/cardmarket/sv6-68	2024-12-31	cardmarket
3126	sv6-69	https://prices.pokemontcg.io/cardmarket/sv6-69	2024-12-31	cardmarket
3127	sv6-70	https://prices.pokemontcg.io/cardmarket/sv6-70	2024-12-31	cardmarket
3128	sv6-71	https://prices.pokemontcg.io/cardmarket/sv6-71	2024-12-31	cardmarket
3129	sv6-72	https://prices.pokemontcg.io/cardmarket/sv6-72	2024-12-31	cardmarket
3130	sv6-73	https://prices.pokemontcg.io/cardmarket/sv6-73	2024-12-31	cardmarket
3131	sv6-74	https://prices.pokemontcg.io/cardmarket/sv6-74	2024-12-31	cardmarket
3132	sv6-75	https://prices.pokemontcg.io/cardmarket/sv6-75	2024-12-31	cardmarket
3133	sv6-76	https://prices.pokemontcg.io/cardmarket/sv6-76	2024-12-31	cardmarket
3134	sv6-77	https://prices.pokemontcg.io/cardmarket/sv6-77	2024-12-31	cardmarket
3135	sv6-78	https://prices.pokemontcg.io/cardmarket/sv6-78	2024-12-31	cardmarket
3136	sv6-79	https://prices.pokemontcg.io/cardmarket/sv6-79	2024-12-31	cardmarket
3137	sv6-80	https://prices.pokemontcg.io/cardmarket/sv6-80	2024-12-31	cardmarket
3138	sv6-81	https://prices.pokemontcg.io/cardmarket/sv6-81	2024-12-31	cardmarket
3139	sv6-82	https://prices.pokemontcg.io/cardmarket/sv6-82	2024-12-31	cardmarket
3140	sv6-83	https://prices.pokemontcg.io/cardmarket/sv6-83	2024-12-31	cardmarket
3141	sv6-84	https://prices.pokemontcg.io/cardmarket/sv6-84	2024-12-31	cardmarket
3142	sv6-85	https://prices.pokemontcg.io/cardmarket/sv6-85	2024-12-31	cardmarket
3143	sv6-86	https://prices.pokemontcg.io/cardmarket/sv6-86	2024-12-31	cardmarket
3144	sv6-87	https://prices.pokemontcg.io/cardmarket/sv6-87	2024-12-31	cardmarket
3145	sv6-88	https://prices.pokemontcg.io/cardmarket/sv6-88	2024-12-31	cardmarket
3146	sv6-89	https://prices.pokemontcg.io/cardmarket/sv6-89	2024-12-31	cardmarket
3147	sv6-90	https://prices.pokemontcg.io/cardmarket/sv6-90	2024-12-31	cardmarket
3148	sv6-91	https://prices.pokemontcg.io/cardmarket/sv6-91	2024-12-31	cardmarket
3149	sv6-92	https://prices.pokemontcg.io/cardmarket/sv6-92	2024-12-31	cardmarket
3150	sv6-93	https://prices.pokemontcg.io/cardmarket/sv6-93	2024-12-31	cardmarket
3151	sv6-94	https://prices.pokemontcg.io/cardmarket/sv6-94	2024-12-31	cardmarket
3152	sv6-95	https://prices.pokemontcg.io/cardmarket/sv6-95	2024-12-31	cardmarket
3153	sv6-96	https://prices.pokemontcg.io/cardmarket/sv6-96	2024-12-31	cardmarket
3154	sv6-97	https://prices.pokemontcg.io/cardmarket/sv6-97	2024-12-31	cardmarket
3155	sv6-98	https://prices.pokemontcg.io/cardmarket/sv6-98	2024-12-31	cardmarket
3156	sv6-99	https://prices.pokemontcg.io/cardmarket/sv6-99	2024-12-31	cardmarket
3157	sv6-100	https://prices.pokemontcg.io/cardmarket/sv6-100	2024-12-31	cardmarket
3158	sv6-101	https://prices.pokemontcg.io/cardmarket/sv6-101	2024-12-31	cardmarket
3159	sv6-102	https://prices.pokemontcg.io/cardmarket/sv6-102	2024-12-31	cardmarket
3160	sv6-103	https://prices.pokemontcg.io/cardmarket/sv6-103	2024-12-31	cardmarket
3161	sv6-104	https://prices.pokemontcg.io/cardmarket/sv6-104	2024-12-31	cardmarket
3162	sv6-105	https://prices.pokemontcg.io/cardmarket/sv6-105	2024-12-31	cardmarket
3163	sv6-106	https://prices.pokemontcg.io/cardmarket/sv6-106	2024-12-31	cardmarket
3164	sv6-107	https://prices.pokemontcg.io/cardmarket/sv6-107	2024-12-31	cardmarket
3165	sv6-108	https://prices.pokemontcg.io/cardmarket/sv6-108	2024-12-31	cardmarket
3166	sv6-109	https://prices.pokemontcg.io/cardmarket/sv6-109	2024-12-31	cardmarket
3167	sv6-110	https://prices.pokemontcg.io/cardmarket/sv6-110	2024-12-31	cardmarket
3168	sv6-111	https://prices.pokemontcg.io/cardmarket/sv6-111	2024-12-31	cardmarket
3169	sv6-112	https://prices.pokemontcg.io/cardmarket/sv6-112	2024-12-31	cardmarket
3170	sv6-113	https://prices.pokemontcg.io/cardmarket/sv6-113	2024-12-31	cardmarket
3171	sv6-114	https://prices.pokemontcg.io/cardmarket/sv6-114	2024-12-31	cardmarket
3172	sv6-115	https://prices.pokemontcg.io/cardmarket/sv6-115	2024-12-31	cardmarket
3173	sv6-116	https://prices.pokemontcg.io/cardmarket/sv6-116	2024-12-31	cardmarket
3174	sv6-117	https://prices.pokemontcg.io/cardmarket/sv6-117	2024-12-31	cardmarket
3175	sv6-118	https://prices.pokemontcg.io/cardmarket/sv6-118	2024-12-31	cardmarket
3176	sv6-119	https://prices.pokemontcg.io/cardmarket/sv6-119	2024-12-31	cardmarket
3177	sv6-120	https://prices.pokemontcg.io/cardmarket/sv6-120	2024-12-31	cardmarket
3178	sv6-121	https://prices.pokemontcg.io/cardmarket/sv6-121	2024-12-31	cardmarket
3179	sv6-122	https://prices.pokemontcg.io/cardmarket/sv6-122	2024-12-31	cardmarket
3180	sv6-123	https://prices.pokemontcg.io/cardmarket/sv6-123	2024-12-31	cardmarket
3181	sv6-124	https://prices.pokemontcg.io/cardmarket/sv6-124	2024-12-31	cardmarket
3182	sv6-125	https://prices.pokemontcg.io/cardmarket/sv6-125	2024-12-31	cardmarket
3183	sv6-126	https://prices.pokemontcg.io/cardmarket/sv6-126	2024-12-31	cardmarket
3184	sv6-127	https://prices.pokemontcg.io/cardmarket/sv6-127	2024-12-31	cardmarket
3185	sv6-128	https://prices.pokemontcg.io/cardmarket/sv6-128	2024-12-31	cardmarket
3186	sv6-129	https://prices.pokemontcg.io/cardmarket/sv6-129	2024-12-31	cardmarket
3187	sv6-130	https://prices.pokemontcg.io/cardmarket/sv6-130	2024-12-31	cardmarket
3188	sv6-131	https://prices.pokemontcg.io/cardmarket/sv6-131	2024-12-31	cardmarket
3189	sv6-132	https://prices.pokemontcg.io/cardmarket/sv6-132	2024-12-31	cardmarket
3190	sv6-133	https://prices.pokemontcg.io/cardmarket/sv6-133	2024-12-31	cardmarket
3191	sv6-134	https://prices.pokemontcg.io/cardmarket/sv6-134	2024-12-31	cardmarket
3192	sv6-135	https://prices.pokemontcg.io/cardmarket/sv6-135	2024-12-31	cardmarket
3193	sv6-136	https://prices.pokemontcg.io/cardmarket/sv6-136	2024-12-31	cardmarket
3194	sv6-137	https://prices.pokemontcg.io/cardmarket/sv6-137	2024-12-31	cardmarket
3195	sv6-138	https://prices.pokemontcg.io/cardmarket/sv6-138	2024-12-31	cardmarket
3196	sv6-139	https://prices.pokemontcg.io/cardmarket/sv6-139	2024-12-31	cardmarket
3197	sv6-140	https://prices.pokemontcg.io/cardmarket/sv6-140	2024-12-31	cardmarket
3198	sv6-141	https://prices.pokemontcg.io/cardmarket/sv6-141	2024-12-31	cardmarket
3199	sv6-142	https://prices.pokemontcg.io/cardmarket/sv6-142	2024-12-31	cardmarket
3200	sv6-143	https://prices.pokemontcg.io/cardmarket/sv6-143	2024-12-31	cardmarket
3201	sv6-144	https://prices.pokemontcg.io/cardmarket/sv6-144	2024-12-31	cardmarket
3202	sv6-145	https://prices.pokemontcg.io/cardmarket/sv6-145	2024-12-31	cardmarket
3203	sv6-146	https://prices.pokemontcg.io/cardmarket/sv6-146	2024-12-31	cardmarket
3204	sv6-147	https://prices.pokemontcg.io/cardmarket/sv6-147	2024-12-31	cardmarket
3205	sv6-148	https://prices.pokemontcg.io/cardmarket/sv6-148	2024-12-31	cardmarket
3206	sv6-149	https://prices.pokemontcg.io/cardmarket/sv6-149	2024-12-31	cardmarket
3207	sv6-150	https://prices.pokemontcg.io/cardmarket/sv6-150	2024-12-31	cardmarket
3208	sv6-151	https://prices.pokemontcg.io/cardmarket/sv6-151	2024-12-31	cardmarket
3209	sv6-152	https://prices.pokemontcg.io/cardmarket/sv6-152	2024-12-31	cardmarket
3210	sv6-153	https://prices.pokemontcg.io/cardmarket/sv6-153	2024-12-31	cardmarket
3211	sv6-154	https://prices.pokemontcg.io/cardmarket/sv6-154	2024-12-31	cardmarket
3212	sv6-155	https://prices.pokemontcg.io/cardmarket/sv6-155	2024-12-31	cardmarket
3213	sv6-156	https://prices.pokemontcg.io/cardmarket/sv6-156	2024-12-31	cardmarket
3214	sv6-157	https://prices.pokemontcg.io/cardmarket/sv6-157	2024-12-31	cardmarket
3215	sv6-158	https://prices.pokemontcg.io/cardmarket/sv6-158	2024-12-31	cardmarket
3216	sv6-159	https://prices.pokemontcg.io/cardmarket/sv6-159	2024-12-31	cardmarket
3217	sv6-160	https://prices.pokemontcg.io/cardmarket/sv6-160	2024-12-31	cardmarket
3218	sv6-161	https://prices.pokemontcg.io/cardmarket/sv6-161	2024-12-31	cardmarket
3219	sv6-162	https://prices.pokemontcg.io/cardmarket/sv6-162	2024-12-31	cardmarket
3220	sv6-163	https://prices.pokemontcg.io/cardmarket/sv6-163	2024-12-31	cardmarket
3221	sv6-164	https://prices.pokemontcg.io/cardmarket/sv6-164	2024-12-31	cardmarket
3222	sv6-165	https://prices.pokemontcg.io/cardmarket/sv6-165	2024-12-31	cardmarket
3223	sv6-166	https://prices.pokemontcg.io/cardmarket/sv6-166	2024-12-31	cardmarket
3224	sv6-167	https://prices.pokemontcg.io/cardmarket/sv6-167	2024-12-31	cardmarket
3225	sv6-168	https://prices.pokemontcg.io/cardmarket/sv6-168	2024-12-31	cardmarket
3226	sv6-169	https://prices.pokemontcg.io/cardmarket/sv6-169	2024-12-31	cardmarket
3227	sv6-170	https://prices.pokemontcg.io/cardmarket/sv6-170	2024-12-31	cardmarket
3228	sv6-171	https://prices.pokemontcg.io/cardmarket/sv6-171	2024-12-31	cardmarket
3229	sv6-172	https://prices.pokemontcg.io/cardmarket/sv6-172	2024-12-31	cardmarket
3230	sv6-173	https://prices.pokemontcg.io/cardmarket/sv6-173	2024-12-31	cardmarket
3231	sv6-174	https://prices.pokemontcg.io/cardmarket/sv6-174	2024-12-31	cardmarket
3232	sv6-175	https://prices.pokemontcg.io/cardmarket/sv6-175	2024-12-31	cardmarket
3233	sv6-176	https://prices.pokemontcg.io/cardmarket/sv6-176	2024-12-31	cardmarket
3234	sv6-177	https://prices.pokemontcg.io/cardmarket/sv6-177	2024-12-31	cardmarket
3235	sv6-178	https://prices.pokemontcg.io/cardmarket/sv6-178	2024-12-31	cardmarket
3236	sv6-179	https://prices.pokemontcg.io/cardmarket/sv6-179	2024-12-31	cardmarket
3237	sv6-180	https://prices.pokemontcg.io/cardmarket/sv6-180	2024-12-31	cardmarket
3238	sv6-181	https://prices.pokemontcg.io/cardmarket/sv6-181	2024-12-31	cardmarket
3239	sv6-182	https://prices.pokemontcg.io/cardmarket/sv6-182	2024-12-31	cardmarket
3240	sv6-183	https://prices.pokemontcg.io/cardmarket/sv6-183	2024-12-31	cardmarket
3241	sv6-184	https://prices.pokemontcg.io/cardmarket/sv6-184	2024-12-31	cardmarket
3242	sv6-185	https://prices.pokemontcg.io/cardmarket/sv6-185	2024-12-31	cardmarket
3243	sv6-186	https://prices.pokemontcg.io/cardmarket/sv6-186	2024-12-31	cardmarket
3244	sv6-187	https://prices.pokemontcg.io/cardmarket/sv6-187	2024-12-31	cardmarket
3245	sv6-188	https://prices.pokemontcg.io/cardmarket/sv6-188	2024-12-31	cardmarket
3246	sv6-189	https://prices.pokemontcg.io/cardmarket/sv6-189	2024-12-31	cardmarket
3247	sv6-190	https://prices.pokemontcg.io/cardmarket/sv6-190	2024-12-31	cardmarket
3248	sv6-191	https://prices.pokemontcg.io/cardmarket/sv6-191	2024-12-31	cardmarket
3249	sv6-192	https://prices.pokemontcg.io/cardmarket/sv6-192	2024-12-31	cardmarket
3250	sv6-193	https://prices.pokemontcg.io/cardmarket/sv6-193	2024-12-31	cardmarket
3251	sv6-194	https://prices.pokemontcg.io/cardmarket/sv6-194	2024-12-31	cardmarket
3252	sv6-195	https://prices.pokemontcg.io/cardmarket/sv6-195	2024-12-31	cardmarket
3253	sv6-196	https://prices.pokemontcg.io/cardmarket/sv6-196	2024-12-31	cardmarket
3254	sv6-197	https://prices.pokemontcg.io/cardmarket/sv6-197	2024-12-31	cardmarket
3255	sv6-198	https://prices.pokemontcg.io/cardmarket/sv6-198	2024-12-31	cardmarket
3256	sv6-199	https://prices.pokemontcg.io/cardmarket/sv6-199	2024-12-31	cardmarket
3257	sv6-200	https://prices.pokemontcg.io/cardmarket/sv6-200	2024-12-31	cardmarket
3258	sv6-201	https://prices.pokemontcg.io/cardmarket/sv6-201	2024-12-31	cardmarket
3259	sv6-202	https://prices.pokemontcg.io/cardmarket/sv6-202	2024-12-31	cardmarket
3260	sv6-203	https://prices.pokemontcg.io/cardmarket/sv6-203	2024-12-31	cardmarket
3261	sv6-204	https://prices.pokemontcg.io/cardmarket/sv6-204	2024-12-31	cardmarket
3262	sv6-205	https://prices.pokemontcg.io/cardmarket/sv6-205	2024-12-31	cardmarket
3263	sv6-206	https://prices.pokemontcg.io/cardmarket/sv6-206	2024-12-31	cardmarket
3264	sv6-207	https://prices.pokemontcg.io/cardmarket/sv6-207	2024-12-31	cardmarket
3265	sv6-208	https://prices.pokemontcg.io/cardmarket/sv6-208	2024-12-31	cardmarket
3266	sv6-209	https://prices.pokemontcg.io/cardmarket/sv6-209	2024-12-31	cardmarket
3267	sv6-210	https://prices.pokemontcg.io/cardmarket/sv6-210	2024-12-31	cardmarket
3268	sv6-211	https://prices.pokemontcg.io/cardmarket/sv6-211	2024-12-31	cardmarket
3269	sv6-212	https://prices.pokemontcg.io/cardmarket/sv6-212	2024-12-31	cardmarket
3270	sv6-213	https://prices.pokemontcg.io/cardmarket/sv6-213	2024-12-31	cardmarket
3271	sv6-214	https://prices.pokemontcg.io/cardmarket/sv6-214	2024-12-31	cardmarket
3272	sv6-215	https://prices.pokemontcg.io/cardmarket/sv6-215	2024-12-31	cardmarket
3273	sv6-216	https://prices.pokemontcg.io/cardmarket/sv6-216	2024-12-31	cardmarket
3274	sv6-217	https://prices.pokemontcg.io/cardmarket/sv6-217	2024-12-31	cardmarket
3275	sv6-218	https://prices.pokemontcg.io/cardmarket/sv6-218	2024-12-31	cardmarket
3276	sv6-219	https://prices.pokemontcg.io/cardmarket/sv6-219	2024-12-31	cardmarket
3277	sv6-220	https://prices.pokemontcg.io/cardmarket/sv6-220	2024-12-31	cardmarket
3278	sv6-221	https://prices.pokemontcg.io/cardmarket/sv6-221	2024-12-31	cardmarket
3279	sv6-222	https://prices.pokemontcg.io/cardmarket/sv6-222	2024-12-31	cardmarket
3280	sv6-223	https://prices.pokemontcg.io/cardmarket/sv6-223	2024-12-31	cardmarket
3281	sv6-224	https://prices.pokemontcg.io/cardmarket/sv6-224	2024-12-31	cardmarket
3282	sv6-225	https://prices.pokemontcg.io/cardmarket/sv6-225	2024-12-31	cardmarket
3283	sv6-226	https://prices.pokemontcg.io/cardmarket/sv6-226	2024-12-31	cardmarket
3284	sv6pt5-1	https://prices.pokemontcg.io/tcgplayer/sv6pt5-1	2024-12-31	tcgplayer
3285	sv6pt5-8	https://prices.pokemontcg.io/tcgplayer/sv6pt5-8	2024-12-31	tcgplayer
3286	sv6pt5-12	https://prices.pokemontcg.io/tcgplayer/sv6pt5-12	2024-12-31	tcgplayer
3287	sv6pt5-13	https://prices.pokemontcg.io/tcgplayer/sv6pt5-13	2024-12-31	tcgplayer
3288	sv6pt5-14	https://prices.pokemontcg.io/tcgplayer/sv6pt5-14	2024-12-31	tcgplayer
3289	sv6pt5-17	https://prices.pokemontcg.io/tcgplayer/sv6pt5-17	2024-12-31	tcgplayer
3290	sv6pt5-18	https://prices.pokemontcg.io/tcgplayer/sv6pt5-18	2024-12-31	tcgplayer
3291	sv6pt5-20	https://prices.pokemontcg.io/tcgplayer/sv6pt5-20	2024-12-31	tcgplayer
3292	sv6pt5-27	https://prices.pokemontcg.io/tcgplayer/sv6pt5-27	2024-12-31	tcgplayer
3293	sv6pt5-29	https://prices.pokemontcg.io/tcgplayer/sv6pt5-29	2024-12-31	tcgplayer
3294	sv6pt5-40	https://prices.pokemontcg.io/tcgplayer/sv6pt5-40	2024-12-31	tcgplayer
3295	sv6pt5-42	https://prices.pokemontcg.io/tcgplayer/sv6pt5-42	2024-12-31	tcgplayer
3296	sv6pt5-45	https://prices.pokemontcg.io/tcgplayer/sv6pt5-45	2024-12-31	tcgplayer
3297	sv6pt5-46	https://prices.pokemontcg.io/tcgplayer/sv6pt5-46	2024-12-31	tcgplayer
3298	sv6pt5-50	https://prices.pokemontcg.io/tcgplayer/sv6pt5-50	2024-12-31	tcgplayer
3299	sv6pt5-57	https://prices.pokemontcg.io/tcgplayer/sv6pt5-57	2024-12-31	tcgplayer
3300	sv6pt5-58	https://prices.pokemontcg.io/tcgplayer/sv6pt5-58	2024-12-31	tcgplayer
3301	sv6pt5-63	https://prices.pokemontcg.io/tcgplayer/sv6pt5-63	2024-12-31	tcgplayer
3302	sv6pt5-64	https://prices.pokemontcg.io/tcgplayer/sv6pt5-64	2024-12-31	tcgplayer
3303	sv6pt5-69	https://prices.pokemontcg.io/tcgplayer/sv6pt5-69	2024-12-31	tcgplayer
3304	sv6pt5-83	https://prices.pokemontcg.io/tcgplayer/sv6pt5-83	2024-12-31	tcgplayer
3305	sv6pt5-2	https://prices.pokemontcg.io/tcgplayer/sv6pt5-2	2024-12-31	tcgplayer
3306	sv6pt5-4	https://prices.pokemontcg.io/tcgplayer/sv6pt5-4	2024-12-31	tcgplayer
3307	sv6pt5-7	https://prices.pokemontcg.io/tcgplayer/sv6pt5-7	2024-12-31	tcgplayer
3308	sv6pt5-19	https://prices.pokemontcg.io/tcgplayer/sv6pt5-19	2024-12-31	tcgplayer
3309	sv6pt5-21	https://prices.pokemontcg.io/tcgplayer/sv6pt5-21	2024-12-31	tcgplayer
3310	sv6pt5-23	https://prices.pokemontcg.io/tcgplayer/sv6pt5-23	2024-12-31	tcgplayer
3311	sv6pt5-26	https://prices.pokemontcg.io/tcgplayer/sv6pt5-26	2024-12-31	tcgplayer
3312	sv6pt5-35	https://prices.pokemontcg.io/tcgplayer/sv6pt5-35	2024-12-31	tcgplayer
3313	sv6pt5-36	https://prices.pokemontcg.io/tcgplayer/sv6pt5-36	2024-12-31	tcgplayer
3314	sv6pt5-37	https://prices.pokemontcg.io/tcgplayer/sv6pt5-37	2024-12-31	tcgplayer
3315	sv6pt5-39	https://prices.pokemontcg.io/tcgplayer/sv6pt5-39	2024-12-31	tcgplayer
3316	sv6pt5-48	https://prices.pokemontcg.io/tcgplayer/sv6pt5-48	2024-12-31	tcgplayer
3317	sv6pt5-53	https://prices.pokemontcg.io/tcgplayer/sv6pt5-53	2024-12-31	tcgplayer
3318	sv6pt5-56	https://prices.pokemontcg.io/tcgplayer/sv6pt5-56	2024-12-31	tcgplayer
3319	sv6pt5-59	https://prices.pokemontcg.io/tcgplayer/sv6pt5-59	2024-12-31	tcgplayer
3320	sv6pt5-66	https://prices.pokemontcg.io/tcgplayer/sv6pt5-66	2024-12-31	tcgplayer
3321	sv6pt5-67	https://prices.pokemontcg.io/tcgplayer/sv6pt5-67	2024-12-31	tcgplayer
3322	sv6pt5-71	https://prices.pokemontcg.io/tcgplayer/sv6pt5-71	2024-12-31	tcgplayer
3323	sv6pt5-72	https://prices.pokemontcg.io/tcgplayer/sv6pt5-72	2024-12-31	tcgplayer
3324	sv6pt5-84	https://prices.pokemontcg.io/tcgplayer/sv6pt5-84	2024-12-31	tcgplayer
3325	sv6pt5-3	https://prices.pokemontcg.io/tcgplayer/sv6pt5-3	2024-12-31	tcgplayer
3326	sv6pt5-6	https://prices.pokemontcg.io/tcgplayer/sv6pt5-6	2024-12-31	tcgplayer
3327	sv6pt5-9	https://prices.pokemontcg.io/tcgplayer/sv6pt5-9	2024-12-31	tcgplayer
3328	sv6pt5-10	https://prices.pokemontcg.io/tcgplayer/sv6pt5-10	2024-12-31	tcgplayer
3329	sv6pt5-16	https://prices.pokemontcg.io/tcgplayer/sv6pt5-16	2024-12-31	tcgplayer
3330	sv6pt5-22	https://prices.pokemontcg.io/tcgplayer/sv6pt5-22	2024-12-31	tcgplayer
3331	sv6pt5-24	https://prices.pokemontcg.io/tcgplayer/sv6pt5-24	2024-12-31	tcgplayer
3332	sv6pt5-28	https://prices.pokemontcg.io/tcgplayer/sv6pt5-28	2024-12-31	tcgplayer
3333	sv6pt5-31	https://prices.pokemontcg.io/tcgplayer/sv6pt5-31	2024-12-31	tcgplayer
3334	sv6pt5-32	https://prices.pokemontcg.io/tcgplayer/sv6pt5-32	2024-12-31	tcgplayer
3335	sv6pt5-33	https://prices.pokemontcg.io/tcgplayer/sv6pt5-33	2024-12-31	tcgplayer
3336	sv6pt5-34	https://prices.pokemontcg.io/tcgplayer/sv6pt5-34	2024-12-31	tcgplayer
3337	sv6pt5-41	https://prices.pokemontcg.io/tcgplayer/sv6pt5-41	2024-12-31	tcgplayer
3338	sv6pt5-44	https://prices.pokemontcg.io/tcgplayer/sv6pt5-44	2024-12-31	tcgplayer
3339	sv6pt5-47	https://prices.pokemontcg.io/tcgplayer/sv6pt5-47	2024-12-31	tcgplayer
3340	sv6pt5-49	https://prices.pokemontcg.io/tcgplayer/sv6pt5-49	2024-12-31	tcgplayer
3341	sv6pt5-54	https://prices.pokemontcg.io/tcgplayer/sv6pt5-54	2024-12-31	tcgplayer
3342	sv6pt5-55	https://prices.pokemontcg.io/tcgplayer/sv6pt5-55	2024-12-31	tcgplayer
3343	sv6pt5-62	https://prices.pokemontcg.io/tcgplayer/sv6pt5-62	2024-12-31	tcgplayer
3344	sv6pt5-70	https://prices.pokemontcg.io/tcgplayer/sv6pt5-70	2024-12-31	tcgplayer
3345	sv6pt5-75	https://prices.pokemontcg.io/tcgplayer/sv6pt5-75	2024-12-31	tcgplayer
3346	sv6pt5-76	https://prices.pokemontcg.io/tcgplayer/sv6pt5-76	2024-12-31	tcgplayer
3347	sv6pt5-80	https://prices.pokemontcg.io/tcgplayer/sv6pt5-80	2024-12-31	tcgplayer
3348	sv6pt5-81	https://prices.pokemontcg.io/tcgplayer/sv6pt5-81	2024-12-31	tcgplayer
3349	sv6pt5-5	https://prices.pokemontcg.io/tcgplayer/sv6pt5-5	2024-12-31	tcgplayer
3350	sv6pt5-11	https://prices.pokemontcg.io/tcgplayer/sv6pt5-11	2024-12-31	tcgplayer
3351	sv6pt5-15	https://prices.pokemontcg.io/tcgplayer/sv6pt5-15	2024-12-31	tcgplayer
3352	sv6pt5-25	https://prices.pokemontcg.io/tcgplayer/sv6pt5-25	2024-12-31	tcgplayer
3353	sv6pt5-30	https://prices.pokemontcg.io/tcgplayer/sv6pt5-30	2024-12-31	tcgplayer
3354	sv6pt5-38	https://prices.pokemontcg.io/tcgplayer/sv6pt5-38	2024-12-31	tcgplayer
3355	sv6pt5-43	https://prices.pokemontcg.io/tcgplayer/sv6pt5-43	2024-12-31	tcgplayer
3356	sv6pt5-51	https://prices.pokemontcg.io/tcgplayer/sv6pt5-51	2024-12-31	tcgplayer
3357	sv6pt5-52	https://prices.pokemontcg.io/tcgplayer/sv6pt5-52	2024-12-31	tcgplayer
3358	sv6pt5-60	https://prices.pokemontcg.io/tcgplayer/sv6pt5-60	2024-12-31	tcgplayer
3359	sv6pt5-61	https://prices.pokemontcg.io/tcgplayer/sv6pt5-61	2024-12-31	tcgplayer
3360	sv6pt5-65	https://prices.pokemontcg.io/tcgplayer/sv6pt5-65	2024-12-31	tcgplayer
3361	sv6pt5-68	https://prices.pokemontcg.io/tcgplayer/sv6pt5-68	2024-12-31	tcgplayer
3362	sv6pt5-73	https://prices.pokemontcg.io/tcgplayer/sv6pt5-73	2024-12-31	tcgplayer
3363	sv6pt5-74	https://prices.pokemontcg.io/tcgplayer/sv6pt5-74	2024-12-31	tcgplayer
3364	sv6pt5-77	https://prices.pokemontcg.io/tcgplayer/sv6pt5-77	2024-12-31	tcgplayer
3365	sv6pt5-78	https://prices.pokemontcg.io/tcgplayer/sv6pt5-78	2024-12-31	tcgplayer
3366	sv6pt5-79	https://prices.pokemontcg.io/tcgplayer/sv6pt5-79	2024-12-31	tcgplayer
3367	sv6pt5-82	https://prices.pokemontcg.io/tcgplayer/sv6pt5-82	2024-12-31	tcgplayer
3368	sv6pt5-85	https://prices.pokemontcg.io/tcgplayer/sv6pt5-85	2024-12-31	tcgplayer
3369	sv6pt5-86	https://prices.pokemontcg.io/tcgplayer/sv6pt5-86	2024-12-31	tcgplayer
3370	sv6pt5-87	https://prices.pokemontcg.io/tcgplayer/sv6pt5-87	2024-12-31	tcgplayer
3371	sv6pt5-88	https://prices.pokemontcg.io/tcgplayer/sv6pt5-88	2024-12-31	tcgplayer
3372	sv6pt5-89	https://prices.pokemontcg.io/tcgplayer/sv6pt5-89	2024-12-31	tcgplayer
3373	sv6pt5-90	https://prices.pokemontcg.io/tcgplayer/sv6pt5-90	2024-12-31	tcgplayer
3374	sv6pt5-91	https://prices.pokemontcg.io/tcgplayer/sv6pt5-91	2024-12-31	tcgplayer
3375	sv6pt5-92	https://prices.pokemontcg.io/tcgplayer/sv6pt5-92	2024-12-31	tcgplayer
3376	sv6pt5-93	https://prices.pokemontcg.io/tcgplayer/sv6pt5-93	2024-12-31	tcgplayer
3377	sv6pt5-94	https://prices.pokemontcg.io/tcgplayer/sv6pt5-94	2024-12-31	tcgplayer
3378	sv6pt5-95	https://prices.pokemontcg.io/tcgplayer/sv6pt5-95	2024-12-31	tcgplayer
3379	sv6pt5-97	https://prices.pokemontcg.io/tcgplayer/sv6pt5-97	2024-12-31	tcgplayer
3380	sv6pt5-96	https://prices.pokemontcg.io/tcgplayer/sv6pt5-96	2024-12-31	tcgplayer
3381	sv6pt5-98	https://prices.pokemontcg.io/tcgplayer/sv6pt5-98	2024-12-31	tcgplayer
3382	sv6pt5-99	https://prices.pokemontcg.io/tcgplayer/sv6pt5-99	2024-12-31	tcgplayer
3383	sv6pt5-1	https://prices.pokemontcg.io/cardmarket/sv6pt5-1	2024-12-31	cardmarket
3384	sv6pt5-8	https://prices.pokemontcg.io/cardmarket/sv6pt5-8	2024-12-31	cardmarket
3385	sv6pt5-12	https://prices.pokemontcg.io/cardmarket/sv6pt5-12	2024-12-31	cardmarket
3386	sv6pt5-13	https://prices.pokemontcg.io/cardmarket/sv6pt5-13	2024-12-31	cardmarket
3387	sv6pt5-14	https://prices.pokemontcg.io/cardmarket/sv6pt5-14	2024-12-31	cardmarket
3388	sv6pt5-17	https://prices.pokemontcg.io/cardmarket/sv6pt5-17	2024-12-31	cardmarket
3389	sv6pt5-18	https://prices.pokemontcg.io/cardmarket/sv6pt5-18	2024-12-31	cardmarket
3390	sv6pt5-20	https://prices.pokemontcg.io/cardmarket/sv6pt5-20	2024-12-31	cardmarket
3391	sv6pt5-27	https://prices.pokemontcg.io/cardmarket/sv6pt5-27	2024-12-31	cardmarket
3392	sv6pt5-29	https://prices.pokemontcg.io/cardmarket/sv6pt5-29	2024-12-31	cardmarket
3393	sv6pt5-40	https://prices.pokemontcg.io/cardmarket/sv6pt5-40	2024-12-31	cardmarket
3394	sv6pt5-42	https://prices.pokemontcg.io/cardmarket/sv6pt5-42	2024-12-31	cardmarket
3395	sv6pt5-45	https://prices.pokemontcg.io/cardmarket/sv6pt5-45	2024-12-31	cardmarket
3396	sv6pt5-46	https://prices.pokemontcg.io/cardmarket/sv6pt5-46	2024-12-31	cardmarket
3397	sv6pt5-50	https://prices.pokemontcg.io/cardmarket/sv6pt5-50	2024-12-31	cardmarket
3398	sv6pt5-57	https://prices.pokemontcg.io/cardmarket/sv6pt5-57	2024-12-31	cardmarket
3399	sv6pt5-58	https://prices.pokemontcg.io/cardmarket/sv6pt5-58	2024-12-31	cardmarket
3400	sv6pt5-63	https://prices.pokemontcg.io/cardmarket/sv6pt5-63	2024-12-31	cardmarket
3401	sv6pt5-64	https://prices.pokemontcg.io/cardmarket/sv6pt5-64	2024-12-31	cardmarket
3402	sv6pt5-69	https://prices.pokemontcg.io/cardmarket/sv6pt5-69	2024-12-31	cardmarket
3403	sv6pt5-83	https://prices.pokemontcg.io/cardmarket/sv6pt5-83	2024-12-31	cardmarket
3404	sv6pt5-2	https://prices.pokemontcg.io/cardmarket/sv6pt5-2	2024-12-31	cardmarket
3405	sv6pt5-4	https://prices.pokemontcg.io/cardmarket/sv6pt5-4	2024-12-31	cardmarket
3406	sv6pt5-7	https://prices.pokemontcg.io/cardmarket/sv6pt5-7	2024-12-31	cardmarket
3407	sv6pt5-19	https://prices.pokemontcg.io/cardmarket/sv6pt5-19	2024-12-31	cardmarket
3408	sv6pt5-21	https://prices.pokemontcg.io/cardmarket/sv6pt5-21	2024-12-31	cardmarket
3409	sv6pt5-23	https://prices.pokemontcg.io/cardmarket/sv6pt5-23	2024-12-31	cardmarket
3410	sv6pt5-26	https://prices.pokemontcg.io/cardmarket/sv6pt5-26	2024-12-31	cardmarket
3411	sv6pt5-35	https://prices.pokemontcg.io/cardmarket/sv6pt5-35	2024-12-31	cardmarket
3412	sv6pt5-36	https://prices.pokemontcg.io/cardmarket/sv6pt5-36	2024-12-31	cardmarket
3413	sv6pt5-37	https://prices.pokemontcg.io/cardmarket/sv6pt5-37	2024-12-31	cardmarket
3414	sv6pt5-39	https://prices.pokemontcg.io/cardmarket/sv6pt5-39	2024-12-31	cardmarket
3415	sv6pt5-48	https://prices.pokemontcg.io/cardmarket/sv6pt5-48	2024-12-31	cardmarket
3416	sv6pt5-53	https://prices.pokemontcg.io/cardmarket/sv6pt5-53	2024-12-31	cardmarket
3417	sv6pt5-56	https://prices.pokemontcg.io/cardmarket/sv6pt5-56	2024-12-31	cardmarket
3418	sv6pt5-59	https://prices.pokemontcg.io/cardmarket/sv6pt5-59	2024-12-31	cardmarket
3419	sv6pt5-66	https://prices.pokemontcg.io/cardmarket/sv6pt5-66	2024-12-31	cardmarket
3420	sv6pt5-67	https://prices.pokemontcg.io/cardmarket/sv6pt5-67	2024-12-31	cardmarket
3421	sv6pt5-71	https://prices.pokemontcg.io/cardmarket/sv6pt5-71	2024-12-31	cardmarket
3422	sv6pt5-72	https://prices.pokemontcg.io/cardmarket/sv6pt5-72	2024-12-31	cardmarket
3423	sv6pt5-84	https://prices.pokemontcg.io/cardmarket/sv6pt5-84	2024-12-31	cardmarket
3424	sv6pt5-3	https://prices.pokemontcg.io/cardmarket/sv6pt5-3	2024-12-31	cardmarket
3425	sv6pt5-6	https://prices.pokemontcg.io/cardmarket/sv6pt5-6	2024-12-31	cardmarket
3426	sv6pt5-9	https://prices.pokemontcg.io/cardmarket/sv6pt5-9	2024-12-31	cardmarket
3427	sv6pt5-10	https://prices.pokemontcg.io/cardmarket/sv6pt5-10	2024-12-31	cardmarket
3428	sv6pt5-16	https://prices.pokemontcg.io/cardmarket/sv6pt5-16	2024-12-31	cardmarket
3429	sv6pt5-22	https://prices.pokemontcg.io/cardmarket/sv6pt5-22	2024-12-31	cardmarket
3430	sv6pt5-24	https://prices.pokemontcg.io/cardmarket/sv6pt5-24	2024-12-31	cardmarket
3431	sv6pt5-28	https://prices.pokemontcg.io/cardmarket/sv6pt5-28	2024-12-31	cardmarket
3432	sv6pt5-31	https://prices.pokemontcg.io/cardmarket/sv6pt5-31	2024-12-31	cardmarket
3433	sv6pt5-32	https://prices.pokemontcg.io/cardmarket/sv6pt5-32	2024-12-31	cardmarket
3434	sv6pt5-33	https://prices.pokemontcg.io/cardmarket/sv6pt5-33	2024-12-31	cardmarket
3435	sv6pt5-34	https://prices.pokemontcg.io/cardmarket/sv6pt5-34	2024-12-31	cardmarket
3436	sv6pt5-41	https://prices.pokemontcg.io/cardmarket/sv6pt5-41	2024-12-31	cardmarket
3437	sv6pt5-44	https://prices.pokemontcg.io/cardmarket/sv6pt5-44	2024-12-31	cardmarket
3438	sv6pt5-47	https://prices.pokemontcg.io/cardmarket/sv6pt5-47	2024-12-31	cardmarket
3439	sv6pt5-49	https://prices.pokemontcg.io/cardmarket/sv6pt5-49	2024-12-31	cardmarket
3440	sv6pt5-54	https://prices.pokemontcg.io/cardmarket/sv6pt5-54	2024-12-31	cardmarket
3441	sv6pt5-55	https://prices.pokemontcg.io/cardmarket/sv6pt5-55	2024-12-31	cardmarket
3442	sv6pt5-62	https://prices.pokemontcg.io/cardmarket/sv6pt5-62	2024-12-31	cardmarket
3443	sv6pt5-70	https://prices.pokemontcg.io/cardmarket/sv6pt5-70	2024-12-31	cardmarket
3444	sv6pt5-75	https://prices.pokemontcg.io/cardmarket/sv6pt5-75	2024-12-31	cardmarket
3445	sv6pt5-76	https://prices.pokemontcg.io/cardmarket/sv6pt5-76	2024-12-31	cardmarket
3446	sv6pt5-80	https://prices.pokemontcg.io/cardmarket/sv6pt5-80	2024-12-31	cardmarket
3447	sv6pt5-81	https://prices.pokemontcg.io/cardmarket/sv6pt5-81	2024-12-31	cardmarket
3448	sv6pt5-5	https://prices.pokemontcg.io/cardmarket/sv6pt5-5	2024-12-31	cardmarket
3449	sv6pt5-11	https://prices.pokemontcg.io/cardmarket/sv6pt5-11	2024-12-31	cardmarket
3450	sv6pt5-15	https://prices.pokemontcg.io/cardmarket/sv6pt5-15	2024-12-31	cardmarket
3451	sv6pt5-25	https://prices.pokemontcg.io/cardmarket/sv6pt5-25	2024-12-31	cardmarket
3452	sv6pt5-30	https://prices.pokemontcg.io/cardmarket/sv6pt5-30	2024-12-31	cardmarket
3453	sv6pt5-38	https://prices.pokemontcg.io/cardmarket/sv6pt5-38	2024-12-31	cardmarket
3454	sv6pt5-43	https://prices.pokemontcg.io/cardmarket/sv6pt5-43	2024-12-31	cardmarket
3455	sv6pt5-51	https://prices.pokemontcg.io/cardmarket/sv6pt5-51	2024-12-31	cardmarket
3456	sv6pt5-52	https://prices.pokemontcg.io/cardmarket/sv6pt5-52	2024-12-31	cardmarket
3457	sv6pt5-60	https://prices.pokemontcg.io/cardmarket/sv6pt5-60	2024-12-31	cardmarket
3458	sv6pt5-61	https://prices.pokemontcg.io/cardmarket/sv6pt5-61	2024-12-31	cardmarket
3459	sv6pt5-65	https://prices.pokemontcg.io/cardmarket/sv6pt5-65	2024-12-31	cardmarket
3460	sv6pt5-68	https://prices.pokemontcg.io/cardmarket/sv6pt5-68	2024-12-31	cardmarket
3461	sv6pt5-73	https://prices.pokemontcg.io/cardmarket/sv6pt5-73	2024-12-31	cardmarket
3462	sv6pt5-74	https://prices.pokemontcg.io/cardmarket/sv6pt5-74	2024-12-31	cardmarket
3463	sv6pt5-77	https://prices.pokemontcg.io/cardmarket/sv6pt5-77	2024-12-31	cardmarket
3464	sv6pt5-78	https://prices.pokemontcg.io/cardmarket/sv6pt5-78	2024-12-31	cardmarket
3465	sv6pt5-79	https://prices.pokemontcg.io/cardmarket/sv6pt5-79	2024-12-31	cardmarket
3466	sv6pt5-82	https://prices.pokemontcg.io/cardmarket/sv6pt5-82	2024-12-31	cardmarket
3467	sv6pt5-85	https://prices.pokemontcg.io/cardmarket/sv6pt5-85	2024-12-31	cardmarket
3468	sv6pt5-86	https://prices.pokemontcg.io/cardmarket/sv6pt5-86	2024-12-31	cardmarket
3469	sv6pt5-87	https://prices.pokemontcg.io/cardmarket/sv6pt5-87	2024-12-31	cardmarket
3470	sv6pt5-88	https://prices.pokemontcg.io/cardmarket/sv6pt5-88	2024-12-31	cardmarket
3471	sv6pt5-89	https://prices.pokemontcg.io/cardmarket/sv6pt5-89	2024-12-31	cardmarket
3472	sv6pt5-90	https://prices.pokemontcg.io/cardmarket/sv6pt5-90	2024-12-31	cardmarket
3473	sv6pt5-91	https://prices.pokemontcg.io/cardmarket/sv6pt5-91	2024-12-31	cardmarket
3474	sv6pt5-92	https://prices.pokemontcg.io/cardmarket/sv6pt5-92	2024-12-31	cardmarket
3475	sv6pt5-93	https://prices.pokemontcg.io/cardmarket/sv6pt5-93	2024-12-31	cardmarket
3476	sv6pt5-94	https://prices.pokemontcg.io/cardmarket/sv6pt5-94	2024-12-31	cardmarket
3477	sv6pt5-95	https://prices.pokemontcg.io/cardmarket/sv6pt5-95	2024-12-31	cardmarket
3478	sv6pt5-97	https://prices.pokemontcg.io/cardmarket/sv6pt5-97	2024-12-31	cardmarket
3479	sv6pt5-96	https://prices.pokemontcg.io/cardmarket/sv6pt5-96	2024-12-31	cardmarket
3480	sv6pt5-98	https://prices.pokemontcg.io/cardmarket/sv6pt5-98	2024-12-31	cardmarket
3481	sv6pt5-99	https://prices.pokemontcg.io/cardmarket/sv6pt5-99	2024-12-31	cardmarket
3482	sv7-1	https://prices.pokemontcg.io/tcgplayer/sv7-1	2024-12-31	tcgplayer
3483	sv7-2	https://prices.pokemontcg.io/tcgplayer/sv7-2	2024-12-31	tcgplayer
3484	sv7-3	https://prices.pokemontcg.io/tcgplayer/sv7-3	2024-12-31	tcgplayer
3485	sv7-4	https://prices.pokemontcg.io/tcgplayer/sv7-4	2024-12-31	tcgplayer
3486	sv7-5	https://prices.pokemontcg.io/tcgplayer/sv7-5	2024-12-31	tcgplayer
3487	sv7-6	https://prices.pokemontcg.io/tcgplayer/sv7-6	2024-12-31	tcgplayer
3488	sv7-7	https://prices.pokemontcg.io/tcgplayer/sv7-7	2024-12-31	tcgplayer
3489	sv7-8	https://prices.pokemontcg.io/tcgplayer/sv7-8	2024-12-31	tcgplayer
3490	sv7-9	https://prices.pokemontcg.io/tcgplayer/sv7-9	2024-12-31	tcgplayer
3491	sv7-10	https://prices.pokemontcg.io/tcgplayer/sv7-10	2024-12-31	tcgplayer
3492	sv7-11	https://prices.pokemontcg.io/tcgplayer/sv7-11	2024-12-31	tcgplayer
3493	sv7-12	https://prices.pokemontcg.io/tcgplayer/sv7-12	2024-12-31	tcgplayer
3494	sv7-13	https://prices.pokemontcg.io/tcgplayer/sv7-13	2024-12-31	tcgplayer
3495	sv7-14	https://prices.pokemontcg.io/tcgplayer/sv7-14	2024-12-31	tcgplayer
3496	sv7-15	https://prices.pokemontcg.io/tcgplayer/sv7-15	2024-12-31	tcgplayer
3497	sv7-16	https://prices.pokemontcg.io/tcgplayer/sv7-16	2024-12-31	tcgplayer
3498	sv7-17	https://prices.pokemontcg.io/tcgplayer/sv7-17	2024-12-31	tcgplayer
3499	sv7-18	https://prices.pokemontcg.io/tcgplayer/sv7-18	2024-12-31	tcgplayer
3500	sv7-19	https://prices.pokemontcg.io/tcgplayer/sv7-19	2024-12-31	tcgplayer
3501	sv7-20	https://prices.pokemontcg.io/tcgplayer/sv7-20	2024-12-31	tcgplayer
3502	sv7-21	https://prices.pokemontcg.io/tcgplayer/sv7-21	2024-12-31	tcgplayer
3503	sv7-22	https://prices.pokemontcg.io/tcgplayer/sv7-22	2024-12-31	tcgplayer
3504	sv7-23	https://prices.pokemontcg.io/tcgplayer/sv7-23	2024-12-31	tcgplayer
3505	sv7-24	https://prices.pokemontcg.io/tcgplayer/sv7-24	2024-12-31	tcgplayer
3506	sv7-25	https://prices.pokemontcg.io/tcgplayer/sv7-25	2024-12-31	tcgplayer
3507	sv7-26	https://prices.pokemontcg.io/tcgplayer/sv7-26	2024-12-31	tcgplayer
3508	sv7-27	https://prices.pokemontcg.io/tcgplayer/sv7-27	2024-12-31	tcgplayer
3509	sv7-28	https://prices.pokemontcg.io/tcgplayer/sv7-28	2024-12-31	tcgplayer
3510	sv7-29	https://prices.pokemontcg.io/tcgplayer/sv7-29	2024-12-31	tcgplayer
3511	sv7-30	https://prices.pokemontcg.io/tcgplayer/sv7-30	2024-12-31	tcgplayer
3512	sv7-31	https://prices.pokemontcg.io/tcgplayer/sv7-31	2024-12-31	tcgplayer
3513	sv7-32	https://prices.pokemontcg.io/tcgplayer/sv7-32	2024-12-31	tcgplayer
3514	sv7-33	https://prices.pokemontcg.io/tcgplayer/sv7-33	2024-12-31	tcgplayer
3515	sv7-34	https://prices.pokemontcg.io/tcgplayer/sv7-34	2024-12-31	tcgplayer
3516	sv7-35	https://prices.pokemontcg.io/tcgplayer/sv7-35	2024-12-31	tcgplayer
3517	sv7-36	https://prices.pokemontcg.io/tcgplayer/sv7-36	2024-12-31	tcgplayer
3518	sv7-37	https://prices.pokemontcg.io/tcgplayer/sv7-37	2024-12-31	tcgplayer
3519	sv7-38	https://prices.pokemontcg.io/tcgplayer/sv7-38	2024-12-31	tcgplayer
3520	sv7-39	https://prices.pokemontcg.io/tcgplayer/sv7-39	2024-12-31	tcgplayer
3521	sv7-40	https://prices.pokemontcg.io/tcgplayer/sv7-40	2024-12-31	tcgplayer
3522	sv7-41	https://prices.pokemontcg.io/tcgplayer/sv7-41	2024-12-31	tcgplayer
3523	sv7-42	https://prices.pokemontcg.io/tcgplayer/sv7-42	2024-12-31	tcgplayer
3524	sv7-43	https://prices.pokemontcg.io/tcgplayer/sv7-43	2024-12-31	tcgplayer
3525	sv7-44	https://prices.pokemontcg.io/tcgplayer/sv7-44	2024-12-31	tcgplayer
3526	sv7-45	https://prices.pokemontcg.io/tcgplayer/sv7-45	2024-12-31	tcgplayer
3527	sv7-46	https://prices.pokemontcg.io/tcgplayer/sv7-46	2024-12-31	tcgplayer
3528	sv7-47	https://prices.pokemontcg.io/tcgplayer/sv7-47	2024-12-31	tcgplayer
3529	sv7-48	https://prices.pokemontcg.io/tcgplayer/sv7-48	2024-12-31	tcgplayer
3530	sv7-49	https://prices.pokemontcg.io/tcgplayer/sv7-49	2024-12-31	tcgplayer
3531	sv7-50	https://prices.pokemontcg.io/tcgplayer/sv7-50	2024-12-31	tcgplayer
3532	sv7-51	https://prices.pokemontcg.io/tcgplayer/sv7-51	2024-12-31	tcgplayer
3533	sv7-52	https://prices.pokemontcg.io/tcgplayer/sv7-52	2024-12-31	tcgplayer
3534	sv7-53	https://prices.pokemontcg.io/tcgplayer/sv7-53	2024-12-31	tcgplayer
3535	sv7-54	https://prices.pokemontcg.io/tcgplayer/sv7-54	2024-12-31	tcgplayer
3536	sv7-55	https://prices.pokemontcg.io/tcgplayer/sv7-55	2024-12-31	tcgplayer
3537	sv7-56	https://prices.pokemontcg.io/tcgplayer/sv7-56	2024-12-31	tcgplayer
3538	sv7-57	https://prices.pokemontcg.io/tcgplayer/sv7-57	2024-12-31	tcgplayer
3539	sv7-58	https://prices.pokemontcg.io/tcgplayer/sv7-58	2024-12-31	tcgplayer
3540	sv7-59	https://prices.pokemontcg.io/tcgplayer/sv7-59	2024-12-31	tcgplayer
3541	sv7-60	https://prices.pokemontcg.io/tcgplayer/sv7-60	2024-12-31	tcgplayer
3542	sv7-61	https://prices.pokemontcg.io/tcgplayer/sv7-61	2024-12-31	tcgplayer
3543	sv7-62	https://prices.pokemontcg.io/tcgplayer/sv7-62	2024-12-31	tcgplayer
3544	sv7-63	https://prices.pokemontcg.io/tcgplayer/sv7-63	2024-12-31	tcgplayer
3545	sv7-64	https://prices.pokemontcg.io/tcgplayer/sv7-64	2024-12-31	tcgplayer
3546	sv7-65	https://prices.pokemontcg.io/tcgplayer/sv7-65	2024-12-31	tcgplayer
3547	sv7-66	https://prices.pokemontcg.io/tcgplayer/sv7-66	2024-12-31	tcgplayer
3548	sv7-67	https://prices.pokemontcg.io/tcgplayer/sv7-67	2024-12-31	tcgplayer
3549	sv7-68	https://prices.pokemontcg.io/tcgplayer/sv7-68	2024-12-31	tcgplayer
3550	sv7-69	https://prices.pokemontcg.io/tcgplayer/sv7-69	2024-12-31	tcgplayer
3551	sv7-70	https://prices.pokemontcg.io/tcgplayer/sv7-70	2024-12-31	tcgplayer
3552	sv7-71	https://prices.pokemontcg.io/tcgplayer/sv7-71	2024-12-31	tcgplayer
3553	sv7-72	https://prices.pokemontcg.io/tcgplayer/sv7-72	2024-12-31	tcgplayer
3554	sv7-73	https://prices.pokemontcg.io/tcgplayer/sv7-73	2024-12-31	tcgplayer
3555	sv7-74	https://prices.pokemontcg.io/tcgplayer/sv7-74	2024-12-31	tcgplayer
3556	sv7-75	https://prices.pokemontcg.io/tcgplayer/sv7-75	2024-12-31	tcgplayer
3557	sv7-76	https://prices.pokemontcg.io/tcgplayer/sv7-76	2024-12-31	tcgplayer
3558	sv7-77	https://prices.pokemontcg.io/tcgplayer/sv7-77	2024-12-31	tcgplayer
3559	sv7-78	https://prices.pokemontcg.io/tcgplayer/sv7-78	2024-12-31	tcgplayer
3560	sv7-79	https://prices.pokemontcg.io/tcgplayer/sv7-79	2024-12-31	tcgplayer
3561	sv7-80	https://prices.pokemontcg.io/tcgplayer/sv7-80	2024-12-31	tcgplayer
3562	sv7-81	https://prices.pokemontcg.io/tcgplayer/sv7-81	2024-12-31	tcgplayer
3563	sv7-82	https://prices.pokemontcg.io/tcgplayer/sv7-82	2024-12-31	tcgplayer
3564	sv7-83	https://prices.pokemontcg.io/tcgplayer/sv7-83	2024-12-31	tcgplayer
3565	sv7-84	https://prices.pokemontcg.io/tcgplayer/sv7-84	2024-12-31	tcgplayer
3566	sv7-85	https://prices.pokemontcg.io/tcgplayer/sv7-85	2024-12-31	tcgplayer
3567	sv7-86	https://prices.pokemontcg.io/tcgplayer/sv7-86	2024-12-31	tcgplayer
3568	sv7-87	https://prices.pokemontcg.io/tcgplayer/sv7-87	2024-12-31	tcgplayer
3569	sv7-88	https://prices.pokemontcg.io/tcgplayer/sv7-88	2024-12-31	tcgplayer
3570	sv7-89	https://prices.pokemontcg.io/tcgplayer/sv7-89	2024-12-31	tcgplayer
3571	sv7-90	https://prices.pokemontcg.io/tcgplayer/sv7-90	2024-12-31	tcgplayer
3572	sv7-91	https://prices.pokemontcg.io/tcgplayer/sv7-91	2024-12-31	tcgplayer
3573	sv7-92	https://prices.pokemontcg.io/tcgplayer/sv7-92	2024-12-31	tcgplayer
3574	sv7-93	https://prices.pokemontcg.io/tcgplayer/sv7-93	2024-12-31	tcgplayer
3575	sv7-94	https://prices.pokemontcg.io/tcgplayer/sv7-94	2024-12-31	tcgplayer
3576	sv7-95	https://prices.pokemontcg.io/tcgplayer/sv7-95	2024-12-31	tcgplayer
3577	sv7-96	https://prices.pokemontcg.io/tcgplayer/sv7-96	2024-12-31	tcgplayer
3578	sv7-97	https://prices.pokemontcg.io/tcgplayer/sv7-97	2024-12-31	tcgplayer
3579	sv7-98	https://prices.pokemontcg.io/tcgplayer/sv7-98	2024-12-31	tcgplayer
3580	sv7-99	https://prices.pokemontcg.io/tcgplayer/sv7-99	2024-12-31	tcgplayer
3581	sv7-100	https://prices.pokemontcg.io/tcgplayer/sv7-100	2024-12-31	tcgplayer
3582	sv7-101	https://prices.pokemontcg.io/tcgplayer/sv7-101	2024-12-31	tcgplayer
3583	sv7-102	https://prices.pokemontcg.io/tcgplayer/sv7-102	2024-12-31	tcgplayer
3584	sv7-103	https://prices.pokemontcg.io/tcgplayer/sv7-103	2024-12-31	tcgplayer
3585	sv7-104	https://prices.pokemontcg.io/tcgplayer/sv7-104	2024-12-31	tcgplayer
3586	sv7-105	https://prices.pokemontcg.io/tcgplayer/sv7-105	2024-12-31	tcgplayer
3587	sv7-106	https://prices.pokemontcg.io/tcgplayer/sv7-106	2024-12-31	tcgplayer
3588	sv7-107	https://prices.pokemontcg.io/tcgplayer/sv7-107	2024-12-31	tcgplayer
3589	sv7-108	https://prices.pokemontcg.io/tcgplayer/sv7-108	2024-12-31	tcgplayer
3590	sv7-109	https://prices.pokemontcg.io/tcgplayer/sv7-109	2024-12-31	tcgplayer
3591	sv7-110	https://prices.pokemontcg.io/tcgplayer/sv7-110	2024-12-31	tcgplayer
3592	sv7-111	https://prices.pokemontcg.io/tcgplayer/sv7-111	2024-12-31	tcgplayer
3593	sv7-112	https://prices.pokemontcg.io/tcgplayer/sv7-112	2024-12-31	tcgplayer
3594	sv7-113	https://prices.pokemontcg.io/tcgplayer/sv7-113	2024-12-31	tcgplayer
3595	sv7-114	https://prices.pokemontcg.io/tcgplayer/sv7-114	2024-12-31	tcgplayer
3596	sv7-115	https://prices.pokemontcg.io/tcgplayer/sv7-115	2024-12-31	tcgplayer
3597	sv7-116	https://prices.pokemontcg.io/tcgplayer/sv7-116	2024-12-31	tcgplayer
3598	sv7-117	https://prices.pokemontcg.io/tcgplayer/sv7-117	2024-12-31	tcgplayer
3599	sv7-118	https://prices.pokemontcg.io/tcgplayer/sv7-118	2024-12-31	tcgplayer
3600	sv7-119	https://prices.pokemontcg.io/tcgplayer/sv7-119	2024-12-31	tcgplayer
3601	sv7-120	https://prices.pokemontcg.io/tcgplayer/sv7-120	2024-12-31	tcgplayer
3602	sv7-121	https://prices.pokemontcg.io/tcgplayer/sv7-121	2024-12-31	tcgplayer
3603	sv7-122	https://prices.pokemontcg.io/tcgplayer/sv7-122	2024-12-31	tcgplayer
3604	sv7-123	https://prices.pokemontcg.io/tcgplayer/sv7-123	2024-12-31	tcgplayer
3605	sv7-124	https://prices.pokemontcg.io/tcgplayer/sv7-124	2024-12-31	tcgplayer
3606	sv7-125	https://prices.pokemontcg.io/tcgplayer/sv7-125	2024-12-31	tcgplayer
3607	sv7-126	https://prices.pokemontcg.io/tcgplayer/sv7-126	2024-12-31	tcgplayer
3608	sv7-127	https://prices.pokemontcg.io/tcgplayer/sv7-127	2024-12-31	tcgplayer
3609	sv7-128	https://prices.pokemontcg.io/tcgplayer/sv7-128	2024-12-31	tcgplayer
3610	sv7-129	https://prices.pokemontcg.io/tcgplayer/sv7-129	2024-12-31	tcgplayer
3611	sv7-130	https://prices.pokemontcg.io/tcgplayer/sv7-130	2024-12-31	tcgplayer
3612	sv7-131	https://prices.pokemontcg.io/tcgplayer/sv7-131	2024-12-31	tcgplayer
3613	sv7-132	https://prices.pokemontcg.io/tcgplayer/sv7-132	2024-12-31	tcgplayer
3614	sv7-133	https://prices.pokemontcg.io/tcgplayer/sv7-133	2024-12-31	tcgplayer
3615	sv7-134	https://prices.pokemontcg.io/tcgplayer/sv7-134	2024-12-31	tcgplayer
3616	sv7-135	https://prices.pokemontcg.io/tcgplayer/sv7-135	2024-12-31	tcgplayer
3617	sv7-136	https://prices.pokemontcg.io/tcgplayer/sv7-136	2024-12-31	tcgplayer
3618	sv7-137	https://prices.pokemontcg.io/tcgplayer/sv7-137	2024-12-31	tcgplayer
3619	sv7-138	https://prices.pokemontcg.io/tcgplayer/sv7-138	2024-12-31	tcgplayer
3620	sv7-139	https://prices.pokemontcg.io/tcgplayer/sv7-139	2024-12-31	tcgplayer
3621	sv7-140	https://prices.pokemontcg.io/tcgplayer/sv7-140	2024-12-31	tcgplayer
3622	sv7-141	https://prices.pokemontcg.io/tcgplayer/sv7-141	2024-12-31	tcgplayer
3623	sv7-142	https://prices.pokemontcg.io/tcgplayer/sv7-142	2024-12-31	tcgplayer
3624	sv7-143	https://prices.pokemontcg.io/tcgplayer/sv7-143	2024-12-31	tcgplayer
3625	sv7-144	https://prices.pokemontcg.io/tcgplayer/sv7-144	2024-12-31	tcgplayer
3626	sv7-145	https://prices.pokemontcg.io/tcgplayer/sv7-145	2024-12-31	tcgplayer
3627	sv7-146	https://prices.pokemontcg.io/tcgplayer/sv7-146	2024-12-31	tcgplayer
3628	sv7-147	https://prices.pokemontcg.io/tcgplayer/sv7-147	2024-12-31	tcgplayer
3629	sv7-148	https://prices.pokemontcg.io/tcgplayer/sv7-148	2024-12-31	tcgplayer
3630	sv7-149	https://prices.pokemontcg.io/tcgplayer/sv7-149	2024-12-31	tcgplayer
3631	sv7-150	https://prices.pokemontcg.io/tcgplayer/sv7-150	2024-12-31	tcgplayer
3632	sv7-151	https://prices.pokemontcg.io/tcgplayer/sv7-151	2024-12-31	tcgplayer
3633	sv7-152	https://prices.pokemontcg.io/tcgplayer/sv7-152	2024-12-31	tcgplayer
3634	sv7-153	https://prices.pokemontcg.io/tcgplayer/sv7-153	2024-12-31	tcgplayer
3635	sv7-154	https://prices.pokemontcg.io/tcgplayer/sv7-154	2024-12-31	tcgplayer
3636	sv7-155	https://prices.pokemontcg.io/tcgplayer/sv7-155	2024-12-31	tcgplayer
3637	sv7-156	https://prices.pokemontcg.io/tcgplayer/sv7-156	2024-12-31	tcgplayer
3638	sv7-157	https://prices.pokemontcg.io/tcgplayer/sv7-157	2024-12-31	tcgplayer
3639	sv7-158	https://prices.pokemontcg.io/tcgplayer/sv7-158	2024-12-31	tcgplayer
3640	sv7-159	https://prices.pokemontcg.io/tcgplayer/sv7-159	2024-12-31	tcgplayer
3641	sv7-160	https://prices.pokemontcg.io/tcgplayer/sv7-160	2024-12-31	tcgplayer
3642	sv7-161	https://prices.pokemontcg.io/tcgplayer/sv7-161	2024-12-31	tcgplayer
3643	sv7-162	https://prices.pokemontcg.io/tcgplayer/sv7-162	2024-12-31	tcgplayer
3644	sv7-163	https://prices.pokemontcg.io/tcgplayer/sv7-163	2024-12-31	tcgplayer
3645	sv7-164	https://prices.pokemontcg.io/tcgplayer/sv7-164	2024-12-31	tcgplayer
3646	sv7-165	https://prices.pokemontcg.io/tcgplayer/sv7-165	2024-12-31	tcgplayer
3647	sv7-166	https://prices.pokemontcg.io/tcgplayer/sv7-166	2024-12-31	tcgplayer
3648	sv7-167	https://prices.pokemontcg.io/tcgplayer/sv7-167	2024-12-31	tcgplayer
3649	sv7-168	https://prices.pokemontcg.io/tcgplayer/sv7-168	2024-12-31	tcgplayer
3650	sv7-169	https://prices.pokemontcg.io/tcgplayer/sv7-169	2024-12-31	tcgplayer
3651	sv7-170	https://prices.pokemontcg.io/tcgplayer/sv7-170	2024-12-31	tcgplayer
3652	sv7-171	https://prices.pokemontcg.io/tcgplayer/sv7-171	2024-12-31	tcgplayer
3653	sv7-172	https://prices.pokemontcg.io/tcgplayer/sv7-172	2024-12-31	tcgplayer
3654	sv7-173	https://prices.pokemontcg.io/tcgplayer/sv7-173	2024-12-31	tcgplayer
3655	sv7-174	https://prices.pokemontcg.io/tcgplayer/sv7-174	2024-12-31	tcgplayer
3656	sv7-175	https://prices.pokemontcg.io/tcgplayer/sv7-175	2024-12-31	tcgplayer
3657	sv7-1	https://prices.pokemontcg.io/cardmarket/sv7-1	2024-12-31	cardmarket
3658	sv7-2	https://prices.pokemontcg.io/cardmarket/sv7-2	2024-12-31	cardmarket
3659	sv7-3	https://prices.pokemontcg.io/cardmarket/sv7-3	2024-12-31	cardmarket
3660	sv7-4	https://prices.pokemontcg.io/cardmarket/sv7-4	2024-12-31	cardmarket
3661	sv7-5	https://prices.pokemontcg.io/cardmarket/sv7-5	2024-12-31	cardmarket
3662	sv7-6	https://prices.pokemontcg.io/cardmarket/sv7-6	2024-12-31	cardmarket
3663	sv7-7	https://prices.pokemontcg.io/cardmarket/sv7-7	2024-12-31	cardmarket
3664	sv7-8	https://prices.pokemontcg.io/cardmarket/sv7-8	2024-12-31	cardmarket
3665	sv7-9	https://prices.pokemontcg.io/cardmarket/sv7-9	2024-12-31	cardmarket
3666	sv7-10	https://prices.pokemontcg.io/cardmarket/sv7-10	2024-12-31	cardmarket
3667	sv7-11	https://prices.pokemontcg.io/cardmarket/sv7-11	2024-12-31	cardmarket
3668	sv7-12	https://prices.pokemontcg.io/cardmarket/sv7-12	2024-12-31	cardmarket
3669	sv7-13	https://prices.pokemontcg.io/cardmarket/sv7-13	2024-12-31	cardmarket
3670	sv7-14	https://prices.pokemontcg.io/cardmarket/sv7-14	2024-12-31	cardmarket
3671	sv7-15	https://prices.pokemontcg.io/cardmarket/sv7-15	2024-12-31	cardmarket
3672	sv7-16	https://prices.pokemontcg.io/cardmarket/sv7-16	2024-12-31	cardmarket
3673	sv7-17	https://prices.pokemontcg.io/cardmarket/sv7-17	2024-12-31	cardmarket
3674	sv7-18	https://prices.pokemontcg.io/cardmarket/sv7-18	2024-12-31	cardmarket
3675	sv7-19	https://prices.pokemontcg.io/cardmarket/sv7-19	2024-12-31	cardmarket
3676	sv7-20	https://prices.pokemontcg.io/cardmarket/sv7-20	2024-12-31	cardmarket
3677	sv7-21	https://prices.pokemontcg.io/cardmarket/sv7-21	2024-12-31	cardmarket
3678	sv7-22	https://prices.pokemontcg.io/cardmarket/sv7-22	2024-12-31	cardmarket
3679	sv7-23	https://prices.pokemontcg.io/cardmarket/sv7-23	2024-12-31	cardmarket
3680	sv7-24	https://prices.pokemontcg.io/cardmarket/sv7-24	2024-12-31	cardmarket
3681	sv7-25	https://prices.pokemontcg.io/cardmarket/sv7-25	2024-12-31	cardmarket
3682	sv7-26	https://prices.pokemontcg.io/cardmarket/sv7-26	2024-12-31	cardmarket
3683	sv7-27	https://prices.pokemontcg.io/cardmarket/sv7-27	2024-12-31	cardmarket
3684	sv7-28	https://prices.pokemontcg.io/cardmarket/sv7-28	2024-12-31	cardmarket
3685	sv7-29	https://prices.pokemontcg.io/cardmarket/sv7-29	2024-12-31	cardmarket
3686	sv7-30	https://prices.pokemontcg.io/cardmarket/sv7-30	2024-12-31	cardmarket
3687	sv7-31	https://prices.pokemontcg.io/cardmarket/sv7-31	2024-12-31	cardmarket
3688	sv7-32	https://prices.pokemontcg.io/cardmarket/sv7-32	2024-12-31	cardmarket
3689	sv7-33	https://prices.pokemontcg.io/cardmarket/sv7-33	2024-12-31	cardmarket
3690	sv7-34	https://prices.pokemontcg.io/cardmarket/sv7-34	2024-12-31	cardmarket
3691	sv7-35	https://prices.pokemontcg.io/cardmarket/sv7-35	2024-12-31	cardmarket
3692	sv7-36	https://prices.pokemontcg.io/cardmarket/sv7-36	2024-12-31	cardmarket
3693	sv7-37	https://prices.pokemontcg.io/cardmarket/sv7-37	2024-12-31	cardmarket
3694	sv7-38	https://prices.pokemontcg.io/cardmarket/sv7-38	2024-12-31	cardmarket
3695	sv7-39	https://prices.pokemontcg.io/cardmarket/sv7-39	2024-12-31	cardmarket
3696	sv7-40	https://prices.pokemontcg.io/cardmarket/sv7-40	2024-12-31	cardmarket
3697	sv7-41	https://prices.pokemontcg.io/cardmarket/sv7-41	2024-12-31	cardmarket
3698	sv7-42	https://prices.pokemontcg.io/cardmarket/sv7-42	2024-12-31	cardmarket
3699	sv7-43	https://prices.pokemontcg.io/cardmarket/sv7-43	2024-12-31	cardmarket
3700	sv7-44	https://prices.pokemontcg.io/cardmarket/sv7-44	2024-12-31	cardmarket
3701	sv7-45	https://prices.pokemontcg.io/cardmarket/sv7-45	2024-12-31	cardmarket
3702	sv7-46	https://prices.pokemontcg.io/cardmarket/sv7-46	2024-12-31	cardmarket
3703	sv7-47	https://prices.pokemontcg.io/cardmarket/sv7-47	2024-12-31	cardmarket
3704	sv7-48	https://prices.pokemontcg.io/cardmarket/sv7-48	2024-12-31	cardmarket
3705	sv7-49	https://prices.pokemontcg.io/cardmarket/sv7-49	2024-12-31	cardmarket
3706	sv7-50	https://prices.pokemontcg.io/cardmarket/sv7-50	2024-12-31	cardmarket
3707	sv7-51	https://prices.pokemontcg.io/cardmarket/sv7-51	2024-12-31	cardmarket
3708	sv7-52	https://prices.pokemontcg.io/cardmarket/sv7-52	2024-12-31	cardmarket
3709	sv7-53	https://prices.pokemontcg.io/cardmarket/sv7-53	2024-12-31	cardmarket
3710	sv7-54	https://prices.pokemontcg.io/cardmarket/sv7-54	2024-12-31	cardmarket
3711	sv7-55	https://prices.pokemontcg.io/cardmarket/sv7-55	2024-12-31	cardmarket
3712	sv7-56	https://prices.pokemontcg.io/cardmarket/sv7-56	2024-12-31	cardmarket
3713	sv7-57	https://prices.pokemontcg.io/cardmarket/sv7-57	2024-12-31	cardmarket
3714	sv7-58	https://prices.pokemontcg.io/cardmarket/sv7-58	2024-12-31	cardmarket
3715	sv7-59	https://prices.pokemontcg.io/cardmarket/sv7-59	2024-12-31	cardmarket
3716	sv7-60	https://prices.pokemontcg.io/cardmarket/sv7-60	2024-12-31	cardmarket
3717	sv7-61	https://prices.pokemontcg.io/cardmarket/sv7-61	2024-12-31	cardmarket
3718	sv7-62	https://prices.pokemontcg.io/cardmarket/sv7-62	2024-12-31	cardmarket
3719	sv7-63	https://prices.pokemontcg.io/cardmarket/sv7-63	2024-12-31	cardmarket
3720	sv7-64	https://prices.pokemontcg.io/cardmarket/sv7-64	2024-12-31	cardmarket
3721	sv7-65	https://prices.pokemontcg.io/cardmarket/sv7-65	2024-12-31	cardmarket
3722	sv7-66	https://prices.pokemontcg.io/cardmarket/sv7-66	2024-12-31	cardmarket
3723	sv7-67	https://prices.pokemontcg.io/cardmarket/sv7-67	2024-12-31	cardmarket
3724	sv7-68	https://prices.pokemontcg.io/cardmarket/sv7-68	2024-12-31	cardmarket
3725	sv7-69	https://prices.pokemontcg.io/cardmarket/sv7-69	2024-12-31	cardmarket
3726	sv7-70	https://prices.pokemontcg.io/cardmarket/sv7-70	2024-12-31	cardmarket
3727	sv7-71	https://prices.pokemontcg.io/cardmarket/sv7-71	2024-12-31	cardmarket
3728	sv7-72	https://prices.pokemontcg.io/cardmarket/sv7-72	2024-12-31	cardmarket
3729	sv7-73	https://prices.pokemontcg.io/cardmarket/sv7-73	2024-12-31	cardmarket
3730	sv7-74	https://prices.pokemontcg.io/cardmarket/sv7-74	2024-12-31	cardmarket
3731	sv7-75	https://prices.pokemontcg.io/cardmarket/sv7-75	2024-12-31	cardmarket
3732	sv7-76	https://prices.pokemontcg.io/cardmarket/sv7-76	2024-12-31	cardmarket
3733	sv7-77	https://prices.pokemontcg.io/cardmarket/sv7-77	2024-12-31	cardmarket
3734	sv7-78	https://prices.pokemontcg.io/cardmarket/sv7-78	2024-12-31	cardmarket
3735	sv7-79	https://prices.pokemontcg.io/cardmarket/sv7-79	2024-12-31	cardmarket
3736	sv7-80	https://prices.pokemontcg.io/cardmarket/sv7-80	2024-12-31	cardmarket
3737	sv7-81	https://prices.pokemontcg.io/cardmarket/sv7-81	2024-12-31	cardmarket
3738	sv7-82	https://prices.pokemontcg.io/cardmarket/sv7-82	2024-12-31	cardmarket
3739	sv7-83	https://prices.pokemontcg.io/cardmarket/sv7-83	2024-12-31	cardmarket
3740	sv7-84	https://prices.pokemontcg.io/cardmarket/sv7-84	2024-12-31	cardmarket
3741	sv7-85	https://prices.pokemontcg.io/cardmarket/sv7-85	2024-12-31	cardmarket
3742	sv7-86	https://prices.pokemontcg.io/cardmarket/sv7-86	2024-12-31	cardmarket
3743	sv7-87	https://prices.pokemontcg.io/cardmarket/sv7-87	2024-12-31	cardmarket
3744	sv7-88	https://prices.pokemontcg.io/cardmarket/sv7-88	2024-12-31	cardmarket
3745	sv7-89	https://prices.pokemontcg.io/cardmarket/sv7-89	2024-12-31	cardmarket
3746	sv7-90	https://prices.pokemontcg.io/cardmarket/sv7-90	2024-12-31	cardmarket
3747	sv7-91	https://prices.pokemontcg.io/cardmarket/sv7-91	2024-12-31	cardmarket
3748	sv7-92	https://prices.pokemontcg.io/cardmarket/sv7-92	2024-12-31	cardmarket
3749	sv7-93	https://prices.pokemontcg.io/cardmarket/sv7-93	2024-12-31	cardmarket
3750	sv7-94	https://prices.pokemontcg.io/cardmarket/sv7-94	2024-12-31	cardmarket
3751	sv7-95	https://prices.pokemontcg.io/cardmarket/sv7-95	2024-12-31	cardmarket
3752	sv7-96	https://prices.pokemontcg.io/cardmarket/sv7-96	2024-12-31	cardmarket
3753	sv7-97	https://prices.pokemontcg.io/cardmarket/sv7-97	2024-12-31	cardmarket
3754	sv7-98	https://prices.pokemontcg.io/cardmarket/sv7-98	2024-12-31	cardmarket
3755	sv7-99	https://prices.pokemontcg.io/cardmarket/sv7-99	2024-12-31	cardmarket
3756	sv7-100	https://prices.pokemontcg.io/cardmarket/sv7-100	2024-12-31	cardmarket
3757	sv7-101	https://prices.pokemontcg.io/cardmarket/sv7-101	2024-12-31	cardmarket
3758	sv7-102	https://prices.pokemontcg.io/cardmarket/sv7-102	2024-12-31	cardmarket
3759	sv7-103	https://prices.pokemontcg.io/cardmarket/sv7-103	2024-12-31	cardmarket
3760	sv7-104	https://prices.pokemontcg.io/cardmarket/sv7-104	2024-12-31	cardmarket
3761	sv7-105	https://prices.pokemontcg.io/cardmarket/sv7-105	2024-12-31	cardmarket
3762	sv7-106	https://prices.pokemontcg.io/cardmarket/sv7-106	2024-12-31	cardmarket
3763	sv7-107	https://prices.pokemontcg.io/cardmarket/sv7-107	2024-12-31	cardmarket
3764	sv7-108	https://prices.pokemontcg.io/cardmarket/sv7-108	2024-12-31	cardmarket
3765	sv7-109	https://prices.pokemontcg.io/cardmarket/sv7-109	2024-12-31	cardmarket
3766	sv7-110	https://prices.pokemontcg.io/cardmarket/sv7-110	2024-12-31	cardmarket
3767	sv7-111	https://prices.pokemontcg.io/cardmarket/sv7-111	2024-12-31	cardmarket
3768	sv7-112	https://prices.pokemontcg.io/cardmarket/sv7-112	2024-12-31	cardmarket
3769	sv7-113	https://prices.pokemontcg.io/cardmarket/sv7-113	2024-12-31	cardmarket
3770	sv7-114	https://prices.pokemontcg.io/cardmarket/sv7-114	2024-12-31	cardmarket
3771	sv7-115	https://prices.pokemontcg.io/cardmarket/sv7-115	2024-12-31	cardmarket
3772	sv7-116	https://prices.pokemontcg.io/cardmarket/sv7-116	2024-12-31	cardmarket
3773	sv7-117	https://prices.pokemontcg.io/cardmarket/sv7-117	2024-12-31	cardmarket
3774	sv7-118	https://prices.pokemontcg.io/cardmarket/sv7-118	2024-12-31	cardmarket
3775	sv7-119	https://prices.pokemontcg.io/cardmarket/sv7-119	2024-12-31	cardmarket
3776	sv7-120	https://prices.pokemontcg.io/cardmarket/sv7-120	2024-12-31	cardmarket
3777	sv7-121	https://prices.pokemontcg.io/cardmarket/sv7-121	2024-12-31	cardmarket
3778	sv7-122	https://prices.pokemontcg.io/cardmarket/sv7-122	2024-12-31	cardmarket
3779	sv7-123	https://prices.pokemontcg.io/cardmarket/sv7-123	2024-12-31	cardmarket
3780	sv7-124	https://prices.pokemontcg.io/cardmarket/sv7-124	2024-12-31	cardmarket
3781	sv7-125	https://prices.pokemontcg.io/cardmarket/sv7-125	2024-12-31	cardmarket
3782	sv7-126	https://prices.pokemontcg.io/cardmarket/sv7-126	2024-12-31	cardmarket
3783	sv7-127	https://prices.pokemontcg.io/cardmarket/sv7-127	2024-12-31	cardmarket
3784	sv7-128	https://prices.pokemontcg.io/cardmarket/sv7-128	2024-12-31	cardmarket
3785	sv7-129	https://prices.pokemontcg.io/cardmarket/sv7-129	2024-12-31	cardmarket
3786	sv7-130	https://prices.pokemontcg.io/cardmarket/sv7-130	2024-12-31	cardmarket
3787	sv7-131	https://prices.pokemontcg.io/cardmarket/sv7-131	2024-12-31	cardmarket
3788	sv7-132	https://prices.pokemontcg.io/cardmarket/sv7-132	2024-12-31	cardmarket
3789	sv7-133	https://prices.pokemontcg.io/cardmarket/sv7-133	2024-12-31	cardmarket
3790	sv7-134	https://prices.pokemontcg.io/cardmarket/sv7-134	2024-12-31	cardmarket
3791	sv7-135	https://prices.pokemontcg.io/cardmarket/sv7-135	2024-12-31	cardmarket
3792	sv7-136	https://prices.pokemontcg.io/cardmarket/sv7-136	2024-12-31	cardmarket
3793	sv7-137	https://prices.pokemontcg.io/cardmarket/sv7-137	2024-12-31	cardmarket
3794	sv7-138	https://prices.pokemontcg.io/cardmarket/sv7-138	2024-12-31	cardmarket
3795	sv7-139	https://prices.pokemontcg.io/cardmarket/sv7-139	2024-12-31	cardmarket
3796	sv7-140	https://prices.pokemontcg.io/cardmarket/sv7-140	2024-12-31	cardmarket
3797	sv7-141	https://prices.pokemontcg.io/cardmarket/sv7-141	2024-12-31	cardmarket
3798	sv7-142	https://prices.pokemontcg.io/cardmarket/sv7-142	2024-12-31	cardmarket
3799	sv7-143	https://prices.pokemontcg.io/cardmarket/sv7-143	2024-12-31	cardmarket
3800	sv7-144	https://prices.pokemontcg.io/cardmarket/sv7-144	2024-12-31	cardmarket
3801	sv7-145	https://prices.pokemontcg.io/cardmarket/sv7-145	2024-12-31	cardmarket
3802	sv7-146	https://prices.pokemontcg.io/cardmarket/sv7-146	2024-12-31	cardmarket
3803	sv7-147	https://prices.pokemontcg.io/cardmarket/sv7-147	2024-12-31	cardmarket
3804	sv7-148	https://prices.pokemontcg.io/cardmarket/sv7-148	2024-12-31	cardmarket
3805	sv7-149	https://prices.pokemontcg.io/cardmarket/sv7-149	2024-12-31	cardmarket
3806	sv7-150	https://prices.pokemontcg.io/cardmarket/sv7-150	2024-12-31	cardmarket
3807	sv7-151	https://prices.pokemontcg.io/cardmarket/sv7-151	2024-12-31	cardmarket
3808	sv7-152	https://prices.pokemontcg.io/cardmarket/sv7-152	2024-12-31	cardmarket
3809	sv7-153	https://prices.pokemontcg.io/cardmarket/sv7-153	2024-12-31	cardmarket
3810	sv7-154	https://prices.pokemontcg.io/cardmarket/sv7-154	2024-12-31	cardmarket
3811	sv7-155	https://prices.pokemontcg.io/cardmarket/sv7-155	2024-12-31	cardmarket
3812	sv7-156	https://prices.pokemontcg.io/cardmarket/sv7-156	2024-12-31	cardmarket
3813	sv7-157	https://prices.pokemontcg.io/cardmarket/sv7-157	2024-12-31	cardmarket
3814	sv7-158	https://prices.pokemontcg.io/cardmarket/sv7-158	2024-12-31	cardmarket
3815	sv7-159	https://prices.pokemontcg.io/cardmarket/sv7-159	2024-12-31	cardmarket
3816	sv7-160	https://prices.pokemontcg.io/cardmarket/sv7-160	2024-12-31	cardmarket
3817	sv7-161	https://prices.pokemontcg.io/cardmarket/sv7-161	2024-12-31	cardmarket
3818	sv7-162	https://prices.pokemontcg.io/cardmarket/sv7-162	2024-12-31	cardmarket
3819	sv7-163	https://prices.pokemontcg.io/cardmarket/sv7-163	2024-12-31	cardmarket
3820	sv7-164	https://prices.pokemontcg.io/cardmarket/sv7-164	2024-12-31	cardmarket
3821	sv7-165	https://prices.pokemontcg.io/cardmarket/sv7-165	2024-12-31	cardmarket
3822	sv7-166	https://prices.pokemontcg.io/cardmarket/sv7-166	2024-12-31	cardmarket
3823	sv7-167	https://prices.pokemontcg.io/cardmarket/sv7-167	2024-12-31	cardmarket
3824	sv7-168	https://prices.pokemontcg.io/cardmarket/sv7-168	2024-12-31	cardmarket
3825	sv7-169	https://prices.pokemontcg.io/cardmarket/sv7-169	2024-12-31	cardmarket
3826	sv7-170	https://prices.pokemontcg.io/cardmarket/sv7-170	2024-12-31	cardmarket
3827	sv7-171	https://prices.pokemontcg.io/cardmarket/sv7-171	2024-12-31	cardmarket
3828	sv7-172	https://prices.pokemontcg.io/cardmarket/sv7-172	2024-12-31	cardmarket
3829	sv7-173	https://prices.pokemontcg.io/cardmarket/sv7-173	2024-12-31	cardmarket
3830	sv7-174	https://prices.pokemontcg.io/cardmarket/sv7-174	2024-12-31	cardmarket
3831	sv7-175	https://prices.pokemontcg.io/cardmarket/sv7-175	2024-12-31	cardmarket
3832	sv8-1	https://prices.pokemontcg.io/tcgplayer/sv8-1	2024-12-31	tcgplayer
3833	sv8-2	https://prices.pokemontcg.io/tcgplayer/sv8-2	2024-12-31	tcgplayer
3834	sv8-3	https://prices.pokemontcg.io/tcgplayer/sv8-3	2024-12-31	tcgplayer
3835	sv8-11	https://prices.pokemontcg.io/tcgplayer/sv8-11	2024-12-31	tcgplayer
3836	sv8-14	https://prices.pokemontcg.io/tcgplayer/sv8-14	2024-12-31	tcgplayer
3837	sv8-16	https://prices.pokemontcg.io/tcgplayer/sv8-16	2024-12-31	tcgplayer
3838	sv8-17	https://prices.pokemontcg.io/tcgplayer/sv8-17	2024-12-31	tcgplayer
3839	sv8-24	https://prices.pokemontcg.io/tcgplayer/sv8-24	2024-12-31	tcgplayer
3840	sv8-27	https://prices.pokemontcg.io/tcgplayer/sv8-27	2024-12-31	tcgplayer
3841	sv8-30	https://prices.pokemontcg.io/tcgplayer/sv8-30	2024-12-31	tcgplayer
3842	sv8-31	https://prices.pokemontcg.io/tcgplayer/sv8-31	2024-12-31	tcgplayer
3843	sv8-29	https://prices.pokemontcg.io/tcgplayer/sv8-29	2024-12-31	tcgplayer
3844	sv8-25	https://prices.pokemontcg.io/tcgplayer/sv8-25	2024-12-31	tcgplayer
3845	sv8-4	https://prices.pokemontcg.io/tcgplayer/sv8-4	2024-12-31	tcgplayer
3846	sv8-6	https://prices.pokemontcg.io/tcgplayer/sv8-6	2024-12-31	tcgplayer
3847	sv8-5	https://prices.pokemontcg.io/tcgplayer/sv8-5	2024-12-31	tcgplayer
3848	sv8-8	https://prices.pokemontcg.io/tcgplayer/sv8-8	2024-12-31	tcgplayer
3849	sv8-9	https://prices.pokemontcg.io/tcgplayer/sv8-9	2024-12-31	tcgplayer
3850	sv8-10	https://prices.pokemontcg.io/tcgplayer/sv8-10	2024-12-31	tcgplayer
3851	sv8-15	https://prices.pokemontcg.io/tcgplayer/sv8-15	2024-12-31	tcgplayer
3852	sv8-28	https://prices.pokemontcg.io/tcgplayer/sv8-28	2024-12-31	tcgplayer
3853	sv8-7	https://prices.pokemontcg.io/tcgplayer/sv8-7	2024-12-31	tcgplayer
3854	sv8-13	https://prices.pokemontcg.io/tcgplayer/sv8-13	2024-12-31	tcgplayer
3855	sv8-18	https://prices.pokemontcg.io/tcgplayer/sv8-18	2024-12-31	tcgplayer
3856	sv8-19	https://prices.pokemontcg.io/tcgplayer/sv8-19	2024-12-31	tcgplayer
3857	sv8-21	https://prices.pokemontcg.io/tcgplayer/sv8-21	2024-12-31	tcgplayer
3858	sv8-23	https://prices.pokemontcg.io/tcgplayer/sv8-23	2024-12-31	tcgplayer
3859	sv8-20	https://prices.pokemontcg.io/tcgplayer/sv8-20	2024-12-31	tcgplayer
3860	sv8-22	https://prices.pokemontcg.io/tcgplayer/sv8-22	2024-12-31	tcgplayer
3861	sv8-12	https://prices.pokemontcg.io/tcgplayer/sv8-12	2024-12-31	tcgplayer
3862	sv8-26	https://prices.pokemontcg.io/tcgplayer/sv8-26	2024-12-31	tcgplayer
3863	sv8-36	https://prices.pokemontcg.io/tcgplayer/sv8-36	2024-12-31	tcgplayer
3864	sv8-38	https://prices.pokemontcg.io/tcgplayer/sv8-38	2024-12-31	tcgplayer
3865	sv8-34	https://prices.pokemontcg.io/tcgplayer/sv8-34	2024-12-31	tcgplayer
3866	sv8-39	https://prices.pokemontcg.io/tcgplayer/sv8-39	2024-12-31	tcgplayer
3867	sv8-40	https://prices.pokemontcg.io/tcgplayer/sv8-40	2024-12-31	tcgplayer
3868	sv8-43	https://prices.pokemontcg.io/tcgplayer/sv8-43	2024-12-31	tcgplayer
3869	sv8-45	https://prices.pokemontcg.io/tcgplayer/sv8-45	2024-12-31	tcgplayer
3870	sv8-46	https://prices.pokemontcg.io/tcgplayer/sv8-46	2024-12-31	tcgplayer
3871	sv8-32	https://prices.pokemontcg.io/tcgplayer/sv8-32	2024-12-31	tcgplayer
3872	sv8-37	https://prices.pokemontcg.io/tcgplayer/sv8-37	2024-12-31	tcgplayer
3873	sv8-47	https://prices.pokemontcg.io/tcgplayer/sv8-47	2024-12-31	tcgplayer
3874	sv8-42	https://prices.pokemontcg.io/tcgplayer/sv8-42	2024-12-31	tcgplayer
3875	sv8-44	https://prices.pokemontcg.io/tcgplayer/sv8-44	2024-12-31	tcgplayer
3876	sv8-33	https://prices.pokemontcg.io/tcgplayer/sv8-33	2024-12-31	tcgplayer
3877	sv8-35	https://prices.pokemontcg.io/tcgplayer/sv8-35	2024-12-31	tcgplayer
3878	sv8-41	https://prices.pokemontcg.io/tcgplayer/sv8-41	2024-12-31	tcgplayer
3879	sv8-48	https://prices.pokemontcg.io/tcgplayer/sv8-48	2024-12-31	tcgplayer
3880	sv8-49	https://prices.pokemontcg.io/tcgplayer/sv8-49	2024-12-31	tcgplayer
3881	sv8-52	https://prices.pokemontcg.io/tcgplayer/sv8-52	2024-12-31	tcgplayer
3882	sv8-51	https://prices.pokemontcg.io/tcgplayer/sv8-51	2024-12-31	tcgplayer
3883	sv8-54	https://prices.pokemontcg.io/tcgplayer/sv8-54	2024-12-31	tcgplayer
3884	sv8-50	https://prices.pokemontcg.io/tcgplayer/sv8-50	2024-12-31	tcgplayer
3885	sv8-53	https://prices.pokemontcg.io/tcgplayer/sv8-53	2024-12-31	tcgplayer
3886	sv8-57	https://prices.pokemontcg.io/tcgplayer/sv8-57	2024-12-31	tcgplayer
3887	sv8-56	https://prices.pokemontcg.io/tcgplayer/sv8-56	2024-12-31	tcgplayer
3888	sv8-55	https://prices.pokemontcg.io/tcgplayer/sv8-55	2024-12-31	tcgplayer
3889	sv8-58	https://prices.pokemontcg.io/tcgplayer/sv8-58	2024-12-31	tcgplayer
3890	sv8-59	https://prices.pokemontcg.io/tcgplayer/sv8-59	2024-12-31	tcgplayer
3891	sv8-60	https://prices.pokemontcg.io/tcgplayer/sv8-60	2024-12-31	tcgplayer
3892	sv8-61	https://prices.pokemontcg.io/tcgplayer/sv8-61	2024-12-31	tcgplayer
3893	sv8-62	https://prices.pokemontcg.io/tcgplayer/sv8-62	2024-12-31	tcgplayer
3894	sv8-68	https://prices.pokemontcg.io/tcgplayer/sv8-68	2024-12-31	tcgplayer
3895	sv8-71	https://prices.pokemontcg.io/tcgplayer/sv8-71	2024-12-31	tcgplayer
3896	sv8-69	https://prices.pokemontcg.io/tcgplayer/sv8-69	2024-12-31	tcgplayer
3897	sv8-66	https://prices.pokemontcg.io/tcgplayer/sv8-66	2024-12-31	tcgplayer
3898	sv8-63	https://prices.pokemontcg.io/tcgplayer/sv8-63	2024-12-31	tcgplayer
3899	sv8-67	https://prices.pokemontcg.io/tcgplayer/sv8-67	2024-12-31	tcgplayer
3900	sv8-72	https://prices.pokemontcg.io/tcgplayer/sv8-72	2024-12-31	tcgplayer
3901	sv8-70	https://prices.pokemontcg.io/tcgplayer/sv8-70	2024-12-31	tcgplayer
3902	sv8-64	https://prices.pokemontcg.io/tcgplayer/sv8-64	2024-12-31	tcgplayer
3903	sv8-65	https://prices.pokemontcg.io/tcgplayer/sv8-65	2024-12-31	tcgplayer
3904	sv8-73	https://prices.pokemontcg.io/tcgplayer/sv8-73	2024-12-31	tcgplayer
3905	sv8-74	https://prices.pokemontcg.io/tcgplayer/sv8-74	2024-12-31	tcgplayer
3906	sv8-75	https://prices.pokemontcg.io/tcgplayer/sv8-75	2024-12-31	tcgplayer
3907	sv8-76	https://prices.pokemontcg.io/tcgplayer/sv8-76	2024-12-31	tcgplayer
3908	sv8-77	https://prices.pokemontcg.io/tcgplayer/sv8-77	2024-12-31	tcgplayer
3909	sv8-78	https://prices.pokemontcg.io/tcgplayer/sv8-78	2024-12-31	tcgplayer
3910	sv8-79	https://prices.pokemontcg.io/tcgplayer/sv8-79	2024-12-31	tcgplayer
3911	sv8-80	https://prices.pokemontcg.io/tcgplayer/sv8-80	2024-12-31	tcgplayer
3912	sv8-81	https://prices.pokemontcg.io/tcgplayer/sv8-81	2024-12-31	tcgplayer
3913	sv8-82	https://prices.pokemontcg.io/tcgplayer/sv8-82	2024-12-31	tcgplayer
3914	sv8-83	https://prices.pokemontcg.io/tcgplayer/sv8-83	2024-12-31	tcgplayer
3915	sv8-84	https://prices.pokemontcg.io/tcgplayer/sv8-84	2024-12-31	tcgplayer
3916	sv8-85	https://prices.pokemontcg.io/tcgplayer/sv8-85	2024-12-31	tcgplayer
3917	sv8-86	https://prices.pokemontcg.io/tcgplayer/sv8-86	2024-12-31	tcgplayer
3918	sv8-87	https://prices.pokemontcg.io/tcgplayer/sv8-87	2024-12-31	tcgplayer
3919	sv8-88	https://prices.pokemontcg.io/tcgplayer/sv8-88	2024-12-31	tcgplayer
3920	sv8-89	https://prices.pokemontcg.io/tcgplayer/sv8-89	2024-12-31	tcgplayer
3921	sv8-90	https://prices.pokemontcg.io/tcgplayer/sv8-90	2024-12-31	tcgplayer
3922	sv8-91	https://prices.pokemontcg.io/tcgplayer/sv8-91	2024-12-31	tcgplayer
3923	sv8-92	https://prices.pokemontcg.io/tcgplayer/sv8-92	2024-12-31	tcgplayer
3924	sv8-95	https://prices.pokemontcg.io/tcgplayer/sv8-95	2024-12-31	tcgplayer
3925	sv8-97	https://prices.pokemontcg.io/tcgplayer/sv8-97	2024-12-31	tcgplayer
3926	sv8-94	https://prices.pokemontcg.io/tcgplayer/sv8-94	2024-12-31	tcgplayer
3927	sv8-96	https://prices.pokemontcg.io/tcgplayer/sv8-96	2024-12-31	tcgplayer
3928	sv8-99	https://prices.pokemontcg.io/tcgplayer/sv8-99	2024-12-31	tcgplayer
3929	sv8-93	https://prices.pokemontcg.io/tcgplayer/sv8-93	2024-12-31	tcgplayer
3930	sv8-98	https://prices.pokemontcg.io/tcgplayer/sv8-98	2024-12-31	tcgplayer
3931	sv8-100	https://prices.pokemontcg.io/tcgplayer/sv8-100	2024-12-31	tcgplayer
3932	sv8-101	https://prices.pokemontcg.io/tcgplayer/sv8-101	2024-12-31	tcgplayer
3933	sv8-102	https://prices.pokemontcg.io/tcgplayer/sv8-102	2024-12-31	tcgplayer
3934	sv8-103	https://prices.pokemontcg.io/tcgplayer/sv8-103	2024-12-31	tcgplayer
3935	sv8-104	https://prices.pokemontcg.io/tcgplayer/sv8-104	2024-12-31	tcgplayer
3936	sv8-105	https://prices.pokemontcg.io/tcgplayer/sv8-105	2024-12-31	tcgplayer
3937	sv8-106	https://prices.pokemontcg.io/tcgplayer/sv8-106	2024-12-31	tcgplayer
3938	sv8-107	https://prices.pokemontcg.io/tcgplayer/sv8-107	2024-12-31	tcgplayer
3939	sv8-108	https://prices.pokemontcg.io/tcgplayer/sv8-108	2024-12-31	tcgplayer
3940	sv8-109	https://prices.pokemontcg.io/tcgplayer/sv8-109	2024-12-31	tcgplayer
3941	sv8-110	https://prices.pokemontcg.io/tcgplayer/sv8-110	2024-12-31	tcgplayer
3942	sv8-111	https://prices.pokemontcg.io/tcgplayer/sv8-111	2024-12-31	tcgplayer
3943	sv8-112	https://prices.pokemontcg.io/tcgplayer/sv8-112	2024-12-31	tcgplayer
3944	sv8-113	https://prices.pokemontcg.io/tcgplayer/sv8-113	2024-12-31	tcgplayer
3945	sv8-114	https://prices.pokemontcg.io/tcgplayer/sv8-114	2024-12-31	tcgplayer
3946	sv8-115	https://prices.pokemontcg.io/tcgplayer/sv8-115	2024-12-31	tcgplayer
3947	sv8-117	https://prices.pokemontcg.io/tcgplayer/sv8-117	2024-12-31	tcgplayer
3948	sv8-120	https://prices.pokemontcg.io/tcgplayer/sv8-120	2024-12-31	tcgplayer
3949	sv8-119	https://prices.pokemontcg.io/tcgplayer/sv8-119	2024-12-31	tcgplayer
3950	sv8-121	https://prices.pokemontcg.io/tcgplayer/sv8-121	2024-12-31	tcgplayer
3951	sv8-118	https://prices.pokemontcg.io/tcgplayer/sv8-118	2024-12-31	tcgplayer
3952	sv8-116	https://prices.pokemontcg.io/tcgplayer/sv8-116	2024-12-31	tcgplayer
3953	sv8-122	https://prices.pokemontcg.io/tcgplayer/sv8-122	2024-12-31	tcgplayer
3954	sv8-123	https://prices.pokemontcg.io/tcgplayer/sv8-123	2024-12-31	tcgplayer
3955	sv8-124	https://prices.pokemontcg.io/tcgplayer/sv8-124	2024-12-31	tcgplayer
3956	sv8-125	https://prices.pokemontcg.io/tcgplayer/sv8-125	2024-12-31	tcgplayer
3957	sv8-126	https://prices.pokemontcg.io/tcgplayer/sv8-126	2024-12-31	tcgplayer
3958	sv8-127	https://prices.pokemontcg.io/tcgplayer/sv8-127	2024-12-31	tcgplayer
3959	sv8-128	https://prices.pokemontcg.io/tcgplayer/sv8-128	2024-12-31	tcgplayer
3960	sv8-129	https://prices.pokemontcg.io/tcgplayer/sv8-129	2024-12-31	tcgplayer
3961	sv8-130	https://prices.pokemontcg.io/tcgplayer/sv8-130	2024-12-31	tcgplayer
3962	sv8-131	https://prices.pokemontcg.io/tcgplayer/sv8-131	2024-12-31	tcgplayer
3963	sv8-132	https://prices.pokemontcg.io/tcgplayer/sv8-132	2024-12-31	tcgplayer
3964	sv8-134	https://prices.pokemontcg.io/tcgplayer/sv8-134	2024-12-31	tcgplayer
3965	sv8-139	https://prices.pokemontcg.io/tcgplayer/sv8-139	2024-12-31	tcgplayer
3966	sv8-148	https://prices.pokemontcg.io/tcgplayer/sv8-148	2024-12-31	tcgplayer
3967	sv8-149	https://prices.pokemontcg.io/tcgplayer/sv8-149	2024-12-31	tcgplayer
3968	sv8-150	https://prices.pokemontcg.io/tcgplayer/sv8-150	2024-12-31	tcgplayer
3969	sv8-133	https://prices.pokemontcg.io/tcgplayer/sv8-133	2024-12-31	tcgplayer
3970	sv8-140	https://prices.pokemontcg.io/tcgplayer/sv8-140	2024-12-31	tcgplayer
3971	sv8-142	https://prices.pokemontcg.io/tcgplayer/sv8-142	2024-12-31	tcgplayer
3972	sv8-146	https://prices.pokemontcg.io/tcgplayer/sv8-146	2024-12-31	tcgplayer
3973	sv8-141	https://prices.pokemontcg.io/tcgplayer/sv8-141	2024-12-31	tcgplayer
3974	sv8-135	https://prices.pokemontcg.io/tcgplayer/sv8-135	2024-12-31	tcgplayer
3975	sv8-147	https://prices.pokemontcg.io/tcgplayer/sv8-147	2024-12-31	tcgplayer
3976	sv8-136	https://prices.pokemontcg.io/tcgplayer/sv8-136	2024-12-31	tcgplayer
3977	sv8-138	https://prices.pokemontcg.io/tcgplayer/sv8-138	2024-12-31	tcgplayer
3978	sv8-143	https://prices.pokemontcg.io/tcgplayer/sv8-143	2024-12-31	tcgplayer
3979	sv8-144	https://prices.pokemontcg.io/tcgplayer/sv8-144	2024-12-31	tcgplayer
3980	sv8-137	https://prices.pokemontcg.io/tcgplayer/sv8-137	2024-12-31	tcgplayer
3981	sv8-145	https://prices.pokemontcg.io/tcgplayer/sv8-145	2024-12-31	tcgplayer
3982	sv8-155	https://prices.pokemontcg.io/tcgplayer/sv8-155	2024-12-31	tcgplayer
3983	sv8-153	https://prices.pokemontcg.io/tcgplayer/sv8-153	2024-12-31	tcgplayer
3984	sv8-163	https://prices.pokemontcg.io/tcgplayer/sv8-163	2024-12-31	tcgplayer
3985	sv8-159	https://prices.pokemontcg.io/tcgplayer/sv8-159	2024-12-31	tcgplayer
3986	sv8-168	https://prices.pokemontcg.io/tcgplayer/sv8-168	2024-12-31	tcgplayer
3987	sv8-157	https://prices.pokemontcg.io/tcgplayer/sv8-157	2024-12-31	tcgplayer
3988	sv8-162	https://prices.pokemontcg.io/tcgplayer/sv8-162	2024-12-31	tcgplayer
3989	sv8-166	https://prices.pokemontcg.io/tcgplayer/sv8-166	2024-12-31	tcgplayer
3990	sv8-151	https://prices.pokemontcg.io/tcgplayer/sv8-151	2024-12-31	tcgplayer
3991	sv8-165	https://prices.pokemontcg.io/tcgplayer/sv8-165	2024-12-31	tcgplayer
3992	sv8-154	https://prices.pokemontcg.io/tcgplayer/sv8-154	2024-12-31	tcgplayer
3993	sv8-152	https://prices.pokemontcg.io/tcgplayer/sv8-152	2024-12-31	tcgplayer
3994	sv8-158	https://prices.pokemontcg.io/tcgplayer/sv8-158	2024-12-31	tcgplayer
3995	sv8-160	https://prices.pokemontcg.io/tcgplayer/sv8-160	2024-12-31	tcgplayer
3996	sv8-167	https://prices.pokemontcg.io/tcgplayer/sv8-167	2024-12-31	tcgplayer
3997	sv8-156	https://prices.pokemontcg.io/tcgplayer/sv8-156	2024-12-31	tcgplayer
3998	sv8-161	https://prices.pokemontcg.io/tcgplayer/sv8-161	2024-12-31	tcgplayer
3999	sv8-164	https://prices.pokemontcg.io/tcgplayer/sv8-164	2024-12-31	tcgplayer
4000	sv8-169	https://prices.pokemontcg.io/tcgplayer/sv8-169	2024-12-31	tcgplayer
4001	sv8-170	https://prices.pokemontcg.io/tcgplayer/sv8-170	2024-12-31	tcgplayer
4002	sv8-180	https://prices.pokemontcg.io/tcgplayer/sv8-180	2024-12-31	tcgplayer
4003	sv8-177	https://prices.pokemontcg.io/tcgplayer/sv8-177	2024-12-31	tcgplayer
4004	sv8-172	https://prices.pokemontcg.io/tcgplayer/sv8-172	2024-12-31	tcgplayer
4005	sv8-171	https://prices.pokemontcg.io/tcgplayer/sv8-171	2024-12-31	tcgplayer
4006	sv8-178	https://prices.pokemontcg.io/tcgplayer/sv8-178	2024-12-31	tcgplayer
4007	sv8-179	https://prices.pokemontcg.io/tcgplayer/sv8-179	2024-12-31	tcgplayer
4008	sv8-173	https://prices.pokemontcg.io/tcgplayer/sv8-173	2024-12-31	tcgplayer
4009	sv8-174	https://prices.pokemontcg.io/tcgplayer/sv8-174	2024-12-31	tcgplayer
4010	sv8-175	https://prices.pokemontcg.io/tcgplayer/sv8-175	2024-12-31	tcgplayer
4011	sv8-176	https://prices.pokemontcg.io/tcgplayer/sv8-176	2024-12-31	tcgplayer
4012	sv8-181	https://prices.pokemontcg.io/tcgplayer/sv8-181	2024-12-31	tcgplayer
4013	sv8-182	https://prices.pokemontcg.io/tcgplayer/sv8-182	2024-12-31	tcgplayer
4014	sv8-194	https://prices.pokemontcg.io/tcgplayer/sv8-194	2024-12-31	tcgplayer
4015	sv8-187	https://prices.pokemontcg.io/tcgplayer/sv8-187	2024-12-31	tcgplayer
4016	sv8-188	https://prices.pokemontcg.io/tcgplayer/sv8-188	2024-12-31	tcgplayer
4017	sv8-186	https://prices.pokemontcg.io/tcgplayer/sv8-186	2024-12-31	tcgplayer
4018	sv8-191	https://prices.pokemontcg.io/tcgplayer/sv8-191	2024-12-31	tcgplayer
4019	sv8-195	https://prices.pokemontcg.io/tcgplayer/sv8-195	2024-12-31	tcgplayer
4020	sv8-183	https://prices.pokemontcg.io/tcgplayer/sv8-183	2024-12-31	tcgplayer
4021	sv8-185	https://prices.pokemontcg.io/tcgplayer/sv8-185	2024-12-31	tcgplayer
4022	sv8-189	https://prices.pokemontcg.io/tcgplayer/sv8-189	2024-12-31	tcgplayer
4023	sv8-184	https://prices.pokemontcg.io/tcgplayer/sv8-184	2024-12-31	tcgplayer
4024	sv8-190	https://prices.pokemontcg.io/tcgplayer/sv8-190	2024-12-31	tcgplayer
4025	sv8-192	https://prices.pokemontcg.io/tcgplayer/sv8-192	2024-12-31	tcgplayer
4026	sv8-193	https://prices.pokemontcg.io/tcgplayer/sv8-193	2024-12-31	tcgplayer
4027	sv8-199	https://prices.pokemontcg.io/tcgplayer/sv8-199	2024-12-31	tcgplayer
4028	sv8-201	https://prices.pokemontcg.io/tcgplayer/sv8-201	2024-12-31	tcgplayer
4029	sv8-206	https://prices.pokemontcg.io/tcgplayer/sv8-206	2024-12-31	tcgplayer
4030	sv8-209	https://prices.pokemontcg.io/tcgplayer/sv8-209	2024-12-31	tcgplayer
4031	sv8-203	https://prices.pokemontcg.io/tcgplayer/sv8-203	2024-12-31	tcgplayer
4032	sv8-212	https://prices.pokemontcg.io/tcgplayer/sv8-212	2024-12-31	tcgplayer
4033	sv8-205	https://prices.pokemontcg.io/tcgplayer/sv8-205	2024-12-31	tcgplayer
4034	sv8-204	https://prices.pokemontcg.io/tcgplayer/sv8-204	2024-12-31	tcgplayer
4035	sv8-213	https://prices.pokemontcg.io/tcgplayer/sv8-213	2024-12-31	tcgplayer
4036	sv8-207	https://prices.pokemontcg.io/tcgplayer/sv8-207	2024-12-31	tcgplayer
4037	sv8-208	https://prices.pokemontcg.io/tcgplayer/sv8-208	2024-12-31	tcgplayer
4038	sv8-197	https://prices.pokemontcg.io/tcgplayer/sv8-197	2024-12-31	tcgplayer
4039	sv8-196	https://prices.pokemontcg.io/tcgplayer/sv8-196	2024-12-31	tcgplayer
4040	sv8-198	https://prices.pokemontcg.io/tcgplayer/sv8-198	2024-12-31	tcgplayer
4041	sv8-200	https://prices.pokemontcg.io/tcgplayer/sv8-200	2024-12-31	tcgplayer
4042	sv8-202	https://prices.pokemontcg.io/tcgplayer/sv8-202	2024-12-31	tcgplayer
4043	sv8-210	https://prices.pokemontcg.io/tcgplayer/sv8-210	2024-12-31	tcgplayer
4044	sv8-211	https://prices.pokemontcg.io/tcgplayer/sv8-211	2024-12-31	tcgplayer
4045	sv8-214	https://prices.pokemontcg.io/tcgplayer/sv8-214	2024-12-31	tcgplayer
4046	sv8-215	https://prices.pokemontcg.io/tcgplayer/sv8-215	2024-12-31	tcgplayer
4047	sv8-220	https://prices.pokemontcg.io/tcgplayer/sv8-220	2024-12-31	tcgplayer
4048	sv8-216	https://prices.pokemontcg.io/tcgplayer/sv8-216	2024-12-31	tcgplayer
4049	sv8-222	https://prices.pokemontcg.io/tcgplayer/sv8-222	2024-12-31	tcgplayer
4050	sv8-223	https://prices.pokemontcg.io/tcgplayer/sv8-223	2024-12-31	tcgplayer
4051	sv8-217	https://prices.pokemontcg.io/tcgplayer/sv8-217	2024-12-31	tcgplayer
4052	sv8-221	https://prices.pokemontcg.io/tcgplayer/sv8-221	2024-12-31	tcgplayer
4053	sv8-218	https://prices.pokemontcg.io/tcgplayer/sv8-218	2024-12-31	tcgplayer
4054	sv8-219	https://prices.pokemontcg.io/tcgplayer/sv8-219	2024-12-31	tcgplayer
4055	sv8-225	https://prices.pokemontcg.io/tcgplayer/sv8-225	2024-12-31	tcgplayer
4056	sv8-224	https://prices.pokemontcg.io/tcgplayer/sv8-224	2024-12-31	tcgplayer
4057	sv8-226	https://prices.pokemontcg.io/tcgplayer/sv8-226	2024-12-31	tcgplayer
4058	sv8-230	https://prices.pokemontcg.io/tcgplayer/sv8-230	2024-12-31	tcgplayer
4059	sv8-232	https://prices.pokemontcg.io/tcgplayer/sv8-232	2024-12-31	tcgplayer
4060	sv8-234	https://prices.pokemontcg.io/tcgplayer/sv8-234	2024-12-31	tcgplayer
4061	sv8-238	https://prices.pokemontcg.io/tcgplayer/sv8-238	2024-12-31	tcgplayer
4062	sv8-236	https://prices.pokemontcg.io/tcgplayer/sv8-236	2024-12-31	tcgplayer
4063	sv8-237	https://prices.pokemontcg.io/tcgplayer/sv8-237	2024-12-31	tcgplayer
4064	sv8-231	https://prices.pokemontcg.io/tcgplayer/sv8-231	2024-12-31	tcgplayer
4065	sv8-227	https://prices.pokemontcg.io/tcgplayer/sv8-227	2024-12-31	tcgplayer
4066	sv8-228	https://prices.pokemontcg.io/tcgplayer/sv8-228	2024-12-31	tcgplayer
4067	sv8-229	https://prices.pokemontcg.io/tcgplayer/sv8-229	2024-12-31	tcgplayer
4068	sv8-233	https://prices.pokemontcg.io/tcgplayer/sv8-233	2024-12-31	tcgplayer
4069	sv8-235	https://prices.pokemontcg.io/tcgplayer/sv8-235	2024-12-31	tcgplayer
4070	sv8-239	https://prices.pokemontcg.io/tcgplayer/sv8-239	2024-12-31	tcgplayer
4071	sv8-240	https://prices.pokemontcg.io/tcgplayer/sv8-240	2024-12-31	tcgplayer
4072	sv8-241	https://prices.pokemontcg.io/tcgplayer/sv8-241	2024-12-31	tcgplayer
4073	sv8-245	https://prices.pokemontcg.io/tcgplayer/sv8-245	2024-12-31	tcgplayer
4074	sv8-244	https://prices.pokemontcg.io/tcgplayer/sv8-244	2024-12-31	tcgplayer
4075	sv8-247	https://prices.pokemontcg.io/tcgplayer/sv8-247	2024-12-31	tcgplayer
4076	sv8-249	https://prices.pokemontcg.io/tcgplayer/sv8-249	2024-12-31	tcgplayer
4077	sv8-242	https://prices.pokemontcg.io/tcgplayer/sv8-242	2024-12-31	tcgplayer
4078	sv8-243	https://prices.pokemontcg.io/tcgplayer/sv8-243	2024-12-31	tcgplayer
4079	sv8-246	https://prices.pokemontcg.io/tcgplayer/sv8-246	2024-12-31	tcgplayer
4080	sv8-248	https://prices.pokemontcg.io/tcgplayer/sv8-248	2024-12-31	tcgplayer
4081	sv8-250	https://prices.pokemontcg.io/tcgplayer/sv8-250	2024-12-31	tcgplayer
4082	sv8-1	https://prices.pokemontcg.io/cardmarket/sv8-1	2024-12-31	cardmarket
4083	sv8-2	https://prices.pokemontcg.io/cardmarket/sv8-2	2024-12-31	cardmarket
4084	sv8-3	https://prices.pokemontcg.io/cardmarket/sv8-3	2024-12-31	cardmarket
4085	sv8-11	https://prices.pokemontcg.io/cardmarket/sv8-11	2024-12-31	cardmarket
4086	sv8-14	https://prices.pokemontcg.io/cardmarket/sv8-14	2024-12-31	cardmarket
4087	sv8-16	https://prices.pokemontcg.io/cardmarket/sv8-16	2024-12-31	cardmarket
4088	sv8-17	https://prices.pokemontcg.io/cardmarket/sv8-17	2024-12-31	cardmarket
4089	sv8-24	https://prices.pokemontcg.io/cardmarket/sv8-24	2024-12-31	cardmarket
4090	sv8-27	https://prices.pokemontcg.io/cardmarket/sv8-27	2024-12-31	cardmarket
4091	sv8-30	https://prices.pokemontcg.io/cardmarket/sv8-30	2024-12-31	cardmarket
4092	sv8-31	https://prices.pokemontcg.io/cardmarket/sv8-31	2024-12-31	cardmarket
4093	sv8-29	https://prices.pokemontcg.io/cardmarket/sv8-29	2024-12-31	cardmarket
4094	sv8-25	https://prices.pokemontcg.io/cardmarket/sv8-25	2024-12-31	cardmarket
4095	sv8-4	https://prices.pokemontcg.io/cardmarket/sv8-4	2024-12-31	cardmarket
4096	sv8-6	https://prices.pokemontcg.io/cardmarket/sv8-6	2024-12-31	cardmarket
4097	sv8-5	https://prices.pokemontcg.io/cardmarket/sv8-5	2024-12-31	cardmarket
4098	sv8-8	https://prices.pokemontcg.io/cardmarket/sv8-8	2024-12-31	cardmarket
4099	sv8-9	https://prices.pokemontcg.io/cardmarket/sv8-9	2024-12-31	cardmarket
4100	sv8-10	https://prices.pokemontcg.io/cardmarket/sv8-10	2024-12-31	cardmarket
4101	sv8-15	https://prices.pokemontcg.io/cardmarket/sv8-15	2024-12-31	cardmarket
4102	sv8-28	https://prices.pokemontcg.io/cardmarket/sv8-28	2024-12-31	cardmarket
4103	sv8-7	https://prices.pokemontcg.io/cardmarket/sv8-7	2024-12-31	cardmarket
4104	sv8-13	https://prices.pokemontcg.io/cardmarket/sv8-13	2024-12-31	cardmarket
4105	sv8-18	https://prices.pokemontcg.io/cardmarket/sv8-18	2024-12-31	cardmarket
4106	sv8-19	https://prices.pokemontcg.io/cardmarket/sv8-19	2024-12-31	cardmarket
4107	sv8-21	https://prices.pokemontcg.io/cardmarket/sv8-21	2024-12-31	cardmarket
4108	sv8-23	https://prices.pokemontcg.io/cardmarket/sv8-23	2024-12-31	cardmarket
4109	sv8-20	https://prices.pokemontcg.io/cardmarket/sv8-20	2024-12-31	cardmarket
4110	sv8-22	https://prices.pokemontcg.io/cardmarket/sv8-22	2024-12-31	cardmarket
4111	sv8-12	https://prices.pokemontcg.io/cardmarket/sv8-12	2024-12-31	cardmarket
4112	sv8-26	https://prices.pokemontcg.io/cardmarket/sv8-26	2024-12-31	cardmarket
4113	sv8-36	https://prices.pokemontcg.io/cardmarket/sv8-36	2024-12-31	cardmarket
4114	sv8-38	https://prices.pokemontcg.io/cardmarket/sv8-38	2024-12-31	cardmarket
4115	sv8-34	https://prices.pokemontcg.io/cardmarket/sv8-34	2024-12-31	cardmarket
4116	sv8-39	https://prices.pokemontcg.io/cardmarket/sv8-39	2024-12-31	cardmarket
4117	sv8-40	https://prices.pokemontcg.io/cardmarket/sv8-40	2024-12-31	cardmarket
4118	sv8-43	https://prices.pokemontcg.io/cardmarket/sv8-43	2024-12-31	cardmarket
4119	sv8-45	https://prices.pokemontcg.io/cardmarket/sv8-45	2024-12-31	cardmarket
4120	sv8-46	https://prices.pokemontcg.io/cardmarket/sv8-46	2024-12-31	cardmarket
4121	sv8-32	https://prices.pokemontcg.io/cardmarket/sv8-32	2024-12-31	cardmarket
4122	sv8-37	https://prices.pokemontcg.io/cardmarket/sv8-37	2024-12-31	cardmarket
4123	sv8-47	https://prices.pokemontcg.io/cardmarket/sv8-47	2024-12-31	cardmarket
4124	sv8-42	https://prices.pokemontcg.io/cardmarket/sv8-42	2024-12-31	cardmarket
4125	sv8-44	https://prices.pokemontcg.io/cardmarket/sv8-44	2024-12-31	cardmarket
4126	sv8-33	https://prices.pokemontcg.io/cardmarket/sv8-33	2024-12-31	cardmarket
4127	sv8-35	https://prices.pokemontcg.io/cardmarket/sv8-35	2024-12-31	cardmarket
4128	sv8-41	https://prices.pokemontcg.io/cardmarket/sv8-41	2024-12-31	cardmarket
4129	sv8-48	https://prices.pokemontcg.io/cardmarket/sv8-48	2024-12-31	cardmarket
4130	sv8-49	https://prices.pokemontcg.io/cardmarket/sv8-49	2024-12-31	cardmarket
4131	sv8-52	https://prices.pokemontcg.io/cardmarket/sv8-52	2024-12-31	cardmarket
4132	sv8-51	https://prices.pokemontcg.io/cardmarket/sv8-51	2024-12-31	cardmarket
4133	sv8-54	https://prices.pokemontcg.io/cardmarket/sv8-54	2024-12-31	cardmarket
4134	sv8-50	https://prices.pokemontcg.io/cardmarket/sv8-50	2024-12-31	cardmarket
4135	sv8-53	https://prices.pokemontcg.io/cardmarket/sv8-53	2024-12-31	cardmarket
4136	sv8-57	https://prices.pokemontcg.io/cardmarket/sv8-57	2024-12-31	cardmarket
4137	sv8-56	https://prices.pokemontcg.io/cardmarket/sv8-56	2024-12-31	cardmarket
4138	sv8-55	https://prices.pokemontcg.io/cardmarket/sv8-55	2024-12-31	cardmarket
4139	sv8-58	https://prices.pokemontcg.io/cardmarket/sv8-58	2024-12-31	cardmarket
4140	sv8-59	https://prices.pokemontcg.io/cardmarket/sv8-59	2024-12-31	cardmarket
4141	sv8-60	https://prices.pokemontcg.io/cardmarket/sv8-60	2024-12-31	cardmarket
4142	sv8-61	https://prices.pokemontcg.io/cardmarket/sv8-61	2024-12-31	cardmarket
4143	sv8-62	https://prices.pokemontcg.io/cardmarket/sv8-62	2024-12-31	cardmarket
4144	sv8-68	https://prices.pokemontcg.io/cardmarket/sv8-68	2024-12-31	cardmarket
4145	sv8-71	https://prices.pokemontcg.io/cardmarket/sv8-71	2024-12-31	cardmarket
4146	sv8-69	https://prices.pokemontcg.io/cardmarket/sv8-69	2024-12-31	cardmarket
4147	sv8-66	https://prices.pokemontcg.io/cardmarket/sv8-66	2024-12-31	cardmarket
4148	sv8-63	https://prices.pokemontcg.io/cardmarket/sv8-63	2024-12-31	cardmarket
4149	sv8-67	https://prices.pokemontcg.io/cardmarket/sv8-67	2024-12-31	cardmarket
4150	sv8-72	https://prices.pokemontcg.io/cardmarket/sv8-72	2024-12-31	cardmarket
4151	sv8-70	https://prices.pokemontcg.io/cardmarket/sv8-70	2024-12-31	cardmarket
4152	sv8-64	https://prices.pokemontcg.io/cardmarket/sv8-64	2024-12-31	cardmarket
4153	sv8-65	https://prices.pokemontcg.io/cardmarket/sv8-65	2024-12-31	cardmarket
4154	sv8-73	https://prices.pokemontcg.io/cardmarket/sv8-73	2024-12-31	cardmarket
4155	sv8-74	https://prices.pokemontcg.io/cardmarket/sv8-74	2024-12-31	cardmarket
4156	sv8-75	https://prices.pokemontcg.io/cardmarket/sv8-75	2024-12-31	cardmarket
4157	sv8-76	https://prices.pokemontcg.io/cardmarket/sv8-76	2024-12-31	cardmarket
4158	sv8-77	https://prices.pokemontcg.io/cardmarket/sv8-77	2024-12-31	cardmarket
4159	sv8-78	https://prices.pokemontcg.io/cardmarket/sv8-78	2024-12-31	cardmarket
4160	sv8-79	https://prices.pokemontcg.io/cardmarket/sv8-79	2024-12-31	cardmarket
4161	sv8-80	https://prices.pokemontcg.io/cardmarket/sv8-80	2024-12-31	cardmarket
4162	sv8-81	https://prices.pokemontcg.io/cardmarket/sv8-81	2024-12-31	cardmarket
4163	sv8-82	https://prices.pokemontcg.io/cardmarket/sv8-82	2024-12-31	cardmarket
4164	sv8-83	https://prices.pokemontcg.io/cardmarket/sv8-83	2024-12-31	cardmarket
4165	sv8-84	https://prices.pokemontcg.io/cardmarket/sv8-84	2024-12-31	cardmarket
4166	sv8-85	https://prices.pokemontcg.io/cardmarket/sv8-85	2024-12-31	cardmarket
4167	sv8-86	https://prices.pokemontcg.io/cardmarket/sv8-86	2024-12-31	cardmarket
4168	sv8-87	https://prices.pokemontcg.io/cardmarket/sv8-87	2024-12-31	cardmarket
4169	sv8-88	https://prices.pokemontcg.io/cardmarket/sv8-88	2024-12-31	cardmarket
4170	sv8-89	https://prices.pokemontcg.io/cardmarket/sv8-89	2024-12-31	cardmarket
4171	sv8-90	https://prices.pokemontcg.io/cardmarket/sv8-90	2024-12-31	cardmarket
4172	sv8-91	https://prices.pokemontcg.io/cardmarket/sv8-91	2024-12-31	cardmarket
4173	sv8-92	https://prices.pokemontcg.io/cardmarket/sv8-92	2024-12-31	cardmarket
4174	sv8-95	https://prices.pokemontcg.io/cardmarket/sv8-95	2024-12-31	cardmarket
4175	sv8-97	https://prices.pokemontcg.io/cardmarket/sv8-97	2024-12-31	cardmarket
4176	sv8-94	https://prices.pokemontcg.io/cardmarket/sv8-94	2024-12-31	cardmarket
4177	sv8-96	https://prices.pokemontcg.io/cardmarket/sv8-96	2024-12-31	cardmarket
4178	sv8-99	https://prices.pokemontcg.io/cardmarket/sv8-99	2024-12-31	cardmarket
4179	sv8-93	https://prices.pokemontcg.io/cardmarket/sv8-93	2024-12-31	cardmarket
4180	sv8-98	https://prices.pokemontcg.io/cardmarket/sv8-98	2024-12-31	cardmarket
4181	sv8-100	https://prices.pokemontcg.io/cardmarket/sv8-100	2024-12-31	cardmarket
4182	sv8-101	https://prices.pokemontcg.io/cardmarket/sv8-101	2024-12-31	cardmarket
4183	sv8-102	https://prices.pokemontcg.io/cardmarket/sv8-102	2024-12-31	cardmarket
4184	sv8-103	https://prices.pokemontcg.io/cardmarket/sv8-103	2024-12-31	cardmarket
4185	sv8-104	https://prices.pokemontcg.io/cardmarket/sv8-104	2024-12-31	cardmarket
4186	sv8-105	https://prices.pokemontcg.io/cardmarket/sv8-105	2024-12-31	cardmarket
4187	sv8-106	https://prices.pokemontcg.io/cardmarket/sv8-106	2024-12-31	cardmarket
4188	sv8-107	https://prices.pokemontcg.io/cardmarket/sv8-107	2024-12-31	cardmarket
4189	sv8-108	https://prices.pokemontcg.io/cardmarket/sv8-108	2024-12-31	cardmarket
4190	sv8-109	https://prices.pokemontcg.io/cardmarket/sv8-109	2024-12-31	cardmarket
4191	sv8-110	https://prices.pokemontcg.io/cardmarket/sv8-110	2024-12-31	cardmarket
4192	sv8-111	https://prices.pokemontcg.io/cardmarket/sv8-111	2024-12-31	cardmarket
4193	sv8-112	https://prices.pokemontcg.io/cardmarket/sv8-112	2024-12-31	cardmarket
4194	sv8-113	https://prices.pokemontcg.io/cardmarket/sv8-113	2024-12-31	cardmarket
4195	sv8-114	https://prices.pokemontcg.io/cardmarket/sv8-114	2024-12-31	cardmarket
4196	sv8-115	https://prices.pokemontcg.io/cardmarket/sv8-115	2024-12-31	cardmarket
4197	sv8-117	https://prices.pokemontcg.io/cardmarket/sv8-117	2024-12-31	cardmarket
4198	sv8-120	https://prices.pokemontcg.io/cardmarket/sv8-120	2024-12-31	cardmarket
4199	sv8-119	https://prices.pokemontcg.io/cardmarket/sv8-119	2024-12-31	cardmarket
4200	sv8-121	https://prices.pokemontcg.io/cardmarket/sv8-121	2024-12-31	cardmarket
4201	sv8-118	https://prices.pokemontcg.io/cardmarket/sv8-118	2024-12-31	cardmarket
4202	sv8-116	https://prices.pokemontcg.io/cardmarket/sv8-116	2024-12-31	cardmarket
4203	sv8-122	https://prices.pokemontcg.io/cardmarket/sv8-122	2024-12-31	cardmarket
4204	sv8-123	https://prices.pokemontcg.io/cardmarket/sv8-123	2024-12-31	cardmarket
4205	sv8-124	https://prices.pokemontcg.io/cardmarket/sv8-124	2024-12-31	cardmarket
4206	sv8-125	https://prices.pokemontcg.io/cardmarket/sv8-125	2024-12-31	cardmarket
4207	sv8-126	https://prices.pokemontcg.io/cardmarket/sv8-126	2024-12-31	cardmarket
4208	sv8-127	https://prices.pokemontcg.io/cardmarket/sv8-127	2024-12-31	cardmarket
4209	sv8-128	https://prices.pokemontcg.io/cardmarket/sv8-128	2024-12-31	cardmarket
4210	sv8-129	https://prices.pokemontcg.io/cardmarket/sv8-129	2024-12-31	cardmarket
4211	sv8-130	https://prices.pokemontcg.io/cardmarket/sv8-130	2024-12-31	cardmarket
4212	sv8-131	https://prices.pokemontcg.io/cardmarket/sv8-131	2024-12-31	cardmarket
4213	sv8-132	https://prices.pokemontcg.io/cardmarket/sv8-132	2024-12-31	cardmarket
4214	sv8-134	https://prices.pokemontcg.io/cardmarket/sv8-134	2024-12-31	cardmarket
4215	sv8-139	https://prices.pokemontcg.io/cardmarket/sv8-139	2024-12-31	cardmarket
4216	sv8-148	https://prices.pokemontcg.io/cardmarket/sv8-148	2024-12-31	cardmarket
4217	sv8-149	https://prices.pokemontcg.io/cardmarket/sv8-149	2024-12-31	cardmarket
4218	sv8-150	https://prices.pokemontcg.io/cardmarket/sv8-150	2024-12-31	cardmarket
4219	sv8-133	https://prices.pokemontcg.io/cardmarket/sv8-133	2024-12-31	cardmarket
4220	sv8-140	https://prices.pokemontcg.io/cardmarket/sv8-140	2024-12-31	cardmarket
4221	sv8-142	https://prices.pokemontcg.io/cardmarket/sv8-142	2024-12-31	cardmarket
4222	sv8-146	https://prices.pokemontcg.io/cardmarket/sv8-146	2024-12-31	cardmarket
4223	sv8-141	https://prices.pokemontcg.io/cardmarket/sv8-141	2024-12-31	cardmarket
4224	sv8-135	https://prices.pokemontcg.io/cardmarket/sv8-135	2024-12-31	cardmarket
4225	sv8-147	https://prices.pokemontcg.io/cardmarket/sv8-147	2024-12-31	cardmarket
4226	sv8-136	https://prices.pokemontcg.io/cardmarket/sv8-136	2024-12-31	cardmarket
4227	sv8-138	https://prices.pokemontcg.io/cardmarket/sv8-138	2024-12-31	cardmarket
4228	sv8-143	https://prices.pokemontcg.io/cardmarket/sv8-143	2024-12-31	cardmarket
4229	sv8-144	https://prices.pokemontcg.io/cardmarket/sv8-144	2024-12-31	cardmarket
4230	sv8-137	https://prices.pokemontcg.io/cardmarket/sv8-137	2024-12-31	cardmarket
4231	sv8-145	https://prices.pokemontcg.io/cardmarket/sv8-145	2024-12-31	cardmarket
4232	sv8-155	https://prices.pokemontcg.io/cardmarket/sv8-155	2024-12-31	cardmarket
4233	sv8-153	https://prices.pokemontcg.io/cardmarket/sv8-153	2024-12-31	cardmarket
4234	sv8-163	https://prices.pokemontcg.io/cardmarket/sv8-163	2024-12-31	cardmarket
4235	sv8-159	https://prices.pokemontcg.io/cardmarket/sv8-159	2024-12-31	cardmarket
4236	sv8-168	https://prices.pokemontcg.io/cardmarket/sv8-168	2024-12-31	cardmarket
4237	sv8-157	https://prices.pokemontcg.io/cardmarket/sv8-157	2024-12-31	cardmarket
4238	sv8-162	https://prices.pokemontcg.io/cardmarket/sv8-162	2024-12-31	cardmarket
4239	sv8-166	https://prices.pokemontcg.io/cardmarket/sv8-166	2024-12-31	cardmarket
4240	sv8-151	https://prices.pokemontcg.io/cardmarket/sv8-151	2024-12-31	cardmarket
4241	sv8-165	https://prices.pokemontcg.io/cardmarket/sv8-165	2024-12-31	cardmarket
4242	sv8-154	https://prices.pokemontcg.io/cardmarket/sv8-154	2024-12-31	cardmarket
4243	sv8-152	https://prices.pokemontcg.io/cardmarket/sv8-152	2024-12-31	cardmarket
4244	sv8-158	https://prices.pokemontcg.io/cardmarket/sv8-158	2024-12-31	cardmarket
4245	sv8-160	https://prices.pokemontcg.io/cardmarket/sv8-160	2024-12-31	cardmarket
4246	sv8-167	https://prices.pokemontcg.io/cardmarket/sv8-167	2024-12-31	cardmarket
4247	sv8-156	https://prices.pokemontcg.io/cardmarket/sv8-156	2024-12-31	cardmarket
4248	sv8-161	https://prices.pokemontcg.io/cardmarket/sv8-161	2024-12-31	cardmarket
4249	sv8-164	https://prices.pokemontcg.io/cardmarket/sv8-164	2024-12-31	cardmarket
4250	sv8-169	https://prices.pokemontcg.io/cardmarket/sv8-169	2024-12-31	cardmarket
4251	sv8-170	https://prices.pokemontcg.io/cardmarket/sv8-170	2024-12-31	cardmarket
4252	sv8-180	https://prices.pokemontcg.io/cardmarket/sv8-180	2024-12-31	cardmarket
4253	sv8-177	https://prices.pokemontcg.io/cardmarket/sv8-177	2024-12-31	cardmarket
4254	sv8-172	https://prices.pokemontcg.io/cardmarket/sv8-172	2024-12-31	cardmarket
4255	sv8-171	https://prices.pokemontcg.io/cardmarket/sv8-171	2024-12-31	cardmarket
4256	sv8-178	https://prices.pokemontcg.io/cardmarket/sv8-178	2024-12-31	cardmarket
4257	sv8-179	https://prices.pokemontcg.io/cardmarket/sv8-179	2024-12-31	cardmarket
4258	sv8-173	https://prices.pokemontcg.io/cardmarket/sv8-173	2024-12-31	cardmarket
4259	sv8-174	https://prices.pokemontcg.io/cardmarket/sv8-174	2024-12-31	cardmarket
4260	sv8-175	https://prices.pokemontcg.io/cardmarket/sv8-175	2024-12-31	cardmarket
4261	sv8-176	https://prices.pokemontcg.io/cardmarket/sv8-176	2024-12-31	cardmarket
4262	sv8-181	https://prices.pokemontcg.io/cardmarket/sv8-181	2024-12-31	cardmarket
4263	sv8-182	https://prices.pokemontcg.io/cardmarket/sv8-182	2024-12-31	cardmarket
4264	sv8-194	https://prices.pokemontcg.io/cardmarket/sv8-194	2024-12-31	cardmarket
4265	sv8-187	https://prices.pokemontcg.io/cardmarket/sv8-187	2024-12-31	cardmarket
4266	sv8-188	https://prices.pokemontcg.io/cardmarket/sv8-188	2024-12-31	cardmarket
4267	sv8-186	https://prices.pokemontcg.io/cardmarket/sv8-186	2024-12-31	cardmarket
4268	sv8-191	https://prices.pokemontcg.io/cardmarket/sv8-191	2024-12-31	cardmarket
4269	sv8-195	https://prices.pokemontcg.io/cardmarket/sv8-195	2024-12-31	cardmarket
4270	sv8-183	https://prices.pokemontcg.io/cardmarket/sv8-183	2024-12-31	cardmarket
4271	sv8-185	https://prices.pokemontcg.io/cardmarket/sv8-185	2024-12-31	cardmarket
4272	sv8-189	https://prices.pokemontcg.io/cardmarket/sv8-189	2024-12-31	cardmarket
4273	sv8-184	https://prices.pokemontcg.io/cardmarket/sv8-184	2024-12-31	cardmarket
4274	sv8-190	https://prices.pokemontcg.io/cardmarket/sv8-190	2024-12-31	cardmarket
4275	sv8-192	https://prices.pokemontcg.io/cardmarket/sv8-192	2024-12-31	cardmarket
4276	sv8-193	https://prices.pokemontcg.io/cardmarket/sv8-193	2024-12-31	cardmarket
4277	sv8-199	https://prices.pokemontcg.io/cardmarket/sv8-199	2024-12-31	cardmarket
4278	sv8-201	https://prices.pokemontcg.io/cardmarket/sv8-201	2024-12-31	cardmarket
4279	sv8-206	https://prices.pokemontcg.io/cardmarket/sv8-206	2024-12-31	cardmarket
4280	sv8-209	https://prices.pokemontcg.io/cardmarket/sv8-209	2024-12-31	cardmarket
4281	sv8-203	https://prices.pokemontcg.io/cardmarket/sv8-203	2024-12-31	cardmarket
4282	sv8-212	https://prices.pokemontcg.io/cardmarket/sv8-212	2024-12-31	cardmarket
4283	sv8-205	https://prices.pokemontcg.io/cardmarket/sv8-205	2024-12-31	cardmarket
4284	sv8-204	https://prices.pokemontcg.io/cardmarket/sv8-204	2024-12-31	cardmarket
4285	sv8-213	https://prices.pokemontcg.io/cardmarket/sv8-213	2024-12-31	cardmarket
4286	sv8-207	https://prices.pokemontcg.io/cardmarket/sv8-207	2024-12-31	cardmarket
4287	sv8-208	https://prices.pokemontcg.io/cardmarket/sv8-208	2024-12-31	cardmarket
4288	sv8-197	https://prices.pokemontcg.io/cardmarket/sv8-197	2024-12-31	cardmarket
4289	sv8-196	https://prices.pokemontcg.io/cardmarket/sv8-196	2024-12-31	cardmarket
4290	sv8-198	https://prices.pokemontcg.io/cardmarket/sv8-198	2024-12-31	cardmarket
4291	sv8-200	https://prices.pokemontcg.io/cardmarket/sv8-200	2024-12-31	cardmarket
4292	sv8-202	https://prices.pokemontcg.io/cardmarket/sv8-202	2024-12-31	cardmarket
4293	sv8-210	https://prices.pokemontcg.io/cardmarket/sv8-210	2024-12-31	cardmarket
4294	sv8-211	https://prices.pokemontcg.io/cardmarket/sv8-211	2024-12-31	cardmarket
4295	sv8-214	https://prices.pokemontcg.io/cardmarket/sv8-214	2024-12-31	cardmarket
4296	sv8-215	https://prices.pokemontcg.io/cardmarket/sv8-215	2024-12-31	cardmarket
4297	sv8-220	https://prices.pokemontcg.io/cardmarket/sv8-220	2024-12-31	cardmarket
4298	sv8-216	https://prices.pokemontcg.io/cardmarket/sv8-216	2024-12-31	cardmarket
4299	sv8-222	https://prices.pokemontcg.io/cardmarket/sv8-222	2024-12-31	cardmarket
4300	sv8-223	https://prices.pokemontcg.io/cardmarket/sv8-223	2024-12-31	cardmarket
4301	sv8-217	https://prices.pokemontcg.io/cardmarket/sv8-217	2024-12-31	cardmarket
4302	sv8-221	https://prices.pokemontcg.io/cardmarket/sv8-221	2024-12-31	cardmarket
4303	sv8-218	https://prices.pokemontcg.io/cardmarket/sv8-218	2024-12-31	cardmarket
4304	sv8-219	https://prices.pokemontcg.io/cardmarket/sv8-219	2024-12-31	cardmarket
4305	sv8-225	https://prices.pokemontcg.io/cardmarket/sv8-225	2024-12-31	cardmarket
4306	sv8-224	https://prices.pokemontcg.io/cardmarket/sv8-224	2024-12-31	cardmarket
4307	sv8-226	https://prices.pokemontcg.io/cardmarket/sv8-226	2024-12-31	cardmarket
4308	sv8-230	https://prices.pokemontcg.io/cardmarket/sv8-230	2024-12-31	cardmarket
4309	sv8-232	https://prices.pokemontcg.io/cardmarket/sv8-232	2024-12-31	cardmarket
4310	sv8-234	https://prices.pokemontcg.io/cardmarket/sv8-234	2024-12-31	cardmarket
4311	sv8-238	https://prices.pokemontcg.io/cardmarket/sv8-238	2024-12-31	cardmarket
4312	sv8-236	https://prices.pokemontcg.io/cardmarket/sv8-236	2024-12-31	cardmarket
4313	sv8-237	https://prices.pokemontcg.io/cardmarket/sv8-237	2024-12-31	cardmarket
4314	sv8-231	https://prices.pokemontcg.io/cardmarket/sv8-231	2024-12-31	cardmarket
4315	sv8-227	https://prices.pokemontcg.io/cardmarket/sv8-227	2024-12-31	cardmarket
4316	sv8-228	https://prices.pokemontcg.io/cardmarket/sv8-228	2024-12-31	cardmarket
4317	sv8-229	https://prices.pokemontcg.io/cardmarket/sv8-229	2024-12-31	cardmarket
4318	sv8-233	https://prices.pokemontcg.io/cardmarket/sv8-233	2024-12-31	cardmarket
4319	sv8-235	https://prices.pokemontcg.io/cardmarket/sv8-235	2024-12-31	cardmarket
4320	sv8-239	https://prices.pokemontcg.io/cardmarket/sv8-239	2024-12-31	cardmarket
4321	sv8-240	https://prices.pokemontcg.io/cardmarket/sv8-240	2024-12-31	cardmarket
4322	sv8-241	https://prices.pokemontcg.io/cardmarket/sv8-241	2024-12-31	cardmarket
4323	sv8-245	https://prices.pokemontcg.io/cardmarket/sv8-245	2024-12-31	cardmarket
4324	sv8-244	https://prices.pokemontcg.io/cardmarket/sv8-244	2024-12-31	cardmarket
4325	sv8-247	https://prices.pokemontcg.io/cardmarket/sv8-247	2024-12-31	cardmarket
4326	sv8-249	https://prices.pokemontcg.io/cardmarket/sv8-249	2024-12-31	cardmarket
4327	sv8-242	https://prices.pokemontcg.io/cardmarket/sv8-242	2024-12-31	cardmarket
4328	sv8-243	https://prices.pokemontcg.io/cardmarket/sv8-243	2024-12-31	cardmarket
4329	sv8-246	https://prices.pokemontcg.io/cardmarket/sv8-246	2024-12-31	cardmarket
4330	sv8-248	https://prices.pokemontcg.io/cardmarket/sv8-248	2024-12-31	cardmarket
4331	sv8-250	https://prices.pokemontcg.io/cardmarket/sv8-250	2024-12-31	cardmarket
\.


--
-- Data for Name: set; Type: TABLE DATA; Schema: public; Owner: ash
--

COPY public.set (id, name, series, printed_total, total, ptcgo_code, release_date, updated_at, symbol_url, logo_url) FROM stdin;
sve	Scarlet & Violet Energies	Scarlet & Violet	16	16	SVE	2023-03-31	2024-09-19 19:45:00+00	https://images.pokemontcg.io/sve/symbol.png	https://images.pokemontcg.io/sve/logo.png
sv3	Obsidian Flames	Scarlet & Violet	197	230	OBF	2023-08-11	2023-08-11 15:00:00+00	https://images.pokemontcg.io/sv3/symbol.png	https://images.pokemontcg.io/sv3/logo.png
sv3pt5	151	Scarlet & Violet	165	207	MEW	2023-09-22	2023-09-22 15:00:00+00	https://images.pokemontcg.io/sv3pt5/symbol.png	https://images.pokemontcg.io/sv3pt5/logo.png
sv4	Paradox Rift	Scarlet & Violet	182	266	PAR	2023-11-03	2023-11-03 15:00:00+00	https://images.pokemontcg.io/sv4/symbol.png	https://images.pokemontcg.io/sv4/logo.png
sv4pt5	Paldean Fates	Scarlet & Violet	91	245	PAF	2024-01-26	2024-01-25 15:00:00+00	https://images.pokemontcg.io/sv4pt5/symbol.png	https://images.pokemontcg.io/sv4pt5/logo.png
sv5	Temporal Forces	Scarlet & Violet	162	218	TEF	2024-03-22	2024-03-22 15:00:00+00	https://images.pokemontcg.io/sv5/symbol.png	https://images.pokemontcg.io/sv5/logo.png
sv6	Twilight Masquerade	Scarlet & Violet	167	226	TWM	2024-05-24	2024-05-23 15:00:00+00	https://images.pokemontcg.io/sv6/symbol.png	https://images.pokemontcg.io/sv6/logo.png
sv6pt5	Shrouded Fable	Scarlet & Violet	64	99	SFA	2024-08-02	2024-08-02 15:00:00+00	https://images.pokemontcg.io/sv6pt5/symbol.png	https://images.pokemontcg.io/sv6pt5/logo.png
sv7	Stellar Crown	Scarlet & Violet	142	175	SCR	2024-09-13	2024-08-02 15:00:00+00	https://images.pokemontcg.io/sv7/symbol.png	https://images.pokemontcg.io/sv7/logo.png
sv8	Surging Sparks	Scarlet & Violet	191	252	SSP	2024-11-08	2024-11-07 22:00:00+00	https://images.pokemontcg.io/sv8/symbol.png	https://images.pokemontcg.io/sv8/logo.png
\.


--
-- Name: image_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ash
--

SELECT pg_catalog.setval('public.image_id_seq', 4332, true);


--
-- Name: market_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ash
--

SELECT pg_catalog.setval('public.market_id_seq', 4331, true);


--
-- Name: card card_pkey; Type: CONSTRAINT; Schema: public; Owner: ash
--

ALTER TABLE ONLY public.card
    ADD CONSTRAINT card_pkey PRIMARY KEY (id);


--
-- Name: image image_pkey; Type: CONSTRAINT; Schema: public; Owner: ash
--

ALTER TABLE ONLY public.image
    ADD CONSTRAINT image_pkey PRIMARY KEY (id);


--
-- Name: market market_pkey; Type: CONSTRAINT; Schema: public; Owner: ash
--

ALTER TABLE ONLY public.market
    ADD CONSTRAINT market_pkey PRIMARY KEY (id);


--
-- Name: set set_pkey; Type: CONSTRAINT; Schema: public; Owner: ash
--

ALTER TABLE ONLY public.set
    ADD CONSTRAINT set_pkey PRIMARY KEY (id);


--
-- Name: card card_set_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: ash
--

ALTER TABLE ONLY public.card
    ADD CONSTRAINT card_set_id_fkey FOREIGN KEY (set_id) REFERENCES public.set(id);


--
-- Name: image image_card_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: ash
--

ALTER TABLE ONLY public.image
    ADD CONSTRAINT image_card_id_fkey FOREIGN KEY (card_id) REFERENCES public.card(id);


--
-- Name: market market_card_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: ash
--

ALTER TABLE ONLY public.market
    ADD CONSTRAINT market_card_id_fkey FOREIGN KEY (card_id) REFERENCES public.card(id);


--
-- PostgreSQL database dump complete
--

