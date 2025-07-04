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

DROP DATABASE worldcup;
--
-- Name: worldcup; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE worldcup WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE worldcup OWNER TO freecodecamp;

\connect worldcup

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
    year integer NOT NULL,
    round character varying(30) NOT NULL,
    winner_id integer NOT NULL,
    opponent_id integer NOT NULL,
    winner_goals integer NOT NULL,
    opponent_goals integer NOT NULL
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
-- Name: teams; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.teams (
    team_id integer NOT NULL,
    name character varying(30) NOT NULL
);


ALTER TABLE public.teams OWNER TO freecodecamp;

--
-- Name: teams_team_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.teams_team_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.teams_team_id_seq OWNER TO freecodecamp;

--
-- Name: teams_team_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.teams_team_id_seq OWNED BY public.teams.team_id;


--
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: teams team_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams ALTER COLUMN team_id SET DEFAULT nextval('public.teams_team_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (73, 2018, 'Final', 73, 75, 4, 2);
INSERT INTO public.games VALUES (74, 2018, 'Third Place', 74, 77, 2, 0);
INSERT INTO public.games VALUES (75, 2018, 'Semi-Final', 75, 77, 2, 1);
INSERT INTO public.games VALUES (76, 2018, 'Semi-Final', 73, 74, 1, 0);
INSERT INTO public.games VALUES (77, 2018, 'Quarter-Final', 75, 76, 3, 2);
INSERT INTO public.games VALUES (78, 2018, 'Quarter-Final', 77, 81, 2, 0);
INSERT INTO public.games VALUES (79, 2018, 'Quarter-Final', 74, 78, 2, 1);
INSERT INTO public.games VALUES (80, 2018, 'Quarter-Final', 73, 79, 2, 0);
INSERT INTO public.games VALUES (81, 2018, 'Eighth-Final', 77, 80, 2, 1);
INSERT INTO public.games VALUES (82, 2018, 'Eighth-Final', 81, 95, 1, 0);
INSERT INTO public.games VALUES (83, 2018, 'Eighth-Final', 74, 82, 3, 2);
INSERT INTO public.games VALUES (84, 2018, 'Eighth-Final', 78, 83, 2, 0);
INSERT INTO public.games VALUES (85, 2018, 'Eighth-Final', 75, 84, 2, 1);
INSERT INTO public.games VALUES (86, 2018, 'Eighth-Final', 76, 85, 2, 1);
INSERT INTO public.games VALUES (87, 2018, 'Eighth-Final', 79, 86, 2, 1);
INSERT INTO public.games VALUES (88, 2018, 'Eighth-Final', 73, 87, 4, 3);
INSERT INTO public.games VALUES (89, 2014, 'Final', 88, 87, 1, 0);
INSERT INTO public.games VALUES (90, 2014, 'Third Place', 89, 78, 3, 0);
INSERT INTO public.games VALUES (91, 2014, 'Semi-Final', 87, 89, 1, 0);
INSERT INTO public.games VALUES (92, 2014, 'Semi-Final', 88, 78, 7, 1);
INSERT INTO public.games VALUES (93, 2014, 'Quarter-Final', 89, 90, 1, 0);
INSERT INTO public.games VALUES (94, 2014, 'Quarter-Final', 87, 74, 1, 0);
INSERT INTO public.games VALUES (95, 2014, 'Quarter-Final', 78, 80, 2, 1);
INSERT INTO public.games VALUES (96, 2014, 'Quarter-Final', 88, 73, 1, 0);
INSERT INTO public.games VALUES (97, 2014, 'Eighth-Final', 78, 91, 2, 1);
INSERT INTO public.games VALUES (98, 2014, 'Eighth-Final', 80, 79, 2, 0);
INSERT INTO public.games VALUES (99, 2014, 'Eighth-Final', 73, 92, 2, 0);
INSERT INTO public.games VALUES (100, 2014, 'Eighth-Final', 88, 93, 2, 1);
INSERT INTO public.games VALUES (101, 2014, 'Eighth-Final', 89, 83, 2, 1);
INSERT INTO public.games VALUES (102, 2014, 'Eighth-Final', 90, 94, 2, 1);
INSERT INTO public.games VALUES (103, 2014, 'Eighth-Final', 87, 95, 1, 0);
INSERT INTO public.games VALUES (104, 2014, 'Eighth-Final', 74, 96, 2, 1);


--
-- Data for Name: teams; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.teams VALUES (73, 'France');
INSERT INTO public.teams VALUES (74, 'Belgium');
INSERT INTO public.teams VALUES (75, 'Croatia');
INSERT INTO public.teams VALUES (76, 'Russia');
INSERT INTO public.teams VALUES (77, 'England');
INSERT INTO public.teams VALUES (78, 'Brazil');
INSERT INTO public.teams VALUES (79, 'Uruguay');
INSERT INTO public.teams VALUES (80, 'Colombia');
INSERT INTO public.teams VALUES (81, 'Sweden');
INSERT INTO public.teams VALUES (82, 'Japan');
INSERT INTO public.teams VALUES (83, 'Mexico');
INSERT INTO public.teams VALUES (84, 'Denmark');
INSERT INTO public.teams VALUES (85, 'Spain');
INSERT INTO public.teams VALUES (86, 'Portugal');
INSERT INTO public.teams VALUES (87, 'Argentina');
INSERT INTO public.teams VALUES (88, 'Germany');
INSERT INTO public.teams VALUES (89, 'Netherlands');
INSERT INTO public.teams VALUES (90, 'Costa Rica');
INSERT INTO public.teams VALUES (91, 'Chile');
INSERT INTO public.teams VALUES (92, 'Nigeria');
INSERT INTO public.teams VALUES (93, 'Algeria');
INSERT INTO public.teams VALUES (94, 'Greece');
INSERT INTO public.teams VALUES (95, 'Switzerland');
INSERT INTO public.teams VALUES (96, 'United States');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 104, true);


--
-- Name: teams_team_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.teams_team_id_seq', 96, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: teams teams_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT teams_name_key UNIQUE (name);


--
-- Name: teams teams_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT teams_pkey PRIMARY KEY (team_id);


--
-- Name: games games_opponent_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_opponent_id_fkey FOREIGN KEY (opponent_id) REFERENCES public.teams(team_id);


--
-- Name: games games_winner_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_winner_id_fkey FOREIGN KEY (winner_id) REFERENCES public.teams(team_id);


--
-- PostgreSQL database dump complete
--

