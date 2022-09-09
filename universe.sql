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
-- Name: asteriod; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.asteriod (
    asteriod_id integer NOT NULL,
    name character varying(30) NOT NULL,
    diameter_km integer NOT NULL,
    visible_naked_eye boolean,
    discovery_year integer
);


ALTER TABLE public.asteriod OWNER TO freecodecamp;

--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(30) NOT NULL,
    apparent_magnitude integer NOT NULL,
    distance_mly integer,
    constellation text
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(30) NOT NULL,
    mean_radius_km integer NOT NULL,
    discovery_year integer NOT NULL,
    planet_id integer NOT NULL
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(30) NOT NULL,
    earth_radius numeric(6,4) NOT NULL,
    type text,
    star_id integer NOT NULL
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(30) NOT NULL,
    mean_solar_radii integer NOT NULL,
    visible_naked_eye boolean,
    galaxy_id integer NOT NULL
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Data for Name: asteriod; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.asteriod VALUES (1, 'Vesta', 529, true, 1807);
INSERT INTO public.asteriod VALUES (2, 'Juno', 233, false, 1804);
INSERT INTO public.asteriod VALUES (3, 'Apophis', 0, false, 2004);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', -7, 0, 'Sagittarius');
INSERT INTO public.galaxy VALUES (2, 'Large Magellanic Cloud', 1, 0, 'Dorado/Mensa');
INSERT INTO public.galaxy VALUES (3, 'Small Magellanic Cloud', 3, 0, 'Tucana');
INSERT INTO public.galaxy VALUES (4, 'Andromeda', 3, 3, 'Andromeda');
INSERT INTO public.galaxy VALUES (5, 'Triangulum', 6, 3, 'Triangulum');
INSERT INTO public.galaxy VALUES (6, 'Centaurus A', 7, 14, 'Centaurus');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Phobos', 11267, 1877, 7);
INSERT INTO public.moon VALUES (2, 'Deimos', 6, 1877, 7);
INSERT INTO public.moon VALUES (3, 'Io', 1822, 1610, 1);
INSERT INTO public.moon VALUES (4, 'Europa', 1561, 1610, 1);
INSERT INTO public.moon VALUES (5, 'Ganymede', 2634, 1610, 1);
INSERT INTO public.moon VALUES (6, 'Callisto', 2410, 1610, 1);
INSERT INTO public.moon VALUES (7, 'Mimas', 198, 1789, 2);
INSERT INTO public.moon VALUES (8, 'Enceladus', 252, 1789, 2);
INSERT INTO public.moon VALUES (9, 'Tethys', 533, 1684, 2);
INSERT INTO public.moon VALUES (10, 'Dione', 561, 1684, 2);
INSERT INTO public.moon VALUES (11, 'Rhea', 764, 1672, 2);
INSERT INTO public.moon VALUES (12, 'Titan', 2575, 1655, 2);
INSERT INTO public.moon VALUES (13, 'Ariel', 579, 1851, 3);
INSERT INTO public.moon VALUES (14, 'Umbriel', 585, 1851, 3);
INSERT INTO public.moon VALUES (15, 'Titania', 789, 1787, 3);
INSERT INTO public.moon VALUES (16, 'Oberon', 761, 1787, 3);
INSERT INTO public.moon VALUES (17, 'Miranda', 236, 1948, 3);
INSERT INTO public.moon VALUES (18, 'Triton', 1353, 1846, 4);
INSERT INTO public.moon VALUES (19, 'Charon', 606, 1978, 9);
INSERT INTO public.moon VALUES (20, 'Hiʻiaka', 160, 2005, 10);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Jupiter', 10.9700, 'gas giant planet', 1);
INSERT INTO public.planet VALUES (2, 'Saturn', 9.1400, 'gas giant planet', 1);
INSERT INTO public.planet VALUES (3, 'Uranus', 3.9810, 'ice giant planet', 1);
INSERT INTO public.planet VALUES (4, 'Neptune', 3.8650, 'ice giant planet', 1);
INSERT INTO public.planet VALUES (5, 'Venus', 0.9499, 'terrestrial planet', 1);
INSERT INTO public.planet VALUES (6, 'Mars', 0.5320, 'terrestrial planet', 1);
INSERT INTO public.planet VALUES (7, 'Mercury', 0.3829, 'terrestrial planet,', 1);
INSERT INTO public.planet VALUES (8, 'Pluto', 0.1870, 'dwarf planet', 1);
INSERT INTO public.planet VALUES (9, 'Haumea', 0.1200, 'dwarf planet', 1);
INSERT INTO public.planet VALUES (10, 'Quaoar', 0.0879, 'cubewano', 1);
INSERT INTO public.planet VALUES (11, 'Orcus', 0.0719, 'plutino', 1);
INSERT INTO public.planet VALUES (12, 'Salacia', 0.0664, 'cubewano', 1);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sun', 1, true, 1);
INSERT INTO public.star VALUES (2, 'Antares', 680, true, 1);
INSERT INTO public.star VALUES (3, 'LL Pegasi', 869, false, 1);
INSERT INTO public.star VALUES (4, 'LI-LMC 60', 1765, false, 2);
INSERT INTO public.star VALUES (5, 'WOH G64', 1540, false, 2);
INSERT INTO public.star VALUES (6, 'LGGS J004124.80+411634.7', 1240, false, 4);


--
-- Name: asteriod asteriod_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.asteriod
    ADD CONSTRAINT asteriod_name_key UNIQUE (name);


--
-- Name: asteriod asteriod_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.asteriod
    ADD CONSTRAINT asteriod_pkey PRIMARY KEY (asteriod_id);


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
