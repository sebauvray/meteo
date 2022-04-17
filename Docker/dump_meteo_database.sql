--
-- PostgreSQL database dump
--

-- Dumped from database version 14.2
-- Dumped by pg_dump version 14.2

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
-- Name: town; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public.town (
    id integer NOT NULL,
    name character varying(50) NOT NULL,
    lon character varying NOT NULL,
    lat character varying NOT NULL,
    country character varying NOT NULL
);


ALTER TABLE public.town OWNER TO admin;

--
-- Name: town_id_seq; Type: SEQUENCE; Schema: public; Owner: admin
--

CREATE SEQUENCE public.town_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.town_id_seq OWNER TO admin;

--
-- Name: town_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: admin
--

ALTER SEQUENCE public.town_id_seq OWNED BY public.town.id;


--
-- Name: town_weather_weather; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public.town_weather_weather (
    "townId" integer NOT NULL,
    "weatherId" integer NOT NULL
);


ALTER TABLE public.town_weather_weather OWNER TO admin;

--
-- Name: typeorm_metadata; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public.typeorm_metadata (
    type character varying NOT NULL,
    database character varying,
    schema character varying,
    "table" character varying,
    name character varying,
    value text
);


ALTER TABLE public.typeorm_metadata OWNER TO admin;

--
-- Name: weather; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public.weather (
    id integer NOT NULL,
    main character varying NOT NULL,
    description character varying NOT NULL,
    icon character varying NOT NULL
);


ALTER TABLE public.weather OWNER TO admin;

--
-- Name: weather_id_seq; Type: SEQUENCE; Schema: public; Owner: admin
--

CREATE SEQUENCE public.weather_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.weather_id_seq OWNER TO admin;

--
-- Name: weather_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: admin
--

ALTER SEQUENCE public.weather_id_seq OWNED BY public.weather.id;


--
-- Name: town id; Type: DEFAULT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.town ALTER COLUMN id SET DEFAULT nextval('public.town_id_seq'::regclass);


--
-- Name: weather id; Type: DEFAULT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.weather ALTER COLUMN id SET DEFAULT nextval('public.weather_id_seq'::regclass);


--
-- Data for Name: town; Type: TABLE DATA; Schema: public; Owner: admin
--

COPY public.town (id, name, lon, lat, country) FROM stdin;
1	Paris	2.320370	48.871600	France
\.


--
-- Data for Name: town_weather_weather; Type: TABLE DATA; Schema: public; Owner: admin
--

COPY public.town_weather_weather ("townId", "weatherId") FROM stdin;
\.


--
-- Data for Name: typeorm_metadata; Type: TABLE DATA; Schema: public; Owner: admin
--

COPY public.typeorm_metadata (type, database, schema, "table", name, value) FROM stdin;
\.


--
-- Data for Name: weather; Type: TABLE DATA; Schema: public; Owner: admin
--

COPY public.weather (id, main, description, icon) FROM stdin;
1	Clouds	overcast clouds	04d
2	Clouds	overcast clouds	04d
3	Clouds	overcast clouds	04d
4	Clouds	overcast clouds	04d
5	Clouds	overcast clouds	04d
6	Clouds	overcast clouds	04d
\.


--
-- Name: town_id_seq; Type: SEQUENCE SET; Schema: public; Owner: admin
--

SELECT pg_catalog.setval('public.town_id_seq', 1, true);


--
-- Name: weather_id_seq; Type: SEQUENCE SET; Schema: public; Owner: admin
--

SELECT pg_catalog.setval('public.weather_id_seq', 6, true);


--
-- Name: town_weather_weather PK_828aabaf55c39b328583fc66b75; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.town_weather_weather
    ADD CONSTRAINT "PK_828aabaf55c39b328583fc66b75" PRIMARY KEY ("townId", "weatherId");


--
-- Name: town PK_983b203100527a0c323c5e3b106; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.town
    ADD CONSTRAINT "PK_983b203100527a0c323c5e3b106" PRIMARY KEY (id);


--
-- Name: weather PK_af9937471586e6798a5e4865f2d; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.weather
    ADD CONSTRAINT "PK_af9937471586e6798a5e4865f2d" PRIMARY KEY (id);


--
-- Name: town UQ_9511a4e785196486335a4f688e2; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.town
    ADD CONSTRAINT "UQ_9511a4e785196486335a4f688e2" UNIQUE (name);


--
-- Name: IDX_5b820423a0b37febdd7b762591; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX "IDX_5b820423a0b37febdd7b762591" ON public.town_weather_weather USING btree ("weatherId");


--
-- Name: IDX_85803a64a5be0c6a50a1ada1a5; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX "IDX_85803a64a5be0c6a50a1ada1a5" ON public.town_weather_weather USING btree ("townId");


--
-- Name: town_weather_weather FK_5b820423a0b37febdd7b762591b; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.town_weather_weather
    ADD CONSTRAINT "FK_5b820423a0b37febdd7b762591b" FOREIGN KEY ("weatherId") REFERENCES public.weather(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: town_weather_weather FK_85803a64a5be0c6a50a1ada1a5a; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.town_weather_weather
    ADD CONSTRAINT "FK_85803a64a5be0c6a50a1ada1a5a" FOREIGN KEY ("townId") REFERENCES public.town(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- PostgreSQL database dump complete
--

