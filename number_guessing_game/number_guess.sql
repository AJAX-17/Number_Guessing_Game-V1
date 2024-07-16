--
-- PostgreSQL database dump
--

-- Dumped from database version 12.18 (Ubuntu 12.18-0ubuntu0.20.04.1)
-- Dumped by pg_dump version 12.18 (Ubuntu 12.18-0ubuntu0.20.04.1)

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
-- Name: history; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.history (
    game_id integer NOT NULL,
    username character varying(22),
    sec_num integer,
    guess_num integer
);


ALTER TABLE public.history OWNER TO freecodecamp;

--
-- Name: history_game_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.history_game_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.history_game_id_seq OWNER TO freecodecamp;

--
-- Name: history_game_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.history_game_id_seq OWNED BY public.history.game_id;


--
-- Name: history game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.history ALTER COLUMN game_id SET DEFAULT nextval('public.history_game_id_seq'::regclass);


--
-- Data for Name: history; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.history VALUES (1, 'AJ', 17, 6);
INSERT INTO public.history VALUES (3, 'AJ', 23, 5);
INSERT INTO public.history VALUES (4, 'AJ', 94, 43);
INSERT INTO public.history VALUES (14, 'AJ', 36, 9);
INSERT INTO public.history VALUES (15, 'AT', NULL, NULL);
INSERT INTO public.history VALUES (16, 'AT', 617, 10);
INSERT INTO public.history VALUES (17, 'user_1721158883646', NULL, NULL);
INSERT INTO public.history VALUES (18, 'user_1721158883646', 715, 716);
INSERT INTO public.history VALUES (19, 'user_1721158883646', 143, 144);
INSERT INTO public.history VALUES (20, 'user_1721158883645', NULL, NULL);
INSERT INTO public.history VALUES (21, 'user_1721158883645', 366, 367);
INSERT INTO public.history VALUES (22, 'user_1721158883645', 907, 908);
INSERT INTO public.history VALUES (23, 'user_1721158883646', 170, 173);
INSERT INTO public.history VALUES (24, 'user_1721158883646', 571, 573);
INSERT INTO public.history VALUES (25, 'user_1721158883646', 87, 88);
INSERT INTO public.history VALUES (26, 'user_1721159261353', NULL, NULL);
INSERT INTO public.history VALUES (27, 'user_1721159261352', NULL, NULL);
INSERT INTO public.history VALUES (28, 'AC', NULL, NULL);
INSERT INTO public.history VALUES (29, 'AU', NULL, NULL);
INSERT INTO public.history VALUES (30, 'AU', 957, 14);
INSERT INTO public.history VALUES (31, 'user_1721159557062', NULL, NULL);
INSERT INTO public.history VALUES (32, 'user_1721159557062', 512, 513);
INSERT INTO public.history VALUES (33, 'user_1721159557062', 720, 721);
INSERT INTO public.history VALUES (34, 'user_1721159557061', NULL, NULL);
INSERT INTO public.history VALUES (35, 'user_1721159557061', 640, 641);
INSERT INTO public.history VALUES (36, 'user_1721159557061', 819, 820);
INSERT INTO public.history VALUES (37, 'user_1721159557062', 785, 788);
INSERT INTO public.history VALUES (38, 'user_1721159557062', 316, 318);
INSERT INTO public.history VALUES (39, 'user_1721159557062', 791, 792);
INSERT INTO public.history VALUES (40, 'user_1721160176096', NULL, NULL);
INSERT INTO public.history VALUES (41, 'user_1721160176096', 436, 437);
INSERT INTO public.history VALUES (42, 'user_1721160176096', 818, 819);
INSERT INTO public.history VALUES (43, 'user_1721160176095', NULL, NULL);
INSERT INTO public.history VALUES (44, 'user_1721160176095', 285, 286);
INSERT INTO public.history VALUES (45, 'user_1721160176095', 650, 651);
INSERT INTO public.history VALUES (46, 'user_1721160176096', 482, 485);
INSERT INTO public.history VALUES (47, 'user_1721160176096', 936, 938);
INSERT INTO public.history VALUES (48, 'user_1721160176096', 849, 850);
INSERT INTO public.history VALUES (49, 'AJ', 283, 11);
INSERT INTO public.history VALUES (50, 'user_1721164310974', NULL, NULL);
INSERT INTO public.history VALUES (51, 'user_1721164310974', 792, 793);
INSERT INTO public.history VALUES (52, 'user_1721164310974', 107, 108);
INSERT INTO public.history VALUES (53, 'user_1721164310973', NULL, NULL);
INSERT INTO public.history VALUES (54, 'user_1721164310973', 21, 22);
INSERT INTO public.history VALUES (55, 'user_1721164310973', 121, 122);
INSERT INTO public.history VALUES (56, 'user_1721164310974', 334, 337);
INSERT INTO public.history VALUES (57, 'user_1721164310974', 144, 146);
INSERT INTO public.history VALUES (58, 'user_1721164310974', 991, 992);


--
-- Name: history_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.history_game_id_seq', 58, true);


--
-- Name: history history_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.history
    ADD CONSTRAINT history_pkey PRIMARY KEY (game_id);


--
-- PostgreSQL database dump complete
--

