--
-- PostgreSQL database dump
--

-- Dumped from database version 15.2
-- Dumped by pg_dump version 15.1

-- Started on 2023-03-10 12:05:03 +04

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
-- TOC entry 216 (class 1259 OID 16492)
-- Name: actors; Type: TABLE; Schema: public; Owner: vanaantipov
--

CREATE TABLE public.actors (
    actors_id integer NOT NULL,
    actors_name character varying(64) NOT NULL
);


ALTER TABLE public.actors OWNER TO vanaantipov;

--
-- TOC entry 217 (class 1259 OID 16497)
-- Name: actorsdub; Type: TABLE; Schema: public; Owner: vanaantipov
--

CREATE TABLE public.actorsdub (
    actorsdub_id integer NOT NULL,
    actorsdub_name character varying(64) NOT NULL
);


ALTER TABLE public.actorsdub OWNER TO vanaantipov;

--
-- TOC entry 214 (class 1259 OID 16482)
-- Name: janre; Type: TABLE; Schema: public; Owner: vanaantipov
--

CREATE TABLE public.janre (
    janre_id integer NOT NULL,
    janre_name character varying(64) NOT NULL
);


ALTER TABLE public.janre OWNER TO vanaantipov;

--
-- TOC entry 219 (class 1259 OID 16507)
-- Name: movie; Type: TABLE; Schema: public; Owner: vanaantipov
--

CREATE TABLE public.movie (
    movie_id integer NOT NULL,
    movie_name character varying(64) NOT NULL,
    fk_movie_janre integer,
    fk_movie_spectators integer,
    movie_years integer NOT NULL,
    movie_country character varying(64) NOT NULL,
    movie_rating integer NOT NULL
);


ALTER TABLE public.movie OWNER TO vanaantipov;

--
-- TOC entry 220 (class 1259 OID 16642)
-- Name: movie_cast; Type: TABLE; Schema: public; Owner: vanaantipov
--

CREATE TABLE public.movie_cast (
    fk_movie_cast_movie integer,
    movie_cast_role character varying(64) NOT NULL,
    fk_move_cast_person integer
);


ALTER TABLE public.movie_cast OWNER TO vanaantipov;

--
-- TOC entry 218 (class 1259 OID 16502)
-- Name: person; Type: TABLE; Schema: public; Owner: vanaantipov
--

CREATE TABLE public.person (
    person_id integer NOT NULL,
    person_name character varying(64) NOT NULL,
    person_role character varying(64) NOT NULL
);


ALTER TABLE public.person OWNER TO vanaantipov;

--
-- TOC entry 215 (class 1259 OID 16487)
-- Name: spectators; Type: TABLE; Schema: public; Owner: vanaantipov
--

CREATE TABLE public.spectators (
    spectators_id integer NOT NULL,
    county_spectators character varying(64) NOT NULL
);


ALTER TABLE public.spectators OWNER TO vanaantipov;

--
-- TOC entry 3644 (class 0 OID 16492)
-- Dependencies: 216
-- Data for Name: actors; Type: TABLE DATA; Schema: public; Owner: vanaantipov
--

COPY public.actors (actors_id, actors_name) FROM stdin;
\.


--
-- TOC entry 3645 (class 0 OID 16497)
-- Dependencies: 217
-- Data for Name: actorsdub; Type: TABLE DATA; Schema: public; Owner: vanaantipov
--

COPY public.actorsdub (actorsdub_id, actorsdub_name) FROM stdin;
\.


--
-- TOC entry 3642 (class 0 OID 16482)
-- Dependencies: 214
-- Data for Name: janre; Type: TABLE DATA; Schema: public; Owner: vanaantipov
--

COPY public.janre (janre_id, janre_name) FROM stdin;
1	Ужасы
2	Фантастика
3	Мистика
4	Приключения
5	Боевик
\.


--
-- TOC entry 3647 (class 0 OID 16507)
-- Dependencies: 219
-- Data for Name: movie; Type: TABLE DATA; Schema: public; Owner: vanaantipov
--

COPY public.movie (movie_id, movie_name, fk_movie_janre, fk_movie_spectators, movie_years, movie_country, movie_rating) FROM stdin;
1	Прокльятье монахини	1	2	2018	США	7
2	Зеркало	3	3	2011	Россия	5
3	Доктор кто	2	1	2002	Англия	6
4	Марсианин	5	5	2017	Франция	7
5	2012	4	4	2012	Китай	8
\.


--
-- TOC entry 3648 (class 0 OID 16642)
-- Dependencies: 220
-- Data for Name: movie_cast; Type: TABLE DATA; Schema: public; Owner: vanaantipov
--

COPY public.movie_cast (fk_movie_cast_movie, movie_cast_role, fk_move_cast_person) FROM stdin;
1	Актер	1
1	Художник	5
1	Компазитор	10
1	Монтажер	14
2	Актер	2
2	Художник	6
2	Компазитор	11
2	Монтажер	15
3	Актер	3
3	Художник	7
3	Компазитор	12
3	Монтажер	16
4	Актер	4
4	Художник	8
4	Компазитор	13
4	Монтажер	17
5	Актер	5
5	Художник	9
5	Компазитор	11
5	Монтажер	18
\.


