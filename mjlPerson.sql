PGDMP         "                {           monsters %   12.16 (Ubuntu 12.16-0ubuntu0.20.04.1)    15.4                0    0    ENCODING    ENCODING     #   SET client_encoding = 'SQL_ASCII';
                      false                       0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false                       0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false                       1262    24583    monsters    DATABASE     o   CREATE DATABASE monsters WITH TEMPLATE = template0 ENCODING = 'SQL_ASCII' LOCALE_PROVIDER = libc LOCALE = 'C';
    DROP DATABASE monsters;
                postgres    false                       0    0    DATABASE monsters    ACL     ,   GRANT ALL ON DATABASE monsters TO monsters;
                   postgres    false    3600            �           1259    46622 
   mjl_person    TABLE     l   CREATE TABLE public.mjl_person (
    id integer NOT NULL,
    person_name character varying(25) NOT NULL
);
    DROP TABLE public.mjl_person;
       public         heap    monsters    false            �           1259    46620    mjl_person_id_seq    SEQUENCE     �   CREATE SEQUENCE public.mjl_person_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.mjl_person_id_seq;
       public          monsters    false    464                       0    0    mjl_person_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.mjl_person_id_seq OWNED BY public.mjl_person.id;
          public          monsters    false    463            �           2604    46625    mjl_person id    DEFAULT     n   ALTER TABLE ONLY public.mjl_person ALTER COLUMN id SET DEFAULT nextval('public.mjl_person_id_seq'::regclass);
 <   ALTER TABLE public.mjl_person ALTER COLUMN id DROP DEFAULT;
       public          monsters    false    464    463    464            
          0    46622 
   mjl_person 
   TABLE DATA           5   COPY public.mjl_person (id, person_name) FROM stdin;
    public          monsters    false    464   _                  0    0    mjl_person_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.mjl_person_id_seq', 5, true);
          public          monsters    false    463            �           2606    46627    mjl_person mjl_person_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.mjl_person
    ADD CONSTRAINT mjl_person_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.mjl_person DROP CONSTRAINT mjl_person_pkey;
       public            monsters    false    464            
   .   x�3���/JO��2�1�9}�����.(�˔�5'3/�+F��� �}`     