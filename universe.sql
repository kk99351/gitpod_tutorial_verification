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

DROP DATABASE universe;
--
-- Name: universe; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE universe WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE universe OWNER TO freecodecamp;

\connect universe

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
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(20),
    range integer,
    mass integer,
    age numeric,
    description text,
    live boolean,
    alien_presence boolean,
    universe_id integer NOT NULL
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_galaxy_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(20),
    range integer,
    mass integer,
    age numeric,
    description text,
    live boolean,
    alien_presence boolean,
    planet_id integer NOT NULL
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_moon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_moon_id_seq OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_moon_id_seq OWNED BY public.moon.moon_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(20),
    range integer,
    mass integer,
    age numeric,
    description text,
    live boolean,
    alien_presence boolean,
    star_id integer NOT NULL
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_planet_id_seq OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_planet_id_seq OWNED BY public.planet.planet_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(20),
    range integer,
    mass integer,
    age numeric,
    description text,
    live boolean,
    alien_presence boolean,
    galaxy_id integer NOT NULL
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_star_id_seq OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_star_id_seq OWNED BY public.star.star_id;


--
-- Name: universe; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.universe (
    universe_id integer NOT NULL,
    name character varying(20),
    range integer,
    mass integer,
    age numeric,
    description text,
    live boolean,
    alien_presence boolean,
    multiverse_id integer NOT NULL
);


ALTER TABLE public.universe OWNER TO freecodecamp;

--
-- Name: universe_universe_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.universe_universe_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.universe_universe_id_seq OWNER TO freecodecamp;

--
-- Name: universe_universe_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.universe_universe_id_seq OWNED BY public.universe.universe_id;


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Name: universe universe_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.universe ALTER COLUMN universe_id SET DEFAULT nextval('public.universe_universe_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', 1005, 15012, 13610, 'good galaxy', true, true, 1);
INSERT INTO public.galaxy VALUES (3, 'Andromeda Galaxy', 2205, 12312, 10010, 'good galaxy', true, false, 3);
INSERT INTO public.galaxy VALUES (4, 'Triangulum Galaxy', 7, 5012, 10010, 'good galaxy', true, false, 4);
INSERT INTO public.galaxy VALUES (5, 'Triangulum Galaxy', 7, 5012, 10010, 'good galaxy', true, false, 5);
INSERT INTO public.galaxy VALUES (6, 'Triangulum Galaxy', 7, 5012, 10010, 'good galaxy', true, false, 6);
INSERT INTO public.galaxy VALUES (7, 'Triangulum Galaxy', 7, 5012, 10010, 'good galaxy', true, false, 7);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'moon', 3473, 73522, 4509, 'good moon', true, false, 1);
INSERT INTO public.moon VALUES (2, 'moon', 3473, 73522, 4509, 'good moon', true, false, 1);
INSERT INTO public.moon VALUES (4, 'moon', 3473, 73522, 4509, 'good moon', true, false, 3);
INSERT INTO public.moon VALUES (5, 'moon', 3473, 73522, 4509, 'good moon', true, false, 3);
INSERT INTO public.moon VALUES (7, 'moon', 3473, 73522, 4509, 'good moon', true, false, 5);
INSERT INTO public.moon VALUES (8, 'moon', 3473, 73522, 4509, 'good moon', true, false, 5);
INSERT INTO public.moon VALUES (9, 'moon', 3473, 73522, 4509, 'good moon', true, false, 5);
INSERT INTO public.moon VALUES (10, 'moon', 3473, 73522, 4509, 'good moon', true, false, 6);
INSERT INTO public.moon VALUES (11, 'moon', 3473, 73522, 4509, 'good moon', true, false, 6);
INSERT INTO public.moon VALUES (12, 'moon', 3473, 73522, 4509, 'good moon', true, false, 6);
INSERT INTO public.moon VALUES (13, 'moon', 3473, 73522, 4509, 'good moon', true, false, 7);
INSERT INTO public.moon VALUES (14, 'moon', 3473, 73522, 4509, 'good moon', true, false, 7);
INSERT INTO public.moon VALUES (15, 'moon', 3473, 73522, 4509, 'good moon', true, false, 7);
INSERT INTO public.moon VALUES (16, 'moon', 3473, 73522, 4509, 'good moon', true, false, 7);
INSERT INTO public.moon VALUES (17, 'moon', 3473, 73522, 4509, 'good moon', true, false, 8);
INSERT INTO public.moon VALUES (18, 'moon', 3473, 73522, 4509, 'good moon', true, false, 8);
INSERT INTO public.moon VALUES (19, 'moon', 3473, 73522, 4509, 'good moon', true, false, 8);
INSERT INTO public.moon VALUES (20, 'moon', 3473, 73522, 4509, 'good moon', true, false, 9);
INSERT INTO public.moon VALUES (21, 'moon', 3473, 73522, 4509, 'good moon', true, false, 9);
INSERT INTO public.moon VALUES (22, 'moon', 3473, 73522, 4509, 'good moon', true, false, 10);
INSERT INTO public.moon VALUES (23, 'moon', 3473, 73522, 4509, 'good moon', true, false, 10);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'earth', 1274, 59724, 4549, 'good planet', true, true, 1);
INSERT INTO public.planet VALUES (3, 'earth', 1274, 59724, 4549, 'good planet', true, true, 1);
INSERT INTO public.planet VALUES (5, 'earth', 1274, 59724, 4549, 'good planet', true, true, 3);
INSERT INTO public.planet VALUES (6, 'earth', 1274, 59724, 4549, 'good planet', true, true, 3);
INSERT INTO public.planet VALUES (7, 'earth', 1274, 59724, 4549, 'good planet', true, true, 4);
INSERT INTO public.planet VALUES (8, 'earth', 1274, 59724, 4549, 'good planet', true, true, 4);
INSERT INTO public.planet VALUES (9, 'earth', 1274, 59724, 4549, 'good planet', true, true, 5);
INSERT INTO public.planet VALUES (10, 'earth', 1274, 59724, 4549, 'good planet', true, true, 5);
INSERT INTO public.planet VALUES (11, 'earth', 1274, 59724, 4549, 'good planet', true, true, 6);
INSERT INTO public.planet VALUES (12, 'earth', 1274, 59724, 4549, 'good planet', true, true, 6);
INSERT INTO public.planet VALUES (13, 'earth', 1274, 59724, 4549, 'good planet', true, true, 7);
INSERT INTO public.planet VALUES (14, 'earth', 1274, 59724, 4549, 'good planet', true, true, 7);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'sun', 1399, 19830, 4609, 'good star', true, true, 1);
INSERT INTO public.star VALUES (3, 'sun', 1399, 19830, 4609, 'good star', true, true, 3);
INSERT INTO public.star VALUES (4, 'sun', 1399, 19830, 4609, 'good star', true, true, 4);
INSERT INTO public.star VALUES (5, 'sun', 1399, 19830, 4609, 'good star', true, true, 5);
INSERT INTO public.star VALUES (6, 'sun', 1399, 19830, 4609, 'good star', true, true, 6);
INSERT INTO public.star VALUES (7, 'sun', 1399, 19830, 4609, 'good star', true, true, 7);


