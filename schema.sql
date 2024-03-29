--
-- PostgreSQL database dump
--

-- Dumped from database version 14.5
-- Dumped by pg_dump version 14.5

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
-- Name: chords; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.chords (
    song_id integer,
    chord character varying(10)
);


ALTER TABLE public.chords OWNER TO postgres;

--
-- Name: ukulele_songs; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.ukulele_songs (
    id integer NOT NULL,
    song_name character varying(100),
    song_artist character varying(100),
    song_url character varying(300)
);


ALTER TABLE public.ukulele_songs OWNER TO postgres;

--
-- Name: ukulele_songs_chords_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.ukulele_songs_chords_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.ukulele_songs_chords_id_seq OWNER TO postgres;

--
-- Name: ukulele_songs_chords_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.ukulele_songs_chords_id_seq OWNED BY public.ukulele_songs.id;


--
-- Name: ukulele_songs id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ukulele_songs ALTER COLUMN id SET DEFAULT nextval('public.ukulele_songs_chords_id_seq'::regclass);


--
-- Name: ukulele_songs ukulele_songs_chords_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ukulele_songs
    ADD CONSTRAINT ukulele_songs_chords_pkey PRIMARY KEY (id);


--
-- Name: chords chords_song_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.chords
    ADD CONSTRAINT chords_song_id_fkey FOREIGN KEY (song_id) REFERENCES public.ukulele_songs(id);


--
-- PostgreSQL database dump complete
--

