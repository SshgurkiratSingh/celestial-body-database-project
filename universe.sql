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
    name character varying(64) NOT NULL,
    decription text,
    shape character varying(128),
    distance_from_earth_lightyear integer
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
    name character varying(64) NOT NULL,
    decription text,
    is_spherical boolean,
    planet_id integer,
    time_taken_to_complete integer
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
    name character varying(64) NOT NULL,
    decription text,
    has_life boolean,
    star_id integer,
    "position" numeric
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
    name character varying(64) NOT NULL,
    decription text,
    is_alive boolean,
    galaxy_id integer,
    no_of_planet numeric
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
-- Name: un_f; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.un_f (
    un_f_id integer NOT NULL,
    galaxy_id integer,
    star_id integer,
    planet_id integer,
    moon_id integer,
    des text NOT NULL,
    name character varying(64)
);


ALTER TABLE public.un_f OWNER TO freecodecamp;

--
-- Name: un_f_un_f_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.un_f_un_f_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.un_f_un_f_id_seq OWNER TO freecodecamp;

--
-- Name: un_f_un_f_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.un_f_un_f_id_seq OWNED BY public.un_f.un_f_id;


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
-- Name: un_f un_f_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.un_f ALTER COLUMN un_f_id SET DEFAULT nextval('public.un_f_un_f_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Andromeda', 'nearest galaxy to milky way', 'barred spiral', 2500000);
INSERT INTO public.galaxy VALUES (2, 'Milky_Way', 'our galaxy', 'barred spiral', 0);
INSERT INTO public.galaxy VALUES (3, 'Tadpole Galaxy', 'Constellation of this galaxy is Draco', 'barred spiral', 420000000);
INSERT INTO public.galaxy VALUES (4, 'Pinwheel Galaxy', 'located in constellation ursa major', 'barred spiral', 21000000);
INSERT INTO public.galaxy VALUES (5, 'Cigar', 'located in ursa major', 'spiral', 12000000);
INSERT INTO public.galaxy VALUES (6, 'Cartwheel Galaxy', 'Constellation of this galaxy is Sculptor', 'barred spiral', 500000000);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'moon', NULL, NULL, 3, NULL);
INSERT INTO public.moon VALUES (2, 'Titan', NULL, NULL, 6, NULL);
INSERT INTO public.moon VALUES (3, 'Enceladus', NULL, NULL, 6, NULL);
INSERT INTO public.moon VALUES (4, 'Mimas', NULL, NULL, 6, NULL);
INSERT INTO public.moon VALUES (5, 'Phobos', NULL, NULL, 4, NULL);
INSERT INTO public.moon VALUES (6, 'Dione', NULL, NULL, 6, NULL);
INSERT INTO public.moon VALUES (7, 'Tethys', NULL, NULL, 6, NULL);
INSERT INTO public.moon VALUES (8, 'lapetus', NULL, NULL, 6, NULL);
INSERT INTO public.moon VALUES (9, 'Diemus', NULL, NULL, 4, NULL);
INSERT INTO public.moon VALUES (10, 'Rhea', NULL, NULL, 6, NULL);
INSERT INTO public.moon VALUES (11, 'Epimetheus', NULL, NULL, 6, NULL);
INSERT INTO public.moon VALUES (12, 'Hyperion', NULL, NULL, 6, NULL);
INSERT INTO public.moon VALUES (13, 'Europa', NULL, NULL, 5, NULL);
INSERT INTO public.moon VALUES (14, 'lo', NULL, NULL, 5, NULL);
INSERT INTO public.moon VALUES (15, 'Callisto', NULL, NULL, 5, NULL);
INSERT INTO public.moon VALUES (16, 'Phebe', NULL, NULL, 6, NULL);
INSERT INTO public.moon VALUES (17, 'Narvi', NULL, NULL, 6, NULL);
INSERT INTO public.moon VALUES (18, 'Thebe', NULL, NULL, 5, NULL);
INSERT INTO public.moon VALUES (19, 'Elara', NULL, NULL, 5, NULL);
INSERT INTO public.moon VALUES (20, 'Dia', NULL, NULL, 5, NULL);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Mercury', 'smallest planet in our solar system', false, 1, 1);
INSERT INTO public.planet VALUES (2, 'Venus', 'it is hottest planet in our solar system', false, 1, 1);
INSERT INTO public.planet VALUES (3, 'Earth', 'only planet with life and water', true, 1, 3);
INSERT INTO public.planet VALUES (4, 'Mars', 'it is dusty ,cold,desert world with a thin', false, 1, 4);
INSERT INTO public.planet VALUES (5, 'Jupiter', 'twice as big as other', false, 1, 5);
INSERT INTO public.planet VALUES (6, 'Saturn', 'Have specatular rirings around it', false, 1, 6);
INSERT INTO public.planet VALUES (7, 'Uranus', 'Rotate at 90 degree angle', false, 1, 7);
INSERT INTO public.planet VALUES (8, 'Neptune', 'Is a Draft planet', false, 1, 8);
INSERT INTO public.planet VALUES (9, 'HD 37605', 'have ring of comet', false, 2, 1);
INSERT INTO public.planet VALUES (10, 'HD 38529', 'have ring of comet', false, 2, 1);
INSERT INTO public.planet VALUES (11, 'HD 181433', 'have ring of comet', false, 3, 1);
INSERT INTO public.planet VALUES (12, 'HD 172555', 'have ring of comet', false, 3, 2);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'sun', 'it conatain our planet earth', true, 2, 8);
INSERT INTO public.star VALUES (2, 'orion', 'ancient greek name', true, 2, NULL);
INSERT INTO public.star VALUES (3, 'Pavo', 'Pavo mean small', true, 2, NULL);
INSERT INTO public.star VALUES (4, 'Phoenic', 'ancient greek word for dark red', true, 1, NULL);
INSERT INTO public.star VALUES (5, 'Scorpius', 'is the constellation that Scorpio zordiac sign orinitate', true, 1, NULL);
INSERT INTO public.star VALUES (6, 'Sirius', 'mean burning brightly', true, 2, NULL);


--
-- Data for Name: un_f; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.un_f VALUES (1, NULL, NULL, 8, NULL, 'is dwarf planet', NULL);
INSERT INTO public.un_f VALUES (2, NULL, NULL, 5, NULL, 'is gas planet', NULL);
INSERT INTO public.un_f VALUES (4, NULL, NULL, 6, NULL, 'is also gas planet', NULL);


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
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: un_f_un_f_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.un_f_un_f_id_seq', 4, true);


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
-- Name: un_f un_f_des_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.un_f
    ADD CONSTRAINT un_f_des_key UNIQUE (des);


--
-- Name: un_f un_f_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.un_f
    ADD CONSTRAINT un_f_pkey PRIMARY KEY (un_f_id);


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
-- Name: star star_galaxy_id_fkey1; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey1 FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

