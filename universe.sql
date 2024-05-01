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
    name character varying(300) NOT NULL,
    age integer,
    size_in_kiloparsecs real,
    distance_from_earth_in_mpc real,
    type text
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
    name character varying(100) NOT NULL,
    planet_id integer NOT NULL,
    surface_description text,
    has_atmosphere boolean,
    radius_km real,
    gravity real
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_feature; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon_feature (
    moon_feature_id integer NOT NULL,
    name character varying(100) NOT NULL,
    description text,
    moon_id integer NOT NULL
);


ALTER TABLE public.moon_feature OWNER TO freecodecamp;

--
-- Name: moon_feature_feature_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_feature_feature_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_feature_feature_id_seq OWNER TO freecodecamp;

--
-- Name: moon_feature_feature_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_feature_feature_id_seq OWNED BY public.moon_feature.moon_feature_id;


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
    name character varying(100) NOT NULL,
    star_id integer NOT NULL,
    atmosphere text,
    has_life boolean
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
    name character varying(100) NOT NULL,
    galaxy_id integer NOT NULL,
    solar_luminosity integer,
    solar_mass numeric
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
-- Name: moon_feature moon_feature_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon_feature ALTER COLUMN moon_feature_id SET DEFAULT nextval('public.moon_feature_feature_id_seq'::regclass);


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

INSERT INTO public.galaxy VALUES (1, 'Milky Way', 13000, 100000, 30000, 'Spiral');
INSERT INTO public.galaxy VALUES (2, 'Andromeda', 13000, 110000, 25000, 'Spiral');
INSERT INTO public.galaxy VALUES (3, 'Triangulum', 11000, 50000, 3e+06, 'Spiral');
INSERT INTO public.galaxy VALUES (4, 'Messier 87', 13000, 500000, 5.5e+07, 'Elliptical');
INSERT INTO public.galaxy VALUES (5, 'Large Magellanic Cloud', 15000, 20000, 160000, 'Irregular');
INSERT INTO public.galaxy VALUES (6, 'IC 1101', 13000, 6e+06, 1.1e+08, 'Elliptical');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (21, 'Moon', 3, 'Rocky surface with impact craters and maria', false, 1737.1, 1.622);
INSERT INTO public.moon VALUES (22, 'Phobos', 4, 'Irregularly shaped with grooves and crater chains', false, 11.1, 0.0057);
INSERT INTO public.moon VALUES (23, 'Deimos', 4, 'Small and irregularly shaped with impact craters', false, 6.2, 0.003);
INSERT INTO public.moon VALUES (24, 'Ganymede', 5, 'Icy surface with grooves and impact craters', false, 2634.1, 1.428);
INSERT INTO public.moon VALUES (25, 'Europa', 5, 'Smooth icy surface with cracks and ridges', false, 1560.7, 1.314);
INSERT INTO public.moon VALUES (26, 'Io', 5, 'Volcanically active surface with sulfur plains and lava flows', false, 1821.6, 1.796);
INSERT INTO public.moon VALUES (27, 'Titan', 6, 'Thick atmosphere with lakes and rivers of liquid methane', true, 2575, 1.352);
INSERT INTO public.moon VALUES (28, 'Enceladus', 6, 'Icy surface with geysers of water vapor and organic compounds', false, 252.1, 0.113);
INSERT INTO public.moon VALUES (29, 'Miranda', 7, 'Chaotic terrain with cliffs and ridges', false, 235.8, 0.079);
INSERT INTO public.moon VALUES (30, 'Triton', 8, 'Icy surface with nitrogen geysers and cryovolcanoes', false, 1353.4, 0.779);
INSERT INTO public.moon VALUES (31, 'Charon', 9, 'Surface covered with water ice and dark tholins', false, 606, 0.278);
INSERT INTO public.moon VALUES (32, 'Dione', 10, 'Icy surface with impact craters and fractures', false, 1122.8, 0.232);
INSERT INTO public.moon VALUES (33, 'Mimas', 10, 'Heavily cratered surface with Herschel crater', false, 198.2, 0.064);
INSERT INTO public.moon VALUES (34, 'Rhea', 10, 'Ice-covered surface with bright ray craters', false, 1527, 0.264);
INSERT INTO public.moon VALUES (35, 'Iapetus', 10, 'Two-toned surface with dark and bright regions', false, 1468, 0.223);
INSERT INTO public.moon VALUES (36, 'Titania', 11, 'Icy surface with canyons and impact craters', false, 1577.8, 0.379);
INSERT INTO public.moon VALUES (37, 'Oberon', 11, 'Icy surface with scarps and ridges', false, 1522.8, 0.346);
INSERT INTO public.moon VALUES (38, 'Ariel', 11, 'Surface with valleys, fault lines, and impact craters', false, 578.9, 0.27);
INSERT INTO public.moon VALUES (39, 'Umbriel', 11, 'Heavily cratered surface with dark regions', false, 584.7, 0.213);
INSERT INTO public.moon VALUES (40, 'bumbriel', 11, 'Heavily cratered surface with dark regions', false, 584.7, 0.213);


