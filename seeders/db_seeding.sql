--
-- PostgreSQL database dump
--

-- Dumped from database version 13.4
-- Dumped by pg_dump version 13.4

-- Started on 2021-08-29 22:14:53

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
-- TOC entry 3043 (class 0 OID 19890)
-- Dependencies: 203
-- Data for Name: Genres; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public."Genres" VALUES (1, 'Motivational', '2021-08-29 02:16:46.567+00', '2021-08-29 02:16:46.567+00' );
INSERT INTO public."Genres" VALUES (2, 'Motivational', '2021-08-29 02:20:08.526+00', '2021-08-29 02:20:08.526+00' );
INSERT INTO public."Genres" VALUES (3, 'Motivational', '2021-08-29 02:22:09.825+00', '2021-08-29 02:22:09.825+00' );
INSERT INTO public."Genres" VALUES (4, 'Motivational', '2021-08-29 02:24:58.928+00', '2021-08-29 02:24:58.928+00' );
INSERT INTO public."Genres" VALUES (5, 'Education', '2021-08-29 02:26:13.007+00', '2021-08-29 02:26:13.007+00');
INSERT INTO public."Genres" VALUES (6, 'Education', '2021-08-29 02:27:41.839+00', '2021-08-29 02:27:41.839+00');
INSERT INTO public."Genres" VALUES (7, 'Education', '2021-08-29 02:27:46.533+00', '2021-08-29 02:27:46.533+00');
INSERT INTO public."Genres" VALUES (8, 'Education', '2021-08-29 02:27:48.43+00', '2021-08-29 02:27:48.43+00');
INSERT INTO public."Genres" VALUES (9, 'Education', '2021-08-29 02:27:54.911+00', '2021-08-29 02:27:54.911+00');
INSERT INTO public."Genres" VALUES (10, 'Education', '2021-08-29 02:27:59.999+00', '2021-08-29 02:27:59.999+00');
INSERT INTO public."Genres" VALUES (11, 'Education', '2021-08-29 02:28:04.463+00', '2021-08-29 02:28:04.463+00');
INSERT INTO public."Genres" VALUES (12, 'Education', '2021-08-29 02:28:10.465+00', '2021-08-29 02:28:10.465+00');
INSERT INTO public."Genres" VALUES (13, 'Education', '2021-08-29 02:28:19.495+00', '2021-08-29 02:28:19.495+00');
INSERT INTO public."Genres" VALUES (14, 'Education', '2021-08-29 02:29:05.808+00', '2021-08-29 02:29:05.808+00');
INSERT INTO public."Genres" VALUES (15, 'Education', '2021-08-29 02:29:15.347+00', '2021-08-29 02:29:15.347+00');
INSERT INTO public."Genres" VALUES (16, 'Education', '2021-08-29 02:29:32.561+00', '2021-08-29 02:29:32.561+00');
INSERT INTO public."Genres" VALUES (17, 'Motivational', '2021-08-29 02:29:54.655+00', '2021-08-29 02:29:54.655+00');
INSERT INTO public."Genres" VALUES (18, 'Motivational', '2021-08-29 02:31:09.269+00', '2021-08-29 02:31:09.269+00');
INSERT INTO public."Genres" VALUES (19, 'Motivational', '2021-08-29 02:31:37.045+00', '2021-08-29 02:31:37.045+00');
INSERT INTO public."Genres" VALUES (20, 'Motivational', '2021-08-29 02:31:42.868+00', '2021-08-29 02:31:42.868+00');
INSERT INTO public."Genres" VALUES (21, 'Motivational', '2021-08-29 02:31:47.538+00', '2021-08-29 02:31:47.538+00');
INSERT INTO public."Genres" VALUES (22, 'Motivational', '2021-08-29 02:31:52.963+00', '2021-08-29 02:31:52.963+00');
INSERT INTO public."Genres" VALUES (23, 'Motivational', '2021-08-29 02:32:00.012+00', '2021-08-29 02:32:00.012+00');
INSERT INTO public."Genres" VALUES (24, 'Motivational', '2021-08-29 02:32:16.375+00', '2021-08-29 02:32:16.375+00');
INSERT INTO public."Genres" VALUES (25, 'Motivational', '2021-08-29 02:32:26.226+00', '2021-08-29 02:32:26.226+00');
INSERT INTO public."Genres" VALUES (26, 'Motivational', '2021-08-29 02:32:35.002+00', '2021-08-29 02:32:35.002+00');
INSERT INTO public."Genres" VALUES (27, 'Motivational', '2021-08-29 02:33:10.814+00', '2021-08-29 02:33:10.814+00');
INSERT INTO public."Genres" VALUES (28, 'Motivational', '2021-08-29 02:33:22.815+00', '2021-08-29 02:33:22.815+00');


