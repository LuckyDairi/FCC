--
-- PostgreSQL database dump
--

-- Dumped from database version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)
-- Dumped by pg_dump version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)

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

DROP DATABASE number_guess;
--
-- Name: number_guess; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE number_guess WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE number_guess OWNER TO freecodecamp;

\connect number_guess

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
-- Name: games; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.games (
    game_id integer NOT NULL,
    number_guesses integer NOT NULL,
    user_id integer
);


ALTER TABLE public.games OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.games_game_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.games_game_id_seq OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.games_game_id_seq OWNED BY public.games.game_id;


--
-- Name: users; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.users (
    user_id integer NOT NULL,
    username character varying(20) NOT NULL
);


ALTER TABLE public.users OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.users_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_user_id_seq OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.users_user_id_seq OWNED BY public.users.user_id;


--
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: users user_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users ALTER COLUMN user_id SET DEFAULT nextval('public.users_user_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (1, 14, 2);
INSERT INTO public.games VALUES (2, 973, 3);
INSERT INTO public.games VALUES (3, 317, 3);
INSERT INTO public.games VALUES (4, 469, 4);
INSERT INTO public.games VALUES (5, 752, 4);
INSERT INTO public.games VALUES (6, 570, 3);
INSERT INTO public.games VALUES (7, 220, 3);
INSERT INTO public.games VALUES (8, 722, 3);
INSERT INTO public.games VALUES (9, 172, 5);
INSERT INTO public.games VALUES (10, 762, 5);
INSERT INTO public.games VALUES (11, 793, 6);
INSERT INTO public.games VALUES (12, 415, 6);
INSERT INTO public.games VALUES (13, 101, 5);
INSERT INTO public.games VALUES (14, 330, 5);
INSERT INTO public.games VALUES (15, 140, 5);
INSERT INTO public.games VALUES (16, 741, 7);
INSERT INTO public.games VALUES (17, 654, 7);
INSERT INTO public.games VALUES (18, 917, 8);
INSERT INTO public.games VALUES (19, 977, 8);
INSERT INTO public.games VALUES (20, 956, 7);
INSERT INTO public.games VALUES (21, 762, 7);
INSERT INTO public.games VALUES (22, 634, 7);
INSERT INTO public.games VALUES (23, 660, 9);
INSERT INTO public.games VALUES (24, 378, 9);
INSERT INTO public.games VALUES (25, 381, 10);
INSERT INTO public.games VALUES (26, 271, 10);
INSERT INTO public.games VALUES (27, 493, 9);
INSERT INTO public.games VALUES (28, 842, 9);
INSERT INTO public.games VALUES (29, 601, 9);
INSERT INTO public.games VALUES (30, 11, 2);
INSERT INTO public.games VALUES (31, 983, 11);
INSERT INTO public.games VALUES (32, 918, 11);
INSERT INTO public.games VALUES (33, 520, 12);
INSERT INTO public.games VALUES (34, 79, 12);
INSERT INTO public.games VALUES (35, 177, 11);
INSERT INTO public.games VALUES (36, 12, 11);
INSERT INTO public.games VALUES (37, 410, 11);
INSERT INTO public.games VALUES (38, 189, 13);
INSERT INTO public.games VALUES (39, 95, 13);
INSERT INTO public.games VALUES (40, 126, 14);
INSERT INTO public.games VALUES (41, 544, 14);
INSERT INTO public.games VALUES (42, 733, 13);
INSERT INTO public.games VALUES (43, 827, 13);
INSERT INTO public.games VALUES (44, 276, 13);
INSERT INTO public.games VALUES (45, 415, 15);
INSERT INTO public.games VALUES (46, 237, 15);
INSERT INTO public.games VALUES (47, 516, 16);
INSERT INTO public.games VALUES (48, 141, 16);
INSERT INTO public.games VALUES (49, 792, 15);
INSERT INTO public.games VALUES (50, 39, 15);
INSERT INTO public.games VALUES (51, 261, 15);
INSERT INTO public.games VALUES (52, 151, 17);
INSERT INTO public.games VALUES (53, 766, 17);
INSERT INTO public.games VALUES (54, 961, 18);
INSERT INTO public.games VALUES (55, 736, 18);
INSERT INTO public.games VALUES (56, 307, 17);
INSERT INTO public.games VALUES (57, 856, 17);
INSERT INTO public.games VALUES (58, 773, 17);
INSERT INTO public.games VALUES (59, 5, 19);
INSERT INTO public.games VALUES (60, 686, 19);
INSERT INTO public.games VALUES (61, 917, 20);
INSERT INTO public.games VALUES (62, 186, 20);
INSERT INTO public.games VALUES (63, 542, 19);
INSERT INTO public.games VALUES (64, 649, 19);
INSERT INTO public.games VALUES (65, 798, 19);
INSERT INTO public.games VALUES (66, 715, 21);
INSERT INTO public.games VALUES (67, 391, 21);
INSERT INTO public.games VALUES (68, 823, 22);
INSERT INTO public.games VALUES (69, 110, 22);
INSERT INTO public.games VALUES (70, 580, 21);
INSERT INTO public.games VALUES (71, 113, 21);
INSERT INTO public.games VALUES (72, 204, 21);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.users VALUES (1, 'cha');
INSERT INTO public.users VALUES (2, 'a');
INSERT INTO public.users VALUES (3, 'user_1739247630520');
INSERT INTO public.users VALUES (4, 'user_1739247630519');
INSERT INTO public.users VALUES (5, 'user_1739247668807');
INSERT INTO public.users VALUES (6, 'user_1739247668806');
INSERT INTO public.users VALUES (7, 'user_1739248662794');
INSERT INTO public.users VALUES (8, 'user_1739248662793');
INSERT INTO public.users VALUES (9, 'user_1739248729210');
INSERT INTO public.users VALUES (10, 'user_1739248729209');
INSERT INTO public.users VALUES (11, 'user_1739248957959');
INSERT INTO public.users VALUES (12, 'user_1739248957958');
INSERT INTO public.users VALUES (13, 'user_1739248960277');
INSERT INTO public.users VALUES (14, 'user_1739248960276');
INSERT INTO public.users VALUES (15, 'user_1739249171055');
INSERT INTO public.users VALUES (16, 'user_1739249171054');
INSERT INTO public.users VALUES (17, 'user_1739249173581');
INSERT INTO public.users VALUES (18, 'user_1739249173580');
INSERT INTO public.users VALUES (19, 'user_1739249252355');
INSERT INTO public.users VALUES (20, 'user_1739249252354');
INSERT INTO public.users VALUES (21, 'user_1739249359691');
INSERT INTO public.users VALUES (22, 'user_1739249359690');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 72, true);


--
-- Name: users_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.users_user_id_seq', 22, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (user_id);


--
-- Name: users users_username_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key UNIQUE (username);


--
-- Name: games games_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(user_id);


--
-- PostgreSQL database dump complete
--

