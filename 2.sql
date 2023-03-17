--
-- PostgreSQL database dump
--

-- Dumped from database version 15.2
-- Dumped by pg_dump version 15.1

-- Started on 2023-03-17 09:35:57 +04

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
-- TOC entry 214 (class 1259 OID 16712)
-- Name: janre; Type: TABLE; Schema: public; Owner: vanaantipov
--

CREATE TABLE public.janre (
    janre_id integer NOT NULL,
    janre_name text NOT NULL
);


ALTER TABLE public.janre OWNER TO vanaantipov;

--
-- TOC entry 215 (class 1259 OID 16719)
-- Name: movie; Type: TABLE; Schema: public; Owner: vanaantipov
--

CREATE TABLE public.movie (
    movie_id integer NOT NULL,
    movie_name character varying(64) NOT NULL,
    movie_year integer NOT NULL,
    fk_movie_janre1 integer,
    fk_movie_janre2 integer
);


ALTER TABLE public.movie OWNER TO vanaantipov;

--
-- TOC entry 3612 (class 0 OID 16712)
-- Dependencies: 214
-- Data for Name: janre; Type: TABLE DATA; Schema: public; Owner: vanaantipov
--

COPY public.janre (janre_id, janre_name) FROM stdin;
1	Фантастика
2	Ужасы
3	Комедии
4	Боевик
5	Детектив
6	Драмы
7	Милодрамы
\.


--
-- TOC entry 3613 (class 0 OID 16719)
-- Dependencies: 215
-- Data for Name: movie; Type: TABLE DATA; Schema: public; Owner: vanaantipov
--

COPY public.movie (movie_id, movie_name, movie_year, fk_movie_janre1, fk_movie_janre2) FROM stdin;
1	Титаник	1956	1	6
2	Халк	2005	5	2
3	Трон	2010	7	3
4	Аватар	2009	4	1
5	Черная пантера	2017	5	7
6	Шерлок Хомс	2007	1	3
7	Терминатор	1992	2	5
8	Такси	2002	6	7
9	Гестби	2006	4	2
10	Люси	2014	1	2
11	Хроники Ридика	2007	1	7
12	Астрал	2006	2	7
13	Анабель	2010	4	1
14	И грянул гром	2015	5	4
15	Назад в будущее	1985	1	2
\.


--
-- TOC entry 3465 (class 2606 OID 16718)
-- Name: janre janre_pkey; Type: CONSTRAINT; Schema: public; Owner: vanaantipov
--

ALTER TABLE ONLY public.janre
    ADD CONSTRAINT janre_pkey PRIMARY KEY (janre_id);


--
-- TOC entry 3467 (class 2606 OID 16723)
-- Name: movie movie_pkey; Type: CONSTRAINT; Schema: public; Owner: vanaantipov
--

ALTER TABLE ONLY public.movie
    ADD CONSTRAINT movie_pkey PRIMARY KEY (movie_id);


--
-- TOC entry 3468 (class 2606 OID 16724)
-- Name: movie movie_fk_movie_janre1_fkey; Type: FK CONSTRAINT; Schema: public; Owner: vanaantipov
--

ALTER TABLE ONLY public.movie
    ADD CONSTRAINT movie_fk_movie_janre1_fkey FOREIGN KEY (fk_movie_janre1) REFERENCES public.janre(janre_id);


--
-- TOC entry 3469 (class 2606 OID 16729)
-- Name: movie movie_fk_movie_janre2_fkey; Type: FK CONSTRAINT; Schema: public; Owner: vanaantipov
--

ALTER TABLE ONLY public.movie
    ADD CONSTRAINT movie_fk_movie_janre2_fkey FOREIGN KEY (fk_movie_janre2) REFERENCES public.janre(janre_id);


-- Completed on 2023-03-17 09:35:57 +04

--
-- PostgreSQL database dump complete
--

