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
-- Name: earth; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.earth (
    name character varying(40),
    earth_id integer NOT NULL,
    continents character varying(30) NOT NULL
);


ALTER TABLE public.earth OWNER TO freecodecamp;

--
-- Name: earth_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.earth_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.earth_id_seq OWNER TO freecodecamp;

--
-- Name: earth_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.earth_id_seq OWNED BY public.earth.earth_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    name character varying(40) NOT NULL,
    galaxy_id integer NOT NULL,
    age integer,
    has_planet boolean,
    diameter integer NOT NULL
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
    name character varying(40) NOT NULL,
    moon_id integer NOT NULL,
    weight integer NOT NULL,
    height integer,
    diameter integer,
    has_life boolean,
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
    name character varying(40),
    planet_id integer NOT NULL,
    age integer NOT NULL,
    distance_from_earth numeric,
    has_moon boolean,
    has_life text,
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
    name character varying(40) NOT NULL,
    star_id integer NOT NULL,
    weight integer NOT NULL,
    height integer,
    diameter integer,
    has_life boolean,
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
-- Name: earth earth_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.earth ALTER COLUMN earth_id SET DEFAULT nextval('public.earth_id_seq'::regclass);


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
-- Data for Name: earth; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.earth VALUES (NULL, 1, 'Africa');
INSERT INTO public.earth VALUES (NULL, 2, 'Asia');
INSERT INTO public.earth VALUES (NULL, 3, 'North America');


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES ('The Milky Way', 1, NULL, NULL, 1);
INSERT INTO public.galaxy VALUES ('Black Eye', 2, NULL, NULL, 1);
INSERT INTO public.galaxy VALUES ('Cigar', 3, NULL, NULL, 1);
INSERT INTO public.galaxy VALUES ('Cosmos', 4, NULL, NULL, 1);
INSERT INTO public.galaxy VALUES ('Andromeda', 5, NULL, NULL, 1);
INSERT INTO public.galaxy VALUES ('Bodes', 6, NULL, NULL, 1);
INSERT INTO public.galaxy VALUES ('hej', 7, NULL, NULL, 1);
INSERT INTO public.galaxy VALUES ('hej', 8, NULL, NULL, 2);
INSERT INTO public.galaxy VALUES ('hej', 9, NULL, NULL, 3);
INSERT INTO public.galaxy VALUES ('hej', 10, NULL, NULL, 4);
INSERT INTO public.galaxy VALUES ('hej', 11, NULL, NULL, 5);
INSERT INTO public.galaxy VALUES ('hej', 12, NULL, NULL, 6);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES ('q', 1, 1, NULL, NULL, NULL, 1);
INSERT INTO public.moon VALUES ('w', 2, 1, NULL, NULL, NULL, 2);
INSERT INTO public.moon VALUES ('e', 3, 1, NULL, NULL, NULL, 3);
INSERT INTO public.moon VALUES ('r', 4, 1, NULL, NULL, NULL, 4);
INSERT INTO public.moon VALUES ('t', 5, 1, NULL, NULL, NULL, 5);
INSERT INTO public.moon VALUES ('y', 6, 1, NULL, NULL, NULL, 6);
INSERT INTO public.moon VALUES ('u', 7, 1, NULL, NULL, NULL, 7);
INSERT INTO public.moon VALUES ('i', 8, 1, NULL, NULL, NULL, 8);
INSERT INTO public.moon VALUES ('o', 9, 1, NULL, NULL, NULL, 9);
INSERT INTO public.moon VALUES ('p', 10, 1, NULL, NULL, NULL, 10);
INSERT INTO public.moon VALUES ('a', 11, 1, NULL, NULL, NULL, 11);
INSERT INTO public.moon VALUES ('s', 12, 1, NULL, NULL, NULL, 12);
INSERT INTO public.moon VALUES ('d', 13, 1, NULL, NULL, NULL, 12);
INSERT INTO public.moon VALUES ('f', 14, 1, NULL, NULL, NULL, 12);
INSERT INTO public.moon VALUES ('g', 15, 1, NULL, NULL, NULL, 12);
INSERT INTO public.moon VALUES ('j', 17, 1, NULL, NULL, NULL, 12);
INSERT INTO public.moon VALUES ('h', 16, 1, NULL, NULL, NULL, 12);
INSERT INTO public.moon VALUES ('j', 18, 1, NULL, NULL, NULL, 12);
INSERT INTO public.moon VALUES ('k', 19, 1, NULL, NULL, NULL, 12);
INSERT INTO public.moon VALUES ('l', 20, 1, NULL, NULL, NULL, 12);
INSERT INTO public.moon VALUES ('x', 22, 1, NULL, NULL, NULL, 12);
INSERT INTO public.moon VALUES ('z', 21, 1, NULL, NULL, NULL, 12);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES ('Mercury', 1, 1, NULL, NULL, NULL, 1);
INSERT INTO public.planet VALUES ('Venus', 2, 1, NULL, NULL, NULL, 2);
INSERT INTO public.planet VALUES ('Earth', 3, 1, NULL, NULL, NULL, 3);
INSERT INTO public.planet VALUES ('Mars', 4, 1, NULL, NULL, NULL, 4);
INSERT INTO public.planet VALUES ('Jupiter', 5, 1, NULL, NULL, NULL, 5);
INSERT INTO public.planet VALUES ('Saturn', 6, 1, NULL, NULL, NULL, 6);
INSERT INTO public.planet VALUES ('Uranus', 7, 1, NULL, NULL, NULL, 7);
INSERT INTO public.planet VALUES ('Neptune', 8, 1, NULL, NULL, NULL, 8);
INSERT INTO public.planet VALUES ('Pluto', 9, 1, NULL, NULL, NULL, 9);
INSERT INTO public.planet VALUES ('Ceres', 10, 1, NULL, NULL, NULL, 10);
INSERT INTO public.planet VALUES ('Eris', 11, 1, NULL, NULL, NULL, 11);
INSERT INTO public.planet VALUES ('Jogge', 12, 1, NULL, NULL, NULL, 12);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES ('Altair', 1, 1, NULL, NULL, NULL, 1);
INSERT INTO public.star VALUES ('Sun', 2, 1, NULL, NULL, NULL, 2);
INSERT INTO public.star VALUES ('Rigel', 3, 1, NULL, NULL, NULL, 3);
INSERT INTO public.star VALUES ('Vega', 4, 1, NULL, NULL, NULL, 4);
INSERT INTO public.star VALUES ('hej', 5, 1, NULL, NULL, NULL, 5);
INSERT INTO public.star VALUES ('Hej då', 6, 1, NULL, NULL, NULL, 6);
INSERT INTO public.star VALUES ('a', 7, 1, NULL, NULL, NULL, 7);
INSERT INTO public.star VALUES ('b', 8, 1, NULL, NULL, NULL, 8);
INSERT INTO public.star VALUES ('c', 9, 1, NULL, NULL, NULL, 9);
INSERT INTO public.star VALUES ('d', 10, 1, NULL, NULL, NULL, 10);
INSERT INTO public.star VALUES ('e', 11, 1, NULL, NULL, NULL, 11);
INSERT INTO public.star VALUES ('f', 12, 1, NULL, NULL, NULL, 12);


--
-- Name: earth_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.earth_id_seq', 3, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 12, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 22, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: earth earth_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.earth
    ADD CONSTRAINT earth_pkey PRIMARY KEY (earth_id);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


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
-- Name: galaxy unique_age; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT unique_age UNIQUE (age);


--
-- Name: earth unique_contintent; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.earth
    ADD CONSTRAINT unique_contintent UNIQUE (continents);


--
-- Name: moon unique_height; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT unique_height UNIQUE (height);


--
-- Name: planet unique_moon; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT unique_moon UNIQUE (has_moon);


--
-- Name: star unique_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT unique_name UNIQUE (name);


--
-- Name: star fk_galaxy; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT fk_galaxy FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- Name: moon fk_planet; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT fk_planet FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet fk_star; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT fk_star FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- PostgreSQL database dump complete
--

