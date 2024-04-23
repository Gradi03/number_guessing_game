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
    games_id integer NOT NULL,
    number_guesses integer NOT NULL,
    user_id integer
);


ALTER TABLE public.games OWNER TO freecodecamp;

--
-- Name: games_games_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.games_games_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.games_games_id_seq OWNER TO freecodecamp;

--
-- Name: games_games_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.games_games_id_seq OWNED BY public.games.games_id;


--
-- Name: users; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.users (
    user_id integer NOT NULL,
    username character varying(22) NOT NULL
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
-- Name: games games_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN games_id SET DEFAULT nextval('public.games_games_id_seq'::regclass);


--
-- Name: users user_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users ALTER COLUMN user_id SET DEFAULT nextval('public.users_user_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (1, 11, 4);
INSERT INTO public.games VALUES (2, 674, 5);
INSERT INTO public.games VALUES (3, 692, 5);
INSERT INTO public.games VALUES (4, 507, 6);
INSERT INTO public.games VALUES (5, 581, 6);
INSERT INTO public.games VALUES (6, 982, 5);
INSERT INTO public.games VALUES (7, 770, 5);
INSERT INTO public.games VALUES (8, 230, 5);
INSERT INTO public.games VALUES (9, 421, 7);
INSERT INTO public.games VALUES (10, 532, 7);
INSERT INTO public.games VALUES (11, 272, 8);
INSERT INTO public.games VALUES (12, 772, 8);
INSERT INTO public.games VALUES (13, 11, 7);
INSERT INTO public.games VALUES (14, 152, 7);
INSERT INTO public.games VALUES (15, 116, 7);
INSERT INTO public.games VALUES (16, 317, 9);
INSERT INTO public.games VALUES (17, 294, 9);
INSERT INTO public.games VALUES (18, 545, 10);
INSERT INTO public.games VALUES (19, 474, 10);
INSERT INTO public.games VALUES (20, 317, 9);
INSERT INTO public.games VALUES (21, 263, 9);
INSERT INTO public.games VALUES (22, 516, 9);
INSERT INTO public.games VALUES (23, 82, 11);
INSERT INTO public.games VALUES (24, 268, 11);
INSERT INTO public.games VALUES (25, 634, 12);
INSERT INTO public.games VALUES (26, 153, 12);
INSERT INTO public.games VALUES (27, 590, 11);
INSERT INTO public.games VALUES (28, 406, 11);
INSERT INTO public.games VALUES (29, 857, 11);
INSERT INTO public.games VALUES (30, 407, 13);
INSERT INTO public.games VALUES (31, 732, 13);
INSERT INTO public.games VALUES (32, 694, 14);
INSERT INTO public.games VALUES (33, 602, 14);
INSERT INTO public.games VALUES (34, 169, 13);
INSERT INTO public.games VALUES (35, 515, 13);
INSERT INTO public.games VALUES (36, 660, 13);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.users VALUES (1, 'g');
INSERT INTO public.users VALUES (2, 'user_1713866689015');
INSERT INTO public.users VALUES (3, 'user_1713866689014');
INSERT INTO public.users VALUES (4, 'GRADI');
INSERT INTO public.users VALUES (5, 'user_1713867785766');
INSERT INTO public.users VALUES (6, 'user_1713867785765');
INSERT INTO public.users VALUES (7, 'user_1713868206867');
INSERT INTO public.users VALUES (8, 'user_1713868206866');
INSERT INTO public.users VALUES (9, 'user_1713868484281');
INSERT INTO public.users VALUES (10, 'user_1713868484280');
INSERT INTO public.users VALUES (11, 'user_1713868524707');
INSERT INTO public.users VALUES (12, 'user_1713868524706');
INSERT INTO public.users VALUES (13, 'user_1713868554633');
INSERT INTO public.users VALUES (14, 'user_1713868554632');


--
-- Name: games_games_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_games_id_seq', 36, true);


--
-- Name: users_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.users_user_id_seq', 14, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (games_id);


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

