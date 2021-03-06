--
-- PostgreSQL database dump
--

-- Dumped from database version 13.1
-- Dumped by pg_dump version 13.1

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
-- Name: categoria_pase; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.categoria_pase (
    id bigint NOT NULL,
    nombre_cat character varying(20) NOT NULL,
    precio_cat numeric NOT NULL
);


ALTER TABLE public.categoria_pase OWNER TO postgres;

--
-- Name: categoria_pase_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.categoria_pase_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.categoria_pase_id_seq OWNER TO postgres;

--
-- Name: categoria_pase_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.categoria_pase_id_seq OWNED BY public.categoria_pase.id;


--
-- Name: cliente; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.cliente (
    id bigint NOT NULL,
    nombre character varying(30) NOT NULL,
    apellido character varying(30) NOT NULL,
    telefono numeric NOT NULL,
    email character varying(30) NOT NULL,
    dia_pago date NOT NULL,
    id_suscripcion integer NOT NULL
);


ALTER TABLE public.cliente OWNER TO postgres;

--
-- Name: cliente_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.cliente_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.cliente_id_seq OWNER TO postgres;

--
-- Name: cliente_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.cliente_id_seq OWNED BY public.cliente.id;


--
-- Name: pase_diario; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.pase_diario (
    id bigint NOT NULL,
    id_categoria integer NOT NULL,
    id_cliente integer NOT NULL,
    fecha_pase date NOT NULL
);


ALTER TABLE public.pase_diario OWNER TO postgres;

--
-- Name: pase_diario_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.pase_diario_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.pase_diario_id_seq OWNER TO postgres;

--
-- Name: pase_diario_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.pase_diario_id_seq OWNED BY public.pase_diario.id;


--
-- Name: productos_comercializados; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.productos_comercializados (
    id bigint NOT NULL,
    nombre_pro character varying(30) NOT NULL,
    precio_pro integer NOT NULL
);


ALTER TABLE public.productos_comercializados OWNER TO postgres;

--
-- Name: productos_comercializados_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.productos_comercializados_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.productos_comercializados_id_seq OWNER TO postgres;

--
-- Name: productos_comercializados_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.productos_comercializados_id_seq OWNED BY public.productos_comercializados.id;


--
-- Name: tipo_suscripcion; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.tipo_suscripcion (
    id bigint NOT NULL,
    nombre_sus character varying(20) NOT NULL,
    precio_sus numeric NOT NULL
);


ALTER TABLE public.tipo_suscripcion OWNER TO postgres;

--
-- Name: tipo_suscripcion_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.tipo_suscripcion_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.tipo_suscripcion_id_seq OWNER TO postgres;

--
-- Name: tipo_suscripcion_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.tipo_suscripcion_id_seq OWNED BY public.tipo_suscripcion.id;


--
-- Name: transaccion_venta; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.transaccion_venta (
    id bigint NOT NULL,
    id_cliente integer NOT NULL,
    fecha_trans date NOT NULL
);


ALTER TABLE public.transaccion_venta OWNER TO postgres;

--
-- Name: transaccion_venta_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.transaccion_venta_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.transaccion_venta_id_seq OWNER TO postgres;

--
-- Name: transaccion_venta_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.transaccion_venta_id_seq OWNED BY public.transaccion_venta.id;


--
-- Name: venta_productos; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.venta_productos (
    id bigint NOT NULL,
    id_transaccion integer NOT NULL,
    id_producto integer NOT NULL,
    cantidad_venta numeric NOT NULL
);


ALTER TABLE public.venta_productos OWNER TO postgres;

--
-- Name: venta_productos_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.venta_productos_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.venta_productos_id_seq OWNER TO postgres;

--
-- Name: venta_productos_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.venta_productos_id_seq OWNED BY public.venta_productos.id;


--
-- Name: categoria_pase id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.categoria_pase ALTER COLUMN id SET DEFAULT nextval('public.categoria_pase_id_seq'::regclass);


