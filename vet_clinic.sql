--
-- PostgreSQL database dump
--

-- Dumped from database version 16.1
-- Dumped by pg_dump version 16.1

-- Started on 2023-12-13 17:49:16

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
-- TOC entry 216 (class 1259 OID 18312)
-- Name: animal; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.animal (
    date_of_birth date,
    customer_id integer NOT NULL,
    id bigint NOT NULL,
    breed character varying(255),
    color character varying(255),
    gender character varying(255),
    name character varying(255),
    species character varying(255)
);


ALTER TABLE public.animal OWNER TO postgres;

--
-- TOC entry 217 (class 1259 OID 18317)
-- Name: animal_customer_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.animal_customer_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.animal_customer_id_seq OWNER TO postgres;

--
-- TOC entry 4859 (class 0 OID 0)
-- Dependencies: 217
-- Name: animal_customer_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.animal_customer_id_seq OWNED BY public.animal.customer_id;


--
-- TOC entry 218 (class 1259 OID 18318)
-- Name: animal_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.animal_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.animal_id_seq OWNER TO postgres;

--
-- TOC entry 4860 (class 0 OID 0)
-- Dependencies: 218
-- Name: animal_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.animal_id_seq OWNED BY public.animal.id;


--
-- TOC entry 219 (class 1259 OID 18319)
-- Name: appointment; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.appointment (
    animal_id integer NOT NULL,
    appointment_date timestamp(6) without time zone NOT NULL,
    doctor_id integer NOT NULL,
    id bigint NOT NULL
);


ALTER TABLE public.appointment OWNER TO postgres;

--
-- TOC entry 220 (class 1259 OID 18322)
-- Name: appointment_animal_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.appointment_animal_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.appointment_animal_id_seq OWNER TO postgres;

--
-- TOC entry 4861 (class 0 OID 0)
-- Dependencies: 220
-- Name: appointment_animal_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.appointment_animal_id_seq OWNED BY public.appointment.animal_id;


--
-- TOC entry 221 (class 1259 OID 18323)
-- Name: appointment_doctor_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.appointment_doctor_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.appointment_doctor_id_seq OWNER TO postgres;

--
-- TOC entry 4862 (class 0 OID 0)
-- Dependencies: 221
-- Name: appointment_doctor_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.appointment_doctor_id_seq OWNED BY public.appointment.doctor_id;


--
-- TOC entry 222 (class 1259 OID 18324)
-- Name: appointment_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.appointment_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.appointment_id_seq OWNER TO postgres;

--
-- TOC entry 4863 (class 0 OID 0)
-- Dependencies: 222
-- Name: appointment_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.appointment_id_seq OWNED BY public.appointment.id;


--
-- TOC entry 223 (class 1259 OID 18325)
-- Name: available_date; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.available_date (
    date date,
    doctor_id integer NOT NULL,
    id bigint NOT NULL
);


ALTER TABLE public.available_date OWNER TO postgres;

--
-- TOC entry 224 (class 1259 OID 18328)
-- Name: available_date_doctor_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.available_date_doctor_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.available_date_doctor_id_seq OWNER TO postgres;

--
-- TOC entry 4864 (class 0 OID 0)
-- Dependencies: 224
-- Name: available_date_doctor_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.available_date_doctor_id_seq OWNED BY public.available_date.doctor_id;


--
-- TOC entry 225 (class 1259 OID 18329)
-- Name: available_date_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.available_date_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.available_date_id_seq OWNER TO postgres;

--
-- TOC entry 4865 (class 0 OID 0)
-- Dependencies: 225
-- Name: available_date_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.available_date_id_seq OWNED BY public.available_date.id;


--
-- TOC entry 226 (class 1259 OID 18330)
-- Name: customer; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.customer (
    id bigint NOT NULL,
    address character varying(255),
    city character varying(255),
    mail character varying(255),
    name character varying(255),
    phone character varying(255)
);


ALTER TABLE public.customer OWNER TO postgres;

--
-- TOC entry 227 (class 1259 OID 18335)
-- Name: customer_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.customer_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.customer_id_seq OWNER TO postgres;

--
-- TOC entry 4866 (class 0 OID 0)
-- Dependencies: 227
-- Name: customer_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.customer_id_seq OWNED BY public.customer.id;


--
-- TOC entry 215 (class 1259 OID 18002)
-- Name: customer_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.customer_seq
    START WITH 1
    INCREMENT BY 50
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.customer_seq OWNER TO postgres;

