--
-- PostgreSQL database dump
--

-- Dumped from database version 17.2 (Debian 17.2-1.pgdg120+1)
-- Dumped by pg_dump version 17.4 (Ubuntu 17.4-1.pgdg24.04+2)

-- Started on 2025-03-12 20:53:11 MSK

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET transaction_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- TOC entry 5 (class 2615 OID 18141)
-- Name: public; Type: SCHEMA; Schema: -; Owner: serveradmin
--

-- *not* creating schema, since initdb creates it


ALTER SCHEMA public OWNER TO serveradmin;

--
-- TOC entry 3417 (class 0 OID 0)
-- Dependencies: 5
-- Name: SCHEMA public; Type: COMMENT; Schema: -; Owner: serveradmin
--

COMMENT ON SCHEMA public IS '';


SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- TOC entry 217 (class 1259 OID 18142)
-- Name: _prisma_migrations; Type: TABLE; Schema: public; Owner: serveradmin
--

CREATE TABLE public._prisma_migrations (
    id character varying(36) NOT NULL,
    checksum character varying(64) NOT NULL,
    finished_at timestamp with time zone,
    migration_name character varying(255) NOT NULL,
    logs text,
    rolled_back_at timestamp with time zone,
    started_at timestamp with time zone DEFAULT now() NOT NULL,
    applied_steps_count integer DEFAULT 0 NOT NULL
);


ALTER TABLE public._prisma_migrations OWNER TO serveradmin;

--
-- TOC entry 227 (class 1259 OID 18194)
-- Name: jobs; Type: TABLE; Schema: public; Owner: serveradmin
--

CREATE TABLE public.jobs (
    id integer NOT NULL,
    name text NOT NULL,
    lvl integer NOT NULL,
    city text NOT NULL,
    about text NOT NULL,
    html_description_code text NOT NULL,
    settings integer NOT NULL,
    unique_name text NOT NULL
);


ALTER TABLE public.jobs OWNER TO serveradmin;

--
-- TOC entry 226 (class 1259 OID 18193)
-- Name: jobs_id_seq; Type: SEQUENCE; Schema: public; Owner: serveradmin
--

CREATE SEQUENCE public.jobs_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.jobs_id_seq OWNER TO serveradmin;

--
-- TOC entry 3419 (class 0 OID 0)
-- Dependencies: 226
-- Name: jobs_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: serveradmin
--

ALTER SEQUENCE public.jobs_id_seq OWNED BY public.jobs.id;


--
-- TOC entry 219 (class 1259 OID 18152)
-- Name: posts; Type: TABLE; Schema: public; Owner: serveradmin
--

CREATE TABLE public.posts (
    id integer NOT NULL,
    title text NOT NULL,
    tage text,
    "userId" integer NOT NULL
);


ALTER TABLE public.posts OWNER TO serveradmin;

--
-- TOC entry 218 (class 1259 OID 18151)
-- Name: posts_id_seq; Type: SEQUENCE; Schema: public; Owner: serveradmin
--

CREATE SEQUENCE public.posts_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.posts_id_seq OWNER TO serveradmin;

--
-- TOC entry 3420 (class 0 OID 0)
-- Dependencies: 218
-- Name: posts_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: serveradmin
--

ALTER SEQUENCE public.posts_id_seq OWNED BY public.posts.id;


--
-- TOC entry 221 (class 1259 OID 18161)
-- Name: skins; Type: TABLE; Schema: public; Owner: serveradmin
--

CREATE TABLE public.skins (
    id integer NOT NULL,
    name text NOT NULL,
    price integer NOT NULL,
    shop text NOT NULL,
    gender text NOT NULL,
    time_year text NOT NULL
);


ALTER TABLE public.skins OWNER TO serveradmin;

--
-- TOC entry 220 (class 1259 OID 18160)
-- Name: skins_id_seq; Type: SEQUENCE; Schema: public; Owner: serveradmin
--

CREATE SEQUENCE public.skins_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.skins_id_seq OWNER TO serveradmin;

--
-- TOC entry 3421 (class 0 OID 0)
-- Dependencies: 220
-- Name: skins_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: serveradmin
--

ALTER SEQUENCE public.skins_id_seq OWNED BY public.skins.id;


--
-- TOC entry 223 (class 1259 OID 18170)
-- Name: transport; Type: TABLE; Schema: public; Owner: serveradmin
--

CREATE TABLE public.transport (
    id integer NOT NULL,
    name_auto text NOT NULL,
    full_speed integer,
    speed_100_time double precision,
    speed_max_time double precision,
    volume_tank integer,
    cost_liter integer,
    type_tank text,
    slots integer,
    price integer,
    seats integer,
    lite_insurance integer,
    unique_name text NOT NULL,
    type_body text NOT NULL,
    showroom text,
    city text NOT NULL,
    stage_counter integer,
    paint_inter text,
    paint_first text,
    paint_second text,
    paint_third text,
    antichrome integer,
    accessories text,
    rims text,
    gos_cost_old integer,
    class text,
    units integer,
    epp text,
    exc_insurance integer,
    repair_exc_ins integer,
    repair_lite_ins integer,
    repair_stand_ins integer,
    repair_without_ins integer,
    stand_insurance integer
);


ALTER TABLE public.transport OWNER TO serveradmin;

--
-- TOC entry 222 (class 1259 OID 18169)
-- Name: transport_id_seq; Type: SEQUENCE; Schema: public; Owner: serveradmin
--

CREATE SEQUENCE public.transport_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.transport_id_seq OWNER TO serveradmin;

--
-- TOC entry 3422 (class 0 OID 0)
-- Dependencies: 222
-- Name: transport_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: serveradmin
--

ALTER SEQUENCE public.transport_id_seq OWNED BY public.transport.id;


--
-- TOC entry 225 (class 1259 OID 18179)
-- Name: users; Type: TABLE; Schema: public; Owner: serveradmin
--

CREATE TABLE public.users (
    id integer NOT NULL,
    name text NOT NULL,
    email text NOT NULL
);


ALTER TABLE public.users OWNER TO serveradmin;

--
-- TOC entry 224 (class 1259 OID 18178)
-- Name: users_id_seq; Type: SEQUENCE; Schema: public; Owner: serveradmin
--

CREATE SEQUENCE public.users_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.users_id_seq OWNER TO serveradmin;

--
-- TOC entry 3423 (class 0 OID 0)
-- Dependencies: 224
-- Name: users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: serveradmin
--

ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;


--
-- TOC entry 3240 (class 2604 OID 18197)
-- Name: jobs id; Type: DEFAULT; Schema: public; Owner: serveradmin
--

ALTER TABLE ONLY public.jobs ALTER COLUMN id SET DEFAULT nextval('public.jobs_id_seq'::regclass);


--
-- TOC entry 3236 (class 2604 OID 18155)
-- Name: posts id; Type: DEFAULT; Schema: public; Owner: serveradmin
--

ALTER TABLE ONLY public.posts ALTER COLUMN id SET DEFAULT nextval('public.posts_id_seq'::regclass);


--
-- TOC entry 3237 (class 2604 OID 18164)
-- Name: skins id; Type: DEFAULT; Schema: public; Owner: serveradmin
--

ALTER TABLE ONLY public.skins ALTER COLUMN id SET DEFAULT nextval('public.skins_id_seq'::regclass);


--
-- TOC entry 3238 (class 2604 OID 18173)
-- Name: transport id; Type: DEFAULT; Schema: public; Owner: serveradmin
--

ALTER TABLE ONLY public.transport ALTER COLUMN id SET DEFAULT nextval('public.transport_id_seq'::regclass);


--
-- TOC entry 3239 (class 2604 OID 18182)
-- Name: users id; Type: DEFAULT; Schema: public; Owner: serveradmin
--

ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);


--
-- TOC entry 3401 (class 0 OID 18142)
-- Dependencies: 217
-- Data for Name: _prisma_migrations; Type: TABLE DATA; Schema: public; Owner: serveradmin
--

COPY public._prisma_migrations (id, checksum, finished_at, migration_name, logs, rolled_back_at, started_at, applied_steps_count) FROM stdin;
ed4e0bab-19b2-49a3-afd8-03e4665d2656	81d6c98823f73f87fdbbcdd727e4e957487e127ac63c84b31fcb6f11b9dba229	2025-01-26 16:16:18.595181+00	20250124202816_add	\N	\N	2025-01-26 16:16:18.586397+00	1
f4ee380f-77f9-4ad3-9b64-1faf56de56a4	6e6796424878935d70b57bd0d3c665aacb08778bb052c9f7161f5f80be811a32	2025-01-26 16:16:18.597579+00	20250125090620_change	\N	\N	2025-01-26 16:16:18.595772+00	1
925e40e7-470a-489d-b06e-30e13fc18860	a8b7b3eb3f9603cdd051d6f8d79d45ddcefa711e137547957969f16df1e67484	2025-01-26 16:16:18.600024+00	20250125090727_change	\N	\N	2025-01-26 16:16:18.598137+00	1
c4b65645-9c5d-44ae-9630-50f7d1a8e894	caaf138bc06966d5d5a58c96556b04b8c8534817a94ac65fb15d4c8ba441ca85	2025-01-26 16:16:18.602409+00	20250125090807_change	\N	\N	2025-01-26 16:16:18.600641+00	1
5e5af31e-743d-45ed-b942-2cea067d02b3	79b3b4daa58458486d1e1976bcc4342b426b4b4cc598276a478477a87f037bbb	2025-01-26 16:16:18.60488+00	20250125195019_change	\N	\N	2025-01-26 16:16:18.603021+00	1
924a10db-2e26-4322-b304-a8eed89e8638	e040a42cca1d757ed2b8112fefe462b64bec97326e02348ff830c82cf2b00200	2025-01-26 16:16:18.607444+00	20250126094100_change	\N	\N	2025-01-26 16:16:18.605513+00	1
1aaad07a-5b88-43c7-bf55-7db80334c82d	4a10ea580b66dd26e44cf7ac6e07ddb2c51a0d7dea6a87359f393fdb3af2491d	2025-01-26 16:16:18.610021+00	20250126094139_change	\N	\N	2025-01-26 16:16:18.608058+00	1
ad9f993f-7b05-4d87-92d5-3e7d6bd35f59	de97596efc95f7e42fcbc982a67949d30c0dbbe51bbacaf17501bb640f7c975e	2025-01-26 16:16:18.612485+00	20250126094208_change	\N	\N	2025-01-26 16:16:18.610572+00	1
13bba1cb-afb8-4037-b658-6295e83cd9a3	89e7d032c5b3ec1beb1c6facac7361c3ab973f84f3f82f892e38c9dd71bf2881	2025-01-26 16:16:18.616432+00	20250126161547_change	\N	\N	2025-01-26 16:16:18.61308+00	1
e84e3837-a848-49b8-8892-dd9dab041013	655d54306210cfde10c85c6a64f8ca496f66f7770ec62e1d22b4008ba2931f5c	2025-01-26 16:16:19.056494+00	20250126161619_change	\N	\N	2025-01-26 16:16:19.053918+00	1
71f5e043-1e47-469b-a37e-554d274689c3	8432901a1b5f910488a0ec29d99c7fe43d42e155fd76b0131a3c9d7c6e62b93f	2025-03-12 09:17:42.718397+00	20250312091742_jobs	\N	\N	2025-03-12 09:17:42.713525+00	1
\.


--
-- TOC entry 3411 (class 0 OID 18194)
-- Dependencies: 227
-- Data for Name: jobs; Type: TABLE DATA; Schema: public; Owner: serveradmin
--

COPY public.jobs (id, name, lvl, city, about, html_description_code, settings, unique_name) FROM stdin;
12	Водитель трамвая XT	3789	New York	We are looking for a skilled software developer.	<p>Join our team as a software developer!</p>	1	develop_jb
22	Водитель трамвая XT	3789	New York	We are looking for a skilled software developer.	<p>Join our team as a software developer!</p>	1	delop_jb
\.


--
-- TOC entry 3403 (class 0 OID 18152)
-- Dependencies: 219
-- Data for Name: posts; Type: TABLE DATA; Schema: public; Owner: serveradmin
--

COPY public.posts (id, title, tage, "userId") FROM stdin;
\.


--
-- TOC entry 3405 (class 0 OID 18161)
-- Dependencies: 221
-- Data for Name: skins; Type: TABLE DATA; Schema: public; Owner: serveradmin
--

COPY public.skins (id, name, price, shop, gender, time_year) FROM stdin;
\.


--
-- TOC entry 3407 (class 0 OID 18170)
-- Dependencies: 223
-- Data for Name: transport; Type: TABLE DATA; Schema: public; Owner: serveradmin
--

