PGDMP     1    !                {           monsters %   12.16 (Ubuntu 12.16-0ubuntu0.20.04.1)    15.4                0    0    ENCODING    ENCODING     #   SET client_encoding = 'SQL_ASCII';
                      false                       0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false                       0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false                       1262    24583    monsters    DATABASE     o   CREATE DATABASE monsters WITH TEMPLATE = template0 ENCODING = 'SQL_ASCII' LOCALE_PROVIDER = libc LOCALE = 'C';
    DROP DATABASE monsters;
                postgres    false                       0    0    DATABASE monsters    ACL     ,   GRANT ALL ON DATABASE monsters TO monsters;
                   postgres    false    3600            �           1259    46614    mjl_project    TABLE     n   CREATE TABLE public.mjl_project (
    id integer NOT NULL,
    project_name character varying(50) NOT NULL
);
    DROP TABLE public.mjl_project;
       public         heap    monsters    false            �           1259    46612    mjl_project_id_seq    SEQUENCE     �   CREATE SEQUENCE public.mjl_project_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.mjl_project_id_seq;
       public          monsters    false    462                       0    0    mjl_project_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.mjl_project_id_seq OWNED BY public.mjl_project.id;
          public          monsters    false    461            �           2604    46617    mjl_project id    DEFAULT     p   ALTER TABLE ONLY public.mjl_project ALTER COLUMN id SET DEFAULT nextval('public.mjl_project_id_seq'::regclass);
 =   ALTER TABLE public.mjl_project ALTER COLUMN id DROP DEFAULT;
       public          monsters    false    461    462    462            
          0    46614    mjl_project 
   TABLE DATA           7   COPY public.mjl_project (id, project_name) FROM stdin;
    public          monsters    false    462   y                  0    0    mjl_project_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.mjl_project_id_seq', 1, false);
          public          monsters    false    461            �           2606    46619    mjl_project mjl_project_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.mjl_project
    ADD CONSTRAINT mjl_project_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.mjl_project DROP CONSTRAINT mjl_project_pkey;
       public            monsters    false    462            
   )   x�3�(��J�.	I-.�2�I�K�9�$;�(�+F��� �;
�     