--
-- TOC entry 228 (class 1259 OID 18336)
-- Name: doctor; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.doctor (
    id bigint NOT NULL,
    address character varying(255),
    city character varying(255),
    mail character varying(255),
    name character varying(255),
    phone character varying(255)
);


ALTER TABLE public.doctor OWNER TO postgres;

--
-- TOC entry 229 (class 1259 OID 18341)
-- Name: doctor_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.doctor_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.doctor_id_seq OWNER TO postgres;

--
-- TOC entry 4867 (class 0 OID 0)
-- Dependencies: 229
-- Name: doctor_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.doctor_id_seq OWNED BY public.doctor.id;


--
-- TOC entry 230 (class 1259 OID 18342)
-- Name: vaccine; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.vaccine (
    protection_finish_date date,
    protection_start_date date,
    animal_id integer NOT NULL,
    id bigint NOT NULL,
    code character varying(255),
    name character varying(255)
);


ALTER TABLE public.vaccine OWNER TO postgres;

--
-- TOC entry 231 (class 1259 OID 18347)
-- Name: vaccine_animal_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.vaccine_animal_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.vaccine_animal_id_seq OWNER TO postgres;

--
-- TOC entry 4868 (class 0 OID 0)
-- Dependencies: 231
-- Name: vaccine_animal_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.vaccine_animal_id_seq OWNED BY public.vaccine.animal_id;


--
-- TOC entry 232 (class 1259 OID 18348)
-- Name: vaccine_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.vaccine_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.vaccine_id_seq OWNER TO postgres;

--
-- TOC entry 4869 (class 0 OID 0)
-- Dependencies: 232
-- Name: vaccine_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.vaccine_id_seq OWNED BY public.vaccine.id;


--
-- TOC entry 4665 (class 2604 OID 18349)
-- Name: animal customer_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.animal ALTER COLUMN customer_id SET DEFAULT nextval('public.animal_customer_id_seq'::regclass);


--
-- TOC entry 4666 (class 2604 OID 18350)
-- Name: animal id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.animal ALTER COLUMN id SET DEFAULT nextval('public.animal_id_seq'::regclass);


--
-- TOC entry 4667 (class 2604 OID 18351)
-- Name: appointment animal_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.appointment ALTER COLUMN animal_id SET DEFAULT nextval('public.appointment_animal_id_seq'::regclass);


--
-- TOC entry 4668 (class 2604 OID 18352)
-- Name: appointment doctor_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.appointment ALTER COLUMN doctor_id SET DEFAULT nextval('public.appointment_doctor_id_seq'::regclass);


--
-- TOC entry 4669 (class 2604 OID 18353)
-- Name: appointment id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.appointment ALTER COLUMN id SET DEFAULT nextval('public.appointment_id_seq'::regclass);


--
-- TOC entry 4670 (class 2604 OID 18354)
-- Name: available_date doctor_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.available_date ALTER COLUMN doctor_id SET DEFAULT nextval('public.available_date_doctor_id_seq'::regclass);


--
-- TOC entry 4671 (class 2604 OID 18355)
-- Name: available_date id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.available_date ALTER COLUMN id SET DEFAULT nextval('public.available_date_id_seq'::regclass);


--
-- TOC entry 4672 (class 2604 OID 18356)
-- Name: customer id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.customer ALTER COLUMN id SET DEFAULT nextval('public.customer_id_seq'::regclass);


--
-- TOC entry 4673 (class 2604 OID 18357)
-- Name: doctor id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.doctor ALTER COLUMN id SET DEFAULT nextval('public.doctor_id_seq'::regclass);


--
-- TOC entry 4674 (class 2604 OID 18358)
-- Name: vaccine animal_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.vaccine ALTER COLUMN animal_id SET DEFAULT nextval('public.vaccine_animal_id_seq'::regclass);


--
-- TOC entry 4675 (class 2604 OID 18359)
-- Name: vaccine id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.vaccine ALTER COLUMN id SET DEFAULT nextval('public.vaccine_id_seq'::regclass);


--
-- TOC entry 4837 (class 0 OID 18312)
-- Dependencies: 216
-- Data for Name: animal; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.animal VALUES ('2022-08-15', 1, 6, 'Golden', 'Teal', 'Male', 'Bakes', 'Dog');
INSERT INTO public.animal VALUES ('2022-07-07', 1, 7, 'Scottish Fold', 'Khaki', 'Male', 'Eamon', 'Cat');
INSERT INTO public.animal VALUES ('2022-08-08', 1, 8, 'Azawakh', 'Puce', 'Female', 'Christi', 'Dog');
INSERT INTO public.animal VALUES ('2022-03-06', 2, 9, 'Africanis', 'Yellow', 'Male', 'Dimitry', 'Dog');
INSERT INTO public.animal VALUES ('2022-04-05', 3, 10, 'British Shorthair', 'Yellow', 'Male', 'Reynold', 'Cat');


