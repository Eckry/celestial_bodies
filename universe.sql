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
-- Name: black_hole; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.black_hole (
    black_hole_id integer NOT NULL,
    galaxy_id integer,
    mass integer NOT NULL,
    name character varying(30) NOT NULL
);


ALTER TABLE public.black_hole OWNER TO freecodecamp;

--
-- Name: black_hole_black_hole_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.black_hole_black_hole_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.black_hole_black_hole_id_seq OWNER TO freecodecamp;

--
-- Name: black_hole_black_hole_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.black_hole_black_hole_id_seq OWNED BY public.black_hole.black_hole_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(30) NOT NULL,
    curious_fact text,
    earth_distance numeric(15,5),
    ellipsoidal boolean
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
    planet_id integer NOT NULL,
    name character varying(30) NOT NULL,
    curious_fact text,
    earth_distance numeric(15,5)
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
    name character varying(30) NOT NULL,
    curious_fact text,
    earth_distance numeric(15,5),
    has_life boolean,
    number_of_moons integer
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
    galaxy_id integer NOT NULL,
    name character varying(30) NOT NULL,
    curious_fact text,
    earth_distance numeric(15,5)
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
-- Name: black_hole black_hole_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.black_hole ALTER COLUMN black_hole_id SET DEFAULT nextval('public.black_hole_black_hole_id_seq'::regclass);


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
-- Data for Name: black_hole; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.black_hole VALUES (1, 1, 4, 'Sagittarios A*');
INSERT INTO public.black_hole VALUES (2, 2, 66, 'TON-618');
INSERT INTO public.black_hole VALUES (3, 2, 44, 'Holmberg 15A');


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', 'It has a radius of 52850 light years', NULL, true);
INSERT INTO public.galaxy VALUES (2, 'Canis Major Dwarf', NULL, 25000.00000, true);
INSERT INTO public.galaxy VALUES (3, 'Andromeda', 'It will collide with Milky Way in 4.5 billion years', 2.53700, true);
INSERT INTO public.galaxy VALUES (4, 'Virgo A.', 'It is the most luminous galaxy in the northern area of the Virgo Cluster', 53.49000, true);
INSERT INTO public.galaxy VALUES (5, 'Cygnus A.', 'It is the protagonist of Contact, the famous movie by Carl Sagan', 600.00000, true);
INSERT INTO public.galaxy VALUES (6, 'Large Magellanic Cloud', 'It is the third galaxy closest to Milky Way', 158.20000, true);
INSERT INTO public.galaxy VALUES (7, 'Holmberg 15A', 'It has the second biggest known black hole', 700.00000, true);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 1, 'The Moon', 'It is our moon lol', NULL);
INSERT INTO public.moon VALUES (2, 5, 'Titan', 'It is the biggest satelite around Saturn', 0.00004);
INSERT INTO public.moon VALUES (3, 5, 'Enceladus', 'It has a orbital period of 33 hours', 0.00004);
INSERT INTO public.moon VALUES (4, 5, 'Mimas', 'It was discovered in 1789 by William Herschel', 0.00004);
INSERT INTO public.moon VALUES (5, 5, 'Dione', 'It has a gravity of 0.232 m/s^2', 0.00004);
INSERT INTO public.moon VALUES (6, 5, 'Hyperion', 'It has a radius of 135 km', 0.00004);
INSERT INTO public.moon VALUES (7, 5, 'Japeto', NULL, 0.00004);
INSERT INTO public.moon VALUES (8, 5, 'Albiorix', 'It was discovered recently in 2000', 0.00004);
INSERT INTO public.moon VALUES (9, 5, 'Tetis', 'It has a orbital period of 1888 days', 0.00004);
INSERT INTO public.moon VALUES (10, 5, 'Methone', NULL, 0.00004);
INSERT INTO public.moon VALUES (11, 5, 'Aegaeon', 'Is the smallest known moon outside the rings of saturn', 0.00004);
INSERT INTO public.moon VALUES (12, 5, 'Epimeteo', 'It has a radius of 58.1 km', 0.00004);
INSERT INTO public.moon VALUES (14, 5, 'Jano', NULL, 0.00004);
INSERT INTO public.moon VALUES (13, 5, 'Rhea', 'Is the second largest moon of saturn', 0.00004);
INSERT INTO public.moon VALUES (15, 5, 'Kiviuq', 'It has that name due to inuit mithology', 0.00004);
INSERT INTO public.moon VALUES (16, 5, 'Ljiraq', NULL, 0.00004);
INSERT INTO public.moon VALUES (17, 5, 'Anthe', 'It''s name means flower', 0.00004);
INSERT INTO public.moon VALUES (18, 5, 'Aegir', NULL, 0.00004);
INSERT INTO public.moon VALUES (19, 5, 'Bestla', '', 0.00004);
INSERT INTO public.moon VALUES (20, 5, 'Ymir', NULL, 0.00004);
INSERT INTO public.moon VALUES (21, 5, 'Tarvos', NULL, 0.00004);
INSERT INTO public.moon VALUES (22, 5, 'Telesto', NULL, 0.00004);
INSERT INTO public.moon VALUES (23, 5, 'Hyrokkin', NULL, 0.00004);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (2, 1, 'Mercury', 'The days there are much less longer than in earth', 0.00001, false, NULL);
INSERT INTO public.planet VALUES (3, 1, 'Venus', 'It was discovered by Galileo Galilei in 1610', 0.00001, false, NULL);
INSERT INTO public.planet VALUES (4, 1, 'Mars', 'It is the second smallest planet in our solar system', 0.00003, false, NULL);
INSERT INTO public.planet VALUES (6, 1, 'Uranus', 'Uranus is the only planet whose equator is nearly at a right angle to its orbit', 0.00033, false, NULL);
INSERT INTO public.planet VALUES (7, 1, 'Neptune', 'It was the first discovered planet due to a mathematics predictions', 0.00048, false, NULL);
INSERT INTO public.planet VALUES (8, 7, '51 Pegasi b', 'It was discovered in 1995', 50.00000, false, NULL);
INSERT INTO public.planet VALUES (9, 8, 'Kepler-186f', 'It is the known planet most similar to earth', 492.50000, false, NULL);
INSERT INTO public.planet VALUES (10, 9, 'HD 209458 b', NULL, 159.50000, false, NULL);
INSERT INTO public.planet VALUES (11, 10, 'Kepler-16b', 'It has an orbital period of 229 days', 200.00000, false, NULL);
INSERT INTO public.planet VALUES (12, 11, 'CoRoT 7b', NULL, 489.00000, false, NULL);
INSERT INTO public.planet VALUES (1, 1, 'Earth', 'We live there lol', NULL, true, 1);
INSERT INTO public.planet VALUES (5, 1, 'Saturn', 'It is the only planet in our solar system with a ring around it', 0.00004, false, 82);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 1, 'The Sun', 'It will become a black dwarf', 0.00002);
INSERT INTO public.star VALUES (2, 1, 'Betelgeuse', 'It is the ninth brightest star in the sky', 642.50000);
INSERT INTO public.star VALUES (3, 3, 'Alpheratz', 'It is also known as Delta Pegasi', 96.87000);
INSERT INTO public.star VALUES (4, 4, 'Elgafar', 'It belongs to Virgo zodiac constellation', 118.00000);
INSERT INTO public.star VALUES (5, 2, 'Sirius', 'It is the brightest star in the night sky from earth', 8.61100);
INSERT INTO public.star VALUES (6, 5, 'Giennah', NULL, 72.70000);
INSERT INTO public.star VALUES (7, 1, 'Helvetios', 'It is located in the pegaso constellation', 50.91000);
INSERT INTO public.star VALUES (8, 1, 'Kepler-186', 'It was discovered by Kepler', 492.50000);
INSERT INTO public.star VALUES (9, 1, 'HD 209458', NULL, 159.50000);
INSERT INTO public.star VALUES (10, 1, 'Kepler-16', 'It is part of a entire solar system discovered by Kepler', 200.00000);
INSERT INTO public.star VALUES (11, 1, 'CoRoT 7', NULL, 489.00000);


--
-- Name: black_hole_black_hole_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.black_hole_black_hole_id_seq', 3, true);


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

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 11, true);


--
-- Name: black_hole black_hole_black_hole_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.black_hole
    ADD CONSTRAINT black_hole_black_hole_id_key UNIQUE (black_hole_id);


--
-- Name: black_hole black_hole_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.black_hole
    ADD CONSTRAINT black_hole_name_key UNIQUE (name);


--
-- Name: black_hole black_hole_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.black_hole
    ADD CONSTRAINT black_hole_pkey PRIMARY KEY (black_hole_id);


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
-- Name: black_hole black_hole_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.black_hole
    ADD CONSTRAINT black_hole_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- Name: moon moon_moon_planet_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_moon_planet_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet planet_planet_star_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_planet_star_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star star_star_galaxy_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_star_galaxy_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

