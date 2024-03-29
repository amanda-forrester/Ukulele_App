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

--
-- Data for Name: ukulele_songs; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.ukulele_songs (id, song_name, song_artist, song_url) FROM stdin;
2	OVER THE RAINBOW WONDERFUL WORLD	ISRAEL KAMAKAWIWOOLE	https://ukutabs.com/i/israel-kamakawiwoole/somewhere-over-the-rainbow-what-a-wonderful-world/
4	HALLELUJAH	LEONARD COHEN	https://ukutabs.com/l/leonard-cohen/hallelujah/
5	HOUSE OF GOLD	TWENTY ONE PILOTS	https://ukutabs.com/t/twenty-one-pilots/house-of-gold/
6	RIPTIDE	VANCE JOY	https://ukutabs.com/v/vance-joy/riptide/
7	HEY THERE DELILAH	PLAIN WHITE TS	https://ukutabs.com/p/plain-white-ts/hey-there-delilah/
8	SOMEONE TO LAVA	MISC CARTOONS	https://ukutabs.com/m/misc-cartoons/someone-to-lava/
9	COUNT ON ME	BRUNO MARS	https://ukutabs.com/b/bruno-mars/count-on-me/
10	HEY SOUL SISTER	TRAIN	https://ukutabs.com/t/train/hey-soul-sister/
3	IM YOURS	JASON MRAZ	https://ukutabs.com/j/jason-mraz/im-yours/
1	CANT HELP FALLING IN LOVE	TWENTY ONE PILOTS	https://ukutabs.com/t/twenty-one-pilots/cant-help-falling-in-love/
11	I DONT KNOW MY NAME	GRACE VANDERWAAL	https://ukutabs.com/g/grace-vanderwaal/i-dont-know-my-name/
20	CREEP	RADIOHEAD	https://ukutabs.com/r/radiohead/creep/
21	FLY ME TO THE MOON	FRANK SINATRA	https://ukutabs.com/f/frank-sinatra/fly-me-to-the-moon-two/
22	COUNT ON ME	BRUNO MARS	https://ukutabs.com/b/bruno-mars/count-on-me/
23	THE JUDGE	TWENTY ONE PILOTS	https://ukutabs.com/t/twenty-one-pilots/the-judge/
24	IDONTWANNABEYOUANYMORE	BILLIE EILISH	https://ukutabs.com/b/billie-eilish/idontwannabeyouanymore/
25	LET HER GO	PASSENGER	https://ukutabs.com/p/passenger/let-her-go/
26	STAY WITH ME	SAM SMITH	https://ukutabs.com/s/sam-smith/stay-with-me-two/
27	PARTY FAVOR	BILLIE EILISH	https://ukutabs.com/b/billie-eilish/party-favor/
28	SWEATER WEATHER	THE NEIGHBOURHOOD	https://ukutabs.com/t/the-neighbourhood/sweater-weather/
29	THE SCIENTIST	COLDPLAY	https://ukutabs.com/c/coldplay/the-scientist/
30	PERFECT	ED SHEERAN	https://ukutabs.com/e/ed-sheeran/perfect-three/
31	TAKE ME TO CHURCH	HOZIER	https://ukutabs.com/h/hozier/take-me-to-church/
32	HERE COMES THE SUN	THE BEATLES	https://ukutabs.com/t/the-beatles/here-comes-the-sun/
\.


--
-- Name: ukulele_songs_chords_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.ukulele_songs_chords_id_seq', 32, true);


--
-- PostgreSQL database dump complete
--

INSERT INTO public.ukulele_songs (id, song_name, song_artist, song_url) VALUES 
(2, 'OVER THE RAINBOW WONDERFUL WORLD', 'ISRAEL KAMAKAWIWOOLE', 'https://ukutabs.com/i/israel-kamakawiwoole/somewhere-over-the-rainbow-what-a-wonderful-world/'),
(4, 'HALLELUJAH', 'LEONARD COHEN', 'https://ukutabs.com/l/leonard-cohen/hallelujah/'),
(5, 'HOUSE OF GOLD', 'TWENTY ONE PILOTS', 'https://ukutabs.com/t/twenty-one-pilots/house-of-gold/'),
(6, 'RIPTIDE', 'VANCE JOY', 'https://ukutabs.com/v/vance-joy/riptide/'),
(7, 'HEY THERE DELILAH', 'PLAIN WHITE TS', 'https://ukutabs.com/p/plain-white-ts/hey-there-delilah/'),
(8, 'SOMEONE TO LAVA', 'MISC CARTOONS', 'https://ukutabs.com/m/misc-cartoons/someone-to-lava/'),
(9, 'COUNT ON ME', 'BRUNO MARS', 'https://ukutabs.com/b/bruno-mars/count-on-me/'),
(10, 'HEY SOUL SISTER', 'TRAIN', 'https://ukutabs.com/t/train/hey-soul-sister/'),
(3, 'IM YOURS', 'JASON MRAZ', 'https://ukutabs.com/j/jason-mraz/im-yours/'),
(1, 'CANT HELP FALLING IN LOVE', 'TWENTY ONE PILOTS', 'https://ukutabs.com/t/twenty-one-pilots/cant-help-falling-in-love/'),
(11, 'I DONT KNOW MY NAME', 'GRACE VANDERWAAL', 'https://ukutabs.com/g/grace-vanderwaal/i-dont-know-my-name/'),
(20, 'CREEP', 'RADIOHEAD', 'https://ukutabs.com/r/radiohead/creep/'),
(21, 'FLY ME TO THE MOON', 'FRANK SINATRA', 'https://ukutabs.com/f/frank-sinatra/fly-me-to-the-moon-two/'),
(22, 'COUNT ON ME', 'BRUNO MARS', 'https://ukutabs.com/b/bruno-mars/count-on-me/'),
(23, 'THE JUDGE', 'TWENTY ONE PILOTS', 'https://ukutabs.com/t/twenty-one-pilots/the-judge/'),
(24, 'IDONTWANNABEYOUANYMORE', 'BILLIE EILISH', 'https://ukutabs.com/b/billie-eilish/idontwannabeyouanymore/'),
(25, 'LET HER GO', 'PASSENGER', 'https://ukutabs.com/p/passenger/let-her-go/'),
(26, 'STAY WITH ME', 'SAM SMITH', 'https://ukutabs.com/s/sam-smith/stay-with-me-two/'),
(27, 'PARTY FAVOR', 'BILLIE EILISH', 'https://ukutabs.com/b/billie-eilish/party-favor/'),
(28, 'SWEATER WEATHER', 'THE NEIGHBOURHOOD', 'https://ukutabs.com/t/the-neighbourhood/sweater-weather/'),
(29, 'THE SCIENTIST', 'COLDPLAY', 'https://ukutabs.com/c/coldplay/the-scientist/'),
(30, 'PERFECT', 'ED SHEERAN', 'https://ukutabs.com/e/ed-sheeran/perfect-three/'),
(31, 'TAKE ME TO CHURCH', 'HOZIER', 'https://ukutabs.com/h/hozier/take-me-to-church/'),
(32, 'HERE COMES THE SUN', 'THE BEATLES', 'https://ukutabs.com/t/the-beatles/here-comes-the-sun/');