--
-- TOC entry 4840 (class 0 OID 18319)
-- Dependencies: 219
-- Data for Name: appointment; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.appointment VALUES (6, '2023-12-21 12:00:00', 5, 1);
INSERT INTO public.appointment VALUES (7, '2023-12-21 11:00:00', 5, 2);
INSERT INTO public.appointment VALUES (9, '2023-12-20 18:00:00', 4, 3);
INSERT INTO public.appointment VALUES (10, '2023-12-18 13:00:00', 2, 4);
INSERT INTO public.appointment VALUES (10, '2023-12-17 13:00:00', 1, 5);


--
-- TOC entry 4844 (class 0 OID 18325)
-- Dependencies: 223
-- Data for Name: available_date; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.available_date VALUES ('2023-12-12', 1, 1);
INSERT INTO public.available_date VALUES ('2023-12-13', 2, 2);
INSERT INTO public.available_date VALUES ('2023-12-14', 3, 3);
INSERT INTO public.available_date VALUES ('2023-12-15', 4, 4);
INSERT INTO public.available_date VALUES ('2023-12-16', 5, 5);
INSERT INTO public.available_date VALUES ('2023-12-17', 1, 6);
INSERT INTO public.available_date VALUES ('2023-12-18', 2, 7);
INSERT INTO public.available_date VALUES ('2023-12-19', 3, 8);
INSERT INTO public.available_date VALUES ('2023-12-20', 4, 9);
INSERT INTO public.available_date VALUES ('2023-12-21', 5, 10);


--
-- TOC entry 4847 (class 0 OID 18330)
-- Dependencies: 226
-- Data for Name: customer; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.customer VALUES (1, 'Suite 62', 'Voorburg', 'swyldish0@yahoo.com', 'Stefano', '9883955299');
INSERT INTO public.customer VALUES (2, 'Suite 53', 'Notranje Gorice', 'mcockaday1@theatlantic.com', 'Myrvyn', '8583833682');
INSERT INTO public.customer VALUES (3, 'Room 590', 'La Loma', 'lscones2@godaddy.com', 'Lacie', '4337749088');
INSERT INTO public.customer VALUES (4, 'Room 857', 'Eséka', 'kflanaghan3@ezinearticles.com', 'Katinka', '7239094273');
INSERT INTO public.customer VALUES (5, 'PO Box 31491', 'Alajuela', 'jnanetti4@vk.com', 'Jemmie', '1784085136');


--
-- TOC entry 4849 (class 0 OID 18336)
-- Dependencies: 228
-- Data for Name: doctor; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.doctor VALUES (1, 'Suite 62', 'Voorburg', 'swyldish0@yahoo.com', 'Stefano', '9883955299');
INSERT INTO public.doctor VALUES (2, '10th Floor', 'Gatesville', 'kringsell0@wunderground.com', 'Keary', '2549661930');
INSERT INTO public.doctor VALUES (3, 'PO Box 70088', 'København', 'flowdyane4@tamu.edu', 'Francesco', '2361733460');
INSERT INTO public.doctor VALUES (4, 'Room 1104', 'Nhà Bàng', 'akidgell3@github.com', 'Amalita', '5994343590');
INSERT INTO public.doctor VALUES (5, 'PO Box 50618', 'La Paloma', 'ascambler2@paginegialle.it', 'Aidan', '9063919972');


--
-- TOC entry 4851 (class 0 OID 18342)
-- Dependencies: 230
-- Data for Name: vaccine; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.vaccine VALUES ('2024-04-29', '2023-07-03', 6, 2, 'YMMI', 'Rabies');
INSERT INTO public.vaccine VALUES ('2024-08-24', '2023-08-18', 8, 3, 'VEKR', 'Parry');
INSERT INTO public.vaccine VALUES ('2024-05-07', '2023-11-13', 8, 4, 'TJIG', 'Feather');
INSERT INTO public.vaccine VALUES ('2024-05-07', '2023-11-13', 9, 5, 'TJIG', 'Measles');
INSERT INTO public.vaccine VALUES ('2024-09-07', '2022-12-29', 10, 6, 'HHAS', 'Leukemia');


--
-- TOC entry 4870 (class 0 OID 0)
-- Dependencies: 217
-- Name: animal_customer_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.animal_customer_id_seq', 1, false);