--
-- Data for Name: universe; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.universe VALUES (1, 'universe', 4401023, 10053, 13710, 'good universe', true, true, 1);
INSERT INTO public.universe VALUES (3, 'universe', 4401023, 10053, 13710, 'good universe', true, true, 2);
INSERT INTO public.universe VALUES (4, 'universe', 4401023, 10053, 13710, 'good universe', true, true, 3);
INSERT INTO public.universe VALUES (5, 'universe', 4401023, 10053, 13710, 'good universe', true, true, 4);
INSERT INTO public.universe VALUES (6, 'universe', 4401023, 10053, 13710, 'good universe', true, true, 5);
INSERT INTO public.universe VALUES (7, 'universe', 4401023, 10053, 13710, 'good universe', true, true, 6);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 7, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 23, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 14, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 7, true);


--
-- Name: universe_universe_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.universe_universe_id_seq', 7, true);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: galaxy galaxy_unique_id; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_unique_id UNIQUE (galaxy_id);


--
-- Name: galaxy galaxy_universe_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_universe_id_key UNIQUE (universe_id);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: moon moon_unique_id; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_unique_id UNIQUE (moon_id);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: planet planet_unique_id; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_unique_id UNIQUE (planet_id);


--
-- Name: star star_galaxy_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_key UNIQUE (galaxy_id);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: star star_unique_id; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_unique_id UNIQUE (star_id);


--
-- Name: universe universe_multiverse_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.universe
    ADD CONSTRAINT universe_multiverse_id_key UNIQUE (multiverse_id);


--
-- Name: universe universe_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.universe
    ADD CONSTRAINT universe_pkey PRIMARY KEY (universe_id);


--
-- Name: universe universe_unique_id; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.universe
    ADD CONSTRAINT universe_unique_id UNIQUE (universe_id);


--
-- Name: galaxy galaxy_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_fkey FOREIGN KEY (universe_id) REFERENCES public.universe(universe_id);


--
-- Name: moon moon_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet planet_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star star_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