COPY public.transport (id, name_auto, full_speed, speed_100_time, speed_max_time, volume_tank, cost_liter, type_tank, slots, price, seats, lite_insurance, unique_name, type_body, showroom, city, stage_counter, paint_inter, paint_first, paint_second, paint_third, antichrome, accessories, rims, gos_cost_old, class, units, epp, exc_insurance, repair_exc_ins, repair_lite_ins, repair_stand_ins, repair_without_ins, stand_insurance) FROM stdin;
1	ВАЗ-1111 Ока	130	20.42	34.85	30	52	АИ-92	4	55000	2	\N	1111	Хэтчбек	АвтоМакс	Невский	4	Дверные карты	1	\N	\N	\N	\N	Доступны все, кроме: внедорожных, классических и отечественного производства	\N	passenger	\N	Нет	\N	\N	\N	\N	4000	\N
2	ВАЗ-2114	190	11.31	30.09	43	52	АИ-92	10	176000	4	3850	2114	Хэтчбек	АвтоМакс	Невский	4	Сиденья, дверные карты	1	0	\N	0	Убрать шильдики - 10.000 ₽<br>\nУбрать спойлер - 20.000 ₽<br>	Доступны все, кроме внедорожных	\N	passenger	\N	Нет	\N	\N	7700	\N	11000	\N
3	Ваз-2101	155	16.19	34.65	39	52	АИ-92	10	60000	4	\N	2101	Седан	АвтоМакс	Невский	4	Сиденья	1	0	\N	0	\N	Доступны все, кроме внедорожных	\N	passenger	\N	Нет	\N	\N	\N	\N	4000	\N
4	Москвич-2140	117	16.96	23.32	39	52	АИ-92	10	68000	4	\N	Moskvich_2140	Седан	АвтоМакс	Невский	4	Вставки в сиденьях, нижние части дверных карт	1	0	\N	0	\N	Доступны все, кроме внедорожных	\N	passenger	\N	Нет	\N	\N	\N	\N	5000	\N
5	Москвич 2141S	160	16	29.84	40	52	АИ-92	10	86000	4	\N	Moskvich_2141s	Хэтчбек	АвтоМакс	Невский	4	Сиденья, \nверхняя часть торпедо,\nотделка потолка, \nстойки, \nзадняя полка	1	\N	\N	\N	Багажник на крыше - 50.000 ₽<br>\nМухобойка - 10.000 ₽<br>\nНакладки на вентиляцию - 10.000 ₽<br>\nПоворотники рестайлинг - 10.000 ₽<br>\nФаркоп и резинка сзади - 10.000 ₽<br>\nТуманки - 20.000 ₽<br>\nРешётка хром - 10.000 ₽<br>\nСнять брызговики - 10.000 ₽<br>\nСнять шильдик - 10.000 ₽<br>	Доступны все, кроме: внедорожных, классических и отечественного производства	\N	passenger	\N	Нет	\N	\N	\N	\N	5000	\N
6	ВАЗ-2115	190	11.3	30.08	43	52	АИ-92	10	189000	4	3850	2115	Седан	АвтоМакс	Невский	4	Сиденья, дверные карты	1	0	\N	0	Убрать шильдики - 10.000 ₽<br>\nУбрать спойлер - 20.000 ₽<br>	Доступны все, кроме внедорожных	\N	passenger	\N	Нет	\N	\N	7700	\N	11000	\N
7	ГАЗ-3102	150	12.89	29.14	70	52	АИ-92	10	200000	4	4900	GAZ_3102	Седан	АвтоМакс	Невский	4	Сиденья, дверные карты	1	0	\N	1	\N	Доступны все, кроме внедорожных	\N	passenger	\N	Нет	\N	\N	9800	\N	14000	\N
8	Mercedes-Benz 190E (W201)	200	8.73	29.24	55	52	АИ-92	10	250000	4	6300	MB_W190	Седан	Mercury-Auto	Приволжск	4	Недоступно	Кузов (верхняя часть)	\N	\N	1	\N	Доступны все, кроме: внедорожных, классических и отечественного производства	\N	passenger	\N	Нет	\N	\N	12600	\N	18000	\N
9	KIA Rio	194	8.61	27.84	50	52	АИ-92	10	879900	4	5250	Kia_Rio	Седан	РОФЛ	Невский	4	Вставки в сиденьях	1	0	\N	0	\N	Доступны все, кроме внедорожных	\N	passenger	\N	Нет	52500	5250	10500	8250	15000	19500
10	Subaru Forester XT	216	6.08	24.13	60	52	АИ-92	10	880000	4	6300	Forester_XT	Внедорожник	РОФЛ	Невский	4	Вставки в сиденьях	1	0	\N	0	\N	Доступны все	\N	passenger	\N	Да	63000	6300	12600	9900	18000	23400
11	Toyota Altezza RS200	215	6.2	23.98	60	56	АИ-95	10	900000	4	6300	Altezza	Седан	РОФЛ	Невский	4	Сиденья, \nдверные карты, \nстойки, \nзадняя полка, \nзадние динамики	1	0	\N	1	\N	Доступны все, кроме внедорожных	\N	passenger	\N	Нет	63000	6300	12600	9900	18000	23400
12	Nissan Skyline GT-R V-spec (R34)	251	4.09	18.86	65	56	АИ-95	10	915000	2	7000	GTR34	Купе	World of Auto	Мирный	4	Вставки в сиденьях, вставки в дверных картах	1	0	\N	0	\N	Доступны все, кроме внедорожных	\N	passenger	\N	Нет	70000	7000	14000	11000	20000	26000
13	Mercedes-Benz 250D (W124)	209	7.66	25.11	55	52	АИ-92	10	290000	4	7000	MB_W124	Седан	Mercury-Auto	Приволжск	4	Сиденья, вставки в дверных картах	1	0	\N	0	\N	Доступны все, кроме внедорожных	\N	passenger	\N	Нет	\N	\N	14000	\N	20000	\N
14	Lada Priora	183	9.49	28.2	43	52	АИ-92	10	293000	4	4200	Lada_Priora	Седан	АвтоМакс	Невский	4	Сиденья, вставки в дверных картах	1	0	\N	1	\N	Доступны все, кроме внедорожных	405000	passenger	\N	Нет	\N	\N	8400	\N	12000	\N
15	Peugeot 406	239	6.8	29.13	50	52	АИ-92	10	310000	4	5250	Peugeot406	Седан	РОФЛ	Невский	4	Вставки в сиденьях, окантовка ковриков	1	0	\N	0	\N	Доступны все, кроме внедорожных	\N	passenger	\N	Нет	\N	\N	10500	\N	15000	\N
16	Chevrolet Lacetti	184	9.14	24.15	60	52	АИ-92	10	315000	4	5600	Lacetti	Седан	РОФЛ	Невский	4	Вставки в сиденьях, солнцезащитные козырьки	1	0	\N	0	\N	Доступны все, кроме внедорожных	\N	passenger	\N	Нет	\N	\N	11200	\N	16000	\N
17	УАЗ-469	120	20.02	26.29	78	52	АИ-92	10	320000	4	3500	Uaz469	Внедорожник	АвтоМакс	Невский	4	Сиденья	1	0	\N	1	Багажник на крыше - 60.000 ₽<br>\nВеткоотбойники - 10.000 ₽<br>\nШноркель - 20.000 ₽<br>\nПодножки - 20.000 ₽<br>\nФара-искатель - 20.000 ₽<br>\nХром на детали кузова - 20.000 ₽<br>\nКенгурятник - 30.000 ₽<br>\nАрки на крылья - 30.000 ₽<br>\nЧехол запаски - 20.000 ₽<br>\nРейка - 10.000 ₽<br>\nКрыша - 5.000 ₽<br>\nБез крыши - 3.000 ₽<br>	Доступны все 	\N	passenger	\N	Да	\N	\N	7000	\N	10000	\N
18	Renault Megane	218	6.92	27.14	60	52	АИ-92	10	330000	4	5600	Megane	Седан	РОФЛ	Невский	4	Вставки в сиденьях	1	0	\N	0	\N	Доступны все, кроме внедорожных	\N	passenger	\N	Нет	\N	\N	11200	\N	16000	\N
19	Lada Granta	183	10.01	29.76	43	52	АИ-92	10	350000	4	3850	Lada_Granta	Седан	АвтоМакс	Невский	4	Вставки в сиденьях, вставки в дверных картах	1	0	\N	0	\N	Доступны все, кроме внедорожных	\N	passenger	\N	Нет	\N	\N	7700	\N	11000	\N
20	ВАЗ-2106	147	14.08	27.66	43	52	АИ-92	10	91000	4	\N	2106	Седан	АвтоМакс	Невский	4	Сиденья	1	0	\N	1	\N	Доступны все, кроме внедорожных	\N	passenger	\N	Нет	\N	\N	\N	\N	6000	\N
21	Renault Logan	176	9.63	27.76	43	52	АИ-92	10	355000	4	5950	Logan	Седан	РОФЛ	Невский	4	Вставки в сиденьях, вставки в дверных картах	1	0	\N	1	\N	Доступны все, кроме внедорожных	\N	passenger	\N	Нет	\N	\N	11900	\N	17000	\N
22	BMW M5 (E60)	260	3.79	15.84	70	56	АИ-98	10	2735000	4	11550	M5E60	Седан	Mercury-Auto	Приволжск	4	Нижняя часть торпедо, cиденья, вставки в дверных картах, отделка центральной консоли	1	\N	\N	1	Выхлоп Eisenmann - 100.000 ₽<br>	Доступны все, кроме: внедорожных, классических и отечественного производства	2070000	passenger	\N	Нет	115500	11550	23100	18150	33000	42900
23	ВАЗ-2104	147	14.37	29.21	43	52	АИ-92	10	92000	4	\N	2104	Универсал	АвтоМакс	Невский	4	Сиденья	1	0	\N	0	\N	Доступны все, кроме внедорожных	\N	passenger	\N	Нет	\N	\N	\N	\N	5000	\N
24	Audi 80 Avant (B4)	204	8.19	29.48	66	56	АИ-95	10	360000	4	5250	Audi80_Avant	Универсал	Mercury-Auto	Приволжск	4	Кулиса КПП, пороги, сиденья, вставки в дверные карты, стойки, отделка потолка, отделка шторки люка	1	0	\N	1	\N	Доступны все, кроме внедорожных	288000	passenger	\N	Нет	\N	\N	10500	\N	15000	\N
25	Chevrolet Caprice Classic	200	7.4	20.14	87	52	АИ-92	10	375000	4	6300	Caprice	Седан	РОФЛ	Невский	4	Торпедо, руль, дверные карты, сиденья, стойки, отделка потолка, задняя полка, отделка багажника	1	0	\N	0	\N	Доступны все, кроме внедорожных	\N	passenger	\N	Нет	\N	\N	12600	\N	18000	\N
26	ИЖ 21251 Комби	140	15.95	32.08	46	52	АИ-92	10	100000	4	\N	21251Kombi	Универсал	АвтоМакс	Невский	4	Частичная отделка салона и багажника, \nсиденья, \nдверные карты	1	0	\N	1	\N	Доступны все, кроме внедорожных	\N	passenger	\N	Нет	\N	\N	\N	\N	5000	\N
27	ГАЗ-24 Волга	146	17.08	35.43	55	52	АИ-92	10	102000	4	\N	Gaz_24	Седан	АвтоМакс	Невский	4	Сиденья, \nдверные карты	1	0	\N	0	\N	Доступны все, кроме внедорожных	\N	passenger	\N	Нет	\N	\N	\N	\N	8000	\N
28	Audi Q7 V12 TDI	250	4.53	19.72	100	57	ДТ	15	2880000	4	9800	Q7_V12TDI	Кроссовер	Mercury-Auto	Приволжск	4	Обод руля, сиденья, ремни безопасности, строчка центральной консоли, центральный подлокотник, вставк	1	0	\N	1	\N	Доступны все, кроме: классических и отечественного производства	\N	passenger	\N	Да	98000	9800	19600	15400	28000	36400
29	ВАЗ-2108	156	12.52	26.93	43	52	АИ-92	10	106500	2	\N	2108	Хэтчбек	АвтоМакс	Невский	4	Руль, торпедо, сиденья, дверные карты, кулиса КПП,<br>центральная консоль, передние и задние стойки,	1	0	\N	0	Боковые юбки - 50.000 ₽<br>\nКоврики в салоне - 10.000 ₽<br>\nРаспорки над двигателем - 10.000 ₽<br>\nЗадние брызговики - 10.000 ₽<br>\nРешётка в цвет кузова - 10.000 ₽<br>\nУбрать шильдики - 10.000 ₽<br>	Доступны все, кроме внедорожных	\N	passenger	\N	Нет	\N	\N	\N	\N	8000	\N
30	Skoda Rapid 2020	195	8.86	28.79	55	56	АИ-95	10	933000	4	5950	Skoda_rapid	Седан	РОФЛ	Невский	4	Вставка в торпедо, вставки в дверных картах, обод руля, вставки в сиденьях, центральный подлокотник	1	0	\N	1	\N	Доступны все, кроме внедорожных	\N	passenger	\N	Нет	59500	5950	11900	9350	17000	22100
31	Peugeot 207	194	8.99	28.86	50	56	АИ-95	10	400000	4	6300	Peugeot207	Хэтчбек	РОФЛ	Невский	4	Вставки в сиденьях, вставки в дверных картах	1	0	\N	0	\N	Доступны все, кроме внедорожных	\N	passenger	\N	Нет	\N	\N	12600	\N	18000	\N
32	Skoda Superb	209	6.84	19.17	60	52	АИ-92	10	425000	4	7000	Skoda_Superb	Седан	РОФЛ	Невский	4	Нижняя часть торпедо, дверные карты, отделка центральной консоли, ковролин, сиденья, стойки, ремни б	1	0	\N	1	\N	Доступны все, кроме внедорожных	\N	passenger	\N	Нет	\N	\N	14000	\N	20000	\N
33	BMW M3 (e46)	250	4.42	22	63	56	АИ-95	10	3000000	2	10500	M3E46	Купе	Mercury-Auto	Приволжск	4	Вставки в сиденьях, строчка всех элементов салона	1	0	\N	1	\N	Доступны все, кроме: внедорожных, классических и отечественного производства	\N	passenger	\N	Нет	105000	10500	21000	16500	30000	39000
34	ВАЗ-2107	150	15.01	27.83	39	52	АИ-92	10	115000	4	\N	2107	Седан	АвтоМакс	Невский	4	Сиденья,  передние стойки,  солнцезащитные козырьки	1	0	\N	1	\N	Доступны все, кроме внедорожных	\N	passenger	\N	Нет	\N	\N	\N	\N	6000	\N
35	Chevrolet Suburban	186	8.55	27.51	159	52	АИ-92	15	955000	4	7000	Suburban	Внедорожник	РОФЛ	Невский	4	Торпедо, сиденья, дверные карты, центральная консоль, ковролин, стойки, отделка потолка, отделка баг	1	0	\N	1	Шноркель - 20.000 ₽<br>  \nЛайтбар - 10.000 ₽<br>  \nАрки в пластик - 20.000 ₽<br>  \nРейлинги - 20.000 ₽<br>  \nБагажник на крышу - 40.000 ₽<br>  \nКенгурятник - 30.000 ₽<br>  \nКлыки - 10.000 ₽<br>  \nКлыки + Доп. свет - 20.000 ₽<br>	Доступны все	\N	passenger	\N	Да	70000	7000	14000	11000	20000	26000
36	Lada Largus	165	13.56	26.96	50	52	АИ-92	15	500000	4	7000	Lada_Largus	Универсал	АвтоМакс	Невский	4	Вставки в сиденьях	1	0	\N	1	Багажник на крышу - 50.000 ₽<br>	Доступны все, кроме внедорожных	\N	passenger	\N	Нет	\N	\N	14000	\N	20000	\N
37	Subaru WRX STI (VA)	254	4.45	23.28	60	56	АИ-95	10	3000000	4	10500	WRX_STI_VA	Седан	World of Auto	Мирный	4	Нижняя часть торпедо, кулиса КПП, частичная отделка центральной консоли, ручник, центральный подлоко	1	0	\N	0	\N	Доступны все, кроме: внедорожных, классических и отечественного производства	\N	passenger	\N	Нет	105000	10500	21000	16500	30000	39000
52	Volkswagen Passat GL (B3)	198	8.84	31.59	75	52	АИ-92	10	135000	4	6650	VW_PassatB3	Седан	РОФЛ	Невский	4	Нижняя часть торпедо, кулиса КПП, дверные карты, сиденья, стойки, отделка потолка	1	0	\N	0	\N	Доступны все, кроме внедорожных	\N	passenger	\N	Нет	\N	\N	13300	\N	19000	\N
53	Mazda RX-7 (FD)	251	4.69	16.08	76	56	АИ-95	10	1090000	2	7700	MazdaRX7	Купе	World of Auto	Мирный	4	Сиденья	1	0	\N	0	\N	Доступны все, кроме внедорожных	\N	passenger	\N	Нет	77000	7700	15400	12100	22000	28600
38	ВАЗ-2109	165	14.03	27.92	43	52	АИ-92	10	118000	4	\N	2109	Хэтчбек	АвтоМакс	Невский	4	Руль, торпедо, сиденья, дверные карты, кулиса КПП, центральная консоль, стойки, отделка потолка	1	0	\N	0	Боковые юбки - 50.000 ₽<br>\nКоврики в салоне - 10.000 ₽<br>\nРаспорки над двигателем - 10.000 ₽<br>\nЗадние брызговики - 10.000 ₽<br>\nРешётка в цвет кузова - 10.000 ₽<br>\nУбрать шильдики - 10.000 ₽<br>	Доступны все, кроме внедорожных	\N	passenger	\N	Нет	\N	\N	\N	\N	8000	\N
39	Mazda 3	200	7.27	24.83	55	56	АИ-95	10	500000	4	6300	Mazda3	Хэтчбек	РОФЛ	Невский	4	Сиденья, вставки в дверные карты	1	0	\N	1	\N	Доступны все, кроме внедорожных	\N	passenger	\N	Нет	\N	\N	12600	\N	18000	\N
40	Subaru Forester (SG9)	216	5.16	22.13	60	60	АИ-98	15	970000	4	6300	Forester_SG9	Кроссовер	РОФЛ	Невский	4	Нижняя часть торпедо, отделка центральной консоли, дверные карты, сиденья, ковролин, стойки, отделка	1	0	\N	1	\N	Доступны все, кроме классических и отечественного производства	\N	passenger	\N	Нет	63000	6300	12600	9900	18000	23400
41	Chevrolet Niva	140	16.09	32.04	86	52	АИ-92	10	540000	4	3850	Chevy_Niva	Внедорожник	АвтоМакс	Невский	4	Вставки в сиденьях	1	0	\N	0	\N	Доступны все, кроме внедорожных	\N	passenger	\N	Да	\N	\N	7700	\N	11000	\N
42	ВАЗ-2108 Рестайлинг	156	12.51	26.92	43	52	АИ-92	10	130000	2	\N	2108Rest	Хэтчбек	АвтоМакс	Невский	4	Руль, торпедо, сиденья, дверные карты, кулиса КПП, центральная консоль, передние и задние стойки, от	1	0	\N	0	Боковые юбки - 50.000 ₽<br>\nКоврики в салоне - 10.000 ₽<br>\nРаспорки над двигателем - 10.000 ₽<br>\nЗадние брызговики - 10.000 ₽<br>\nРешётка в цвет кузова - 10.000 ₽<br>\nУбрать шильдики - 10.000 ₽<br>	Доступны все, кроме внедорожных	\N	passenger	\N	Нет	\N	\N	\N	\N	8000	\N
43	Toyota Mark II Tourer V (90JZX)	247	5.16	25.68	70	52	АИ-92	10	1000000	4	7700	MarkII	Седан	World of Auto	Мирный	4	Сиденья, дверные карты, стойки, ковролин, отделка багажника	1	0	\N	1	\N	Доступны все, кроме внедорожных	\N	passenger	\N	Нет	77000	7700	15400	12100	22000	28600
44	ВАЗ-21099	165	13.5	27.86	40	52	АИ-92	10	133000	4	\N	21099	Седан	АвтоМакс	Невский	4	Руль, торпедо, сиденья, дверные карты, кулиса КПП, центральная консоль, стойки, отделка потолка	1	0	\N	0	Боковые юбки - 50.000 ₽<br>\nКоврики в салоне - 10.000 ₽<br>\nРаспорки над двигателем - 10.000 ₽<br>\nЗадние брызговики - 10.000 ₽<br>\nРешётка в цвет кузова - 10.000 ₽<br>\nУбрать шильдики - 10.000 ₽<br>	Доступны все, кроме внедорожных	\N	passenger	\N	Нет	\N	\N	\N	\N	9000	\N
45	Lada 4x4 Urban	159	13.6	26.89	43	52	АИ-92	10	546800	2	3850	Lada_Urban	Внедорожник	АвтоМакс	Невский	4	Вставки в сиденьях	1	0	\N	0	\N	Доступны все, кроме внедорожных	\N	passenger	\N	Да	\N	\N	7700	\N	11000	\N
46	Jeep Grand Cherokee (ZJ)	180	8.4	25.93	87	52	АИ-92	15	1000000	4	8750	Jeep_GrandCherokee	Внедорожник	РОФЛ	Невский	4	Вставки в сиденьях, вставки в дверных картах	1	0	\N	1	Шноркель - 20.000 ₽<br>  \nБагажник на крышу - 40.000 ₽<br>  \nКенгурятник 1 - 30.000 ₽<br>  \nКенгурятник 2 - 40.000 ₽<br>  \nСвет на кенгурятник - 10.000 ₽<br>  \nПротивотуманки - 10.000 ₽<br>  \nПодножка - 20.000 ₽<br>  \nКозырёк над лобовым - 20.000 ₽<br>  \nРешётка в цвет - 20.000 ₽<br>  \nБелые поворотники - 10.000 ₽<br>  \nПоворотники на крыльях - 10.000 ₽<br>  \nСвет на крыше - 10.000 ₽<br>  \nМухобойка - 10.000 ₽<br>	Доступны все, кроме классических и отечественного производства	\N	passenger	\N	Да	87500	8750	17500	13750	25000	32500
47	Toyota Chaser Tourer V (JZX100)	247	4.99	24.66	70	56	АИ-95	10	550000	4	5600	Chaser	Седан	World of Auto	Мирный	4	Сиденья, дверные карты	1	0	\N	0	\N	Доступны все, кроме внедорожных	\N	passenger	\N	Нет	\N	\N	11200	\N	16000	\N
48	ВАЗ-2110	180	10.02	29.43	43	52	АИ-92	10	133000	4	3500	2110	Седан	АвтоМакс	Невский	4	Вставки в сиденьях	1	0	\N	0	Спойлер - 5.000 ₽<br>\nШильдик - 3.000 ₽<br>	Доступны все, кроме внедорожных	\N	passenger	\N	Нет	\N	\N	7000	\N	10000	\N
49	УАЗ Хантер	134	13.74	26.87	86	52	АИ-92	15	550000	4	3850	UAZ_hanter	Внедорожник	АвтоМакс	Невский	4	Вставки в сиденьях	1	0	\N	0	Накладка на бензобак - 10.000 ₽<br>\nПодножка - 30.000 ₽<br>\nКенгурятник 1 - 25.000 ₽<br>\nКенгурятник 2 - 25.000 ₽<br>\nФара-искатель - 15.000 ₽<br>\nМаскировка для фонарей - 25.000 ₽<br>\nТросы - 30.000 ₽<br>\nЗащита на окна - 15.000 ₽<br>\nШноркель - 30.000 ₽<br>\nНакладка на глушитель 1 - 15.000 ₽<br>\nНакладка на глушитель 2 - 15.000 ₽<br>\nРасширители арок 1 - 50.000 ₽<br>\nВоздухозаборник - 15.000 ₽<br>\nЗащита передних фонарей - 15.000 ₽<br>\nЗащита задних фонарей - 15.000 ₽<br>\nЗащита картера двигателя - 15.000 ₽<br>\nЭкспедиционный багажник - 150.000 ₽<br>\nНабор освещения 1 - 50.000 ₽<br>\nНабор освещения 2 - 50.000 ₽<br>\nБрызговики - 10.000 ₽<br>\nРасширители арок 2 - 50.000 ₽<br>\nСвет на кенгурятник 1 - 25.000 ₽<br>\nСвет на кенгурятник 2 - 25.000 ₽<br>	Доступны все 	\N	passenger	\N	Да	\N	\N	7700	\N	11000	\N
50	Volvo 850 R	245	5.43	25.54	73	52	АИ-92	15	1000000	4	7000	Volvo_850r	Универсал	РОФЛ	Невский	4	Сиденья, вставки в дверных картах	1	0	\N	1	\N	Доступны все, кроме внедорожных	\N	passenger	\N	Нет	70000	7000	14000	11000	20000	26000
51	Chevrolet Cruze	199	6.76	23.18	90	56	АИ-95	10	560000	4	5600	Cruze	Седан	РОФЛ	Невский	4	Вставки в торпедо, вставки в дверные карты, вставки в сиденья	1	0	\N	0	\N	Доступны все, кроме внедорожных	\N	passenger	\N	Нет	\N	\N	11200	\N	16000	\N
54	УАЗ Патриот	150	15.18	30.82	100	52	АИ-92	10	565000	4	3850	Uaz_Patriot	Внедорожник	АвтоМакс	Невский	4	Вставки в сиденьях	1	0	\N	1	Багажник на крыше - 25 000 ₽<br>  \nВнедорожный багажник на крышу - 25 000 ₽<br>  \nШноркель - 25 000 ₽<br>  \nПодножки - 25 000 ₽<br>  \nКоврики - 25 000 ₽<br>  \nПередний бампер - 25 000 ₽<br>  \nЗадний бампер - 25 000 ₽<br>  \nБрызговики - 10 000 ₽<br>  \nКенгурятник - 30 000 ₽<br>	Доступны все	\N	passenger	\N	Да	\N	\N	7700	\N	11000	\N
55	ВАЗ-2109 Рестайлинг	165	14	27.9	43	52	АИ-92	10	145000	4	\N	2109Rest	Хэтчбек	АвтоМакс	Невский	4	Руль, торпедо, сиденья, дверные карты, кулиса КПП, центральная консоль, стойки, отделка потолка	1	0	\N	0	Боковые юбки - 50.000 ₽<br>\nКоврики в салоне - 10.000 ₽<br>\nРаспорки над двигателем - 10.000 ₽<br>\nЗадние брызговики - 10.000 ₽<br>\nРешётка в цвет кузова - 10.000 ₽<br>\nУбрать шильдики - 10.000 ₽<br>	Доступны все, кроме внедорожных	\N	passenger	\N	Нет	\N	\N	\N	\N	8000	\N
56	BMW 750i (E38)	240	6.22	26.06	85	56	АИ-95	10	1100000	4	7350	E38_750i	Седан	Mercury-Auto	Приволжск	4	Нижняя часть торпедо, отделка центральной консоли, дверные карты, сиденья, задняя полка	1	0	\N	1	\N	Доступны все, кроме внедорожных	1449000	passenger	\N	Нет	73500	7350	14700	11550	21000	27300
57	BMW 535i (E34)	232	6.28	25.13	80	52	АИ-92	10	590000	4	6300	E34_535	Седан	РОФЛ	Невский	4	Сиденья,  вставки в дверных картах, ковролин, задняя полка, \nотделка багажника	1	0	\N	1	\N	Доступны все, кроме внедорожных	279000	passenger	\N	Нет	\N	\N	12600	\N	18000	\N
58	ВАЗ-21124	180	10.65	31.85	43	52	АИ-92	10	150000	4	3850	21124	Хэтчбек	АвтоМакс	Невский	4	Вставки в сиденьях	1	0	\N	0	Спойлер - 5.000 ₽<br>\nШильдик - 3.000 ₽<br>	Доступны все, кроме внедорожных	\N	passenger	\N	Нет	\N	\N	7700	\N	11000	\N
59	Mitsubishi Lancer Evolution IX MR	250	4.73	21.79	55	56	АИ-95	10	1100000	4	7000	Lancer_EvoIX	Седан	World of Auto	Мирный	4	Нижняя часть торпедо, отделка центральной консоли, дверные карты	1	0	\N	1	\N	Доступны все, кроме внедорожных	\N	passenger	\N	Нет	70000	7000	14000	11000	20000	26000
60	Volkswagen Golf IV	200	8.25	27.54	55	52	АИ-92	10	600000	4	5600	VW_GolfIV	Хэтчбек	Mercury-Auto	Приволжск	4	Вставки в сиденьях, вставки в дверных картах	1	0	\N	1	\N	Доступны все, кроме внедорожных	\N	passenger	\N	Нет	\N	\N	11200	\N	16000	\N
61	ГАЗ-3110 Волга	175	11.17	30.73	50	52	АИ-92	10	157000	4	4200	Gaz_3110	Седан	АвтоМакс	Невский	4	Вставки в сиденьях	1	0	\N	0	\N	Доступны все, кроме внедорожных	214200	passenger	\N	Нет	\N	\N	8400	\N	12000	\N
62	Mercedes-Benz 600SEL (W140)	253	5.6	25.3	100	56	АИ-95	10	1150000	4	8400	MB_W140	Седан	Mercury-Auto	Приволжск	4	Недоступно	Кузов (верхняя часть)	0	\N	0	\N	Доступны все, кроме внедорожных	\N	passenger	\N	Нет	84000	8400	16800	13200	24000	31200
63	Mercedes-Benz C63 AMG (w204)	277	3.75	18.6	65	56	АИ-95	10	3025000	4	10500	MB_W204AMG	Седан	Mercury-Auto	Приволжск	4	Сиденья, вставки в дверных картах	1	0	\N	1	\N	Доступны все, кроме: внедорожных, классических и отечественного производства	\N	passenger	\N	Нет	105000	10500	21000	16500	30000	39000
64	ВАЗ-2113	185	11.33	29.71	43	52	АИ-92	10	163000	2	3850	2113	Хэтчбек	АвтоМакс	Невский	4	Сиденья, дверные карты	1	0	\N	0	Убрать шильдики - 10.000 ₽<br>\nУбрать спойлер - 20.000 ₽<br>	Доступны все, кроме внедорожных	\N	passenger	\N	Нет	\N	\N	7700	\N	11000	\N
65	Nissan Leaf	150	11.18	18.43	100	5	АИ-92	10	605000	4	7000	Nissan_Leaf	Хэтчбек	РОФЛ	Невский	\N	Руль, торпедо, сиденья, дверные карты, центральный подлокотник, стойки, отделка потолка, задняя полк	1	\N	\N	\N	\N	Доступны все, кроме: внедорожных, классических и отечественного производства	\N	passenger	\N	Нет	\N	\N	14000	\N	20000	\N
66	BMW M3 (e92)	281	3.7	21.51	70	56	АИ-95	10	3160000	2	10500	M3E92	Купе	Mercury-Auto	Приволжск	4	Нижняя часть торпедо, сиденья, вставки в дверных картах, центральная консоль	1	0	\N	1	\N	Доступны все, кроме: внедорожных, классических и отечественного производства	\N	passenger	\N	Нет	105000	10500	21000	16500	30000	39000
67	Nissan Skyline GTS-T Type-M (R-32)	230	5.47	19.12	60	52	АИ-92	10	615000	2	7000	SkylineR32	Купе	РОФЛ	Невский	4	Сиденья, вставки в дверных картах	1	0	\N	0	\N	Доступны все, кроме внедорожных	\N	passenger	\N	Нет	\N	\N	14000	\N	20000	\N
68	Subaru Impreza WRX STI	250	4.5	23.24	60	56	АИ-95	10	1200000	4	7700	WRX_STI	Седан	World of Auto	Мирный	4	Вставки в сиденьях, вставки в дверных картах	1	0	\N	0	\N	Доступны все, кроме внедорожных	\N	passenger	\N	Нет	77000	7700	15400	12100	22000	28600
69	Toyota Land Cruiser Prado	192	7.48	25.48	97	56	АИ-95	15	3323000	4	11375	TLC_Prado	Внедорожник	РОФЛ	Невский	4	Вставки в сиденьях, вставки в дверных картах	1	0	\N	0	\N	Доступны все, кроме: классических и отечественного производства	\N	passenger	\N	Да	113750	11375	22750	17875	32500	42250
70	Skoda Octavia	217	6.94	25.17	50	52	АИ-92	10	1380000	4	7000	Skoda_octavia	Седан	РОФЛ	Невский	4	Торпедо, отделка центральной консоли, дверные карты, сиденья, стойки, отделка крыши, зеркало заднего	1	0	\N	1	\N	Доступны все, кроме внедорожных	\N	passenger	\N	Нет	70000	7000	14000	11000	20000	26000
71	Volvo V60 Polestar	250	4.23	21.71	67	56	АИ-95	15	3400000	4	11900	Volvo_V60polestar	Универсал	РОФЛ	Невский	4	Сиденья, вставки в дверных картах, центральный подлокотник	1	0	\N	1	\N	Доступны все, кроме: внедорожных, классических и отечественного производства	\N	passenger	\N	Нет	119000	11900	23800	18700	34000	44200
72	KIA Optima SXL	243	6.37	25.74	70	56	АИ-95	10	1380000	4	7000	Kia_Optima	Седан	РОФЛ	Невский	4	Сирочка на руле, строчка на сиденьях, строчка на ручнике, строчка на кулисе КПП	1	0	\N	1	\N	Доступны все, кроме внедорожных	\N	passenger	\N	Нет	70000	7000	14000	11000	20000	26000
73	Audi RS6 Avant (C7)	285	3.29	21.65	75	56	АИ-95	10	6820000	4	23800	RS6_C7	Универсал	Mercury-Auto	Приволжск	4	Частичная отделка центральной консоли, центральный подлокотник, сиденья, вставки в дверных картах	1	0	\N	1	\N	Доступны все, кроме: внедорожных, классических и отечественного производства	\N	passenger	\N	Нет	238000	23800	47600	37400	68000	88400
74	BMW Z4	250	4.8	24.37	55	56	АИ-95	4	3500000	2	12250	Z4	Кабриолет	Mercury-Auto	Приволжск	4	Нижняя часть торпедо, вставки в дверных картах, сиденья	1	0	\N	1	\N	Доступны все, кроме: внедорожных, классических и отечественного производства	\N	passenger	\N	Нет	122500	12250	24500	19250	35000	45500
75	Toyota Tundra	180	6.72	23.85	100	56	АИ-95	15	7000000	4	24500	Tundra	Пикап	РОФЛ	Невский	4	Вставки в торпедо, вставки в дверные карты, сиденья, центральный подлоконтник, стойки, отделка потол	1	0	\N	1	Плоский кузов - 30.000 ₽<br>  \nДуги - 50.000 ₽<br>  \nКунг - 200.000 ₽<br>  \nПороги - 40.000 ₽<br>  \nШноркель - 20.000 ₽<br>  \nСвет - 10.000 ₽<br>  \nБагажник - 10.000 ₽<br>	Доступны все, кроме: классических и отечественного производства	\N	passenger	\N	Да	245000	24500	49000	38500	70000	91000
76	Subaru BRZ	226	6.15	24.53	60	56	АИ-95	10	1420000	2	7700	Subaru_BRZ	Купе	World of Auto	Мирный	4	Вставки в сиденьях	1	0	\N	0	\N	Доступны все, кроме внедорожных	\N	passenger	\N	Нет	77000	7700	15400	12100	22000	28600
77	Mitsubishi Lancer Evolution X	240	4.67	20.57	59	56	АИ-95	10	1450000	4	8750	Lancer_EvoX	Седан	World of Auto	Мирный	4	Вставки в сиденьях, вставки в дверных картах, центральный подлокотник	1	0	\N	0	\N	Доступны все, кроме внедорожных	\N	passenger	\N	Нет	87500	8750	17500	13750	25000	32500
78	Chevrolet Corvette ZR1	327	2.9	17.54	75	56	АИ-95	10	7090000	2	22400	CorvetteC6	Купе	World of Auto	Мирный	2	Нижняя часть торпедо, вставки в дверных картах	1	0	\N	0	\N	Доступны все, кроме: внедорожных, классических и отечественного производства	\N	passenger	\N	Нет	224000	22400	44800	35200	64000	83200
79	Jeep Wrangler Rubicon	160	7.25	19.74	70	56	АИ-95	10	3600000	2	12600	Jeep_Wrangler	Внедорожник	РОФЛ	Невский	4	Нижняя часть торпедо, сиденья, дверные карты, отделка центральной консоли, кулиса КПП	1	0	\N	0	Чёрная крыша - 100.000 ₽<br>  \nБез крыши - 10.000 ₽<br>  \nКрыша в цвет - 100.000 ₽<br>  \nЛайтбар - 10.000 ₽<br>  \nБагажник на крышу - 40.000 ₽<br>  \nКрылья в цвет кузова - 40.000 ₽<br>  \nШноркель - 20.000 ₽<br>  \nЗащита фонарей - 10.000 ₽<br>  \nПодножки - 20.000 ₽<br>  \nНакладка на капот - 20.000 ₽<br>  \nПередний бампер - 100.000 ₽<br>  \nЗадний бампер - 100.000 ₽<br>	Доступны все, кроме: классических и отечественного производства	\N	passenger	\N	Да	126000	12600	25200	19800	36000	46800
80	Range Rover Sport SVR	264	4.09	23.37	104	56	АИ-95	15	7285000	4	24500	RR_SportSVR	Кроссовер	World of Auto	Мирный	4	Вставка в торпедо, центральная часть руля, сиденья, вставки в дверных картах	1	0	\N	0	\N	Доступны все, кроме: классических и отечественного производства	\N	passenger	\N	Да	245000	24500	49000	38500	70000	91000
81	Toyota Camry 3.5 (XV70)	220	7.7	23.88	60	56	АИ-92	10	3800000	4	13300	CamryXV70	Седан	РОФЛ	Невский	4	Вставки в торпедо, вставки в дверных картах, сиденья, отделка центральной консоли	1	0	0	1	0	Доступны все, кроме: внедорожных, классических и отечественного производства	1602000	passenger	0	Нет	133000	13300	26600	20900	38000	49400
82	Land Rover Range Rover	210	6.32	23.28	105	60	АИ-95	15	1500000	4	10500	LandRoverRR	Внедорожник	РОФЛ	Невский	4	Торпедо, дверные карты, сиденья, центральный подлокотник	1	0	\N	0	\N	Доступны все, кроме классических и отечественного производства	\N	passenger	\N	Да	105000	10500	21000	16500	30000	39000
83	Infiniti QX80	210	7.5	24.31	100	56	АИ-95	15	7450000	4	25500	Infinity_QX80	Внедорожник	World of Auto	Мирный	4	Вставки в торпедо, отделка центральных консолей, сиденья, вставки в дверных картах, стойки, отделка 	1	0	\N	1	\N	Доступны все, кроме: классических и отечественного производства	\N	passenger	\N	Да	255000	25500	51000	40071	72857	94900
84	Nissan GT-R (R35)	315	2.72	17.57	90	56	АИ-95	10	7800000	2	28350	GTR35	Купе	World of Auto	Мирный	3	Вставка в торпедо, вставки в дверных картах, сиденья, частичная отделка центральной консоли, селекто	1	0	\N	1	\N	Доступны все, кроме: внедорожных, классических и отечественного производства	\N	passenger	\N	Нет	283500	28350	56700	44550	81000	105300
85	УАЗ-2206 Буханка	129	16.81	29.06	70	52	АИ-92	15	620000	4	4200	Uaz_2206	Внедорожник	АвтоМакс	Невский	4	Сиденья, \nпол,\nмоторный щит	1	0	\N	0	\N	Доступны все	\N	passenger	\N	Да	\N	\N	8400	\N	12000	\N
86	BMW X5 (E53)	247	5.08	25.29	93	56	АИ-95	10	1550000	4	8750	X5E53	Кроссовер	Mercury-Auto	Приволжск	4	Нижняя часть торпедо, вставки в дверных картах, сиденья, центральный подлокотник	1	0	\N	1	\N	Доступны все, кроме классических и отечественного производства	\N	passenger	\N	Да	87500	8750	17500	13750	25000	32500
87	Audi Q7 TDI	251	5.21	22.24	90	56	АИ-95	15	4015000	4	14000	Q7_V8TDI2015	Кроссовер	Mercury-Auto	Приволжск	4	Сиденья, дверные карты	1	0	\N	1	\N	Доступны все, кроме: классических и отечественного производства	\N	passenger	\N	Да	140000	14000	28000	22000	40000	52000
88	Audi S8 Plus (D4)	305	3.17	18.13	90	56	АИ-95	10	7882000	4	27650	S8Plus	Седан	Mercury-Auto	Приволжск	3	Вставки в сиденьях, вставки в дверных картах, центральный подлокотник	1	0	\N	1	\N	Доступны все, кроме: внедорожных, классических и отечественного производства	\N	passenger	\N	Нет	276500	27650	55300	43450	79000	102700
89	BMW X6 M (F86)	280	3.51	14.71	90	56	АИ-95	15	7885000	4	27300	X6M_F86	Кроссовер	Mercury-Auto	Приволжск	4	Вставки в торпедо, частичная отделка центральной консоли, сиденья, вставки в дверных картах	1	0	\N	1	\N	Доступны все, кроме: классических и отечественного производства	\N	passenger	\N	Да	273000	27300	54600	42900	78000	101400
90	BMW M4 (F82)	281	3.48	15.72	60	60	АИ-98	10	4250000	2	14000	M4F82	Купе	Mercury-Auto	Приволжск	4	Нижняя часть торпедо, сиденья, вставки в дверные карты, центральный подлокотник	1	0	\N	1	\N	Доступны все, кроме: внедорожных, классических и отечественного производства	\N	passenger	\N	Нет	140000	14000	28000	22000	40000	52000
91	Volkswagen Golf 2.0 TSI (VI)	200	6.72	23.56	50	56	АИ-95	10	620000	4	5950	VW_GolfVI	Хэтчбек	РОФЛ	Невский	4	Сиденья, вставки в дверных картах	1	0	\N	1	\N	Доступны все, кроме внедорожных	\N	passenger	\N	Нет	\N	\N	11900	\N	17000	\N
92	Lada Vesta Sport	193	7.87	25.48	55	56	АИ-95	10	1650000	4	7000	Lada_VestaSport	Седан	АвтоМакс	Невский	4	Только вставки в сиденьях	1	0	\N	1	\N	Доступны все, кроме внедорожных	\N	passenger	\N	Нет	70000	7000	14000	11000	20000	26000
93	Lexus LX570	219	6.41	25.94	93	60	АИ-98	15	8315000	4	24500	LX570	Внедорожник	РОФЛ	Невский	4	Сиденья, вставки в дверных картах	1	0	\N	1	\N	Доступны все, кроме: классических и отечественного производства	\N	passenger	\N	Да	245000	24500	49000	38500	70000	91000
94	Nissan 200SX	234	5.56	26.13	65	52	АИ-92	10	710000	2	7000	200SX	Купе	РОФЛ	Невский	4	Сиденья, крышка бардачка, вставки в дверных картах	1	0	\N	0	\N	Доступны все, кроме внедорожных	\N	passenger	\N	Нет	70000	7000	14000	11000	20000	26000
95	Maseratti GranTurismo	286	4.29	24.33	86	56	АИ-95	5	4350000	2	17500	Maserati_Granturismo	Купе	World of Auto	Мирный	4	Внутренняя часть обода руля, вставки в торпедо, отделка центральной консоли, вставки в сиденьях, две	1	0	\N	1	\N	Доступны все, кроме: внедорожных, классических и отечественного производства	\N	passenger	\N	Нет	175000	17500	35000	27500	50000	65000
96	Mercedes-Benz S600 (W220)	253	5.21	23.68	88	56	АИ-95	10	1730000	4	7700	MB_W220	Седан	Mercury-Auto	Приволжск	4	Торпедо, руль, сиденья, селектор КПП, отделка центральной консоли, дверные карты, ковролин, стойки, 	1	0	\N	1	\N	Доступны все, кроме: внедорожных, классических и отечественного производства	\N	passenger	\N	Нет	77000	7700	15400	12100	22000	28600
97	BMW M4 (G82)	290	3.8	23.72	59	56	АИ-95	10	8500000	2	29750	M4G82	Седан	Mercury-Auto	Приволжск	3	Нижняя часть торпедо, сиденья, вставки в дверных картах, центральный подлокотник	1	0	\N	0	\N	Доступны все, кроме: внедорожных, классических и отечественного производства	\N	passenger	\N	Нет	297500	29750	59500	46750	85000	110500
98	Honda Accord	221	7.49	27.68	65	56	АИ-95	10	710000	4	6300	Accord8	Седан	РОФЛ	Невский	4	Нижняя часть торпедо, дверные карты, отделка центральной консоли, сиденья, ковролин, стойки, отделка	1	0	\N	1	\N	Доступны все, кроме внедорожных	\N	passenger	\N	Нет	63000	6300	12600	9900	18000	23400
99	Audi A3 sedan	227	5.54	23.04	55	56	АИ-95	10	1750000	4	7000	Audi_A3	Седан	Mercury-Auto	Приволжск	4	Вставки в сиденьях, частичная отделка центральной консоли, вставки в дверных картах, кулиса КПП, сел	1	0	\N	1	\N	Доступны все, кроме внедорожных	1197000	passenger	\N	Нет	70000	7000	14000	11000	20000	26000
100	BMW M5 (F90)	305	2.83	15.62	68	60	АИ-98	10	9240000	4	35700	M5F90	Седан	Mercury-Auto	Приволжск	3	Нижняя часть торпедо, частичная отделка центральной консоли, центральный подлокотник, сиденья, вставки в дверных картах	1	0	0	1	Диффузор в цвет кузова - 100 000 ₽<br>\nКарбоновый диффузор - 150 000 ₽<br>\nСпойлер в цвет кузова - 100 000 ₽<br>\nСпойлер CS - 150 000 ₽<br>\nЮбилейные шильдики - 25 000 ₽<br>\nВыхлоп "Acrapovic" - 200 000 ₽<br>\nНакладки зеркал (карбон) - 100 000 ₽<br>\nКарбоновый капот - 300 000 ₽<br>\nНакладки "M Perfomance" - 100 000 ₽<br>\nРестайлинговые фонари - 150 000 ₽<br>\nСплиттер "M Perfomance" (Недоступно для установки) - 150 000 ₽<br>\nСплиттер CS (Недоступно для установки) - 150 000 ₽<br>	Доступны все, кроме: внедорожных, классических и отечественного производства	0	passenger	0	Нет	357000	35700	71400	56100	102000	132600
101	Volvo XC90 T5	237	5.66	27.48	80	56	АИ-95	15	4465000	4	14700	XC90T5	Кроссовер	РОФЛ	Невский	4	Руль, рулевая колонка, нижняя часть торпедо, отделка центральной консоли, сиденья, дверные карты, ст	1	0	\N	1	\N	Доступны все, кроме: классических и отечественного производства	\N	passenger	\N	Да	147000	14700	29400	23100	42000	54600
102	Mazda RX-8	234	5.27	19.85	65	56	АИ-95	10	720000	4	7000	MazdaRX8	Купе	РОФЛ	Невский	4	Вставки в сиденьях, вставки в дверных картах	1	0	\N	0	\N	Доступны все, кроме внедорожных	\N	passenger	\N	Нет	70000	7000	14000	11000	20000	26000
103	BMW M760 Li xDrive (G12)	311	3.22	18.93	90	56	АИ-95	10	9720000	4	31850	M760Li	Седан	Mercury-Auto	Приволжск	2	Нижняя часть торпедо, частичная отделка центральной консоли, сиденья, вставки в дверных картах, задн	1	0	\N	1	\N	Доступны все, кроме: внедорожных, классических и отечественного производства	\N	passenger	\N	Нет	318500	31850	63700	50050	91000	118300
104	Mercedes-Benz 560SEL (W126)	250	5.8	30.16	90	56	АИ-95	10	1800000	4	10150	MB_W126	Седан	Mercury-Auto	Приволжск	4	Недоступно	Кузов (верхняя часть)	0	\N	0	\N	Доступны все, кроме: внедорожных, классических и отечественного производства	\N	passenger	\N	Нет	101500	10150	20300	15950	29000	37700
105	Mercedes-Benz E63 S AMG (w212)	281	3.05	14.41	90	56	АИ-95	10	4500000	4	16100	MBW212_AMG	Седан	Mercury-Auto	Приволжск	4	Вставки в сиденях, вставки в дверных картах	1	0	\N	0	\N	Доступны все, кроме: внедорожных, классических и отечественного производства	\N	passenger	\N	Нет	161000	16100	32200	25300	46000	59800
106	BMW 530d (E39)	230	6.5	27.61	70	57	ДТ	10	750000	4	8050	530dE39	Седан	Mercury-Auto	Приволжск	4	Вставки в сиденьях, вставки в дверных картах, кулиса КПП, ручник	1	0	\N	1	\N	Доступны все, кроме: внедорожных, классических и отечественного производства	\N	passenger	\N	Нет	80500	8050	16100	12650	23000	29900
107	Jeep Grand Cherokee Trackhawk	292	3.27	23.14	93	65	АИ-92	15	9710000	4	32200	Jeep_Trackhawk	Внедорожник	World of Auto	Мирный	4	Боковины руля, сиденья, вставки в дверные карты, центральный подлокотник	1	\N	\N	1	\N	Доступны все, кроме: внедорожных, классических и отечественного производства	\N	passenger	\N	Да	322000	32200	64400	50600	92000	119600
108	BMW 530d Touring (F11)	250	5.25	20.64	70	57	ДТ	10	2000000	4	7700	530dF11	Универсал	Mercury-Auto	Приволжск	4	Нижняя часть торпедо, вставки в дверных картах, сиденья, частичная отделка центральной консоли	1	0	\N	1	\N	Доступны все, кроме: внедорожных, классических и отечественного производства	\N	passenger	\N	Нет	77000	7700	15400	12100	22000	28600
109	Ford Mustang Shelby GT500	320	3.6	20.27	70	56	АИ-95	10	4500000	2	14000	Mustang_GT500	Купе	World of Auto	Мирный	2	Вставки в сиденях, вставки в дверных картах	1	0	\N	1	\N	Доступны все, кроме: внедорожных, классических и отечественного производства	\N	passenger	\N	Нет	140000	14000	28000	22000	40000	52000
110	Mercedes-Benz E240 (W210)	228	7.57	30.18	65	56	АИ-95	10	760000	4	8050	MB_W210	Седан	Mercury-Auto	Приволжск	4	Нижняя часть торпедо, сиденья, отделка центральной консоли, дверные карты	1	0	\N	1	\N	Доступны все, кроме: внедорожных, классических и отечественного производства	\N	passenger	\N	Нет	80500	8050	16100	12650	23000	29900
111	Mercedes-Benz E63 S AMG (w213)	300	2.88	15.45	66	56	АИ-95	10	9867000	4	35700	MBW213_AMG	Седан	Mercury-Auto	Приволжск	3	Боковины руля, нижняя часть торпедо, отделка центральной консоли, центральный подлокотник, сиденья, 	1	0	\N	1	\N	Доступны все, кроме: внедорожных, классических и отечественного производства	\N	passenger	\N	Нет	357000	35700	71400	56100	102000	132600
112	Ford Focus 3	204	7.7	27.16	65	56	АИ-95	10	825000	4	6300	Focus3	Хэтчбек	РОФЛ	Невский	4	Нижняя часть торпедо, дверные карты, сиденья	1	0	\N	0	\N	Доступны все, кроме внедорожных	\N	passenger	\N	Нет	63000	6300	12600	9900	18000	23400
113	Audi S4 (B8)	250	4.15	21.54	64	56	АИ-95	10	2200000	4	7700	Audi_S4B8	Седан	Mercury-Auto	Приволжск	4	Вставки в сиденьях, вставки в дверных картах	1	0	\N	1	\N	Доступны все, кроме: внедорожных, классических и отечественного производства	\N	passenger	\N	Нет	77000	7700	15400	12100	22000	28600
114	BMW M6 (F13)	280	3.49	18.73	80	56	АИ-95	10	4600000	2	15750	M6F13	Купе	Mercury-Auto	Приволжск	4	Вставка в торпедо, сиденья, вставки в дверных картах, отделка центральной консоли	1	0	\N	1	Выхлоп Akrapovic - 50.000 ₽<br>  \nКанарды - 50.000 ₽<br>  \nЗадний сплиттер чёрный - 50.000 ₽<br>  \nПередний сплиттер карбон - 100.000 ₽<br>  \nЗадний диффузор Akrapovic - 100.000 ₽<br>  \nЗадний диффузор Vorsteiner - 100.000 ₽<br>  \nЧёрный спойлер - 100.000 ₽<br>  \nКарбоновый спойлер - 100.000 ₽<br>	Доступны все, кроме: внедорожных, классических и отечественного производства	\N	passenger	\N	Нет	157500	15750	31500	24750	45000	58500
115	Mercedes-Benz CLS63 AMG (C218) Рестайлинг	285	3.1	16.12	70	56	АИ-95	15	4820000	4	19250	MB_CLS63rest	Седан	Mercury-Auto	Приволжск	4	Вставки в сиденьях, вставки в дверных картах	1	0		0		Доступны все, кроме: внедорожных, классических и отечественного производства	0	passenger	0	Нет	192500	19250	38500	30250	55000	71500
116	Toyota Supra (A80)	251	4.26	18.83	60	56	АИ-95	10	850000	2	7000	SupraMKIV	Купе	World of Auto	Мирный	4	Сиденья	1	0	\N	1	\N	Доступны все, кроме внедорожных	\N	passenger	\N	Нет	70000	7000	14000	11000	20000	26000
117	Porsche 911 Carrera S (992)	308	3.39	26.51	64	60	АИ-98	10	10000000	2	36750	911Carrera_992	Купе	Mercury-Auto	Приволжск	3	Торпедо, руль, отделка центральной консоли, окантовка ковриков, селектор КПП, дверные карты, сиденья	1	0	\N	1	\N	Доступны все, кроме: внедорожных, классических и отечественного производства	\N	passenger	\N	Нет	367500	36750	73500	57750	105000	136500
118	Lada Vesta	182	9.35	28.14	55	56	АИ-95	10	852900	4	4200	Lada_Vesta	Седан	АвтоМакс	Невский	4	Вставки в сиденьях	1	0	\N	1	\N	Доступны все, кроме внедорожных	\N	passenger	\N	Нет	42000	4200	8400	6600	12000	15600
119	Mercedes-Benz GLS63 AMG	278	4.08	25.62	100	56	АИ-95	10	10120000	4	35000	MB_GLS63	Кроссовер	Mercury-Auto	Приволжск	4	Вставки в сиденьях	1	0	\N	0	\N	Доступны все, кроме: классических и отечественного производства	\N	passenger	\N	Да	350000	35000	70000	55000	100000	130000
120	Volkswagen Polo	192	8.7	27.18	50	52	АИ-92	10	865000	4	6300	VW_Polo	Седан	РОФЛ	Невский	4	Вставки в сиденьях	1	0	\N	0	\N	Доступны все, кроме внедорожных	\N	passenger	\N	Нет	63000	6300	12600	9900	18000	23400
121	Mercedes-Benz C63 S Coupe AMG (w205)	291	3.25	19.12	66	60	АИ-98	10	5900000	2	24150	MB_W205AMG_Coupe	Купе	Mercury-Auto	Приволжск	4	Полоса на руле, строчка всех элементов салона, вставки в сиденьях, вставки в дверных картах	1	0	\N	1	\N	Доступны все, кроме: внедорожных, классических и отечественного производства	\N	passenger	\N	Нет	241500	24150	48300	37950	69000	89700
122	Mercedes-Benz C200 (W206)	246	7	23	50	60	АИ-98	10	6000000	4	23450	MB_C200	Седан	Mercury-Auto	Приволжск	4	Боковины руля, центральный подлокотник, сиденья, вставки в дверных картах	1	\N	\N	1	Пороги чёрные - 100.000 ₽<br>  \nПороги карбон - 150.000 ₽<br>  \nПороги кованый карбон - 175.000 ₽<br>  \nПанорамная крыша - 300.000 ₽<br>  \nФары - 150.000 ₽<br>  \nРешётка - 100.000 ₽<br>  \nСпойлер 1 - 100.000 ₽<br>  \nСпойлер 2 - 100.000 ₽<br>  \nСпойлер 3 - 100.000 ₽<br>  \nСпойлер 1 (карбон) - 150.000 ₽<br>  \nСпойлер 2 (карбон) - 150.000 ₽<br>  \nСпойлер 3 (карбон) - 150.000 ₽<br>  \nСпойлер 1 (ков. карбон) - 175.000 ₽<br>  \nСпойлер 2 (ков. карбон) - 175.000 ₽<br>  \nСпойлер 3 (ков. карбон) - 175.000 ₽<br>  \nСплиттер чёрный - 100.000 ₽<br>  \nСплиттер карбон - 150.000 ₽<br>  \nСплиттер кованый карбон - 175.000 ₽<br>  \nЗадний бампер (чёрный) - 150.000 ₽<br>  \nДиффузор - 50.000 ₽<br>  \nЗадний бампер карбон - 200.000 ₽<br>  \nДиффузор - 50.000 ₽<br>  \nЗадний бампер ков. карбон - 215.000 ₽<br>  \nДиффузор - 50.000 ₽<br>	Доступны все, кроме: внедорожных, классических и отечественного производства	\N	passenger	\N	Нет	234500	23450	46900	36850	67000	87100
123	Bentley Continental GT	330	3.47	22.14	70	56	АИ-95	10	14700000	2	40250	Bentley_Continental	Купе	World of Auto	Мирный	3	Вставки в сиденьях, вставки в дверных картах	1	0	\N	1	\N	Доступны все, кроме: внедорожных, классических и отечественного производства	\N	passenger	\N	Нет	402500	40250	80500	63250	115000	149500
124	Toyota Land Cruiser 200 Executive Lounge	209	7.26	27.14	93	52	АИ-92	15	6010000	4	19250	TLC200	Внедорожник	World of Auto	Мирный	4	Вставки в сиденьях	1	0	\N	1	\N	Доступны все, кроме: классических и отечественного производства	\N	passenger	\N	Да	192500	19250	38500	30250	55000	71500
125	Mercedes-AMG GT R	318	3.12	22.93	65	60	АИ-98	10	15000000	2	47250	MB_AMG_GTR	Купе	Mercury-Auto	Приволжск	2	0	1	0	\N	0	\N	Доступны все, кроме: внедорожных, классических и отечественного производства	\N	passenger	\N	Нет	472500	47250	94500	74250	135000	175500
126	Cadillac Escalade ESV	230	5.85	26.21	90	56	АИ-95	15	6015000	4	17500	Escalade_ESV	Внедорожник	World of Auto	Мирный	2	Торпедо, руль, сиденья, отделка центральной консоли, дверные карты, стойки, отделка потолка, отделка	1	0	\N	1	\N	Доступны все, кроме: классических и отечественного производства	4500000	passenger	\N	Да	175000	17500	35000	27500	50000	65000
127	Range Rover (L460)	250	4.6	24.73	90	60	АИ-98	15	15500000	4	47950	RR_L460	Внедорожник	World of Auto	Мирный	4	Руль, рулевая колонка, центральная и нижняя часть торпедо, отделка центральных консолей, дверные кар	1	0	\N	1	Крыша в цвет авто - 10.000 ₽<br>  \nЧёрная крыша - 100.000 ₽<br>	Доступны все, кроме: классических и отечественного производства	\N	passenger	\N	Да	479500	47950	95900	75350	137000	178100
128	Toyota Supra (A90)	250	4	21.73	52	56	АИ-95	4	6100000	2	21000	Supra_A90	Купе	World of Auto	Мирный	4	Боковины руля, вставка в торпедо, солнцезащитные козырьки, сиденья, отделка центральной консоли, вст	1	0	\N	0	\N	Доступны все, кроме: внедорожных, классических и отечественного производства	\N	passenger	\N	Нет	210000	21000	42000	33000	60000	78000
129	Tesla Model S Plaid	322	2.13	15.82	100	5	электричество	10	16000000	4	47250	TeslaS_Plaid	Лифтбек	World of Auto	Мирный	4	Нижняя часть торпедо, вставки в дверные карты, сиденья, центральный подлокотник	1	0	\N	1	\N	Доступны все, кроме: внедорожных, классических и отечественного производства	\N	passenger	\N	Нет	472500	47250	94500	74250	135000	175500
130	BMW M8 Competition	312	2.8	35.6	68	60	АИ-98	10	17000000	2	50750	M8F92	Купе	Mercury-Auto	Приволжск	2	Вставки в дверных картах, вставки в дверных картах, цвет строчки элементов салона	1	0	\N	1	\N	Доступны все, кроме: внедорожных, классических и отечественного производства	\N	passenger	\N	Нет	507500	50750	101500	79750	145000	188500
131	BMW X5 M (F85)	285	3.53	17.05	85	56	АИ-95	10	6210000	4	22050	X5M_F85	Кроссовер	Mercury-Auto	Приволжск	4	Вставки в торпедо, частичная отделка центральной консоли, сиденья, вставки в дверных картах	1	0	\N	1	Задний диффузор RKP - 100.000 ₽<br>  \nПередняя юбка - 100.000 ₽<br>	Доступны все, кроме: классических и отечественного производства	\N	passenger	\N	Да	220500	22050	44100	34650	63000	81900
148	Lexus LFA	325	3.7	24	73	60	АИ-98	4	50000000	2	63000	Lexus_LFA	Купе	World of Auto	Мирный	2	Боковины руля, нижняя часть торпедо, отделка центральной консоли, дверные карты, сиденья	1	0	\N	0	\N	Доступны все, кроме: внедорожных, классических и отечественного производства	\N	passenger	\N	Нет	630000	63000	126000	99000	180000	234000
132	Ferrari 488 GTB	330	2.59	15.97	78	60	АИ-98	5	17350000	2	43750	488GTB	Купе	World of Auto	Мирный	3	Боковины руля, нижняя часть торпедо, отделка центральной консоли, сиденья, вставки в дверные карты, 	1	0	\N	0	Цветная крыша - 5.000 ₽<br>\nЧёрная крыша - 100.000 ₽<br>	Доступны все, кроме: внедорожных, классических и отечественного производства	\N	passenger	\N	Нет	437500	43750	87500	68750	125000	162500
133	Lamborghini Huracan Perfomante	335	2.56	17.83	90	56	АИ-95	5	18600000	2	49700	Lambo_huracan	Купе	World of Auto	Мирный	1	Торпедо, обод руля, напольные коврики, частичная отделка центральной консоли, отделка задней стенки,	1	0	\N	0	\N	Доступны все, кроме: внедорожных, классических и отечественного производства	\N	passenger	\N	Нет	497000	49700	99400	78100	142000	184600
134	Bentley Bentayga W12	300	3.41	18.91	85	56	АИ-95	15	18633000	4	45500	BentaygaW12	Кроссовер	World of Auto	Мирный	4	Руль, нижняя часть торпедо, вставки в дверных картах, сиденья	1	0	\N	1	\N	Доступны все, кроме: классических и отечественного производства	\N	passenger	\N	Да	455000	45500	91000	71500	130000	169000
135	Chevrolet Tahoe LTZ	200	7.5	26.18	98	56	АИ-95	15	2340000	4	8400	Tahoe	Внедорожник	РОФЛ	Невский	4	Стойки, отделка крыши, отделка шторки люка	1	0	\N	1	\N	Доступны все, кроме: классических и отечественного производства	\N	passenger	\N	Да	84000	8400	16800	13200	24000	31200
136	Mercedes-Benz G63 AMG (W464)	240	4.5	24.41	100	60	АИ-98	15	21000000	4	52500	MB_G63W464	Внедорожник	Mercury-Auto	Приволжск	4	Сиденья, вставки в дверных картах, вставка крышки багажника	1	0	\N	1	\N	Доступны все, кроме: классических и отечественного производства	\N	passenger	\N	Да	525000	52500	105000	82500	150000	195000
137	Volkswagen Jetta	210	7	25.21	50	56	АИ-95	10	2450000	4	8400	VW_Jetta	Седан	РОФЛ	Невский	4	Вставки в сиденьях, вставки в дверных картах	1	0	\N	1	\N	Доступны все, кроме: внедорожных, классических и отечественного производства	\N	passenger	\N	Нет	84000	8400	16800	13200	24000	31200
138	Lamborghini Urus	310	3.02	14.63	95	56	АИ-95	15	22450000	4	54250	Lambo_Urus	Кроссовер	World of Auto	Мирный	2	Нижняя часть торпедо, частичная отделка центральной консоли, дверные карты, сиденья	1	\N	\N	\N	\N	Доступны все, кроме: внедорожных, классических и отечественного производства	16920000	passenger	\N	Да	542500	54250	108500	85250	155000	201500
139	Porsche 911 Turbo S (992)	332	2.51	22.37	85	56	АИ-95	5	25000000	2	45500	911TurboS_992	Купе	Mercury-Auto	Приволжск	2	Торпедо, руль, отделка центральной консоли, окантовка ковриков, селектор КПП, дверные карты, сиденья	1	0	\N	0	\N	Доступны все, кроме: внедорожных, классических и отечественного производства	\N	passenger	\N	Нет	455000	45500	91000	71500	130000	169000
140	Rolls-Royce Wraith	253	3.79	18.91	83	60	АИ-98	10	26000000	2	52500	RR_Wraith	Купе	World of Auto	Мирный	4	0	Нижняя часть кузова	0	\N	1	\N	Доступны все, кроме: внедорожных, классических и отечественного производства	\N	passenger	\N	Нет	525000	52500	105000	82500	150000	195000
141	Ferrari Portofino	320	3.5	23.17	80	60	АИ-98	4	28000000	2	52500	Ferrari_ Portofino	Кабриолет	World of Auto	Мирный	2	Нижняя часть торпедо, строчка элементов салона, частичная отделка центральной консоли, сиденья, вста	1	0	\N	1	\N	Доступны все, кроме: внедорожных, классических и отечественного производства	\N	passenger	\N	Нет	525000	52500	105000	82500	150000	195000
142	Lexus IS 350 F	249	4.82	24.07	60	60	АИ-98	10	2500000	4	8400	Lexus_IS350F	Седан	World of Auto	Мирный	4	Сиденья, вставки в дверных картах	1	0	\N	1	\N	Доступны все, кроме: внедорожных, классических и отечественного производства	\N	passenger	\N	Нет	84000	8400	16800	13200	24000	31200
143	McLaren 720S Spyder	341	2.9	21.98	72	60	АИ-98	4	31720000	2	52500	McLaren720s	Кабриолет	World of Auto	Мирный	3	Вставки в торпедо, вставки в дверные карты, отделка центральной консоли, сиденья	1	0	\N	0	\N	Доступны все, кроме: внедорожных, классических и отечественного производства	\N	passenger	\N	Нет	525000	52500	105000	82500	150000	195000
144	Mercedes-Benz ML 63 AMG (W164)	250	5	25.18	95	56	АИ-95	15	2550000	4	8400	MB_ML63	Кроссовер	Mercury-Auto	Приволжск	4	Сиденья, дверные карты, нижняя часть торпедо, отделка центральной консоли, шторка багажника	1	0	\N	1	\N	Доступны все, кроме: классических и отечественного производства	\N	passenger	\N	Да	84000	8400	16800	13200	24000	31200
145	Lamborghini Aventador S Roadster	350	3	22.83	90	60	АИ-98	5	33000000	2	52500	Avent_roadsterS	Купе	World of Auto	Мирный	3	Нижняя часть торпедо, отделка центральной консоли, сиденья, вставки в дверных картах	1	0	\N	1	Крыша - 50.000 ₽<br>\nБез крыши - 10.000 ₽<br>	Доступны все, кроме: внедорожных, классических и отечественного производства	\N	passenger	\N	Нет	525000	52500	105000	82500	150000	195000
146	Rolls-Royce Phantom VIII	254	4.25	21.13	90	56	АИ-95	10	38500000	4	56000	RR_PhantomVIII	Седан	World of Auto	Мирный	4	0	Нижняя часть кузова	0	\N	1	\N	Доступны все, кроме: внедорожных, классических и отечественного производства	\N	passenger	\N	Нет	560000	56000	112000	88000	160000	208000
147	Rolls-Royce Cullinan	250	5.2	24.6	90	60	АИ-98	15	45000000	4	59500	RR_Culinan	Внедорожник	World of Auto	Мирный	4	Вставка в торпедо, нижняя часть торпедо, отделка центральных консолей, вставки в дверных картах,  си	1	0	\N	1	\N	Доступны все, кроме: классических и отечественного производства	\N	passenger	\N	Да	595000	59500	119000	93500	170000	221000
149	Audi A4 Allroad quattro	252	4.95	22.82	70	56	АИ-95	10	2610000	4	8750	A4_Allroad	Универсал	Mercury-Auto	Приволжск	4	Руль, кулиса КПП, сиденья, дверные карты, центральный подлокотник	1	0	\N	0	\N	Доступны все, кроме: классических и отечественного производства	\N	passenger	\N	Да	87500	8750	17500	13750	25000	32500
150	Ferrari LaFerrari	385	2.39	18.13	90	56	АИ-95	5	77600000	2	77000	LaFerrari	Купе	World of Auto	Мирный	1	Вставка в торпедо, нижняя часть торпедо, рулевая колонка, сиденья, вставки в дверных картах	1	0	\N	0	\N	Доступны все, кроме: внедорожных, классических и отечественного производства	\N	passenger	\N	Нет	770000	77000	154000	121000	220000	286000
151	KIA Stinger GT	270	4.39	21.67	60	56	АИ-95	10	2610000	4	8400	Kia_StingerGT	Лифтбек	World of Auto	Мирный	4	Частичная отделка центральной консоли, селектор КПП, центральный подлокотник, сиденья, вставки в две	1	0	\N	1	\N	Доступны все, кроме: внедорожных, классических и отечественного производства	\N	passenger	\N	Нет	84000	8400	16800	13200	24000	31200
152	Volkswagen Touareg V8 TDI	242	4.99	24.86	85	57	ДТ	15	2680000	4	8400	VWTouareg_V8TDI	Кроссовер	Mercury-Auto	Приволжск	4	Крышка бардачка, вставки в сиденьях, вставки в дверных картах, стойки, отделка потолка, шторка багаж	1	0	\N	1	\N	Доступны все, кроме: классических и отечественного производства	\N	passenger	\N	Да	84000	8400	16800	13200	24000	31200
153	Bugatti Chiron	427	2.02	16.3	100	60	АИ-98	5	91000000	2	91000	Chiron	Купе	World of Auto	Мирный	1	0	Передняя часть кузова, нижняя часть зеркал	0	\N	1	\N	Доступны все, кроме: внедорожных, классических и отечественного производства	\N	passenger	\N	Нет	910000	91000	182000	143000	260000	338000
154	ГАЗ-3309 Дорест	95	\N	22.78	105	57	ДТ	\N	960000	2	\N	Gaz_3309Dorest	Грузовик	Тихий огонёк	Мирный	0	0	0	Обод решётки радиатора	0	0	0	\N	\N	cargo	300	Нет	\N	\N	\N	\N	8000	\N
155	ГАЗ-3309 Рест	95	\N	22.78	105	57	ДТ	\N	960000	2	\N	Gaz_3309Dorest	Грузовик	Тихий огонёк	Мирный	0	0	0	Обод решётки радиатора	0	0	0	\N	\N	cargo	300	Нет	\N	\N	\N	\N	8000	\N
156	Ford Mustang GT 2015	318	3.17	16.87	61	56	АИ-95	10	6350000	2	25200	MustangGT_2015	Купе	World of Auto	Мирный	3	Вставки в сиденях, вставки в дверных картах	1	0	\N	0	\N	Доступны все, кроме: внедорожных, классических и отечественного производства	\N	passenger	\N	Нет	252000	25200	50400	39600	72000	93600
157	Renault Magnum	118	19.23	25.14	1445	57	ДТ	\N	6500000	2	15750	Renault_Magnum	Тягач	Тихий огонёк	Мирный	0	Вставки в пассажирском и заднем сиденьях, матрас с	0	0	0	0	Боковые накладки - 150 000 руб<br>\nСвет на крыше - 120 000 руб<br>\nСигнал на крыше - 60 000 руб<br>\nШторки в салоне - 20 000 руб<br>	\N	\N	cargo	1000	Нет	157500	15750	31500	24750	45000	58500
158	ГАЗ-3302 Тент	120	19.93	27.71	70	52	АИ-92	\N	1170000	2	3850	Gaz_3302Tent	Грузовик	Тихий огонёк	Мирный	0	0	0	Тент	0	0	0	\N	\N	cargo	150	Нет	38500	3850	7700	6050	11000	14300
159	Dodge Challenger SRT Hellcat	319	2.88	17.6	90	60	АИ-98	10	6500000	2	23333	ChallengerSRT	Купе	World of Auto	Мирный	2	Вставки в сиденях, вставки в дверных картах	1	0	\N	0	\N	Доступны все, кроме: внедорожных, классических и отечественного производства	\N	passenger	\N	Нет	233331	23333	46666	36666	66666	86666
160	ГАЗ-3302 Будка	120	19.93	27.71	70	52	АИ-92	\N	1335000	2	4305	Gaz_3302Budka	Грузовик	Тихий огонёк	Мирный	0	0	0	Кузов\t	0	0	0	\N	\N	cargo	200	Нет	43050	4305	8610	6765	12300	15990
161	Scania Topline R480	120	18.81	25.22	1200	57	ДТ	\N	7950000	2	17500	Scania_Topline	Тягач	Тихий огонёк	Мирный	0	0	1	0	0	0	0	\N	\N	cargo	1000	Нет	175000	17500	35000	27500	50000	65000
162	Mercedes-Maybach S650 (X222)	262	3.88	19.92	80	56	АИ-95	10	10125000	4	32900	Maybach_S650	Седан	Mercury-Auto	Приволжск	4	Вставка в торпедо, вставки в дверных картах, сиденья	Нижняя часть кузова, зеркала	0	\N	1	\N	Доступны все, кроме: внедорожных, классических и отечественного производства	\N	passenger	\N	Нет	329000	32900	65800	51700	94000	122200
163	Hummer H2	180	9.98	28.46	121	56	АИ-95	15	6500000	4	22750	HummerH2	Внедорожник	РОФЛ	Невский	4	Нижняя часть торпедо, дверные карты, стойки, центральный подлокотник, отделка бажника, отделка потол	1	0	\N	1	Дополнительный порог - 50.000 ₽<br>  \nЗащита задних фонарей - 10.000 ₽<br>  \nРейлинги на крышу - 30.000 ₽<br>  \nРейлинги на крышу + свет - 35.000 ₽<br>  \nРейлинги на крышу + свет 2 - 40.000 ₽<br>  \nКенгурятник на капот - 15.000 ₽<br>  \nСвет на кенгурятник - 10.000 ₽<br>  \nЗеркала - 20.000 ₽<br>	Доступны все, кроме: классических и отечественного производства	\N	passenger	\N	Да	227500	22750	45500	35750	65000	84500
164	Volvo VNL	120	18.86	25.35	1140	57	ДТ	\N	9980000	2	15750	Volvo_VNL	Тягач	Тихий огонёк	Мирный	0	Вставки в сиденьях, вставки в диванах\t\t\t\n\t\t\t\n\t\t\t\n\t	1	0	0	1	Чёрный пластик - 200 000 руб<br>\nХром комплект - 250 000 руб<br>\nЗеркало не треноге - 60 000 руб<br>\nЗеркало аэродин. - 80 000 руб<br>\nГуба для бампера - 50 000 руб<br>\nКастомный бампер - 200 000 руб<br>\nКенгурятник - 200 000 руб<br>\nРешётка хром - 60 000 руб<br>\nРезина на юбках - 20 000 руб<br>\nЛампочки на юбке - 40 000 руб<br>\nДополнительный свет - 60 000 руб<br>	\N	\N	cargo	1000	Нет	157500	15750	31500	24750	45000	58500
165	Audi RS6 Avant (C8)	285	2.75	14.31	73	60	АИ-98	10	10500000	4	42000	RS6_C8	Универсал	Mercury-Auto	Приволжск	4	Строчка торпедо, сиденья, подлокотники в дверных картах	1	0	\N	1	\N	Доступны все, кроме: внедорожных, классических и отечественного производства	\N	passenger	\N	Нет	420000	42000	84000	66000	120000	156000
166	ГАЗ-66	85	\N	19.87	210	52	АИ-92	\N	1350000	2	4725	Gaz_66	Грузовик	Тихий огонёк	Мирный	0	Сиденья, крышка моторного щита\t\t\t\n\t\t\t\n\t\t\t\n\t\t\t\n\t\t\t\n	0	0	0	0	Тент - 50.000 ₽<br>  \nЗащита кабины - 100.000 ₽<br>  \nБагажник на крыше - 40.000 ₽<br>  \nСвет на кенгурятник - 10.000 ₽<br>  \nСвет на капоте - 10.000 ₽<br>  \nСвет на крыше - 10.000 ₽<br>	\N	\N	cargo	310	Нет	47250	4725	9450	7425	13500	17550
167	Scania R500	121	18.45	24.96	1100	57	ДТ	\N	14150000	2	21000	ScaniaR500	Тягач	Тихий огонёк	Мирный	0	0	0	0	0	0	Кузов в цвет - 500 000 руб<br>\nСвет на крыше - 180 000 руб<br>\nКозырёк на кабину - 210 000 руб<br>\nШторка в салон - 20 000 руб<br>\nПневмогудки - 60 000 руб<br>\nЛюстра на крыше - 180 000 руб<br>	\N	\N	cargo	1000	Нет	210000	21000	42000	33000	60000	78000
168	Chevrolet Camaro ZL1	318	2.95	17.72	72	60	АИ-98	10	6550000	2	14350	CamaroZL1	Купе	World of Auto	Мирный	2	0	1	0	\N	0	\N	Доступны все, кроме: внедорожных, классических и отечественного производства	\N	passenger	\N	Нет	143500	14350	28700	22550	41000	53300
169	Audi RS7 (C8)	305	2.77	\N	73	60	АИ-98	10	10600000	4	42000	RS7_C8	Лифтбек	Mercury-Auto	Приволжск	3	\N	1	0	\N	0	\N	\N	\N	passenger	\N	Нет	420000	42000	84000	66000	120000	156000
170	GMC Vandura	150	11.18	24.44	125	52	АИ-92	15	1500000	2	7000	Vandura	Фургон	РОФЛ	Невский	4	Рамка под лобовым стеклом, внутренняя часть дверей	1	0	0	1	0	Доступны только классические и отечественного производства	\N	cargo	120	Да	70000	7000	14000	11000	20000	26000
171	Mercedes-Benz Actros	121	18.33	24.77	1200	57	ДТ	\N	14990000	2	21000	MB_Actros	Тягач	Тихий огонёк	Мирный	0	0	0	0	0	0	Боковая юбка - 180 000 руб<br>\nРешётка в цвет - 100 000 руб<br>\nЗащита бампера - 40 000 руб<br>\nСигнал на крыше - 80 000 руб<br>\nЛюстра на крыше - 100 000 руб<br>	\N	\N	cargo	1000	Нет	210000	21000	42000	33000	60000	78000
172	Volvo FH	125	17.3	24.58	1100	57	ДТ	\N	18500000	2	24500	Volvo_FH	Тягач	Тихий огонёк	Мирный	0	Вставки в торпедо, вставки в сиденьях\t\t\t\n\t\t\t\n\t\t\t\n\t	1	0	0	0	Боковая юбка - 210 000 руб<br>\nЛента на юбку - 20 000 руб<br>\nЛампочки на юбку - 60 000 руб<br>\nПередняя юбка - 160 000 руб<br>\nАвтопоезд лампочки - 60 000 руб<br>\nБоковое окно чёрное - 120 000 руб<br>\nБоковые стойки чёрные - 20 000 руб<br>\nЛампочки на решётке - 40 000 руб<br>\nЛампочки на бампере - 40 000 руб<br>\nЛайтбар на крыше - 195 000 руб<br>\nЗащита передних фар - 100 000 руб<br>\nУши на капоте - 60 000 руб<br>	\N	\N	cargo	1000	Нет	245000	24500	49000	38500	70000	91000
173	Audi A8 (D4)	250	4.5	24.92	\N	\N	\N	\N	6600000	4	\N	A8D4	Седан	Mercury-Auto	Приволжск	4	0	1	0	\N	0	\N	\N	\N	passenger	\N	Нет	\N	\N	\N	\N	\N	\N
174	ГАЗель NEXT	130	15.19	26.71	68	52	АИ-92	20	1500000	2	5250	GAZelle_NEXT	Фургон	Тихий огонёк	Мирный	0	0	1	0	0	0	0	\N	\N	cargo	150	Нет	52500	5250	10500	8250	15000	19500
175	Mercedes-Benz G65 AMG (W463)	233	4.55	21.42	96	56	АИ-95	10	11000000	4	43750	MB_G65W463	Внедорожник	Mercury-Auto	Приволжск	4	Вставки в сиденьях, вставки в дверных картах	1	0	\N	1	\N	Доступны все, кроме: классических и отечественного производства	\N	passenger	\N	Да	437500	43750	87500	68750	125000	162500
176	Honda Dio AF 35 ZX	64	\N	32.45	6	52	АИ-92	\N	25000	2	\N	Honda_Dio	Мотоцикл	РОФЛ	Невский	0	0	0	0	0	0	0	\N	\N	moto	\N	Нет	\N	\N	\N	\N	5000	\N
177	ЗИЛ 131 Тент	80	\N	19.8	340	57	ДТ	\N	1500000	2	5250	Zil_131Tent	Грузовик	Тихий огонёк	Мирный	0	Сиденья\t\t\t	0	0	0	0	0	\N	\N	cargo	330	Нет	52500	5250	10500	8250	15000	19500
178	Nissan 400Z	256	4.2	23.01	75	56	АИ-95	5	6700000	2	23450	400Z	Купе	World of Auto	Мирный	4	Вставки в сиденьях, строчка всех элементов салона	1	0	\N	1	\N	Доступны все, кроме: внедорожных, классических и отечественного производства	\N	passenger	\N	Нет	234500	23450	46900	36850	67000	87100
179	ИЖ Юпитер-5	132	7.21	40.7	16	52	АИ-92	\N	60000	4	\N	Upiter5	Мотоцикл	РОФЛ	Невский	\N	\N	\N	\N	\N	\N	\N	Доступны все, кроме: внедорожных, классических и отечественного производства	\N	moto	\N	Нет	\N	\N	\N	\N	5000	\N
180	Audi SQ8	250	4.1	24.8	85	57	ДТ	15	11300000	4	38500	Audi_SQ8	Внедорожник	Mercury-Auto	Приволжск	4	Сиденья, центральный подлокотник, подлокотники в дверных картах	1	0	\N	1	\N	Доступны все, кроме: классических и отечественного производства	\N	passenger	\N	Да	385000	38500	77000	60500	110000	143000
181	КамАЗ 53212 Тент	90	\N	23.68	450	57	ДТ	\N	1920000	2	5950	KAMAZ53212_tent	Грузовик	Тихий огонёк	Мирный	0	0	0	Передняя панель решётки радиатора	Кузов (без тента)	0	Уши кастомные - 20 000 руб<br>\nБампер кастомный - 60 000 руб<br>\nСпойлер на крышу - 100 000 руб<br>\nШторы в салон - 40 000 руб<br>\nБрызговики задние - 20 000 руб<br>\nВизор - 40 000 руб<br>\nНаклейка и вымпел - 20 000 руб<br>\nБрызговики на бампере - 20 000 руб<br>	\N	\N	cargo	350	Нет	59500	5950	11900	9350	17000	22100
182	Honda Gold Wing GL1500	160	5.78	37.6	15	52	АИ-92	\N	315000	2	3500	Honda_GoldWing	Мотоцикл	РОФЛ	Невский	0	0	0	0	0	0	0	\N	\N	moto	\N	Нет	\N	\N	7000	\N	10000	\N
183	Yamaha XT660	160	4.54	12.96	17	56	АИ-95	\N	450000	2	5250	YamahaXT660	Мотоцикл	World of Auto	Мирный	0	0	0	0	0	0	0	\N	\N	moto	\N	Да	\N	\N	10500	\N	15000	\N
184	Porsche Cayenne Turbo	286	3.36	17.02	95	56	АИ-95	10	11625000	4	40250	CayenneTurbo	Кроссовер	Mercury-Auto	Приволжск	3	Нижняя часть торпедо, частичная отделка центральной консоли, сиденья, дверные карты	1	0	\N	1	\N	Доступны все, кроме: классических и отечественного производства	\N	passenger	\N	Да	402500	40250	80500	63250	115000	149500
186	Porsche Panamera Turbo	312	3.2	16.75	100	60	АИ-98	15	12230000	4	43750	Panamera	Лифтбек	Mercury-Auto	Приволжск	3	Нижняя часть торпедо, отделка центральной консоли, дверные карты, пороги, стойки, отделка крыши, отд	1	0	\N	0	\N	Доступны все, кроме: внедорожных, классических и отечественного производства	\N	passenger	\N	Нет	437500	43750	87500	68750	125000	162500
187	Harley-Davidson Fat Boy Lo	191	5.13	54.18	19	56	АИ-95	\N	1700000	2	6650	HarleyDavidson	Мотоцикл	World of Auto	Мирный	0	0	0	0	0	0	0	\N	\N	moto	\N	Нет	66500	6650	13300	10450	19000	24700
188	Ducati Diavel Carbon	270	1.75	13.64	17	56	АИ-95	\N	2200000	2	9800	DucatiDiavel	Мотоцикл	World of Auto	Мирный	0	0	0	0	0	0	0	\N	\N	moto	\N	Нет	98000	9800	19600	15400	28000	36400
189	Mercedes-Benz G500 (W464)	217	5	19.94	95	60	АИ-98	10	12500000	4	45500	MB_G500W464	Внедорожник	Mercury-Auto	Приволжск	4	Сиденья, вставки в дверных картах, вставка крышки багажника	1	0	\N	1	\N	Доступны все, кроме: классических и отечественного производства	\N	passenger	\N	Да	455000	45500	91000	71500	130000	169000
190	Indian Chief Dark Horse	192	5.14	64.9	15	52	АИ-92	\N	3750000	2	15750	IndianCheif	Мотоцикл	World of Auto	Мирный	0	0	0	0	0	0	0	\N	\N	moto	\N	Нет	157500	15750	31500	24750	45000	58000
191	ЛиАЗ-5256.00 (поздний вариант)	95	\N	21.9	238	57	ДТ	\N	5250000	24	14000	LIAZ5256_00_pozdn	Автобус	МирБус	Мирный	0	0	Верхняя часть кузова	Нижняя часть кузова, полосы на кузове	Двери	0	0	\N	\N	public	\N	Нет	140000	14000	28000	22000	40000	52000
192	BMW S1000RR	300	1.6	16.5	18	56	АИ-95	\N	5400000	2	15400	BMW_S1000RR	Мотоцикл	World of Auto	Мирный	\N	\N	Передний подкрылок, пластик на передней части, топливный бак, хвостовая часть	Сиденье	Колёсные диски	\N	Комплектация M - 300.000 ₽<br>\nНаклейка на корпусе №1 - 30.000 ₽<br>\nНаклейка на корпусе №2 - 50.000 ₽<br>	Доступны все, кроме: внедорожных, классических и отечественного производства	\N	moto	\N	Нет	154000	15400	30800	24200	44000	57200
193	Range Rover SVAutobiography	250	4.58	22.73	106	56	АИ-95	15	12830000	4	42000	RR_SVAutobiography	Внедорожник	World of Auto	Мирный	4	Недоступно	Нижняя часть кузова	0	\N	1	\N	Доступны все, кроме: классических и отечественного производства	\N	passenger	\N	Да	420000	42000	84000	66000	120000	156000
194	ГАЗель БИЗНЕС	129	14.94	25.37	75	52	АИ-92	\N	500500	11	4200	GAZelle_Biznes	Микроавтобус	МирБус, АвтоМакс	Мирный	4	Нижняя часть торпедо, вставки в сиденьях	1	0	0	0	0	\N	\N	public	\N	Нет	\N	\N	8400	\N	12000	\N
195	ЛАЗ-4207	113	22.47	28.24	230	57	ДТ	\N	5500000	39	3500	LAZ_4207	Автобус	МирБус	Мирный	0	0	1	Верхняя и нижняя боковые полосы	Средняя боковая полоса	0	Шторки - 125.000 ₽<br>	\N	\N	public	\N	Нет	35000	3500	7000	5500	10000	13000
196	Porsche Taycan Turbo S	260	2.5	15.53	100	5	электричество	10	13500000	4	49000	Taycan_TurboS	Универсал	Mercury-Auto	Приволжск	3	Цвет строчки руля, цвет строчки торпедо, нижняя часть торпедо, отделка центральной консоли, сиденья,	1	0	\N	0	Чёрная крыша - 200.000 ₽<br>	Доступны все, кроме: внедорожных, классических и отечественного производства	\N	passenger	\N	Нет	490000	49000	98000	77000	140000	182000
197	ЛиАЗ 5256.00-11	105	22.48	24.12	238	57	ДТ	\N	5750000	44	14000	LIAZ5256_00_11	Автобус	МирБус	Мирный	0	0	Верхняя часть кузова	Нижняя часть кузова, полоса на кузове	Двери	0	0	\N	\N	public	\N	Нет	140000	14000	28000	22000	40000	52000
198	КАвЗ-3270	90	\N	17.47	105	57	ДТ	\N	1350000	20	3500	KAVZ_3270	Автобус	МирБус	Мирный	0	0	Верхняя часть кузова, передняя решётка	Нижняя часть кузова, передние крылья, капот	Полоски на кузове	0	Шторки - 75.000 ₽<br>  \nУтеплитель радиатора - 50.000 ₽<br>  \nАксессуары - 50.000 ₽<br>	\N	\N	public	\N	Да	35000	3500	7000	5500	10000	13000
199	КАвЗ-4238 Аврора	119	18.45	25.49	170	57	ДТ	\N	5890000	39	14875	KAVZ_4238_Avrora	Автобус	МирБус	Мирный	0	0	1	Нижняя полоса	Верхняя полоса	0	Шторки - 125.000 ₽<br>   \nАксессуары - 50.000 ₽<br>	\N	\N	public	\N	Нет	148750	14875	29750	23375	42500	55250
200	BMW X7	250	4.7	24.86	83	60	АИ-98	15	13500000	4	42000	X7G07	Внедорожник	Mercury-Auto	Приволжск	4	Нижняя часть торпедо, отделка центральной консоли, вставки в дверных картах, сиденья, частичная отде	1	0	\N	1	\N	Доступны все, кроме: классических и отечественного производства	\N	passenger	\N	Да	420000	42000	84000	66000	120000	156000
201	ПАЗ-32053 (бензин)	90	\N	21.96	105	52	АИ-92	\N	1500000	23	5250	PAZ_32053_bensin	Автобус	МирБус	Мирный	0	0	1	Полоски на кузове	0	0	Шторки - 75.000 ₽<br>  	\N	\N	public	\N	Да	52500	5250	10500	8250	15000	19500
202	ЛАЗ-5207	100	25.06	25.06	230	57	ДТ	\N	6000000	47	3500	LAZ_5207	Автобус	МирБус	Мирный	0	0	1	Верхняя и нижняя полосы	Средняя полоса	0	Шторки - 125.000 ₽<br>	\N	\N	public	\N	Нет	35000	3500	7000	5500	10000	13000
203	КамАЗ 53212 Контейнер	90	\N	23.68	450	57	ДТ	\N	2190000	2	6755	KAMAZ53212_kont	Грузовик	Тихий огонёк	Мирный	0	0	0	Передняя панель решётки радиатора	Контейнер	0	Уши кастомные - 20 000 руб<br>\nБампер кастомный - 60 000 руб<br>\nСпойлер на крышу - 100 000 руб<br>\nШторы в салон - 40 000 руб<br>\nБрызговики задние - 20 000 руб<br>\nВизор - 40 000 руб<br>\nНаклейка и вымпел - 20 000 руб<br>\nБрызговики на бампере - 20 000 руб<br>	\N	\N	cargo	360	Нет	67550	6755	13510	10615	19300	25090
247	Honda CBR1100XX Super Blackbird	300	1.79	24.8	23	56	АИ-95	\N	700000	2	5250	HondaCBR1100XX 	Мотоцикл	World of Auto	Мирный	\N	\N	1	Сидение	Диски	\N	Наклейка на вилку - 10.000 ₽<br>\nНаклейка на кузов - 30.000 ₽<br> 	Доступны все, кроме: внедорожных, классических и отечественного производства	\N	moto	\N	Нет	52500	5250	10500	8250	15000	19500
204	Porsche Panamera Turbo S Sport Turismo	315	3.1	16.34	90	60	АИ-98	10	13700000	4	43400	Porshe_Turismo	Хэтчбек	Mercury-Auto	Приволжск	3	Нижняя часть торпедо, отделка передней и задней центральной консоли, дверные карты, сиденья	1	\N	\N	1	\N	Доступны все, кроме: внедорожных, классических и отечественного производства	\N	passenger	\N	Нет	434000	43400	86800	68200	124000	161200
205	ЛиАЗ 5256.40	105	22.49	24.12	238	57	ДТ	\N	6250000	23	14000	LIAZ_5256_40	Автобус	МирБус	Мирный	0	0	Верхняя часть кузова	Нижняя часть кузова, полосы на кузове	Двери, поручни в салоне	0	0	\N	\N	public	\N	Нет	140000	14000	28000	22000	40000	52000
206	ПАЗ-32054 (бензин)	90	\N	21.96	105	52	АИ-92	\N	1600000	21	5250	PAZ_32054_Bensin	Автобус	МирБус	Мирный	0	0	1	Полоски на кузове, боковые части рисунка на кузове	0	0	Шторки - 75.000 ₽<br>  	\N	\N	public	\N	Да	52500	5250	10500	8250	15000	19500
207	Mercedes-Benz Sprinter Classic 311 CDI	145	12.62	27.1	75	57	ДТ	20	2600000	2	9450	MB_Sprinter311	Фургон	Тихий огонёк	Мирный	0	0	1	0	0	0	Кенгурятник хром - 100 000 руб<br>\nКенгурятник чёрный - 100 000 руб<br>\nДополнительный свет - 45 000 руб<br>\nБрызговики - 30 000 руб<br>\nЗащита фонарей (перед) - 75 000 руб<br>\nЗащита фонарей (зад) - 75 000 руб<br>\nБагажник на крыше - 275 000 руб<br>\nДефлектор капота - 30 000 руб<br>\nФаркоп-подножка - 45 000 руб<br>	\N	\N	cargo	230	Нет	94500	9450	18900	14850	27000	35100
208	Mercedes-AMG GT 63 S 4MATIC+	315	3.03	26.51	68	60	АИ-98	10	13863000	4	43750	MB_GT63s	Купе	Mercury-Auto	Приволжск	3	Торпедо, боковины руля, вставки в дверные карты, сиденья, отделка центральной консоли, центральный п	1	0	\N	1	\N	Доступны все, кроме: внедорожных, классических и отечественного производства	\N	passenger	\N	Нет	437500	43750	87500	68750	125000	162500
209	Ikarus 260 (ширмовые двери)	90	\N	21.91	250	57	ДТ	\N	6500000	22	14000	Ikarus260_shirma	Автобус	МирБус	Мирный	0	0	Верхняя часть кузова, двери\t\n\t\n\t\n\t\n\t\n\t\n\t\n\t\n\t\n\t\n\t\n\t	Средняя часть кузова	Нижняя часть кузова	0	Дополнительные фонари 1 - 50.000 ₽<br>  \nДополнительные фонари 2 - 50.000 ₽<br>  \nДополнительные зеркала - 25.000 ₽<br>  \nХромированная накладка 1 - 25.000 ₽<br>  \nХромированная накладка 2 - 25.000 ₽<br>  \nОтражатели - 50.000 ₽<br>  \nВымпелы - 25.000 ₽<br>  \nШторки - 100.000 ₽<br>  \nОгни автопоезда - 75.000 ₽<br>  \nУплотнительный кожух - 50.000 ₽<br>  \nТабличка "Заказной" - 25.000 ₽<br>  \nБрызговики - 50.000 ₽<br>	\N	\N	public	\N	Нет	140000	14000	28000	22000	40000	52000
210	Ikarus 260 (платетарные двери)	90	\N	21.91	250	57	ДТ	\N	6550000	22	14000	Ikarus260_planeta	Автобус	МирБус	Мирный	0	0	Верхняя часть кузова\t\n\t\n\t\n\t\n\t\n\t\n\t\n\t\n\t\n\t\n\t\n\t	Средняя часть кузова	Нижняя часть кузова	0	Дополнительные фонари 1 - 50.000 ₽<br>  \nДополнительные фонари 2 - 50.000 ₽<br>  \nДополнительные зеркала - 25.000 ₽<br>  \nХромированная накладка 1 - 25.000 ₽<br>  \nХромированная накладка 2 - 25.000 ₽<br>  \nОтражатели - 50.000 ₽<br>  \nВымпелы - 25.000 ₽<br>  \nШторки - 100.000 ₽<br>  \nОгни автопоезда - 75.000 ₽<br>  \nУплотнительный кожух - 50.000 ₽<br>  \nТабличка "Заказной" - 25.000 ₽<br>  \nБрызговики - 50.000 ₽<br>	\N	\N	public	\N	Нет	140000	14000	28000	22000	40000	52000
211	Scania OmniLink CK95UB 4x2 LB (2 doors)	100	20.4	20.4	300	57	ДТ	\N	7500000	43	8750	Scania_omnilink_2dr	Автобус	МирБус	Мирный	0	0	Верхняя часть кузова	Нижняя часть кузова	0	0	Наклейки Scania - 25.000 ₽<br>\nБрызговики - 50.000 ₽<br>	\N	\N	public	\N	Нет	87500	8750	17500	13750	25000	32500
212	ПАЗ-32054 (дизель)	94	\N	21.81	105	57	ДТ	\N	1700000	21	5250	PAZ_32054_Diesel	Автобус	МирБус	Мирный	0	0	1	0	Центральная часть рисунка на кузове	0	Шторки - 75.000 ₽<br>  	\N	\N	public	\N	Да	52500	5250	10500	8250	15000	19500
213	Audi R8	334	2.65	18.39	83	60	АИ-98	0	14000000	2	43050	AudiR8	Купе	Mercury-Auto	Приволжск	3	Боковины руля, отделка центральной консоли, вставки в дверные карты, центральный подлокотник, сидень	1	0	\N	1	\N	Доступны все, кроме: внедорожных, классических и отечественного производства	\N	passenger	\N	Нет	430500	43050	86100	67650	123000	159900
214	Scania OmniLink CK95UB 4x2 LB (3 doors)	100	20.4	20.4	300	57	ДТ	\N	7850000	33	8750	Scania_Omnilink_3dr	Автобус	МирБус	Мирный	0	0	Верхняя часть кузова	Нижняя часть кузова	0	0	Наклейки Scania - 25.000 ₽<br>\nБрызговики - 50.000 ₽<br>	\N	\N	public	\N	Нет	87500	8750	17500	13750	25000	32500
215	Богдан А092	105	26.7	29.3	100	57	ДТ	\N	1850000	22	7000	BogdanA092	Автобус	МирБус	Мирный	0	0	1	0	0	0	Дополнительный свет - 25.000 ₽<br>  \nДополнительные зеркала - 45.000 ₽<br>  \nЛоготип "Богдан" - 10.000 ₽<br>  \nЗапасное колесо - 100.000 ₽<br>  \nКондиционер - 125.000 ₽<br>  \nГБО - 200.000 ₽<br>  \nБрызговики - 30.000 ₽<br>  \nШторки - 75.000 ₽<br>	\N	\N	public	\N	Нет	70000	7000	14000	11000	20000	26000
216	Acura NSX	308	2.64	17.78	70	56	АИ-95	10	14300000	2	42000	AcuraNSX	Купе	World of Auto	Мирный	3	Отделка центральной консоли, вставки в дверные карты, сиденья	1	0	\N	1	\N	Доступны все, кроме: внедорожных, классических и отечественного производства	\N	passenger	\N	Нет	420000	42000	84000	66000	120000	156000
217	ЛиАЗ 4292	85	\N	24.36	200	57	ДТ	\N	8210000	16	14000	LIAZ4292	Автобус	МирБус	Мирный	0	0	1	0	0	0	0	\N	\N	public	\N	Нет	140000	14000	28000	22000	40000	52000
245	Mercedes-Benz CLS63 AMG (C218) Дорест	285	3.17	15.95	66	60	АИ-98	10	4400000	4	15400	MB_C218_dorest	Седан	Mercury-Auto	Приволжск	4	Сиденья, центральный подлокотник, вставки в дверных картах	1	0	0	1	0	Доступны все, кроме: внедорожных, классических и отечественного производства	0	passenger	0	Нет	154000	15400	30800	24200	44000	57200
218	KAMAZ-5490 NEO	112	20.5	24.27	760	57	ДТ	\N	5900000	2	13475	Kamaz_NEO	Тягач	Тихий огонёк	Мирный	0	Вставки в сиденьях, матрас спальника\t\t\t\n\t\t\t\n\t\t\t\n\t\t	0	0	0	0	Заводской спойлер - 120 000 руб<br>\nГБО - 20 000 руб<br>\nЛампочки на решётке - 20 000 руб<br>\nРешётка на передние фары - 45 000 руб<br>\nЧёрная решётка - 40 000 руб<br>\nШтора в салон - 20 000 руб<br>\nСвет на крыше - 80 000 руб<br>\nБоковые юбки - 140 000 руб<br>\nСпойлер - 160 000 руб<br>	\N	\N	cargo	1000	Нет	134750	13475	26950	21175	38500	50050
219	ЛАЗ-697Р Турист	80	\N	24.64	154	52	АИ-92	\N	8500000	33	21000	LAZ697_Turist	Автобус	МирБус	Мирный	0	0	1	Полосы на кузове	0	0	Брызговики - 50.000 ₽<br>  \nДоп. брызговики - 45.000 ₽<br>  \nРанняя светотехника - 150.000 ₽<br>  \nХромированные накладки - 45.000 ₽<br>  \nПластиковая накладка - 100.000 ₽<br>  \nОтражатели - 45.000 ₽<br>  \nУплотнительный кожух - 50.000 ₽<br>  \nГБО - 200.000 ₽<br>  \nКвадратный номер - 25.000 ₽<br>  \nФорточка на двери - 45.000 ₽<br>	\N	\N	public	\N	Нет	210000	21000	42000	33000	60000	78000
220	ГАЗель NEXT A64R42 Ситилайн	120	18.81	27.91	64	52	АИ-92	\N	2100000	18	7000	GAZelle_Cityline	Автобус	МирБус	Мирный	0	0	1	0	0	0	Брызговики - 25.000 ₽<br>\nКондиционер - 75.000 ₽<br>	\N	\N	public	\N	Нет	70000	7000	14000	11000	20000	26000
221	Ikarus 256.54	121	16.66	23.89	300	57	ДТ	\N	8750000	45	12250	Ikarus256	Автобус	МирБус	Мирный	0	0	Средняя часть кузова\t\n\t\n\t	Нижняя часть кузова	Верхняя часть кузова	0	Шторки - 150.000 ₽<br>   \nАксессуары - 100.000 ₽<br>\nОчки - 250.000 ₽<br>	\N	\N	public	\N	Нет	122500	12250	24500	19250	35000	45500
222	ЛиАЗ-5256.00	95	\N	21.9	238	57	ДТ	\N	9000000	24	14000	LIAZ5256_00	Автобус	МирБус	Мирный	0	0	Верхняя часть кузова\t\n\t\n\t	Полосы на кузове	Двери	0	0	\N	\N	public	\N	Нет	140000	14000	28000	22000	40000	52000
223	ПАЗ-4234 (дизель)	93	\N	21.65	95	57	ДТ	\N	2150000	30	7000	PAZ_4234_Diesel	Автобус	МирБус	Мирный	0	0	1	Задняя часть рисунка	Задняя часть рисунка	0	Шторки - 75.000 ₽<br>	\N	\N	public	\N	Да	70000	7000	14000	11000	20000	26000
224	ЛиАЗ-5292.22	115	22.51	30.49	290	57	ДТ	\N	9250000	22	\N	LIAZ_5292_22	Автобус	МирБус	Мирный	0	0	Верхняя часть кузова	Полосы на кузове	0	0	Брызговики - 50.000 ₽<br>   \nЭМУ в салоне - 75.000 ₽<br>\nНакладка в цвет кузова - 95.000 ₽<br>	\N	\N	public	\N	Нет	\N	\N	\N	\N	10000	\N
225	Богдан А09302	110	25.9	33.1	120	57	ДТ	\N	2200000	25	8750	BogdanA093_02	Автобус	МирБус	Мирный	0	0	1	0	0	0	Дополнительный свет - 25.000 ₽<br>  \nДополнительные зеркала - 45.000 ₽<br>  \nЛоготип "Богдан" - 10.000 ₽<br>  \nЗапасное колесо - 100.000 ₽<br>  \nКондиционер - 125.000 ₽<br>  \nГБО - 200.000 ₽<br>  \nБрызговики - 30.000 ₽<br>  \nШторки - 75.000 ₽<br>	\N	\N	public	\N	Нет	87500	8750	17500	13750	25000	32500
226	МАЗ-203	106	21.33	23.44	300	57	ДТ	\N	10000000	25	5250	MAZ_203	Автобус	МирБус	Мирный	0	0	1	Ничего не красится	0	0	0	\N	\N	public	\N	Нет	52500	5250	10500	8250	15000	19500
227	Богдан А09304 Атаман	110	25.1	32.2	120	57	ДТ	\N	2400000	25	8750	bogdan_ataman	Автобус	МирБус	Мирный	0	0	1	0	0	0	Дополнительный свет - 25.000 ₽<br>  \nДополнительные зеркала - 45.000 ₽<br>  \nЛоготип "Богдан" - 10.000 ₽<br>  \nЗапасное колесо - 100.000 ₽<br>  \nКондиционер - 125.000 ₽<br>  \nГБО - 200.000 ₽<br>  \nБрызговики - 30.000 ₽<br>  \nШторки - 75.000 ₽<br>	\N	\N	public	\N	Нет	87500	8750	17500	13750	25000	32500
228	Ikarus 250.59	115	17.82	22.82	250	57	ДТ	\N	10250000	51	6300	Ikarus250	Автобус	МирБус	Мирный	0	0	Средняя часть кузова\t\n\t\n\t	Нижняя часть кузова	Верхняя часть кузова	0	Шторки - 150.000 ₽<br>   \nАксессуары - 100.000 ₽<br>\nОчки - 250.000 ₽<br>	\N	\N	public	\N	Нет	63000	6300	12600	9900	18000	23400
229	ЛАЗ-699Р Турист	100	31.32	31.32	282	52	АИ-92	\N	10500000	41	22750	LAZ699_Turist	Автобус	МирБус	Мирный	0	0	1	Полосы на кузове	0	0	Брызговики - 50.000 ₽<br>  \nДоп. брызговики - 45.000 ₽<br> \nДополнительный свет - 45.000 ₽<br> \nРанняя светотехника - 150.000 ₽<br>  \nХромированные накладки - 45.000 ₽<br>  \nПластиковая накладка - 100.000 ₽<br>  \nОтражатели - 45.000 ₽<br>  \nУплотнительный кожух - 50.000 ₽<br>  \nГБО - 200.000 ₽<br>  \nКвадратный номер - 25.000 ₽<br>  \nФорточка на двери - 45.000 ₽<br>	\N	\N	public	\N	Нет	227500	22750	45500	35750	65000	84500
230	КАвЗ-685М	90	\N	17.46	105	57	ДТ	\N	2450000	20	7875	KAVZ_685M	Автобус	МирБус	Мирный	0	0	Верхняя часть кузова, передняя решётка	Полоски на кузове	Полоски на кузове	0	Шторки - 75.000 ₽<br>  \nУтеплитель радиатора - 50.000 ₽<br>  \nАксессуары - 50.000 ₽<br>	\N	\N	public	\N	Да	78750	7875	15750	12375	22500	29250
231	ЛиАз-677М	80	\N	18.44	300	57	ДТ	\N	10650000	24	14000	LIAZ677M	Автобус	МирБус	Мирный	0	0	Верхняя часть кузова, передний и задний бампер        \n        \n        \n        \n        \n        \n        \n        \n        \n        	Нижняя часть кузова	Полоса на кузове	0	Бампера в цвет юбки - 25.000 ₽<br>  \nКвадратный номер - 25.000 ₽<br>  \nБрызговики - 50.000 ₽<br>  \nОтражатели 1 - 75.000 ₽<br>  \nУтеплитель радиатора 1 - 45.000 ₽<br>  \nУтеплитель радиатора 2 - 45.000 ₽<br>  \nПротивотуманки - 75.000 ₽<br>  \nХромированная накладка - 75.000 ₽<br>  \nЗапасное колесо - 425.000 ₽<br>  \nРешётка - 25.000 ₽<br>	\N	\N	public	\N	Нет	140000	14000	28000	22000	40000	52000
232	ПАЗ-32053 рестайлинг (бензин)	97	\N	22.64	105	52	АИ-92	\N	2500000	25	7000	PAZ_32053rest_bensin	Автобус	МирБус	Мирный	0	0	1	Задняя часть рисунка	Задняя часть рисунка	0	Шторки - 50.000 ₽<br>	\N	\N	public	\N	Да	70000	7000	14000	11000	20000	26000
233	ПАЗ-32054 рестайлинг (бензин)	97	\N	22.64	105	52	АИ-92	\N	2600000	23	7000	PAZ_32054rest_bensin	Автобус	МирБус	Мирный	0	0	1	Задняя часть рисунка	Задняя часть рисунка	0	Шторки - 75.000 ₽<br>	\N	\N	public	\N	Да	70000	7000	14000	11000	20000	26000
234	ЛиАз-677 (ранний)	80	\N	18.44	300	57	ДТ	\N	14250000	24	14000	LIAZ677_early	Автобус	МирБус	Мирный	0	0	Верхняя часть кузова	Нижняя часть кузова	Полоса на кузове	0	Бампера в цвет юбки - 25.000 ₽<br>  \nКвадратный номер - 25.000 ₽<br>  \nБрызговики - 50.000 ₽<br>  \nОтражатели 1 - 75.000 ₽<br>  \nУтеплитель радиатора 1 - 45.000 ₽<br>  \nУтеплитель радиатора 2 - 45.000 ₽<br>  \nПротивотуманки - 75.000 ₽<br>  \nХромированная накладка - 75.000 ₽<br>  \nЗапасное колесо - 425.000 ₽<br>  \nРешётка - 25.000 ₽<br>	\N	\N	public	\N	Нет	140000	14000	28000	22000	40000	52000
235	Mercedes-Benz Sprinter Classic 411 CDI (Base)	140	13.8	28	75	57	ДТ	\N	2650000	15	9450	MB_Sprinter411_Base	Микроавтобус	МирБус	Мирный	0	0	1	0	0	0	Телевизор в салон - 30.000 ₽<br>  \nФаркоп-подножка - 45.000 ₽<br>  \nКенгурятник хром - 100.000 ₽<br>  \nКенгурятник чёрный - 100.000 ₽<br>  \nДополнительный свет - 45.000 ₽<br>  \nБрызговики - 30.000 ₽<br>  \nКондиционер - 125.000 ₽<br>  \nПодножка сбоку - 75.000 ₽<br>  \nНакладки на арки - 45.000 ₽<br>  \nЗащита фонарей (перед) - 75.000 ₽<br>  \nЗащита фонарей (зад) - 75.000 ₽<br>  \nБагажник на крыше - 275.000 ₽<br>  \nБагажник на крыше (кондиционер) - 275.000 ₽<br>  \nНаклейка на дверь - 10.000 ₽<br>  \nДефлектор капота - 30.000 ₽<br>	\N	\N	public	\N	Нет	94500	9450	18900	14850	27000	35100
236	ЛиАз-677Э (экспортный)	80	\N	18.44	300	57	ДТ	\N	21550000	24	14000	LIAZ677_export	Автобус	МирБус	Мирный	0	0	Верхняя часть кузова	Нижняя часть кузова	Полоса на кузове	0	Бампера в цвет юбки - 25.000 ₽<br>  \nКвадратный номер - 25.000 ₽<br>  \nБрызговики - 50.000 ₽<br>  \nОтражатели 1 - 75.000 ₽<br>  \nУтеплитель радиатора 1 - 45.000 ₽<br>  \nУтеплитель радиатора 2 - 45.000 ₽<br>  \nПротивотуманки - 75.000 ₽<br>  \nХромированная накладка - 75.000 ₽<br>  \nЗапасное колесо - 425.000 ₽<br>  \nРешётка - 25.000 ₽<br>	\N	\N	public	\N	Нет	140000	14000	28000	22000	40000	52000
237	Mercedes-Benz Sprinter Classic 411 CDI (AS3)	140	13.8	28	75	57	ДТ	\N	2800000	15	9450	MB_Sprinter411_AS3	Микроавтобус	МирБус	Мирный	0	0	1	0	0	0	Телевизор в салон - 30.000 ₽<br>  \nФаркоп-подножка - 45.000 ₽<br>  \nКенгурятник хром - 100.000 ₽<br>  \nКенгурятник чёрный - 100.000 ₽<br>  \nДополнительный свет - 45.000 ₽<br>  \nБрызговики - 30.000 ₽<br>  \nКондиционер - 125.000 ₽<br>  \nПодножка сбоку - 75.000 ₽<br>  \nНакладки на арки - 45.000 ₽<br>  \nЗащита фонарей (перед) - 75.000 ₽<br>  \nЗащита фонарей (зад) - 75.000 ₽<br>  \nБагажник на крыше - 275.000 ₽<br>  \nБагажник на крыше (кондиционер) - 275.000 ₽<br>  \nНаклейка на дверь - 10.000 ₽<br>  \nДефлектор капота - 30.000 ₽<br>	\N	\N	public	\N	Нет	94500	9450	18900	14850	27000	35100
238	ПАЗ-320405-04 Вектор Next	133	16.96	32.01	95	52	АИ-92	\N	3000000	24	5250	PAZ_Vector_Next	Автобус	МирБус	Мирный	0	0	1	Ничего не красится	0	0	0	\N	\N	public	\N	Нет	52500	5250	10500	8250	15000	19500
239	ПАЗ 672М	91	\N	20.87	105	52	АИ-92	\N	4000000	22	7000	PAZ_672M	Автобус	МирБус	Мирный	0	0	1	Полоски на кузове	Колёсные диски	0	Брызговики - 50.000 ₽<br>  \nВымпелы - 25.000 ₽<br>  \nОтражатели - 25.000 ₽<br>  \nАнтенна - 25.000 ₽<br>  \nУтеплитель левый - 15.000 ₽<br>  \nГБО - 150.000 ₽<br>  \nУтеплитель правый - 15.000 ₽<br>  \nДверные козырьки - 25.000 ₽<br>  \nХромированные накладки - 25.000 ₽<br>  \nШторки - 75.000 ₽<br>	\N	\N	public	\N	Да	70000	7000	14000	11000	20000	26000
240	ПАЗ-320414-05 Вектор	115	17.65	22.38	90	52	АИ-92	\N	4450000	22	3850	PAZ_Vector	Автобус	МирБус	Мирный	0	0	1	0	0	0	0	\N	\N	public	\N	Нет	38500	3850	7700	6050	11000	14300
241	ПАЗ-4230 Аврора	121	17.5	25.19	105	57	ДТ	\N	4550000	23	12250	PAZ_4230_Avrora	Автобус	МирБус	Мирный	0	0	1	Верхняя и нижняя боковые полосы	Средняя боковая полоса	0	Шторки - 100.000 ₽<br>   \nАксессуары - 50.000 ₽<br>	\N	\N	public	\N	Нет	122500	12250	24500	19250	35000	45500
242	ЛАЗ-695Н	85	\N	26.87	154	57	ДТ	\N	4695000	33	12250	LAZ_695N	Автобус	МирБус	Мирный	0	0	Верхняя часть кузова, передний бампер	Нижняя часть кузова, боковые полосы	0	0	ГБО - 200.000 ₽<br>  \nОтражатели - 45.000 ₽<br>  \nУплотнительный кожух - 50.000 ₽<br>  \nХромированные накладки - 45.000 ₽<br>  \nБрызговики - 50.000 ₽<br>  \nДоп. брызговики - 45.000 ₽<br>  \nДополнительный свет - 45.000 ₽<br>  \nРанняя светотехника - 150.000 ₽<br>  \nРанняя решётка хром - 125.000 ₽<br>  \nПластиковая накладка - 100.000 ₽<br>  \nШторки - 75.000 ₽<br>  \nКвадратный номер - 25.000 ₽<br>  \nКолпаки - 150.000 ₽<br>	\N	\N	public	\N	Нет	122500	12250	24500	19250	35000	45500
243	BMW M5 (F90) LCI	305	2.82	15.62	68	60	АИ-98	10	13000000	4	43750	M5F90_LCI	Седан	Mercury-Auto	Приволжск	3	Нижняя часть торпедо, частичная отделка центральной консоли, центральный подлокотник, сиденья, вставки в дверных картах	1	0	0	1	Диффузор в цвет кузова - 100.000 ₽<br>\nКарбоновый диффузор - 150.000 ₽<br>\nСпойлер в цвет кузова - 100.000 ₽<br>\nСпойлер CS - 150.000 ₽<br>\nЮбилейные шильдики - 25.000 ₽<br>\nВыхлоп "Acrapovic" - 200.000 ₽<br>\nНакладки зеркал (карбон) - 100.000 ₽<br>\nКарбоновый капот - 300.000 ₽<br>\nНакладки "M Perfomance" - 100.000 ₽<br>\nРестайлинговые фонари (Недоступно для установки) - 150.000 ₽<br>\nСплиттер "M Perfomance" - 150.000 ₽<br>\nСплиттер CS - 150.000 ₽<br>	Доступны все, кроме: внедорожных, классических и отечественного производства	0	passenger	0	Нет	437500	43750	87500	68750	125000	162500
244	ЗАЗ-968 "Запорожец"	120	27.58	40.25	25	52	АИ-92	4	35000	2	\N	ZAZ_968	Седан	РОФЛ	Невский	4	Сиденья, дверные карты	1			\N	\N	Доступны все, кроме внедорожных	\N	passenger	\N	Нет	\N	\N	\N	\N	4000	\N
246	Mercedes-Benz E63 S (W213) рестайлинг	\N	\N	\N	\N	60	АИ-98	\N	12500000	4	\N	MB_W213_rest	Седан	Mercury-Auto	Приволжск	0	\N	\N	\N	\N	\N	\N	\N	\N	passenger	\N	Нет	\N	\N	\N	\N	\N	\N
248	Suzuki GSX 1300 R Hayabusa	312	1.63	21.79	21	56	АИ-95	\N	2700000	2	\N	Suzuki_GSX_1300	Мотоцикл	World of Auto	Мирный	\N	\N	\N	\N	\N	\N	Наклейка - 30.000 ₽<br>\nКузовная накладка - 50.000 ₽<br> 	Доступны все, кроме: внедорожных, классических и отечественного производства	\N	moto	\N	Нет	\N	\N	\N	\N	\N	\N
250	KTM 690 Enduro R	190	3.69	17.14	\N	56	АИ-95	\N	1550000	2	\N	KTM_690_Enduro	Мотоцикл	World of Auto	Мирный	\N	\N	\N	\N	\N	\N	Наклейка на вилку - 10.000 ₽<br>\nНаклейка на кузов - 30.000 ₽<br> 	Доступны все, кроме: внедорожных, классических и отечественного производства	\N	moto	\N	Да	\N	\N	\N	\N	\N	\N
251	Yamaha XVS400 Drag Star	134	7.43	14.9	15	56	АИ-92	\N	500000	2	\N	Yamaha_XVS400_Drag	Мотоцикл	World of Auto	Мирный	\N	\N	\N	\N	\N	\N	Переднее зеркало №1 - 30.000 ₽<br>\nПереднее зеркало №2 - 40.000 ₽<br>\nВетровое стекло №1 - 50.000 ₽<br>\nВетровое стекло №2 - 75.000 ₽<br>\nПередние дуги №1 - 50.000 ₽<br>\nПередние дуги №2 - 50.000 ₽<br>\nНакладка на бак - 30.000 ₽<br>\nЗаклепки на бак - 10.000 ₽<br>\nЛоготип на кузове №1 - 15.000 ₽<br>\nЛоготип на кузове №2 - 15.000 ₽<br>\nЗадние ручки - 20.000 ₽<br>\nПодножка №1 - 30.000 ₽<br>\nПодножка №2 - 30.000 ₽<br>\nПодножка №3 - 30.000 ₽<br>\n<b>Тюнинг только для Classic версии:</b><br>\nДуги кофров - 20.000 ₽<br>\nМеталлические кофры - 75.000 ₽<br>\nСпинка №1 - 20.000 ₽<br>\nСпинка №2 - 75.000 ₽<br>\nБагажник - 30.000 ₽<br>\nРейлинг на заднем крыле - 20.000 ₽<br>\nЗаклепки на сиденьях - 10.000 ₽<br>	Доступны все, кроме: внедорожных, классических и отечественного производства	\N	moto	\N	Нет	\N	\N	\N	\N	\N	\N
252	Yamaha XVS400 Drag Star Classic	135	7.43	14.9	15	56	АИ-95	\N	500000	2	4200	Yamaha_XVS400_Drag_Classic	Мотоцикл	World of Auto	Мирный	0	\N	Кузов	Сиденье	Обод колес	\N	Переднее зеркало 1 - 30.000 ₽<br>\nВетровое стекло 2 - 75.000 ₽<br>\nПередние дуги 2 - 50.000 ₽<br>\nНакладка на бак - 30.000 ₽<br>\nЛоготип на кузове 1 - 15.000 ₽<br>\nЛоготип на кузове 2 - 15.000 ₽<br>\nЗадние ручки - 20.000 ₽<br>\nПодножки 1 - 30.000 ₽<br>\nДуги для кофров - 20.000 ₽<br>\nМеталлические кофры - 75.000 ₽<br>\nСпинка 2 - 75.000 ₽<br>\nБагажник - 30.000 ₽<br>\nРейлинг на заднем крыле - 20.000 ₽<br>\nЗаклепки на сидениях - 15.000 ₽<br>	Недоступно	\N	moto	\N	Нет	\N	\N	8400	\N	12000	\N
253	Kawasaki Vulcan VN900 Classic	180	4.2	17.85	\N	56	АИ-95	\N	3000000	2	\N	Kawasaki_Vulcan_VN900_Classic	Мотоцикл	World of Auto	Мирный	\N	\N	\N	\N	\N	\N	Комплектация LT - 300.000 ₽<br>\nБоковые зеркала - 50.000 ₽<br>\nРуль с тахометром - 75.000 ₽<br>\nГлушитель Vance & Hines - 100.000 ₽<br>\nКофры боковые - 75.000 ₽<br>\nДекоративные фонари - 50.000 ₽<br>\nДополнительные фары - 50.000 ₽<br>\nСветодиодная фара - 75.000 ₽<br>	Доступны все, кроме: внедорожных, классических и отечественного производства	\N	moto	\N	Нет	\N	\N	\N	\N	\N	\N
185	Yamaha WR250F	150	5.55	14.21	17	56	АИ-95	\N	700000	2	5250	YamahaXJ6	Мотоцикл	World of Auto	Мирный	\N	\N	\N	\N	\N	\N	Наклейка на корпус №1 - 30.000 ₽<br>\nНаклейка на корпус №2 - 30.000 ₽<br>	Доступны все, кроме: внедорожных, классических и отечественного производства	765000	moto	\N	Нет	52500	5250	10500	8250	15000	19500
249	Harley-Davidson Sportster S	220	2.75	13.21	12	56	АИ-95	\N	2800000	2	\N	Harley_Davidson_Sportster	Мотоцикл	World of Auto	Мирный	\N	\N	\N	\N	\N	\N	Наклейка на кузов - 30.000 ₽<br> 	Доступны все, кроме: внедорожных, классических и отечественного производства	\N	moto	\N	Нет	\N	\N	\N	\N	\N	\N
254	ГАЗ-М20 "Победа"	105	30.48	32.3	80	\N	АИ-92	10	1000000	4	\N	KAVZ_685M	Седан	Контейнер	Невский	4	\N	\N	\N	\N	\N	\N	\N	\N	container	\N	\N	\N	\N	\N	\N	\N	\N
\.