--
-- TOC entry 4871 (class 0 OID 0)
-- Dependencies: 218
-- Name: animal_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.animal_id_seq', 10, true);


--
-- TOC entry 4872 (class 0 OID 0)
-- Dependencies: 220
-- Name: appointment_animal_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.appointment_animal_id_seq', 1, false);


--
-- TOC entry 4873 (class 0 OID 0)
-- Dependencies: 221
-- Name: appointment_doctor_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.appointment_doctor_id_seq', 1, false);


--
-- TOC entry 4874 (class 0 OID 0)
-- Dependencies: 222
-- Name: appointment_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.appointment_id_seq', 5, true);


--
-- TOC entry 4875 (class 0 OID 0)
-- Dependencies: 224
-- Name: available_date_doctor_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.available_date_doctor_id_seq', 1, false);


--
-- TOC entry 4876 (class 0 OID 0)
-- Dependencies: 225
-- Name: available_date_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.available_date_id_seq', 10, true);


--
-- TOC entry 4877 (class 0 OID 0)
-- Dependencies: 227
-- Name: customer_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.customer_id_seq', 5, true);


--
-- TOC entry 4878 (class 0 OID 0)
-- Dependencies: 215
-- Name: customer_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.customer_seq', 1, true);


--
-- TOC entry 4879 (class 0 OID 0)
-- Dependencies: 229
-- Name: doctor_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.doctor_id_seq', 5, true);


--
-- TOC entry 4880 (class 0 OID 0)
-- Dependencies: 231
-- Name: vaccine_animal_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.vaccine_animal_id_seq', 1, false);


--
-- TOC entry 4881 (class 0 OID 0)
-- Dependencies: 232
-- Name: vaccine_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.vaccine_id_seq', 6, true);


--
-- TOC entry 4677 (class 2606 OID 18361)
-- Name: animal animal_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.animal
    ADD CONSTRAINT animal_pkey PRIMARY KEY (id);


--
-- TOC entry 4679 (class 2606 OID 18363)
-- Name: appointment appointment_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.appointment
    ADD CONSTRAINT appointment_pkey PRIMARY KEY (id);


--
-- TOC entry 4681 (class 2606 OID 18365)
-- Name: available_date available_date_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.available_date
    ADD CONSTRAINT available_date_pkey PRIMARY KEY (id);


--
-- TOC entry 4683 (class 2606 OID 18367)
-- Name: customer customer_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.customer
    ADD CONSTRAINT customer_pkey PRIMARY KEY (id);


--
-- TOC entry 4685 (class 2606 OID 18369)
-- Name: doctor doctor_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.doctor
    ADD CONSTRAINT doctor_pkey PRIMARY KEY (id);


--
-- TOC entry 4687 (class 2606 OID 18371)
-- Name: vaccine vaccine_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.vaccine
    ADD CONSTRAINT vaccine_pkey PRIMARY KEY (id);


--
-- TOC entry 4689 (class 2606 OID 18372)
-- Name: appointment fk2kkeptdxfuextg5ch7xp3ytie; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.appointment
    ADD CONSTRAINT fk2kkeptdxfuextg5ch7xp3ytie FOREIGN KEY (animal_id) REFERENCES public.animal(id);


--
-- TOC entry 4688 (class 2606 OID 18377)
-- Name: animal fk6pvxm5gfjqxclb651be9unswe; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.animal
    ADD CONSTRAINT fk6pvxm5gfjqxclb651be9unswe FOREIGN KEY (customer_id) REFERENCES public.customer(id);


--
-- TOC entry 4691 (class 2606 OID 18382)
-- Name: available_date fkk0d6pu1wxarsoou0x2e1cc2on; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.available_date
    ADD CONSTRAINT fkk0d6pu1wxarsoou0x2e1cc2on FOREIGN KEY (doctor_id) REFERENCES public.doctor(id);


--
-- TOC entry 4692 (class 2606 OID 18387)
-- Name: vaccine fkne3kmh8y5pcyxwl4u2w9prw6j; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.vaccine
    ADD CONSTRAINT fkne3kmh8y5pcyxwl4u2w9prw6j FOREIGN KEY (animal_id) REFERENCES public.animal(id);


--
-- TOC entry 4690 (class 2606 OID 18392)
-- Name: appointment fkoeb98n82eph1dx43v3y2bcmsl; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.appointment
    ADD CONSTRAINT fkoeb98n82eph1dx43v3y2bcmsl FOREIGN KEY (doctor_id) REFERENCES public.doctor(id);


-- Completed on 2023-12-13 17:49:16

--
-- PostgreSQL database dump complete
--

