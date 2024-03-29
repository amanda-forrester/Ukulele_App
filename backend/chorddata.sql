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
-- Data for Name: chords; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.chords (song_id, chord) FROM stdin;
1	Am
1	A7
1	B7
1	C
1	Dm7
1	Em
1	Em7
1	F
1	G
1	G7
2	Am
2	C
2	D
2	Dm7
2	Em
2	E7
2	F
2	G
3	Am
3	C
3	D7
3	F
3	G
4	Am
4	C
4	Em
4	F
4	G
5	Am
5	A7
5	Bbm
5	C
5	Dm
5	F
5	G
6	Bbm
6	Db
6	Ab
7	A
7	Bm
7	Gbm
7	G
7	D
8	C
8	F
8	G7
9	Am
9	C
9	Dm
9	Em
9	F
9	G
10	A
10	B
10	Dbm
10	E
11	Am
11	C
11	F
11	G
20	B
20	C
20	Cm
20	G
21	Am
21	A7
21	Am7
21	C
21	C7
21	Cmaj7
21	Dm
21	Em
21	E7
21	Em7
21	F
21	G7
22	Am
22	C
22	Dm
22	Em
22	F
22	G
23	Am
23	B
23	C
23	Dm
23	Em
23	F
23	G
24	Am
24	B
24	Cmaj7
24	D
24	Dsus4
24	Em
24	Gmaj7
25	Bm
25	C
25	D
25	Em
25	G
26	Am
26	C
26	F
26	G
27	Am
27	C
27	E
27	F
27	Fm
27	G
28	Bb
28	Cm
28	Eb
28	F
28	Gm
29	Bb
29	C
29	Dm
29	F
29	Fsus2
30	Db
30	Eb
30	Fm
30	Ab
31	A
31	Am
31	B7
31	C
31	Cm
31	D
31	Em
32	A
32	Bm
32	B7
32	C
32	D
32	E7
32	G
\.


--
-- PostgreSQL database dump complete
--

INSERT INTO public.chords (song_id, chord)
VALUES (1, 'Am'), (1, 'A7'), (1, 'B7'), (1, 'C'), (1, 'Dm7'), (1, 'Em'), (1, 'Em7'), (1, 'F'), (1, 'G'), (1, 'G7'), (2, 'Am'), (2, 'C'), (2, 'D'), (2, 'Dm7'), (2, 'Em'), (2, 'E7'), (2, 'F'), (2, 'G'), (3, 'Am'), (3, 'C'), (3, 'D7'), (3, 'F'), (3, 'G'), (4, 'Am'), (4, 'C'), (4, 'Em'), (4, 'F'), (4, 'G'), (5, 'Am'), (5, 'A7'), (5, 'Bbm'), (5, 'C'), (5, 'Dm'), (5, 'F'), (5, 'G'), (6, 'Bbm'), (6, 'Db'), (6, 'Ab'), (7, 'A'), (7, 'Bm'), (7, 'Gbm'), (7, 'G'), (7, 'D'), (8, 'C'), (8, 'F'), (8, 'G7'), (9, 'Am'), (9, 'C'), (9, 'Dm'), (9, 'Em'), (9, 'F'), (9, 'G'), (10, 'A'), (10, 'B'), (10, 'Dbm'), (10, 'E'), (11, 'Am'), (11, 'C'), (11, 'F'), (11, 'G'), (20, 'B'), (20, 'C'), (20, 'Cm'), (20, 'G'), (21, 'Am'), (21, 'A7'), (21, 'Am7'), (21, 'C'), (21, 'C7'), (21, 'Cmaj7'), (21, 'Dm'), (21, 'Em'), (21, 'E7'), (21, 'Em7'), (21, 'F'), (21, 'G7'), (22, 'Am'), (22, 'C'), (22, 'Dm'), (22, 'Em'), (22, 'F'), (22, 'G'), (23, 'Am'), (23, 'B'), (23, 'C'), (23, 'Dm'), (23, 'Em'), (23, 'F'), (23, 'G'), (24, 'Am'), (24, 'B'), (24, 'Cmaj7'), (24, 'D'), (24, 'Dsus4'), (24, 'Em'), (24, 'Gmaj7'), (25, 'Bm'), (25, 'C'), (25, 'D'), (25, 'Em'), (25, 'G'), (26, 'Am'), (26, 'C'), (26,	'F'), (26, 'G'), (27, 'Am'), (27, 'C'), (27, 'E'), (27, 'F'), (27, 'Fm'), (27, 'G'), (28, 'Bb'), (28, 'Cm'), (28, 'Eb'), (28, 'F'), (28, 'Gm'), (29, 'Bb'), (29, 'C'), (29, 'Dm'), (29, 'F'), (29, 'Fsus2'), (30, 'Db'), (30, 'Eb'), (30, 'Fm'), (30, 'Ab'), (31, 'A'), (31, 'Am'), (31, 'B7'), (31, 'C'), (31, 'Cm'), (31, 'D'), (31, 'Em'), (32, 'A'), (32, 'Bm'), (32, 'B7'), (32, 'C'), (32, 'D'), (32, 'E7'), (32, 'G');


