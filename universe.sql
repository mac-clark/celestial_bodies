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
-- Name: asteroid; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.asteroid (
    asteroid_id integer NOT NULL,
    name character varying NOT NULL,
    diameter integer,
    composition text,
    is_potentially_hazardous boolean,
    orbit_distance numeric,
    orbit_period numeric,
    is_main_belt boolean
);


ALTER TABLE public.asteroid OWNER TO freecodecamp;

--
-- Name: asteroid_asteroid_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.asteroid_asteroid_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.asteroid_asteroid_id_seq OWNER TO freecodecamp;

--
-- Name: asteroid_asteroid_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.asteroid_asteroid_id_seq OWNED BY public.asteroid.asteroid_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying NOT NULL,
    age_in_millions_of_years integer,
    galaxy_type text,
    distance_from_earth numeric,
    has_life boolean
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
    name character varying NOT NULL,
    diameter integer,
    orbit_period numeric,
    is_inhabited boolean,
    planet_id integer
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
    name character varying NOT NULL,
    radius integer,
    mass numeric,
    has_moons boolean,
    star_id integer
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
    name character varying NOT NULL,
    age_in_millions_of_years integer,
    temperature integer,
    has_planets boolean,
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
-- Name: asteroid asteroid_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.asteroid ALTER COLUMN asteroid_id SET DEFAULT nextval('public.asteroid_asteroid_id_seq'::regclass);


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
-- Data for Name: asteroid; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.asteroid VALUES (13, 'Ceres', 940, 'Carbonaceous', false, 2.77, 4.60, true);
INSERT INTO public.asteroid VALUES (14, 'Vesta', 525, 'Basaltic', false, 2.36, 3.63, true);
INSERT INTO public.asteroid VALUES (15, 'Pallas', 512, 'Carbonaceous', false, 2.77, 4.62, true);
INSERT INTO public.asteroid VALUES (16, 'Hygiea', 431, 'Carbonaceous', false, 3.14, 5.56, true);
INSERT INTO public.asteroid VALUES (17, 'Interamnia', 350, 'Silicaceous', false, 3.06, 5.23, true);
INSERT INTO public.asteroid VALUES (18, 'Euphrosyne', 320, 'Carbonaceous', false, 3.15, 5.61, true);
INSERT INTO public.asteroid VALUES (19, 'Davida', 309, 'Carbonaceous', false, 2.58, 4.33, true);
INSERT INTO public.asteroid VALUES (20, 'Sylvia', 286, 'Silicaceous', false, 3.48, 6.02, true);
INSERT INTO public.asteroid VALUES (21, 'Cybele', 231, 'Carbonaceous', false, 3.42, 5.97, true);
INSERT INTO public.asteroid VALUES (22, 'Eunomia', 268, 'Silicaceous', false, 2.64, 4.32, true);
INSERT INTO public.asteroid VALUES (23, 'Eugenia', 214, 'Carbonaceous', false, 2.72, 4.41, true);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', 13000, 'Spiral', 1000000, true);
INSERT INTO public.galaxy VALUES (2, 'Andromeda', 12000, 'Spiral', 1500000, false);
INSERT INTO public.galaxy VALUES (3, 'Triangulum', 15000, 'Spiral', 2000000, false);
INSERT INTO public.galaxy VALUES (4, 'Whirlpool', 14000, 'Spiral', 1800000, false);
INSERT INTO public.galaxy VALUES (5, 'Messier 81', 16000, 'Spiral', 1700000, false);
INSERT INTO public.galaxy VALUES (6, 'Messier 82', 17000, 'Irregular', 1900000, false);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Moon', 3475, 27.32, false, 3);
INSERT INTO public.moon VALUES (2, 'Phobos', 22, 0.32, false, 4);
INSERT INTO public.moon VALUES (3, 'Deimos', 12, 1.26, false, 4);
INSERT INTO public.moon VALUES (4, 'Io', 3637, 1.77, false, 5);
INSERT INTO public.moon VALUES (5, 'Europa', 3121, 3.55, false, 5);
INSERT INTO public.moon VALUES (6, 'Ganymede', 5262, 7.16, false, 5);
INSERT INTO public.moon VALUES (7, 'Callisto', 4800, 16.69, false, 5);
INSERT INTO public.moon VALUES (8, 'Titan', 5150, 15.95, false, 6);
INSERT INTO public.moon VALUES (9, 'Enceladus', 504, 1.37, false, 6);
INSERT INTO public.moon VALUES (10, 'Mimas', 198, 0.94, false, 6);
INSERT INTO public.moon VALUES (11, 'Triton', 2706, 5.88, false, 8);
INSERT INTO public.moon VALUES (12, 'Charon', 1207, 6.39, false, 9);
INSERT INTO public.moon VALUES (13, 'Proxima Centauri b I', 2700, 18.60, false, 10);
INSERT INTO public.moon VALUES (14, 'Alpha Centauri A b I', 4700, 34.89, false, 11);
INSERT INTO public.moon VALUES (15, 'Alpha Centauri B b I', 3200, 25.63, false, 12);
INSERT INTO public.moon VALUES (16, 'Sirius b I', 1500, 15.40, false, 13);
INSERT INTO public.moon VALUES (17, 'Vega b I', 2400, 10.23, false, 14);
INSERT INTO public.moon VALUES (18, 'Betelgeuse b I', 3800, 45.67, false, 15);
INSERT INTO public.moon VALUES (19, 'Polaris b I', 2600, 22.51, false, 16);
INSERT INTO public.moon VALUES (20, 'Arcturus b I', 2300, 20.09, false, 17);
INSERT INTO public.moon VALUES (21, 'Antares b I', 3000, 27.80, false, 18);
INSERT INTO public.moon VALUES (22, 'Rigel b I', 3200, 29.89, false, 19);
INSERT INTO public.moon VALUES (23, 'Aldebaran b I', 2700, 24.10, false, 20);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Mercury', 2440, 0.330, false, 1);
INSERT INTO public.planet VALUES (2, 'Venus', 6052, 4.87, false, 1);
INSERT INTO public.planet VALUES (3, 'Earth', 6371, 5.97, true, 1);
INSERT INTO public.planet VALUES (4, 'Mars', 3390, 0.642, true, 1);
INSERT INTO public.planet VALUES (5, 'Jupiter', 69911, 1898, true, 1);
INSERT INTO public.planet VALUES (6, 'Saturn', 58232, 568, true, 1);
INSERT INTO public.planet VALUES (7, 'Uranus', 25362, 86.8, true, 1);
INSERT INTO public.planet VALUES (8, 'Neptune', 24622, 102, true, 1);
INSERT INTO public.planet VALUES (9, 'Pluto', 1188, 0.0146, false, 1);
INSERT INTO public.planet VALUES (10, 'Proxima Centauri b', 6350, 1.17, false, 5);
INSERT INTO public.planet VALUES (11, 'Alpha Centauri A b', 10800, 1.42, false, 2);
INSERT INTO public.planet VALUES (12, 'Alpha Centauri B b', 8350, 1.13, false, 3);
INSERT INTO public.planet VALUES (13, 'Sirius b', 5100, 1.03, false, 4);
INSERT INTO public.planet VALUES (14, 'Vega b', 7500, 2.20, false, 7);
INSERT INTO public.planet VALUES (15, 'Betelgeuse b', 9500, 2.65, false, 6);
INSERT INTO public.planet VALUES (16, 'Polaris b', 7800, 2.08, false, 8);
INSERT INTO public.planet VALUES (17, 'Arcturus b', 7200, 1.93, false, 9);
INSERT INTO public.planet VALUES (18, 'Antares b', 8600, 2.39, false, 10);
INSERT INTO public.planet VALUES (19, 'Rigel b', 9200, 2.81, false, 11);
INSERT INTO public.planet VALUES (20, 'Aldebaran b', 8000, 2.20, false, 12);
INSERT INTO public.planet VALUES (21, 'Capella b', 9500, 2.59, false, 13);
INSERT INTO public.planet VALUES (22, 'Altair b', 8800, 2.34, false, 14);
INSERT INTO public.planet VALUES (23, 'Deneb b', 10300, 3.01, false, 15);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sun', 5000, 5778, true, 1);
INSERT INTO public.star VALUES (2, 'Alpha Centauri A', 6000, 5790, true, 1);
INSERT INTO public.star VALUES (3, 'Alpha Centauri B', 6000, 5260, true, 1);
INSERT INTO public.star VALUES (4, 'Sirius', 20000, 9940, true, 1);
INSERT INTO public.star VALUES (5, 'Proxima Centauri', 10000, 3042, false, 1);
INSERT INTO public.star VALUES (6, 'Betelgeuse', 8000, 3590, false, 2);
INSERT INTO public.star VALUES (7, 'Vega', 10000, 9602, true, 2);
INSERT INTO public.star VALUES (8, 'Polaris', 15000, 5972, true, 2);
INSERT INTO public.star VALUES (9, 'Arcturus', 12000, 4286, false, 2);
INSERT INTO public.star VALUES (10, 'Antares', 10000, 3500, false, 2);
INSERT INTO public.star VALUES (11, 'Rigel', 7000, 12100, false, 3);
INSERT INTO public.star VALUES (12, 'Aldebaran', 10000, 3910, true, 3);
INSERT INTO public.star VALUES (13, 'Capella', 8000, 4940, true, 3);
INSERT INTO public.star VALUES (14, 'Altair', 9000, 7550, true, 3);
INSERT INTO public.star VALUES (15, 'Deneb', 15000, 8520, false, 3);


--
-- Name: asteroid_asteroid_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.asteroid_asteroid_id_seq', 23, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 23, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 23, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 15, true);


--
-- Name: asteroid asteroid_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.asteroid
    ADD CONSTRAINT asteroid_name_key UNIQUE (name);


--
-- Name: asteroid asteroid_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.asteroid
    ADD CONSTRAINT asteroid_pkey PRIMARY KEY (asteroid_id);


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

