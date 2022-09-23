--
-- PostgreSQL database dump
--

-- Dumped from database version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)
-- Dumped by pg_dump version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)

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
    galaxy_type character varying(20),
    age_in_millions_of_years integer NOT NULL,
    galaxy_description text,
    name character varying(30) NOT NULL
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
-- Name: guardian_of_the_galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.guardian_of_the_galaxy (
    name character varying(30) NOT NULL,
    guardian_of_the_galaxy_id integer NOT NULL,
    protecting character varying(30)
);


ALTER TABLE public.guardian_of_the_galaxy OWNER TO freecodecamp;

--
-- Name: guadian_of_the_galaxy_guadian_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.guadian_of_the_galaxy_guadian_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.guadian_of_the_galaxy_guadian_id_seq OWNER TO freecodecamp;

--
-- Name: guadian_of_the_galaxy_guadian_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.guadian_of_the_galaxy_guadian_id_seq OWNED BY public.guardian_of_the_galaxy.guardian_of_the_galaxy_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    planet_id integer NOT NULL,
    is_spherical boolean NOT NULL,
    distance_from_earth integer NOT NULL,
    name character varying(30) NOT NULL
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
    star_id integer NOT NULL,
    planet_type character varying(20),
    has_life boolean NOT NULL,
    name character varying(30) NOT NULL
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
    name character varying(30) NOT NULL,
    star_id integer NOT NULL,
    galaxy_id integer NOT NULL,
    star_type character varying(20) NOT NULL,
    star_description text,
    star_age_in_millions_of_years numeric
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
-- Name: guardian_of_the_galaxy guardian_of_the_galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.guardian_of_the_galaxy ALTER COLUMN guardian_of_the_galaxy_id SET DEFAULT nextval('public.guadian_of_the_galaxy_guadian_id_seq'::regclass);


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
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Spiral Galaxies', 13000, 'Andromeda, which is shortened from "Andromeda Galaxy", gets its name from the area of the sky in which it appears, the constellation of Andromeda.', 'Andromeda Galaxy');
INSERT INTO public.galaxy VALUES (2, 'Elliptical Galaxies', 15000, 'Appears similar in shape to a cigar.', 'Cigar Galaxy');
INSERT INTO public.galaxy VALUES (3, ' Irregular Galaxies ', 18000, ' It appears to rotate backwards,
        as the tips of the spiral arms point in the direction of rotation.', 'Backward Galaxy');
INSERT INTO public.galaxy VALUES (4, 'Elliptical galaxies', 19000, 'The appearance from Earth of the galaxy—a band of light', 'Milky Way');
INSERT INTO public.galaxy VALUES (5, 'S0 galaxies', 12000, 'Named due to its slender appearance.', 'Needle Galaxy');
INSERT INTO public.galaxy VALUES (6, ' Irregular Galaxies ', 15500, 'Similar in appearance to a sombrero.', 'Sombrero Galaxy');


--
-- Data for Name: guardian_of_the_galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.guardian_of_the_galaxy VALUES ('Ironman', 1, 'Earth');
INSERT INTO public.guardian_of_the_galaxy VALUES ('Thor', 2, 'Asgard');
INSERT INTO public.guardian_of_the_galaxy VALUES ('Star Lord', 3, 'Ego');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 1, true, 1221, 'Moon');
INSERT INTO public.moon VALUES (2, 2, false, 1672, 'Io');
INSERT INTO public.moon VALUES (3, 3, true, 6221, 'Europa');
INSERT INTO public.moon VALUES (4, 4, false, 5221, 'Callisto');
INSERT INTO public.moon VALUES (5, 7, false, 3351, 'Himalia');
INSERT INTO public.moon VALUES (6, 4, true, 1251, 'Elara');
INSERT INTO public.moon VALUES (7, 8, true, 4211, 'Pasiphae');
INSERT INTO public.moon VALUES (8, 12, true, 9521, 'Sinope');
INSERT INTO public.moon VALUES (9, 11, false, 3221, 'Metis');
INSERT INTO public.moon VALUES (10, 10, true, 8621, 'Themisto');
INSERT INTO public.moon VALUES (11, 11, true, 1257, 'Chaldene');
INSERT INTO public.moon VALUES (12, 12, true, 1296, 'Harpalyke');
INSERT INTO public.moon VALUES (13, 6, false, 1521, 'Iocaste');
INSERT INTO public.moon VALUES (14, 4, true, 5473, 'Autonoe');
INSERT INTO public.moon VALUES (15, 5, false, 2156, 'Aitne');
INSERT INTO public.moon VALUES (16, 3, true, 1456, 'Euporie');
INSERT INTO public.moon VALUES (17, 9, false, 8941, 'Hermippe');
INSERT INTO public.moon VALUES (18, 8, true, 5416, 'Euanthe');
INSERT INTO public.moon VALUES (19, 9, false, 8752, 'Sponde');
INSERT INTO public.moon VALUES (20, 2, true, 2156, 'Hegemone');


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 1, 'Terrestrial planet', false, 'Mercury');
INSERT INTO public.planet VALUES (2, 4, 'Terrestrial planet', false, 'Venus');
INSERT INTO public.planet VALUES (3, 2, 'Terrestrial planet', true, 'Earth');
INSERT INTO public.planet VALUES (4, 2, 'Terrestrial planet', true, 'Mars[');
INSERT INTO public.planet VALUES (5, 1, 'Gas giant', false, 'Jupiter');
INSERT INTO public.planet VALUES (6, 3, 'Gas giant', false, 'Saturn');
INSERT INTO public.planet VALUES (7, 6, 'Ice giant', false, 'Uranus');
INSERT INTO public.planet VALUES (8, 5, 'Ice giant', false, 'Neptune');
INSERT INTO public.planet VALUES (9, 6, 'Asteroid belt', false, 'Ceres');
INSERT INTO public.planet VALUES (10, 3, 'Kuiper belt', false, 'Pluto');
INSERT INTO public.planet VALUES (11, 5, 'Kuiper belt', false, 'Haumea');
INSERT INTO public.planet VALUES (12, 4, 'Scattered disc', false, 'Eris');
INSERT INTO public.planet VALUES (13, 5, 'Sednoid', false, 'Sedna');


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES ('Cancer', 1, 1, 'Acubens', 'The name was originally Arabic: the claws', 5000);
INSERT INTO public.star VALUES ('Leo', 2, 2, ' Adhafera', 'The name was originally Arabic: the braid', 4000);
INSERT INTO public.star VALUES ('Taurus', 3, 3, ' Ain', 'The name was originally Arabic: the eye', 7000);
INSERT INTO public.star VALUES ('Lyra', 4, 4, 'Aladfar', 'The name was originally Arabic: the swooping eagle', 5200);
INSERT INTO public.star VALUES ('Corvus', 5, 5, 'Alchiba', 'The name was originally Arabic: beak of the crow', 4100);
INSERT INTO public.star VALUES ('Draco', 6, 6, 'Aldhibah', 'The name was originally Arabic: the hyenas', 7300);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: guadian_of_the_galaxy_guadian_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.guadian_of_the_galaxy_guadian_id_seq', 3, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 20, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 13, true);


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
-- Name: guardian_of_the_galaxy guadian_of_the_galaxy_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.guardian_of_the_galaxy
    ADD CONSTRAINT guadian_of_the_galaxy_name_key UNIQUE (name);


--
-- Name: guardian_of_the_galaxy guadian_of_the_galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.guardian_of_the_galaxy
    ADD CONSTRAINT guadian_of_the_galaxy_pkey PRIMARY KEY (guardian_of_the_galaxy_id);


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
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: star star_star_age_in_millions_of_years_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_star_age_in_millions_of_years_key UNIQUE (star_age_in_millions_of_years);


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