INSERT INTO public."Tags" VALUES (1, 'Creativity', '2021-08-29 02:16:46.539+00', '2021-08-29 02:16:46.539+00');
INSERT INTO public."Tags" VALUES (2, 'Better Living', '2021-08-29 02:16:46.55+00', '2021-08-29 02:16:46.55+00');
INSERT INTO public."Tags" VALUES (3, 'Creativity', '2021-08-29 02:20:08.495+00', '2021-08-29 02:20:08.495+00');
INSERT INTO public."Tags" VALUES (4, 'Better Living', '2021-08-29 02:20:08.508+00', '2021-08-29 02:20:08.508+00');
INSERT INTO public."Tags" VALUES (5, 'Creativity', '2021-08-29 02:22:09.8+00', '2021-08-29 02:22:09.8+00');
INSERT INTO public."Tags" VALUES (6, 'Better Living', '2021-08-29 02:22:09.811+00', '2021-08-29 02:22:09.811+00');
INSERT INTO public."Tags" VALUES (7, 'Creativity', '2021-08-29 02:24:58.901+00', '2021-08-29 02:24:58.901+00');
INSERT INTO public."Tags" VALUES (8, 'Better Living', '2021-08-29 02:24:58.913+00', '2021-08-29 02:24:58.913+00');
INSERT INTO public."Tags" VALUES (9, 'Creativity', '2021-08-29 02:26:12.983+00', '2021-08-29 02:26:12.983+00');
INSERT INTO public."Tags" VALUES (10, 'Better Living', '2021-08-29 02:26:12.992+00', '2021-08-29 02:26:12.992+00');
INSERT INTO public."Tags" VALUES (11, 'Creativity', '2021-08-29 02:27:41.822+00', '2021-08-29 02:27:41.822+00');
INSERT INTO public."Tags" VALUES (12, 'Better Living', '2021-08-29 02:27:41.832+00', '2021-08-29 02:27:41.832+00');
INSERT INTO public."Tags" VALUES (13, 'Creativity', '2021-08-29 02:27:46.518+00', '2021-08-29 02:27:46.518+00');
INSERT INTO public."Tags" VALUES (14, 'Better Living', '2021-08-29 02:27:46.523+00', '2021-08-29 02:27:46.523+00');
INSERT INTO public."Tags" VALUES (15, 'Creativity', '2021-08-29 02:27:48.417+00', '2021-08-29 02:27:48.417+00');
INSERT INTO public."Tags" VALUES (16, 'Better Living', '2021-08-29 02:27:48.42+00', '2021-08-29 02:27:48.42+00');
INSERT INTO public."Tags" VALUES (17, 'Creativity', '2021-08-29 02:27:54.901+00', '2021-08-29 02:27:54.901+00');
INSERT INTO public."Tags" VALUES (18, 'Better Living', '2021-08-29 02:27:54.904+00', '2021-08-29 02:27:54.904+00');
INSERT INTO public."Tags" VALUES (19, 'Creativity', '2021-08-29 02:27:59.978+00', '2021-08-29 02:27:59.978+00');
INSERT INTO public."Tags" VALUES (20, 'Better Living', '2021-08-29 02:27:59.981+00', '2021-08-29 02:27:59.981+00');
INSERT INTO public."Tags" VALUES (21, 'Creativity', '2021-08-29 02:28:04.435+00', '2021-08-29 02:28:04.435+00');
INSERT INTO public."Tags" VALUES (22, 'Better Living', '2021-08-29 02:28:04.437+00', '2021-08-29 02:28:04.437+00');
INSERT INTO public."Tags" VALUES (23, 'Creativity', '2021-08-29 02:28:10.454+00', '2021-08-29 02:28:10.454+00');
INSERT INTO public."Tags" VALUES (24, 'Better Living', '2021-08-29 02:28:10.456+00', '2021-08-29 02:28:10.456+00');
INSERT INTO public."Tags" VALUES (25, 'Creativity', '2021-08-29 02:28:19.48+00', '2021-08-29 02:28:19.48+00');
INSERT INTO public."Tags" VALUES (26, 'Better Living', '2021-08-29 02:28:19.486+00', '2021-08-29 02:28:19.486+00');
INSERT INTO public."Tags" VALUES (27, 'Creativity', '2021-08-29 02:29:05.799+00', '2021-08-29 02:29:05.799+00');
INSERT INTO public."Tags" VALUES (28, 'Better Living', '2021-08-29 02:29:05.802+00', '2021-08-29 02:29:05.802+00');
INSERT INTO public."Tags" VALUES (29, 'Creativity', '2021-08-29 02:29:15.336+00', '2021-08-29 02:29:15.336+00');
INSERT INTO public."Tags" VALUES (30, 'Better Living', '2021-08-29 02:29:15.341+00', '2021-08-29 02:29:15.341+00');
INSERT INTO public."Tags" VALUES (31, 'Creativity', '2021-08-29 02:29:32.546+00', '2021-08-29 02:29:32.546+00');
INSERT INTO public."Tags" VALUES (32, 'Better Living', '2021-08-29 02:29:32.55+00', '2021-08-29 02:29:32.55+00');
INSERT INTO public."Tags" VALUES (33, 'Creativity', '2021-08-29 02:29:54.629+00', '2021-08-29 02:29:54.629+00');
INSERT INTO public."Tags" VALUES (34, 'Better Living', '2021-08-29 02:29:54.639+00', '2021-08-29 02:29:54.639+00');
INSERT INTO public."Tags" VALUES (35, 'Creativity', '2021-08-29 02:31:09.256+00', '2021-08-29 02:31:09.256+00');
INSERT INTO public."Tags" VALUES (36, 'Better Living', '2021-08-29 02:31:09.262+00', '2021-08-29 02:31:09.262+00');
INSERT INTO public."Tags" VALUES (37, 'Creativity', '2021-08-29 02:31:37.033+00', '2021-08-29 02:31:37.033+00');
INSERT INTO public."Tags" VALUES (38, 'Better Living', '2021-08-29 02:31:37.037+00', '2021-08-29 02:31:37.037+00');
INSERT INTO public."Tags" VALUES (39, 'Creativity', '2021-08-29 02:31:42.856+00', '2021-08-29 02:31:42.856+00');
INSERT INTO public."Tags" VALUES (40, 'Better Living', '2021-08-29 02:31:42.859+00', '2021-08-29 02:31:42.859+00');
INSERT INTO public."Tags" VALUES (41, 'Creativity', '2021-08-29 02:31:47.524+00', '2021-08-29 02:31:47.524+00');
INSERT INTO public."Tags" VALUES (42, 'Better Living', '2021-08-29 02:31:47.528+00', '2021-08-29 02:31:47.528+00');
INSERT INTO public."Tags" VALUES (43, 'Creativity', '2021-08-29 02:31:52.955+00', '2021-08-29 02:31:52.955+00');
INSERT INTO public."Tags" VALUES (44, 'Better Living', '2021-08-29 02:31:52.957+00', '2021-08-29 02:31:52.957+00');
INSERT INTO public."Tags" VALUES (45, 'Creativity', '2021-08-29 02:31:59.998+00', '2021-08-29 02:31:59.998+00');
INSERT INTO public."Tags" VALUES (46, 'Better Living', '2021-08-29 02:32:00.002+00', '2021-08-29 02:32:00.002+00');
INSERT INTO public."Tags" VALUES (47, 'Creativity', '2021-08-29 02:32:16.362+00', '2021-08-29 02:32:16.362+00');
INSERT INTO public."Tags" VALUES (48, 'Better Living', '2021-08-29 02:32:16.367+00', '2021-08-29 02:32:16.367+00');
INSERT INTO public."Tags" VALUES (49, 'Creativity', '2021-08-29 02:32:26.211+00', '2021-08-29 02:32:26.211+00');
INSERT INTO public."Tags" VALUES (50, 'Better Living', '2021-08-29 02:32:26.214+00', '2021-08-29 02:32:26.214+00');
INSERT INTO public."Tags" VALUES (51, 'Creativity', '2021-08-29 02:32:34.988+00', '2021-08-29 02:32:34.988+00');
INSERT INTO public."Tags" VALUES (52, 'Better Living', '2021-08-29 02:32:34.992+00', '2021-08-29 02:32:34.992+00');
INSERT INTO public."Tags" VALUES (53, 'Creativity', '2021-08-29 02:33:10.8+00', '2021-08-29 02:33:10.8+00');
INSERT INTO public."Tags" VALUES (54, 'Better Living', '2021-08-29 02:33:10.804+00', '2021-08-29 02:33:10.804+00');
INSERT INTO public."Tags" VALUES (55, 'Creativity', '2021-08-29 02:33:22.8+00', '2021-08-29 02:33:22.8+00');
INSERT INTO public."Tags" VALUES (56, 'Better Living', '2021-08-29 02:33:22.803+00', '2021-08-29 02:33:22.803+00');


