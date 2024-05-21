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
    name character varying(20) NOT NULL,
    has_life boolean,
    is_spherical boolean,
    age_in_million_years numeric,
    galaxy_types text,
    distance integer,
    mass integer
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
    name character varying(20) NOT NULL,
    planet_id integer NOT NULL,
    has_life boolean,
    is_spherical boolean,
    age_in_million_years numeric,
    moon_types text,
    distance integer,
    mass integer
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
-- Name: other_object; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.other_object (
    other_object_id integer NOT NULL,
    name character varying(20) NOT NULL,
    description text
);


ALTER TABLE public.other_object OWNER TO freecodecamp;

--
-- Name: other_object_object_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.other_object_object_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.other_object_object_id_seq OWNER TO freecodecamp;

--
-- Name: other_object_object_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.other_object_object_id_seq OWNED BY public.other_object.other_object_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(20) NOT NULL,
    star_id integer NOT NULL,
    has_life boolean,
    is_spherical boolean,
    age_in_million_years numeric,
    distance integer,
    mass integer,
    planet_types text
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
    name character varying(20) NOT NULL,
    galaxy_id integer NOT NULL,
    has_life boolean,
    is_spherical boolean,
    age_in_million_years numeric,
    distance integer,
    mass integer,
    star_types text
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
-- Name: other_object other_object_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.other_object ALTER COLUMN other_object_id SET DEFAULT nextval('public.other_object_object_id_seq'::regclass);


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

INSERT INTO public.galaxy VALUES (1, 'Milky Way', true, false, 35, 'spiral', 100, 500);
INSERT INTO public.galaxy VALUES (2, 'Andromeda', false, true, 44, 'irregular', 200, 600);
INSERT INTO public.galaxy VALUES (3, 'Maximus', false, true, 47, 'elliptical', 300, 700);
INSERT INTO public.galaxy VALUES (4, 'Nostradamus', true, true, 60, 'elliptical', 400, 800);
INSERT INTO public.galaxy VALUES (5, 'Trismegistus', true, false, 70, 'irregular', 500, 900);
INSERT INTO public.galaxy VALUES (6, 'Pythagoras', true, false, 80, 'spiral', 600, 300);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Moon1', 1, true, false, 35, 'Small', 100, 200);
INSERT INTO public.moon VALUES (2, 'Moon2', 2, true, false, 35, 'Small', 100, 200);
INSERT INTO public.moon VALUES (3, 'Moon3', 3, true, false, 35, 'Small', 100, 200);
INSERT INTO public.moon VALUES (4, 'Moon4', 4, true, false, 35, 'Small', 100, 200);
INSERT INTO public.moon VALUES (5, 'Moon5', 5, true, false, 35, 'Small', 100, 200);
INSERT INTO public.moon VALUES (6, 'Moon6', 6, true, false, 35, 'Small', 100, 200);
INSERT INTO public.moon VALUES (7, 'Moon7', 7, true, false, 35, 'Small', 100, 200);
INSERT INTO public.moon VALUES (8, 'Moon8', 8, true, false, 35, 'Small', 100, 200);
INSERT INTO public.moon VALUES (9, 'Moon9', 9, true, false, 35, 'Small', 100, 200);
INSERT INTO public.moon VALUES (10, 'Moon10', 10, true, false, 35, 'Small', 100, 200);
INSERT INTO public.moon VALUES (11, 'Moon11', 11, true, false, 35, 'Small', 100, 200);
INSERT INTO public.moon VALUES (12, 'Moon12', 12, true, false, 35, 'Small', 100, 200);
INSERT INTO public.moon VALUES (13, 'Moon13', 1, true, false, 35, 'Small', 100, 200);
INSERT INTO public.moon VALUES (14, 'Moon14', 2, true, false, 35, 'Small', 100, 200);
INSERT INTO public.moon VALUES (15, 'Moon15', 3, true, false, 35, 'Small', 100, 200);
INSERT INTO public.moon VALUES (16, 'Moon16', 4, true, false, 35, 'Small', 100, 200);
INSERT INTO public.moon VALUES (17, 'Moon17', 5, true, false, 35, 'Small', 100, 200);
INSERT INTO public.moon VALUES (18, 'Moon18', 6, true, false, 35, 'Small', 100, 200);
INSERT INTO public.moon VALUES (19, 'Moon19', 7, true, false, 35, 'Small', 100, 200);
INSERT INTO public.moon VALUES (20, 'Moon20', 8, true, false, 35, 'Small', 100, 200);


--
-- Data for Name: other_object; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.other_object VALUES (1, 'Asteroid', 'A Space Stone');
INSERT INTO public.other_object VALUES (2, 'Satellite', 'A Space Satellite');
INSERT INTO public.other_object VALUES (3, 'Debris', 'A Space Debris');


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Mercury', 1, true, false, 35, 100, 200, 'Small');
INSERT INTO public.planet VALUES (2, 'Venus', 2, true, false, 35, 100, 200, 'Medium');
INSERT INTO public.planet VALUES (3, 'Earth', 3, true, false, 35, 100, 200, 'Medium');
INSERT INTO public.planet VALUES (4, 'Mars', 4, true, false, 35, 100, 200, 'Medium');
INSERT INTO public.planet VALUES (5, 'Ceres', 5, true, false, 35, 100, 200, 'Small');
INSERT INTO public.planet VALUES (6, 'Jupiter', 6, true, false, 35, 100, 200, 'Large');
INSERT INTO public.planet VALUES (7, 'Saturn', 1, true, false, 35, 100, 200, 'Large');
INSERT INTO public.planet VALUES (8, 'Uranus', 2, true, false, 35, 100, 200, 'Large');
INSERT INTO public.planet VALUES (9, 'Neptune', 3, true, false, 35, 100, 200, 'Large');
INSERT INTO public.planet VALUES (10, 'Pluto', 4, true, false, 35, 100, 200, 'Small');
INSERT INTO public.planet VALUES (11, 'Charon', 5, true, false, 35, 100, 200, 'Small');
INSERT INTO public.planet VALUES (12, '2003 UB313', 6, true, false, 35, 100, 200, 'Medium');


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Lynx', 1, true, false, 35, 100, 200, 'Black Hole');
INSERT INTO public.star VALUES (2, 'Eridanus', 2, true, false, 60, 200, 300, 'Kejora');
INSERT INTO public.star VALUES (3, 'Scorpio', 3, true, false, 60, 200, 300, 'Iron');
INSERT INTO public.star VALUES (4, 'Cassiopeia', 4, true, false, 60, 200, 300, 'Twinkle');
INSERT INTO public.star VALUES (5, 'Ariadne', 5, true, false, 65, 300, 400, 'Anomaly');
INSERT INTO public.star VALUES (6, 'Hercules', 6, true, false, 70, 400, 500, 'Anomaly');


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 1, false);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 1, false);


--
-- Name: other_object_object_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.other_object_object_id_seq', 1, false);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 1, false);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 1, false);


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
-- Name: moon moon_name_key1; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_name_key1 UNIQUE (name);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: other_object other_object_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.other_object
    ADD CONSTRAINT other_object_name_key UNIQUE (name);


--
-- Name: other_object other_object_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.other_object
    ADD CONSTRAINT other_object_pkey PRIMARY KEY (other_object_id);


--
-- Name: planet planet_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_name_key UNIQUE (name);


--
-- Name: planet planet_name_key1; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_name_key1 UNIQUE (name);


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
-- Name: star star_name_key1; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_name_key1 UNIQUE (name);


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