--
-- Name: cliente id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cliente ALTER COLUMN id SET DEFAULT nextval('public.cliente_id_seq'::regclass);


--
-- Name: pase_diario id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pase_diario ALTER COLUMN id SET DEFAULT nextval('public.pase_diario_id_seq'::regclass);


--
-- Name: productos_comercializados id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.productos_comercializados ALTER COLUMN id SET DEFAULT nextval('public.productos_comercializados_id_seq'::regclass);


--
-- Name: tipo_suscripcion id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tipo_suscripcion ALTER COLUMN id SET DEFAULT nextval('public.tipo_suscripcion_id_seq'::regclass);


--
-- Name: transaccion_venta id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.transaccion_venta ALTER COLUMN id SET DEFAULT nextval('public.transaccion_venta_id_seq'::regclass);


--
-- Name: venta_productos id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.venta_productos ALTER COLUMN id SET DEFAULT nextval('public.venta_productos_id_seq'::regclass);


--
-- Data for Name: categoria_pase; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.categoria_pase (id, nombre_cat, precio_cat) FROM stdin;
1	Ejercicio Torso	22000
2	ejercicio Piernas	20000
3	ejercicio Brazos	20000
4	ejercicio Completo	20000
5	ejer. Psicomental	20000
\.


--
-- Data for Name: cliente; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.cliente (id, nombre, apellido, telefono, email, dia_pago, id_suscripcion) FROM stdin;
1	Ernesto	buen dia	56937142055	buendia.E@gmail.com	2021-02-01	3
2	anny	miranda	56913467958	annyta2314@gmail.com	2021-03-06	4
3	sophia	ballery	56947586931	sophia24@hotmail.com	2021-01-01	1
4	carolina	bruna	56946795821	caritof@yahoo.com	2021-03-05	2
5	Emilio	pozo	56947654931	emi.love@hotmail.com	2021-02-09	1
6	Emilia	Diaz	56956374931	kosobo_123@hotmail.com	2021-05-06	3
7	Dario	Salas	56945567898	mariobrus@yahoo.com	2021-01-02	2
8	Maria	Alisa	56931216554	Alohamia@gmail.com	2021-05-03	4
9	Elias	Campos	56984956251	Amorelovetuyo@hotmail.com	2021-04-06	4
10	Javiera	Mendoza	59687485965	coloresesperanza@yahoo.com	2021-08-05	1
11	Ladio	Acu┬ña	56932549874	Mac@miempresa.cl	2021-05-02	2
12	Daria	Bruna	59698875421	Soliaestarfeliz@gmail.com	2021-06-01	2
13	graciela	ortega	56998549562	fullgord@dreamcast.com	2021-03-12	2
14	Juan	Montero	56995351575	kurts@gmail.com	2021-05-25	5
15	Branko	burotto	56987471421	soyelhombrepapa@gmail.com	2021-10-02	5
16	Javiera	De los angeles	56985956835	Siempresue┬ña@halo.com	2021-06-04	4
17	Gonzalo	Gonzales	56987481565	quixtar@hotmail.com	2021-08-06	1
18	Catalina	Frunkst	56987235645	germaniax@yahoo.com	2021-04-06	3
19	Javiera	Parraguez	56987548721	chiquita2031@gmail.com	2021-02-03	5
20	Rodrigo	agachateykonoclo	56945129563	migron666@virtualenv.com	2021-05-05	2
\.


--
-- Data for Name: pase_diario; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.pase_diario (id, id_categoria, id_cliente, fecha_pase) FROM stdin;
1	2	15	2021-05-02
2	5	9	2021-02-03
3	1	3	2021-06-04
4	3	10	2021-03-06
\.


--
-- Data for Name: productos_comercializados; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.productos_comercializados (id, nombre_pro, precio_pro) FROM stdin;
1	Mancuernas Otolit	45990
2	Kit-anti calambres	16990
3	Entrena-suda short	10990
4	teraphy tape	2990
5	Outfit runner completo	25000
6	cross fit user attack glasses	12590
7	7 vidas-pesas ergomicas	18990
8	Guantes-fierropelado	1590
9	Guantes-me duelen las manitas	2990
10	gluten regenerador de musculo	69990
\.