--
-- Data for Name: moon_feature; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon_feature VALUES (4, 'Crater Copernicus', 'A large crater with prominent rays extending outward', 21);
INSERT INTO public.moon_feature VALUES (5, 'Valley Marineris', 'A vast canyon system stretching across the surface', 24);
INSERT INTO public.moon_feature VALUES (6, 'Tycho Crater', 'A prominent impact crater with a central peak and extensive ejecta blanket', 21);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Mercury', 1, 'Thin atmosphere mostly composed of oxygen and sodium', false);
INSERT INTO public.planet VALUES (2, 'Venus', 1, 'Thick carbon dioxide atmosphere with clouds of sulfuric acid', false);
INSERT INTO public.planet VALUES (3, 'Earth', 1, 'Nitrogen (78%) and Oxygen (21%)', true);
INSERT INTO public.planet VALUES (4, 'Mars', 1, 'Thin carbon dioxide atmosphere', false);
INSERT INTO public.planet VALUES (5, 'Jupiter', 2, 'Hydrogen and Helium', false);
INSERT INTO public.planet VALUES (6, 'Saturn', 2, 'Hydrogen and Helium', false);
INSERT INTO public.planet VALUES (7, 'Uranus', 2, 'Hydrogen, Helium, and Methane', false);
INSERT INTO public.planet VALUES (8, 'Neptune', 2, 'Hydrogen, Helium, and Methane', false);
INSERT INTO public.planet VALUES (9, 'Pluto', 3, 'Thin atmosphere containing nitrogen, methane, and carbon monoxide', false);
INSERT INTO public.planet VALUES (10, 'Kepler-22b', 4, 'Unknown', true);
INSERT INTO public.planet VALUES (11, 'HD 189733b', 5, 'Silicate particles in the atmosphere', false);
INSERT INTO public.planet VALUES (12, 'TRAPPIST-1e', 6, 'Unknown', true);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sun', 1, 1, 1);
INSERT INTO public.star VALUES (2, 'Proxima Centauri', 1, 0, 0.123);
INSERT INTO public.star VALUES (3, 'Alpha Centauri A', 1, 2, 1.100);
INSERT INTO public.star VALUES (4, 'Alpha Centauri B', 1, 1, 0.907);
INSERT INTO public.star VALUES (5, 'Sirius', 1, 25, 2.063);
INSERT INTO public.star VALUES (6, 'Vega', 1, 40, 2.135);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_feature_feature_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_feature_feature_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 40, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon_feature moon_feature_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon_feature
    ADD CONSTRAINT moon_feature_pkey PRIMARY KEY (moon_feature_id);


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
-- Name: galaxy unique_galaxy_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT unique_galaxy_name UNIQUE (name);


--
-- Name: moon_feature unique_moon_feature_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon_feature
    ADD CONSTRAINT unique_moon_feature_name UNIQUE (name);


--
-- Name: moon unique_moon_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT unique_moon_name UNIQUE (name);


--
-- Name: planet unique_planet_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT unique_planet_name UNIQUE (name);


--
-- Name: star unique_star_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT unique_star_name UNIQUE (name);


--
-- Name: star fk_galaxy; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT fk_galaxy FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- Name: moon_feature fk_moon_feature_moon; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon_feature
    ADD CONSTRAINT fk_moon_feature_moon FOREIGN KEY (moon_id) REFERENCES public.moon(moon_id);


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

