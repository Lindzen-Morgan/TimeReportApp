PGDMP         !                {           monsters %   12.16 (Ubuntu 12.16-0ubuntu0.20.04.1)    15.4                0    0    ENCODING    ENCODING     #   SET client_encoding = 'SQL_ASCII';
                      false                       0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false                       0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false                       1262    24583    monsters    DATABASE     o   CREATE DATABASE monsters WITH TEMPLATE = template0 ENCODING = 'SQL_ASCII' LOCALE_PROVIDER = libc LOCALE = 'C';
    DROP DATABASE monsters;
                postgres    false                       0    0    DATABASE monsters    ACL     ,   GRANT ALL ON DATABASE monsters TO monsters;
                   postgres    false    3600            �           1259    46630    mjl_project_person    TABLE     �   CREATE TABLE public.mjl_project_person (
    id integer NOT NULL,
    project_id integer NOT NULL,
    person_id integer NOT NULL,
    hours integer NOT NULL
);
 &   DROP TABLE public.mjl_project_person;
       public         heap    monsters    false            �           1259    46628    mjl_project_person_id_seq    SEQUENCE     �   CREATE SEQUENCE public.mjl_project_person_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public.mjl_project_person_id_seq;
       public          monsters    false    466                       0    0    mjl_project_person_id_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE public.mjl_project_person_id_seq OWNED BY public.mjl_project_person.id;
          public          monsters    false    465            �           2604    46633    mjl_project_person id    DEFAULT     ~   ALTER TABLE ONLY public.mjl_project_person ALTER COLUMN id SET DEFAULT nextval('public.mjl_project_person_id_seq'::regclass);
 D   ALTER TABLE public.mjl_project_person ALTER COLUMN id DROP DEFAULT;
       public          monsters    false    465    466    466            
          0    46630    mjl_project_person 
   TABLE DATA           N   COPY public.mjl_project_person (id, project_id, person_id, hours) FROM stdin;
    public          monsters    false    466   U                  0    0    mjl_project_person_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.mjl_project_person_id_seq', 2, true);
          public          monsters    false    465            �           2606    46635 *   mjl_project_person mjl_project_person_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY public.mjl_project_person
    ADD CONSTRAINT mjl_project_person_pkey PRIMARY KEY (id);
 T   ALTER TABLE ONLY public.mjl_project_person DROP CONSTRAINT mjl_project_person_pkey;
       public            monsters    false    466            
      x�3�4�4�41�2�4�4�46����� #��     