INSERT INTO public."Authors" VALUES (1, 'Jim Collins', '2021-08-29 02:16:46.551+00', '2021-08-29 02:16:46.551+00');
INSERT INTO public."Authors" VALUES (2, 'Jerry I. Porras', '2021-08-29 02:16:46.559+00', '2021-08-29 02:16:46.559+00');
INSERT INTO public."Authors" VALUES (3, 'Jim Collins', '2021-08-29 02:20:08.512+00', '2021-08-29 02:20:08.512+00');
INSERT INTO public."Authors" VALUES (4, 'Jerry I. Porras', '2021-08-29 02:20:08.515+00', '2021-08-29 02:20:08.515+00');
INSERT INTO public."Authors" VALUES (5, 'Jim Collins', '2021-08-29 02:22:09.814+00', '2021-08-29 02:22:09.814+00');
INSERT INTO public."Authors" VALUES (6, 'Jerry I. Porras', '2021-08-29 02:22:09.816+00', '2021-08-29 02:22:09.816+00');
INSERT INTO public."Authors" VALUES (7, 'Jim Collins', '2021-08-29 02:24:58.916+00', '2021-08-29 02:24:58.916+00');
INSERT INTO public."Authors" VALUES (8, 'Jerry I. Porras', '2021-08-29 02:24:58.919+00', '2021-08-29 02:24:58.919+00');
INSERT INTO public."Authors" VALUES (9, 'Jim Collins', '2021-08-29 02:26:12.994+00', '2021-08-29 02:26:12.994+00');
INSERT INTO public."Authors" VALUES (10, 'Jerry I. Porras', '2021-08-29 02:26:12.997+00', '2021-08-29 02:26:12.997+00');
INSERT INTO public."Authors" VALUES (11, 'Jim Collins', '2021-08-29 02:27:41.833+00', '2021-08-29 02:27:41.833+00');
INSERT INTO public."Authors" VALUES (12, 'Jerry I. Porras', '2021-08-29 02:27:41.835+00', '2021-08-29 02:27:41.835+00');
INSERT INTO public."Authors" VALUES (13, 'Jim Collins', '2021-08-29 02:27:46.527+00', '2021-08-29 02:27:46.527+00');
INSERT INTO public."Authors" VALUES (14, 'Jerry I. Porras', '2021-08-29 02:27:46.529+00', '2021-08-29 02:27:46.529+00');
INSERT INTO public."Authors" VALUES (15, 'Jim Collins', '2021-08-29 02:27:48.423+00', '2021-08-29 02:27:48.423+00');
INSERT INTO public."Authors" VALUES (16, 'Jerry I. Porras', '2021-08-29 02:27:48.426+00', '2021-08-29 02:27:48.426+00');
INSERT INTO public."Authors" VALUES (17, 'Jim Collins', '2021-08-29 02:27:54.906+00', '2021-08-29 02:27:54.906+00');
INSERT INTO public."Authors" VALUES (18, 'Jerry I. Porras', '2021-08-29 02:27:54.908+00', '2021-08-29 02:27:54.908+00');
INSERT INTO public."Authors" VALUES (19, 'Jim Collins', '2021-08-29 02:27:59.983+00', '2021-08-29 02:27:59.983+00');
INSERT INTO public."Authors" VALUES (20, 'Jerry I. Porras', '2021-08-29 02:27:59.994+00', '2021-08-29 02:27:59.994+00');
INSERT INTO public."Authors" VALUES (21, 'Jim Collins', '2021-08-29 02:28:04.455+00', '2021-08-29 02:28:04.455+00');
INSERT INTO public."Authors" VALUES (22, 'Jerry I. Porras', '2021-08-29 02:28:04.458+00', '2021-08-29 02:28:04.458+00');
INSERT INTO public."Authors" VALUES (23, 'Jim Collins', '2021-08-29 02:28:10.46+00', '2021-08-29 02:28:10.46+00');
INSERT INTO public."Authors" VALUES (24, 'Jerry I. Porras', '2021-08-29 02:28:10.462+00', '2021-08-29 02:28:10.462+00');
INSERT INTO public."Authors" VALUES (25, 'Jim Collins', '2021-08-29 02:28:19.487+00', '2021-08-29 02:28:19.487+00');
INSERT INTO public."Authors" VALUES (26, 'Jerry I. Porras', '2021-08-29 02:28:19.489+00', '2021-08-29 02:28:19.489+00');
INSERT INTO public."Authors" VALUES (27, 'Jim Collins', '2021-08-29 02:29:05.803+00', '2021-08-29 02:29:05.803+00');
INSERT INTO public."Authors" VALUES (28, 'Jerry I. Porras', '2021-08-29 02:29:05.805+00', '2021-08-29 02:29:05.805+00');
INSERT INTO public."Authors" VALUES (29, 'Jim Collins', '2021-08-29 02:29:15.343+00', '2021-08-29 02:29:15.343+00');
INSERT INTO public."Authors" VALUES (30, 'Jerry I. Porras', '2021-08-29 02:29:15.344+00', '2021-08-29 02:29:15.344+00');
INSERT INTO public."Authors" VALUES (31, 'Jim Collins', '2021-08-29 02:29:32.551+00', '2021-08-29 02:29:32.551+00');
INSERT INTO public."Authors" VALUES (32, 'Jerry I. Porras', '2021-08-29 02:29:32.556+00', '2021-08-29 02:29:32.556+00');
INSERT INTO public."Authors" VALUES (33, 'Jim Collins', '2021-08-29 02:29:54.642+00', '2021-08-29 02:29:54.642+00');
INSERT INTO public."Authors" VALUES (34, 'Jerry I. Porras', '2021-08-29 02:29:54.646+00', '2021-08-29 02:29:54.646+00');
INSERT INTO public."Authors" VALUES (35, 'Jim Collins', '2021-08-29 02:31:09.263+00', '2021-08-29 02:31:09.263+00');
INSERT INTO public."Authors" VALUES (36, 'Jerry I. Porras', '2021-08-29 02:31:09.265+00', '2021-08-29 02:31:09.265+00');
INSERT INTO public."Authors" VALUES (37, 'Jim Collins', '2021-08-29 02:31:37.039+00', '2021-08-29 02:31:37.039+00');
INSERT INTO public."Authors" VALUES (38, 'Jerry I. Porras', '2021-08-29 02:31:37.041+00', '2021-08-29 02:31:37.041+00');
INSERT INTO public."Authors" VALUES (39, 'Jim Collins', '2021-08-29 02:31:42.863+00', '2021-08-29 02:31:42.863+00');
INSERT INTO public."Authors" VALUES (40, 'Jerry I. Porras', '2021-08-29 02:31:42.864+00', '2021-08-29 02:31:42.864+00');
INSERT INTO public."Authors" VALUES (41, 'Jim Collins', '2021-08-29 02:31:47.53+00', '2021-08-29 02:31:47.53+00');
INSERT INTO public."Authors" VALUES (42, 'Jerry I. Porras', '2021-08-29 02:31:47.531+00', '2021-08-29 02:31:47.531+00');
INSERT INTO public."Authors" VALUES (43, 'Jim Collins', '2021-08-29 02:31:52.958+00', '2021-08-29 02:31:52.958+00');
INSERT INTO public."Authors" VALUES (44, 'Jerry I. Porras', '2021-08-29 02:31:52.96+00', '2021-08-29 02:31:52.96+00');
INSERT INTO public."Authors" VALUES (45, 'Jim Collins', '2021-08-29 02:32:00.003+00', '2021-08-29 02:32:00.003+00');
INSERT INTO public."Authors" VALUES (46, 'Jerry I. Porras', '2021-08-29 02:32:00.005+00', '2021-08-29 02:32:00.005+00');
INSERT INTO public."Authors" VALUES (47, 'Jim Collins', '2021-08-29 02:32:16.368+00', '2021-08-29 02:32:16.368+00');
INSERT INTO public."Authors" VALUES (48, 'Jerry I. Porras', '2021-08-29 02:32:16.371+00', '2021-08-29 02:32:16.371+00');
INSERT INTO public."Authors" VALUES (49, 'Jim Collins', '2021-08-29 02:32:26.22+00', '2021-08-29 02:32:26.22+00');
INSERT INTO public."Authors" VALUES (50, 'Jerry I. Porras', '2021-08-29 02:32:26.222+00', '2021-08-29 02:32:26.222+00');
INSERT INTO public."Authors" VALUES (51, 'Jim Collins', '2021-08-29 02:32:34.995+00', '2021-08-29 02:32:34.995+00');
INSERT INTO public."Authors" VALUES (52, 'Jerry I. Porras', '2021-08-29 02:32:34.997+00', '2021-08-29 02:32:34.997+00');
INSERT INTO public."Authors" VALUES (53, 'Jim Collins', '2021-08-29 02:33:10.808+00', '2021-08-29 02:33:10.808+00');
INSERT INTO public."Authors" VALUES (54, 'Jerry I. Porras', '2021-08-29 02:33:10.81+00', '2021-08-29 02:33:10.81+00');
INSERT INTO public."Authors" VALUES (55, 'Jim Collins', '2021-08-29 02:33:22.804+00', '2021-08-29 02:33:22.804+00');
INSERT INTO public."Authors" VALUES (56, 'Jerry I. Porras', '2021-08-29 02:33:22.806+00', '2021-08-29 02:33:22.806+00');