--
-- TOC entry 3646 (class 0 OID 16502)
-- Dependencies: 218
-- Data for Name: person; Type: TABLE DATA; Schema: public; Owner: vanaantipov
--

COPY public.person (person_id, person_name, person_role) FROM stdin;
1	Уил Смит	Актер
2	Том Круз	Актер
3	Роберт Младший	Актер
4	Мила Увавич	Актер
5	Иван Русов	Художник
6	Анна Антонова	Художник
7	Лера Виславова	Художник
8	Милана Милачич	Художник
9	Василиса Орлова	Художник
10	Руслан Мариотов	Композитор
11	Кирилл Ганьков	Композитор
12	Владимир Иванов	Компазитор
13	Дмитрий Бутолин	Композитор
14	Карина Мартини	Монтажер
15	Алина Веченряя	Мнотажер
16	Анастасия Кудрявцева	Монтажер
17	Мария Антипова	Монтажер
18	Карина Рычина	Монтажер
\.


--
-- TOC entry 3643 (class 0 OID 16487)
-- Dependencies: 215
-- Data for Name: spectators; Type: TABLE DATA; Schema: public; Owner: vanaantipov
--

COPY public.spectators (spectators_id, county_spectators) FROM stdin;
1	Китай
2	США
3	Россия
4	Англия
5	Индия
6	Япония
\.


--
-- TOC entry 3489 (class 2606 OID 16496)
-- Name: actors actors_pkey; Type: CONSTRAINT; Schema: public; Owner: vanaantipov
--

ALTER TABLE ONLY public.actors
    ADD CONSTRAINT actors_pkey PRIMARY KEY (actors_id);


--
-- TOC entry 3491 (class 2606 OID 16501)
-- Name: actorsdub actorsdub_pkey; Type: CONSTRAINT; Schema: public; Owner: vanaantipov
--

ALTER TABLE ONLY public.actorsdub
    ADD CONSTRAINT actorsdub_pkey PRIMARY KEY (actorsdub_id);


--
-- TOC entry 3485 (class 2606 OID 16486)
-- Name: janre janre_pkey; Type: CONSTRAINT; Schema: public; Owner: vanaantipov
--

ALTER TABLE ONLY public.janre
    ADD CONSTRAINT janre_pkey PRIMARY KEY (janre_id);


--
-- TOC entry 3495 (class 2606 OID 16511)
-- Name: movie movie_pkey; Type: CONSTRAINT; Schema: public; Owner: vanaantipov
--

ALTER TABLE ONLY public.movie
    ADD CONSTRAINT movie_pkey PRIMARY KEY (movie_id);


--
-- TOC entry 3493 (class 2606 OID 16506)
-- Name: person person_pkey; Type: CONSTRAINT; Schema: public; Owner: vanaantipov
--

ALTER TABLE ONLY public.person
    ADD CONSTRAINT person_pkey PRIMARY KEY (person_id);


--
-- TOC entry 3487 (class 2606 OID 16491)
-- Name: spectators spectators_pkey; Type: CONSTRAINT; Schema: public; Owner: vanaantipov
--

ALTER TABLE ONLY public.spectators
    ADD CONSTRAINT spectators_pkey PRIMARY KEY (spectators_id);


--
-- TOC entry 3498 (class 2606 OID 16650)
-- Name: movie_cast movie_cast_fk_move_cast_person_fkey; Type: FK CONSTRAINT; Schema: public; Owner: vanaantipov
--

ALTER TABLE ONLY public.movie_cast
    ADD CONSTRAINT movie_cast_fk_move_cast_person_fkey FOREIGN KEY (fk_move_cast_person) REFERENCES public.person(person_id);


--
-- TOC entry 3499 (class 2606 OID 16645)
-- Name: movie_cast movie_cast_fk_movie_cast_movie_fkey; Type: FK CONSTRAINT; Schema: public; Owner: vanaantipov
--

ALTER TABLE ONLY public.movie_cast
    ADD CONSTRAINT movie_cast_fk_movie_cast_movie_fkey FOREIGN KEY (fk_movie_cast_movie) REFERENCES public.movie(movie_id);


--
-- TOC entry 3496 (class 2606 OID 16512)
-- Name: movie movie_fk_movie_janre_fkey; Type: FK CONSTRAINT; Schema: public; Owner: vanaantipov
--

ALTER TABLE ONLY public.movie
    ADD CONSTRAINT movie_fk_movie_janre_fkey FOREIGN KEY (fk_movie_janre) REFERENCES public.janre(janre_id);


--
-- TOC entry 3497 (class 2606 OID 16517)
-- Name: movie movie_fk_movie_spectators_fkey; Type: FK CONSTRAINT; Schema: public; Owner: vanaantipov
--

ALTER TABLE ONLY public.movie
    ADD CONSTRAINT movie_fk_movie_spectators_fkey FOREIGN KEY (fk_movie_spectators) REFERENCES public.spectators(spectators_id);


-- Completed on 2023-03-10 12:05:03 +04

--
-- PostgreSQL database dump complete
--