--
-- Data for Name: tipo_suscripcion; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.tipo_suscripcion (id, nombre_sus, precio_sus) FROM stdin;
1	Cardio-mania	14990
2	Elemental-jutzu	35990
3	Elige-vivir sano	10500
4	Crossfit hard	25950
5	Practica-Kinesica	16490
\.


--
-- Data for Name: transaccion_venta; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.transaccion_venta (id, id_cliente, fecha_trans) FROM stdin;
1	5	2021-12-20
\.


--
-- Data for Name: venta_productos; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.venta_productos (id, id_transaccion, id_producto, cantidad_venta) FROM stdin;
1	1	10	1
2	1	5	1
\.


--
-- Name: categoria_pase_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.categoria_pase_id_seq', 5, true);


--
-- Name: cliente_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.cliente_id_seq', 20, true);


--
-- Name: pase_diario_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.pase_diario_id_seq', 4, true);


--
-- Name: productos_comercializados_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.productos_comercializados_id_seq', 10, true);


--
-- Name: tipo_suscripcion_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.tipo_suscripcion_id_seq', 5, true);


--
-- Name: transaccion_venta_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.transaccion_venta_id_seq', 1, true);


--
-- Name: venta_productos_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.venta_productos_id_seq', 2, true);


--
-- Name: categoria_pase categoria_pase_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.categoria_pase
    ADD CONSTRAINT categoria_pase_pkey PRIMARY KEY (id);


--
-- Name: cliente cliente_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cliente
    ADD CONSTRAINT cliente_pkey PRIMARY KEY (id);


--
-- Name: pase_diario pase_diario_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pase_diario
    ADD CONSTRAINT pase_diario_pkey PRIMARY KEY (id);


--
-- Name: productos_comercializados productos_comercializados_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.productos_comercializados
    ADD CONSTRAINT productos_comercializados_pkey PRIMARY KEY (id);


--
-- Name: tipo_suscripcion tipo_suscripcion_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tipo_suscripcion
    ADD CONSTRAINT tipo_suscripcion_pkey PRIMARY KEY (id);


--
-- Name: transaccion_venta transaccion_venta_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.transaccion_venta
    ADD CONSTRAINT transaccion_venta_pkey PRIMARY KEY (id);


--
-- Name: venta_productos venta_productos_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.venta_productos
    ADD CONSTRAINT venta_productos_pkey PRIMARY KEY (id);


--
-- Name: pase_diario fk_id_categoria; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pase_diario
    ADD CONSTRAINT fk_id_categoria FOREIGN KEY (id_categoria) REFERENCES public.categoria_pase(id);


--
-- Name: pase_diario fk_id_cliente; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pase_diario
    ADD CONSTRAINT fk_id_cliente FOREIGN KEY (id_cliente) REFERENCES public.cliente(id);


--
-- Name: transaccion_venta fk_id_cliente; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.transaccion_venta
    ADD CONSTRAINT fk_id_cliente FOREIGN KEY (id_cliente) REFERENCES public.cliente(id);


--
-- Name: venta_productos fk_id_producto; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.venta_productos
    ADD CONSTRAINT fk_id_producto FOREIGN KEY (id_producto) REFERENCES public.productos_comercializados(id);


--
-- Name: cliente fk_id_suscripcion; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cliente
    ADD CONSTRAINT fk_id_suscripcion FOREIGN KEY (id_suscripcion) REFERENCES public.tipo_suscripcion(id);


--
-- Name: venta_productos fk_id_transaccion; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.venta_productos
    ADD CONSTRAINT fk_id_transaccion FOREIGN KEY (id_transaccion) REFERENCES public.transaccion_venta(id);


--
-- PostgreSQL database dump complete
--