--
-- TOC entry 3409 (class 0 OID 18179)
-- Dependencies: 225
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: serveradmin
--

COPY public.users (id, name, email) FROM stdin;
\.


--
-- TOC entry 3424 (class 0 OID 0)
-- Dependencies: 226
-- Name: jobs_id_seq; Type: SEQUENCE SET; Schema: public; Owner: serveradmin
--

SELECT pg_catalog.setval('public.jobs_id_seq', 22, true);


--
-- TOC entry 3425 (class 0 OID 0)
-- Dependencies: 218
-- Name: posts_id_seq; Type: SEQUENCE SET; Schema: public; Owner: serveradmin
--

SELECT pg_catalog.setval('public.posts_id_seq', 1, false);


--
-- TOC entry 3426 (class 0 OID 0)
-- Dependencies: 220
-- Name: skins_id_seq; Type: SEQUENCE SET; Schema: public; Owner: serveradmin
--

SELECT pg_catalog.setval('public.skins_id_seq', 1, false);


--
-- TOC entry 3427 (class 0 OID 0)
-- Dependencies: 222
-- Name: transport_id_seq; Type: SEQUENCE SET; Schema: public; Owner: serveradmin
--

SELECT pg_catalog.setval('public.transport_id_seq', 254, true);


--
-- TOC entry 3428 (class 0 OID 0)
-- Dependencies: 224
-- Name: users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: serveradmin
--

