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
    name character varying(30) NOT NULL,
    world integer,
    star_count integer,
    complete boolean
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
    name character varying(30) NOT NULL,
    planet_id integer,
    color character varying(30),
    rabbits integer
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
    name character varying(30) NOT NULL,
    size numeric(4,1),
    star_id integer,
    description text
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
-- Name: ship; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.ship (
    ship_id integer NOT NULL,
    name character varying(30) NOT NULL,
    captain character varying(30)
);


ALTER TABLE public.ship OWNER TO freecodecamp;

--
-- Name: ship_ship_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.ship_ship_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.ship_ship_id_seq OWNER TO freecodecamp;

--
-- Name: ship_ship_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.ship_ship_id_seq OWNED BY public.ship.ship_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(30) NOT NULL,
    description text,
    got_it boolean,
    galaxy_id integer
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
-- Name: ship ship_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.ship ALTER COLUMN ship_id SET DEFAULT nextval('public.ship_ship_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Good Egg', 1, 6, true);
INSERT INTO public.galaxy VALUES (2, 'Space Junk', 2, 6, true);
INSERT INTO public.galaxy VALUES (3, 'Beach Bowl', 3, 6, true);
INSERT INTO public.galaxy VALUES (4, 'Gusty Garden', 4, 6, false);
INSERT INTO public.galaxy VALUES (5, 'Toy Time', 5, 6, false);
INSERT INTO public.galaxy VALUES (6, 'Melty Molten', 6, 6, false);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Collected', 1, 'Clear', 0);
INSERT INTO public.moon VALUES (2, 'Actual', 1, 'White', 0);
INSERT INTO public.moon VALUES (3, 'Dark', 1, 'White', 4);
INSERT INTO public.moon VALUES (4, 'Darker', 1, 'White', 0);
INSERT INTO public.moon VALUES (5, 'Cap', 1, 'Yellow', 0);
INSERT INTO public.moon VALUES (6, 'Cascade', 1, 'Yellow', 0);
INSERT INTO public.moon VALUES (7, 'Desert', 1, 'Green', 0);
INSERT INTO public.moon VALUES (8, 'Lake', 1, 'Pink', 0);
INSERT INTO public.moon VALUES (9, 'Wooded', 1, 'Blue', 0);
INSERT INTO public.moon VALUES (10, 'Cloud', 1, 'Yellow', 0);
INSERT INTO public.moon VALUES (11, 'Lost', 1, 'Yellow', 0);
INSERT INTO public.moon VALUES (12, 'Metro', 1, 'Orange', 0);
INSERT INTO public.moon VALUES (13, 'Snow', 1, 'Orange', 0);
INSERT INTO public.moon VALUES (14, 'Seaside', 1, 'Purple', 0);
INSERT INTO public.moon VALUES (15, 'Luncheon', 1, 'Cyan', 0);
INSERT INTO public.moon VALUES (16, 'Ruined', 1, 'Yellow', 0);
INSERT INTO public.moon VALUES (17, 'Bowser', 1, 'Red', 0);
INSERT INTO public.moon VALUES (18, 'Final', 1, 'Yellow', 0);
INSERT INTO public.moon VALUES (19, 'Mushroom', 1, 'Yellow', 0);
INSERT INTO public.moon VALUES (20, 'Retro', 1, 'Flat', 0);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Tower', 64.1, 1, 'First');
INSERT INTO public.planet VALUES (2, 'Sand', 12.1, 1, 'Pieces');
INSERT INTO public.planet VALUES (3, 'Egg', 12.1, 1, 'Boss');
INSERT INTO public.planet VALUES (4, 'Airship', 12.1, 3, 'Foreign');
INSERT INTO public.planet VALUES (5, 'Lava', 12.1, 3, 'Boss');
INSERT INTO public.planet VALUES (6, 'Grass', 12.1, 2, 'Return');
INSERT INTO public.planet VALUES (7, 'Special', 12.1, 2, 'New');
INSERT INTO public.planet VALUES (8, 'Gold', 12.1, 2, 'Final');
INSERT INTO public.planet VALUES (9, 'Toad', 12.1, 4, 'Start');
INSERT INTO public.planet VALUES (10, 'Olimar', 12.1, 4, 'Reference');
INSERT INTO public.planet VALUES (11, 'Proximity', 12.1, 4, 'RPuzzle');
INSERT INTO public.planet VALUES (12, 'Web', 12.1, 6, 'Boss');


--
-- Data for Name: ship; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.ship VALUES (1, 'Comet Observatory', 'Rosalina');
INSERT INTO public.ship VALUES (2, 'Starship Mario', 'Mario');
INSERT INTO public.ship VALUES (3, 'Toad Brigade Ship', 'Captain Toad');


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Dino Piranha', 'First', true, 1);
INSERT INTO public.star VALUES (2, 'Snack', 'Get Star Bits', true, 1);
INSERT INTO public.star VALUES (3, 'King Kaliente', 'Boss', true, 1);
INSERT INTO public.star VALUES (4, 'Pull Star', 'Pointer', true, 2);
INSERT INTO public.star VALUES (5, 'Kamella', 'Boss', true, 2);
INSERT INTO public.star VALUES (6, 'Tarantox', 'Boss', true, 2);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 20, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: ship_ship_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.ship_ship_id_seq', 3, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: galaxy galaxy_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_name_key UNIQUE (name);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_name_key UNIQUE (name);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_name_key UNIQUE (name);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: ship ship_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.ship
    ADD CONSTRAINT ship_name_key UNIQUE (name);


--
-- Name: ship ship_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.ship
    ADD CONSTRAINT ship_pkey PRIMARY KEY (ship_id);


--
-- Name: star star_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_name_key UNIQUE (name);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: moon moon_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet planet_star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_star_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