INSERT INTO public."Books" VALUES (1, 'The Effective Engineer', 'Some description', 'http://localhost:4000/files/what-you-do_rerozi.jpg', 1, 29.99, 30, 'Savanna Books', false, '2020-01-25', '2021-08-29 02:16:46.561+00', '2021-08-29 02:16:46.573+00');
INSERT INTO public."Books" VALUES (2, 'Becoming Cover', 'Some description', 'http://localhost:4000/files/becoming-cover_suqk9r.jpg', 2, 29.99, 30, 'Savanna Books', false, '2020-01-25', '2021-08-29 02:20:08.518+00', '2021-08-29 02:20:08.531+00');
INSERT INTO public."Books" VALUES (3, 'Big Magic Cover', 'Some description', 'http://localhost:4000/files/big-magic-cover_euc3rh.jpg', 3, 29.99, 30, 'Savanna Books', false, '2020-01-25', '2021-08-29 02:22:09.817+00', '2021-08-29 02:22:09.828+00');
INSERT INTO public."Books" VALUES (4, 'Blue Ocean', 'Some description', 'http://localhost:4000/files/blue-ocean-strategy_amjdl6.jpg', 4, 10.1, 0, 'Savanna Books', false, '2020-01-25', '2021-08-29 02:24:58.923+00', '2021-08-29 02:24:58.932+00');
INSERT INTO public."Books" VALUES (5, 'Built To Last', 'Some description', 'http://localhost:4000/files/built-to-last-cover_cb92oa.jpg', 5, 10.1, 0, 'Savanna Books', true, '2020-01-25', '2021-08-29 02:26:13.002+00', '2021-08-29 02:26:13.01+00');
INSERT INTO public."Books" VALUES (6, 'Built To Last', 'Some description', 'http://localhost:4000/files/effective-python-cover_s7dahh.jpg', 6, 10.1, 0, 'Savanna Books', true, '2020-01-25', '2021-08-29 02:27:41.837+00', '2021-08-29 02:27:41.841+00');
INSERT INTO public."Books" VALUES (7, 'Built To Last', 'Some description', 'http://localhost:4000/files/effective-python-cover_s7dahh.jpg', 7, 10.1, 0, 'Savanna Books', true, '2020-01-25', '2021-08-29 02:27:46.531+00', '2021-08-29 02:27:46.536+00');
INSERT INTO public."Books" VALUES (8, 'Built To Last', 'Some description', 'http://localhost:4000/files/effective-python-cover_s7dahh.jpg', 8, 10.1, 0, 'Savanna Books', true, '2020-01-25', '2021-08-29 02:27:48.428+00', '2021-08-29 02:27:48.432+00');
INSERT INTO public."Books" VALUES (9, 'asdsf To Last', 'Some description', 'http://localhost:4000/files/effective-python-cover_s7dahh.jpg', 9, 10.1, 0, 'Savanna Books', true, '2020-01-25', '2021-08-29 02:27:54.909+00', '2021-08-29 02:27:54.912+00');
INSERT INTO public."Books" VALUES (10, 'Anotjer To Last', 'Some description', 'http://localhost:4000/files/effective-python-cover_s7dahh.jpg', 10, 10.1, 0, 'Savanna Books', true, '2020-01-25', '2021-08-29 02:27:59.997+00', '2021-08-29 02:28:00.001+00');
INSERT INTO public."Books" VALUES (11, 'assaasdsd To Last', 'Some description', 'http://localhost:4000/files/effective-python-cover_s7dahh.jpg', 11, 10.1, 0, 'Savanna Books', true, '2020-01-25', '2021-08-29 02:28:04.46+00', '2021-08-29 02:28:04.464+00');
INSERT INTO public."Books" VALUES (12, 'wsadfaf', 'Some description', 'http://localhost:4000/files/effective-python-cover_s7dahh.jpg', 12, 10.1, 0, 'Savanna Books', true, '2020-01-25', '2021-08-29 02:28:10.463+00', '2021-08-29 02:28:10.468+00');
INSERT INTO public."Books" VALUES (13, 'tgadfgad', 'Some description', 'http://localhost:4000/files/effective-python-cover_s7dahh.jpg', 13, 13.1, 0, 'Savanna Books', true, '2020-01-25', '2021-08-29 02:28:19.49+00', '2021-08-29 02:28:19.497+00');
INSERT INTO public."Books" VALUES (14, 'Effective Python', 'Some description', 'http://localhost:4000/files/fifth-avenue-style_wknvht.jpg', 14, 13.1, 20, 'Savanna Books', true, '2020-01-25', '2021-08-29 02:29:05.806+00', '2021-08-29 02:29:05.81+00');
INSERT INTO public."Books" VALUES (15, 'Effective C++', 'Some description', 'http://localhost:4000/files/fifth-avenue-style_wknvht.jpg', 15, 13.1, 30, 'Savanna Books', true, '2020-01-25', '2021-08-29 02:29:15.346+00', '2021-08-29 02:29:15.349+00');
INSERT INTO public."Books" VALUES (16, 'GO Programming course', 'Some description', 'http://localhost:4000/files/fifth-avenue-style_wknvht.jpg', 16, 13.1, 30, 'Savanna Books', true, '2020-01-25', '2021-08-29 02:29:32.557+00', '2021-08-29 02:29:32.563+00');
INSERT INTO public."Books" VALUES (17, 'Financial Stability', 'Some description', 'http://localhost:4000/files/fifth-avenue-style_wknvht.jpg', 17, 13.1, 30, 'Savanna Books', true, '2020-01-25', '2021-08-29 02:29:54.65+00', '2021-08-29 02:29:54.658+00');
INSERT INTO public."Books" VALUES (18, 'Signature of all things', 'Some description', 'http://localhost:4000/files/signature-of-all-things_ogxgi7.jpg', 18, 49.99, 30, 'Savanna Books', true, '2020-01-25', '2021-08-29 02:31:09.267+00', '2021-08-29 02:31:09.272+00');
INSERT INTO public."Books" VALUES (19, 'Best Seller', 'Some description', 'http://localhost:4000/files/signature-of-all-things_ogxgi7.jpg', 19, 49.99, 30, 'Savanna Books', true, '2020-01-25', '2021-08-29 02:31:37.042+00', '2021-08-29 02:31:37.049+00');
INSERT INTO public."Books" VALUES (20, 'Best Seller', 'Some description', 'http://localhost:4000/files/sisdfdsgnature-of-all-things_ogxgi7.jpg', 20, 49.99, 30, 'Savanna Books', true, '2020-01-25', '2021-08-29 02:31:42.866+00', '2021-08-29 02:31:42.869+00');
INSERT INTO public."Books" VALUES (21, 'Best Seller', 'Some description', 'http://localhost:4000/files/sisdfdsgnature-of-all-tther.jpg', 21, 49.99, 30, 'Savanna Books', true, '2020-01-25', '2021-08-29 02:31:47.533+00', '2021-08-29 02:31:47.541+00');
INSERT INTO public."Books" VALUES (22, 'Best Another', 'Some description', 'http://localhost:4000/files/sisdfdsgnature-of-all-tther.jpg', 22, 49.99, 30, 'Savanna Books', true, '2020-01-25', '2021-08-29 02:31:52.962+00', '2021-08-29 02:31:52.966+00');
INSERT INTO public."Books" VALUES (23, 'Testing', 'Some description', 'http://localhost:4000/files/sisdfdsgnature-of-all-tther.jpg', 23, 49.99, 30, 'Savanna Books', true, '2020-01-25', '2021-08-29 02:32:00.006+00', '2021-08-29 02:32:00.015+00');
INSERT INTO public."Books" VALUES (24, 'Test Book', 'Some description', 'http://localhost:4000/files/sisdfdsgnature-of-all-tther.jpg', 24, 49.99, 30, 'Savanna', false, '2020-01-25', '2021-08-29 02:32:16.372+00', '2021-08-29 02:32:16.38+00');
INSERT INTO public."Books" VALUES (25, 'Test Book II', 'Some description', 'http://localhost:4000/files/sdsdsd-of-all-tther.jpg', 25, 49.99, 30, 'Savanna', false, '2020-01-25', '2021-08-29 02:32:26.224+00', '2021-08-29 02:32:26.227+00');
INSERT INTO public."Books" VALUES (26, 'Buy Now', 'Some description', 'http://localhost:4000/files/sdsdsd-of-all-tther.jpg', 26, 49.99, 30, 'Savanna', false, '2020-01-25', '2021-08-29 02:32:35+00', '2021-08-29 02:32:35.004+00', '''buy'':1');
INSERT INTO public."Books" VALUES (27, 'thirty Items made right', 'Some description', 'http://localhost:4000/files/sdsdsd-of-all-tther.jpg', 27, 49.99, 30, 'Savanna', false, '2020-01-25', '2021-08-29 02:33:10.812+00', '2021-08-29 02:33:10.816+00');
INSERT INTO public."Books" VALUES (28, 'Random for test', 'Some description', 'http://localhost:4000/files/ssdfs-of-all-tther.jpg', 28, 49.99, 30, 'Savanna', false, '2020-01-25', '2021-08-29 02:33:22.808+00', '2021-08-29 02:33:22.818+00');

INSERT INTO public."BookTags" VALUES (1, '2021-08-29 02:16:46.592+00', '2021-08-29 02:16:46.592+00', 1, 1);
INSERT INTO public."BookTags" VALUES (2, '2021-08-29 02:16:46.592+00', '2021-08-29 02:16:46.592+00', 1, 2);
INSERT INTO public."BookTags" VALUES (3, '2021-08-29 02:20:08.549+00', '2021-08-29 02:20:08.549+00', 2, 3);
INSERT INTO public."BookTags" VALUES (4, '2021-08-29 02:20:08.549+00', '2021-08-29 02:20:08.549+00', 2, 4);
INSERT INTO public."BookTags" VALUES (5, '2021-08-29 02:22:09.844+00', '2021-08-29 02:22:09.844+00', 3, 5);
INSERT INTO public."BookTags" VALUES (6, '2021-08-29 02:22:09.844+00', '2021-08-29 02:22:09.844+00', 3, 6);
INSERT INTO public."BookTags" VALUES (7, '2021-08-29 02:24:58.949+00', '2021-08-29 02:24:58.949+00', 4, 7);
INSERT INTO public."BookTags" VALUES (8, '2021-08-29 02:24:58.949+00', '2021-08-29 02:24:58.949+00', 4, 8);
INSERT INTO public."BookTags" VALUES (9, '2021-08-29 02:26:13.027+00', '2021-08-29 02:26:13.027+00', 5, 9);
INSERT INTO public."BookTags" VALUES (10, '2021-08-29 02:26:13.027+00', '2021-08-29 02:26:13.027+00', 5, 10);
INSERT INTO public."BookTags" VALUES (11, '2021-08-29 02:27:41.854+00', '2021-08-29 02:27:41.854+00', 6, 11);
INSERT INTO public."BookTags" VALUES (12, '2021-08-29 02:27:41.854+00', '2021-08-29 02:27:41.854+00', 6, 12);
INSERT INTO public."BookTags" VALUES (13, '2021-08-29 02:27:46.545+00', '2021-08-29 02:27:46.545+00', 7, 13);
INSERT INTO public."BookTags" VALUES (14, '2021-08-29 02:27:46.545+00', '2021-08-29 02:27:46.545+00', 7, 14);
INSERT INTO public."BookTags" VALUES (15, '2021-08-29 02:27:48.44+00', '2021-08-29 02:27:48.44+00', 8, 15);
INSERT INTO public."BookTags" VALUES (16, '2021-08-29 02:27:48.44+00', '2021-08-29 02:27:48.44+00', 8, 16);
INSERT INTO public."BookTags" VALUES (17, '2021-08-29 02:27:54.921+00', '2021-08-29 02:27:54.921+00', 9, 17);
INSERT INTO public."BookTags" VALUES (18, '2021-08-29 02:27:54.921+00', '2021-08-29 02:27:54.921+00', 9, 18);
INSERT INTO public."BookTags" VALUES (19, '2021-08-29 02:28:00.007+00', '2021-08-29 02:28:00.007+00', 10, 19);
INSERT INTO public."BookTags" VALUES (20, '2021-08-29 02:28:00.007+00', '2021-08-29 02:28:00.007+00', 10, 20);
INSERT INTO public."BookTags" VALUES (21, '2021-08-29 02:28:04.469+00', '2021-08-29 02:28:04.469+00', 11, 21);
INSERT INTO public."BookTags" VALUES (22, '2021-08-29 02:28:04.469+00', '2021-08-29 02:28:04.469+00', 11, 22);
INSERT INTO public."BookTags" VALUES (23, '2021-08-29 02:28:10.475+00', '2021-08-29 02:28:10.475+00', 12, 23);
INSERT INTO public."BookTags" VALUES (24, '2021-08-29 02:28:10.475+00', '2021-08-29 02:28:10.475+00', 12, 24);
INSERT INTO public."BookTags" VALUES (25, '2021-08-29 02:28:19.501+00', '2021-08-29 02:28:19.501+00', 13, 25);
INSERT INTO public."BookTags" VALUES (26, '2021-08-29 02:28:19.501+00', '2021-08-29 02:28:19.501+00', 13, 26);
INSERT INTO public."BookTags" VALUES (27, '2021-08-29 02:29:05.822+00', '2021-08-29 02:29:05.822+00', 14, 27);
INSERT INTO public."BookTags" VALUES (28, '2021-08-29 02:29:05.822+00', '2021-08-29 02:29:05.822+00', 14, 28);
INSERT INTO public."BookTags" VALUES (29, '2021-08-29 02:29:15.355+00', '2021-08-29 02:29:15.355+00', 15, 29);
INSERT INTO public."BookTags" VALUES (30, '2021-08-29 02:29:15.355+00', '2021-08-29 02:29:15.355+00', 15, 30);
INSERT INTO public."BookTags" VALUES (31, '2021-08-29 02:29:32.576+00', '2021-08-29 02:29:32.576+00', 16, 31);
INSERT INTO public."BookTags" VALUES (32, '2021-08-29 02:29:32.576+00', '2021-08-29 02:29:32.576+00', 16, 32);
INSERT INTO public."BookTags" VALUES (33, '2021-08-29 02:29:54.674+00', '2021-08-29 02:29:54.674+00', 17, 33);
INSERT INTO public."BookTags" VALUES (34, '2021-08-29 02:29:54.674+00', '2021-08-29 02:29:54.674+00', 17, 34);
INSERT INTO public."BookTags" VALUES (35, '2021-08-29 02:31:09.285+00', '2021-08-29 02:31:09.285+00', 18, 35);
INSERT INTO public."BookTags" VALUES (36, '2021-08-29 02:31:09.285+00', '2021-08-29 02:31:09.285+00', 18, 36);
INSERT INTO public."BookTags" VALUES (37, '2021-08-29 02:31:37.062+00', '2021-08-29 02:31:37.062+00', 19, 37);
INSERT INTO public."BookTags" VALUES (38, '2021-08-29 02:31:37.062+00', '2021-08-29 02:31:37.062+00', 19, 38);
INSERT INTO public."BookTags" VALUES (39, '2021-08-29 02:31:42.878+00', '2021-08-29 02:31:42.878+00', 20, 39);
INSERT INTO public."BookTags" VALUES (40, '2021-08-29 02:31:42.878+00', '2021-08-29 02:31:42.878+00', 20, 40);
INSERT INTO public."BookTags" VALUES (41, '2021-08-29 02:31:47.546+00', '2021-08-29 02:31:47.546+00', 21, 41);
INSERT INTO public."BookTags" VALUES (42, '2021-08-29 02:31:47.546+00', '2021-08-29 02:31:47.546+00', 21, 42);
INSERT INTO public."BookTags" VALUES (43, '2021-08-29 02:31:52.974+00', '2021-08-29 02:31:52.974+00', 22, 43);
INSERT INTO public."BookTags" VALUES (44, '2021-08-29 02:31:52.974+00', '2021-08-29 02:31:52.974+00', 22, 44);
INSERT INTO public."BookTags" VALUES (45, '2021-08-29 02:32:00.02+00', '2021-08-29 02:32:00.02+00', 23, 45);
INSERT INTO public."BookTags" VALUES (46, '2021-08-29 02:32:00.02+00', '2021-08-29 02:32:00.02+00', 23, 46);
INSERT INTO public."BookTags" VALUES (47, '2021-08-29 02:32:16.391+00', '2021-08-29 02:32:16.391+00', 24, 47);
INSERT INTO public."BookTags" VALUES (48, '2021-08-29 02:32:16.391+00', '2021-08-29 02:32:16.391+00', 24, 48);
INSERT INTO public."BookTags" VALUES (49, '2021-08-29 02:32:26.234+00', '2021-08-29 02:32:26.234+00', 25, 49);
INSERT INTO public."BookTags" VALUES (50, '2021-08-29 02:32:26.234+00', '2021-08-29 02:32:26.234+00', 25, 50);
INSERT INTO public."BookTags" VALUES (51, '2021-08-29 02:32:35.013+00', '2021-08-29 02:32:35.013+00', 26, 51);
INSERT INTO public."BookTags" VALUES (52, '2021-08-29 02:32:35.013+00', '2021-08-29 02:32:35.013+00', 26, 52);
INSERT INTO public."BookTags" VALUES (53, '2021-08-29 02:33:10.827+00', '2021-08-29 02:33:10.827+00', 27, 53);
INSERT INTO public."BookTags" VALUES (54, '2021-08-29 02:33:10.827+00', '2021-08-29 02:33:10.827+00', 27, 54);
INSERT INTO public."BookTags" VALUES (55, '2021-08-29 02:33:22.83+00', '2021-08-29 02:33:22.83+00', 28, 55);
INSERT INTO public."BookTags" VALUES (56, '2021-08-29 02:33:22.83+00', '2021-08-29 02:33:22.83+00', 28, 56);


INSERT INTO public."BookAuthors" VALUES (1, '2021-08-29 02:16:46.581+00', '2021-08-29 02:16:46.581+00', 1, 1);
INSERT INTO public."BookAuthors" VALUES (2, '2021-08-29 02:16:46.581+00', '2021-08-29 02:16:46.581+00', 1, 2);
INSERT INTO public."BookAuthors" VALUES (3, '2021-08-29 02:20:08.542+00', '2021-08-29 02:20:08.542+00', 2, 3);
INSERT INTO public."BookAuthors" VALUES (4, '2021-08-29 02:20:08.542+00', '2021-08-29 02:20:08.542+00', 2, 4);
INSERT INTO public."BookAuthors" VALUES (5, '2021-08-29 02:22:09.833+00', '2021-08-29 02:22:09.833+00', 3, 5);
INSERT INTO public."BookAuthors" VALUES (6, '2021-08-29 02:22:09.833+00', '2021-08-29 02:22:09.833+00', 3, 6);
INSERT INTO public."BookAuthors" VALUES (7, '2021-08-29 02:24:58.942+00', '2021-08-29 02:24:58.942+00', 4, 7);
INSERT INTO public."BookAuthors" VALUES (8, '2021-08-29 02:24:58.942+00', '2021-08-29 02:24:58.942+00', 4, 8);
INSERT INTO public."BookAuthors" VALUES (9, '2021-08-29 02:26:13.02+00', '2021-08-29 02:26:13.02+00', 5, 9);
INSERT INTO public."BookAuthors" VALUES (10, '2021-08-29 02:26:13.02+00', '2021-08-29 02:26:13.02+00', 5, 10);
INSERT INTO public."BookAuthors" VALUES (11, '2021-08-29 02:27:41.848+00', '2021-08-29 02:27:41.848+00', 6, 11);
INSERT INTO public."BookAuthors" VALUES (12, '2021-08-29 02:27:41.848+00', '2021-08-29 02:27:41.848+00', 6, 12);
INSERT INTO public."BookAuthors" VALUES (13, '2021-08-29 02:27:46.54+00', '2021-08-29 02:27:46.54+00', 7, 13);
INSERT INTO public."BookAuthors" VALUES (14, '2021-08-29 02:27:46.54+00', '2021-08-29 02:27:46.54+00', 7, 14);
INSERT INTO public."BookAuthors" VALUES (15, '2021-08-29 02:27:48.434+00', '2021-08-29 02:27:48.434+00', 8, 15);
INSERT INTO public."BookAuthors" VALUES (16, '2021-08-29 02:27:48.434+00', '2021-08-29 02:27:48.434+00', 8, 16);
INSERT INTO public."BookAuthors" VALUES (17, '2021-08-29 02:27:54.917+00', '2021-08-29 02:27:54.917+00', 9, 17);
INSERT INTO public."BookAuthors" VALUES (18, '2021-08-29 02:27:54.917+00', '2021-08-29 02:27:54.917+00', 9, 18);
INSERT INTO public."BookAuthors" VALUES (19, '2021-08-29 02:28:00.004+00', '2021-08-29 02:28:00.004+00', 10, 19);
INSERT INTO public."BookAuthors" VALUES (20, '2021-08-29 02:28:00.004+00', '2021-08-29 02:28:00.004+00', 10, 20);
INSERT INTO public."BookAuthors" VALUES (21, '2021-08-29 02:28:04.466+00', '2021-08-29 02:28:04.466+00', 11, 21);
INSERT INTO public."BookAuthors" VALUES (22, '2021-08-29 02:28:04.466+00', '2021-08-29 02:28:04.466+00', 11, 22);
INSERT INTO public."BookAuthors" VALUES (23, '2021-08-29 02:28:10.472+00', '2021-08-29 02:28:10.472+00', 12, 23);
INSERT INTO public."BookAuthors" VALUES (24, '2021-08-29 02:28:10.472+00', '2021-08-29 02:28:10.472+00', 12, 24);
INSERT INTO public."BookAuthors" VALUES (25, '2021-08-29 02:28:19.499+00', '2021-08-29 02:28:19.499+00', 13, 25);
INSERT INTO public."BookAuthors" VALUES (26, '2021-08-29 02:28:19.499+00', '2021-08-29 02:28:19.499+00', 13, 26);
INSERT INTO public."BookAuthors" VALUES (27, '2021-08-29 02:29:05.818+00', '2021-08-29 02:29:05.818+00', 14, 27);
INSERT INTO public."BookAuthors" VALUES (28, '2021-08-29 02:29:05.818+00', '2021-08-29 02:29:05.818+00', 14, 28);
INSERT INTO public."BookAuthors" VALUES (29, '2021-08-29 02:29:15.351+00', '2021-08-29 02:29:15.351+00', 15, 29);
INSERT INTO public."BookAuthors" VALUES (30, '2021-08-29 02:29:15.351+00', '2021-08-29 02:29:15.351+00', 15, 30);
INSERT INTO public."BookAuthors" VALUES (31, '2021-08-29 02:29:32.567+00', '2021-08-29 02:29:32.567+00', 16, 31);
INSERT INTO public."BookAuthors" VALUES (32, '2021-08-29 02:29:32.567+00', '2021-08-29 02:29:32.567+00', 16, 32);
INSERT INTO public."BookAuthors" VALUES (33, '2021-08-29 02:29:54.666+00', '2021-08-29 02:29:54.666+00', 17, 33);
INSERT INTO public."BookAuthors" VALUES (34, '2021-08-29 02:29:54.666+00', '2021-08-29 02:29:54.666+00', 17, 34);
INSERT INTO public."BookAuthors" VALUES (35, '2021-08-29 02:31:09.28+00', '2021-08-29 02:31:09.28+00', 18, 35);
INSERT INTO public."BookAuthors" VALUES (36, '2021-08-29 02:31:09.28+00', '2021-08-29 02:31:09.28+00', 18, 36);
INSERT INTO public."BookAuthors" VALUES (37, '2021-08-29 02:31:37.057+00', '2021-08-29 02:31:37.057+00', 19, 37);
INSERT INTO public."BookAuthors" VALUES (38, '2021-08-29 02:31:37.057+00', '2021-08-29 02:31:37.057+00', 19, 38);
INSERT INTO public."BookAuthors" VALUES (39, '2021-08-29 02:31:42.872+00', '2021-08-29 02:31:42.872+00', 20, 39);
INSERT INTO public."BookAuthors" VALUES (40, '2021-08-29 02:31:42.872+00', '2021-08-29 02:31:42.872+00', 20, 40);
INSERT INTO public."BookAuthors" VALUES (41, '2021-08-29 02:31:47.544+00', '2021-08-29 02:31:47.544+00', 21, 41);
INSERT INTO public."BookAuthors" VALUES (42, '2021-08-29 02:31:47.544+00', '2021-08-29 02:31:47.544+00', 21, 42);
INSERT INTO public."BookAuthors" VALUES (43, '2021-08-29 02:31:52.97+00', '2021-08-29 02:31:52.97+00', 22, 43);
INSERT INTO public."BookAuthors" VALUES (44, '2021-08-29 02:31:52.97+00', '2021-08-29 02:31:52.97+00', 22, 44);
INSERT INTO public."BookAuthors" VALUES (45, '2021-08-29 02:32:00.018+00', '2021-08-29 02:32:00.018+00', 23, 45);
INSERT INTO public."BookAuthors" VALUES (46, '2021-08-29 02:32:00.018+00', '2021-08-29 02:32:00.018+00', 23, 46);
INSERT INTO public."BookAuthors" VALUES (47, '2021-08-29 02:32:16.384+00', '2021-08-29 02:32:16.384+00', 24, 47);
INSERT INTO public."BookAuthors" VALUES (48, '2021-08-29 02:32:16.384+00', '2021-08-29 02:32:16.384+00', 24, 48);
INSERT INTO public."BookAuthors" VALUES (49, '2021-08-29 02:32:26.229+00', '2021-08-29 02:32:26.229+00', 25, 49);
INSERT INTO public."BookAuthors" VALUES (50, '2021-08-29 02:32:26.229+00', '2021-08-29 02:32:26.229+00', 25, 50);
INSERT INTO public."BookAuthors" VALUES (51, '2021-08-29 02:32:35.01+00', '2021-08-29 02:32:35.01+00', 26, 51);
INSERT INTO public."BookAuthors" VALUES (52, '2021-08-29 02:32:35.01+00', '2021-08-29 02:32:35.01+00', 26, 52);
INSERT INTO public."BookAuthors" VALUES (53, '2021-08-29 02:33:10.821+00', '2021-08-29 02:33:10.821+00', 27, 53);
INSERT INTO public."BookAuthors" VALUES (54, '2021-08-29 02:33:10.821+00', '2021-08-29 02:33:10.821+00', 27, 54);
INSERT INTO public."BookAuthors" VALUES (55, '2021-08-29 02:33:22.823+00', '2021-08-29 02:33:22.823+00', 28, 55);
INSERT INTO public."BookAuthors" VALUES (56, '2021-08-29 02:33:22.823+00', '2021-08-29 02:33:22.823+00', 28, 56);


-- Authors
ALTER TABLE "Authors" ADD COLUMN _search TSVECTOR;

UPDATE "Authors" SET _search = to_tsve ctor('english', "Authors"."name");

CREATE INDEX Authors_search ON "Authors" USING gin(_search);

CREATE TRIGGER Authors_vector_update
BEFORE INSERT OR UPDATE ON "Authors"
FOR EACH ROW EXECUTE PROCEDURE tsvector_update_trigger(_search, 'pg_catalog.english', "name");

-- Tags
ALTER TABLE "Tags" ADD COLUMN _search TSVECTOR;

UPDATE "Tags" SET _search = to_tsvector('english', "Tags"."tagName");

CREATE INDEX Tags_search ON "Tags" USING gin(_search);

CREATE TRIGGER Tags_vector_update
BEFORE INSERT OR UPDATE ON "Tags"
FOR EACH ROW EXECUTE PROCEDURE tsvector_update_trigger(_search, 'pg_catalog.english', "tagName");

-- Genres
ALTER TABLE "Genres" ADD COLUMN _search TSVECTOR;

UPDATE "Genres" SET _search = to_tsvector('english', "Genres"."genreName");

CREATE INDEX Genres_search ON "Genres" USING gin(_search);

CREATE TRIGGER Genres_vector_update
BEFORE INSERT OR UPDATE ON "Genres"
FOR EACH ROW EXECUTE PROCEDURE tsvector_update_trigger(_search, 'pg_catalog.english', genreName);

-- Books
ALTER TABLE "Books" ADD COLUMN _search TSVECTOR;

UPDATE "Books" SET _search = to_tsvector('english', "Books"."title");

CREATE INDEX Books_search ON "Books" USING gin(_search);

CREATE TRIGGER Books_vector_update
BEFORE INSERT OR UPDATE ON "Books"
FOR EACH ROW EXECUTE PROCEDURE tsvector_update_trigger(_search, 'pg_catalog.english', title);


--
-- TOC entry 3050 (class 0 OID 0)
-- Dependencies: 202
-- Name: Genres_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

--SELECT pg_catalog.setval('public."Genres_id_seq"', 28, true);


-- Completed on 2021-08-29 22:14:54

--
-- PostgreSQL database dump complete
--