SELECT pg_catalog.setval('public.users_id_seq', 1, false);


--
-- TOC entry 3242 (class 2606 OID 18150)
-- Name: _prisma_migrations _prisma_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: serveradmin
--

ALTER TABLE ONLY public._prisma_migrations
    ADD CONSTRAINT _prisma_migrations_pkey PRIMARY KEY (id);


--
-- TOC entry 3253 (class 2606 OID 18201)
-- Name: jobs jobs_pkey; Type: CONSTRAINT; Schema: public; Owner: serveradmin
--

ALTER TABLE ONLY public.jobs
    ADD CONSTRAINT jobs_pkey PRIMARY KEY (id);


--
-- TOC entry 3244 (class 2606 OID 18159)
-- Name: posts posts_pkey; Type: CONSTRAINT; Schema: public; Owner: serveradmin
--

ALTER TABLE ONLY public.posts
    ADD CONSTRAINT posts_pkey PRIMARY KEY (id);


--
-- TOC entry 3246 (class 2606 OID 18168)
-- Name: skins skins_pkey; Type: CONSTRAINT; Schema: public; Owner: serveradmin
--

ALTER TABLE ONLY public.skins
    ADD CONSTRAINT skins_pkey PRIMARY KEY (id);


--
-- TOC entry 3248 (class 2606 OID 18177)
-- Name: transport transport_pkey; Type: CONSTRAINT; Schema: public; Owner: serveradmin
--

ALTER TABLE ONLY public.transport
    ADD CONSTRAINT transport_pkey PRIMARY KEY (id);


--
-- TOC entry 3251 (class 2606 OID 18186)
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: serveradmin
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);


--
-- TOC entry 3254 (class 1259 OID 18537)
-- Name: jobs_unique_name_key; Type: INDEX; Schema: public; Owner: serveradmin
--

CREATE UNIQUE INDEX jobs_unique_name_key ON public.jobs USING btree (unique_name);


--
-- TOC entry 3249 (class 1259 OID 18187)
-- Name: users_email_key; Type: INDEX; Schema: public; Owner: serveradmin
--

CREATE UNIQUE INDEX users_email_key ON public.users USING btree (email);


--
-- TOC entry 3255 (class 2606 OID 18188)
-- Name: posts posts_userId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: serveradmin
--

ALTER TABLE ONLY public.posts
    ADD CONSTRAINT "posts_userId_fkey" FOREIGN KEY ("userId") REFERENCES public.users(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- TOC entry 3418 (class 0 OID 0)
-- Dependencies: 5
-- Name: SCHEMA public; Type: ACL; Schema: -; Owner: serveradmin
--

REVOKE USAGE ON SCHEMA public FROM PUBLIC;


-- Completed on 2025-03-12 20:53:15 MSK

--
-- PostgreSQL database dump complete
--

