PGDMP     
                	    z         	   lesson_27    14.5    14.5                0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false                       0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false                       0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false                       1262    16395 	   lesson_27    DATABASE     f   CREATE DATABASE lesson_27 WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'Russian_Russia.1251';
    DROP DATABASE lesson_27;
                postgres    false            �            1259    16408 	   addresses    TABLE     _   CREATE TABLE public.addresses (
    id_address integer NOT NULL,
    city character varying
);
    DROP TABLE public.addresses;
       public         heap    postgres    false            �            1259    16407    addresses_id_address_seq    SEQUENCE     �   CREATE SEQUENCE public.addresses_id_address_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.addresses_id_address_seq;
       public          postgres    false    210                       0    0    addresses_id_address_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.addresses_id_address_seq OWNED BY public.addresses.id_address;
          public          postgres    false    209            �            1259    16426    ads    TABLE     �   CREATE TABLE public.ads (
    id integer NOT NULL,
    name character varying,
    author_id integer,
    price real,
    description character varying,
    address_id integer,
    is_published boolean
);
    DROP TABLE public.ads;
       public         heap    postgres    false            �            1259    16425 
   ads_id_seq    SEQUENCE     �   CREATE SEQUENCE public.ads_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 !   DROP SEQUENCE public.ads_id_seq;
       public          postgres    false    214                       0    0 
   ads_id_seq    SEQUENCE OWNED BY     9   ALTER SEQUENCE public.ads_id_seq OWNED BY public.ads.id;
          public          postgres    false    213            �            1259    16417    authors    TABLE     l   CREATE TABLE public.authors (
    id_author integer NOT NULL,
    author_name character varying NOT NULL
);
    DROP TABLE public.authors;
       public         heap    postgres    false            �            1259    16416    authors_id_author_seq    SEQUENCE     �   CREATE SEQUENCE public.authors_id_author_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.authors_id_author_seq;
       public          postgres    false    212                       0    0    authors_id_author_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.authors_id_author_seq OWNED BY public.authors.id_author;
          public          postgres    false    211            �          0    16408 	   addresses 
   TABLE DATA           5   COPY public.addresses (id_address, city) FROM stdin;
    public          postgres    false    210   Y       �          0    16426    ads 
   TABLE DATA           `   COPY public.ads (id, name, author_id, price, description, address_id, is_published) FROM stdin;
    public          postgres    false    214   $       �          0    16417    authors 
   TABLE DATA           9   COPY public.authors (id_author, author_name) FROM stdin;
    public          postgres    false    212   0%                  0    0    addresses_id_address_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.addresses_id_address_seq', 1, false);
          public          postgres    false    209            	           0    0 
   ads_id_seq    SEQUENCE SET     9   SELECT pg_catalog.setval('public.ads_id_seq', 1, false);
          public          postgres    false    213            
           0    0    authors_id_author_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.authors_id_author_seq', 1, false);
          public          postgres    false    211            g           2606    16415    addresses addresses_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.addresses
    ADD CONSTRAINT addresses_pkey PRIMARY KEY (id_address);
 B   ALTER TABLE ONLY public.addresses DROP CONSTRAINT addresses_pkey;
       public            postgres    false    210            k           2606    16435    ads ads_pkey 
   CONSTRAINT     J   ALTER TABLE ONLY public.ads
    ADD CONSTRAINT ads_pkey PRIMARY KEY (id);
 6   ALTER TABLE ONLY public.ads DROP CONSTRAINT ads_pkey;
       public            postgres    false    214            i           2606    16424    authors authors_pkey 
   CONSTRAINT     Y   ALTER TABLE ONLY public.authors
    ADD CONSTRAINT authors_pkey PRIMARY KEY (id_author);
 >   ALTER TABLE ONLY public.authors DROP CONSTRAINT authors_pkey;
       public            postgres    false    212            m           2606    16441    ads fk_addresses    FK CONSTRAINT     ~   ALTER TABLE ONLY public.ads
    ADD CONSTRAINT fk_addresses FOREIGN KEY (address_id) REFERENCES public.addresses(id_address);
 :   ALTER TABLE ONLY public.ads DROP CONSTRAINT fk_addresses;
       public          postgres    false    210    214    3175            l           2606    16436    ads fk_authors    FK CONSTRAINT     x   ALTER TABLE ONLY public.ads
    ADD CONSTRAINT fk_authors FOREIGN KEY (author_id) REFERENCES public.authors(id_author);
 8   ALTER TABLE ONLY public.ads DROP CONSTRAINT fk_authors;
       public          postgres    false    214    3177    212            �   �   x�mPI�@<3��(*�o|��AM�W5!���D̼��G�&��K����n�E�f�цwX�pR����9���LX���K�A5���C�q��� ����	2R5����\S���Q<�T<�z!�匙��q0���H�ggEv��^�i���dJ7�;��t����N�f���Rof��(      �   �  x��Y�n�]���j�hII�<��@6�rV�8H #�d��eɐlB+qbǯ�,)�m6߿�������s�n?(�g0�da�lv׭�S��$�g�e�{�~>�E?�eqP�|�
[!��i����A�Mz;�N��-��e>�����Ȋ���Vȇ�s��� r�D�C��8��|Q��,��y�,@�!~Z�;n{E��Ǜ�"<�!�+���iq�c�8�w�p9���0��z{�B���p���K�xbd<` �x�Z�S\/�p�QC<{�f�NIC�ȴ˯d�#<1	�ģp�/����S)��|�([�!t݋�������B���raٕ49������D���;;��(A���O�җ���	�B���,\��4�mj��ť"�Gq!�3_އ�q✮D���x��h凜)CMg2zp�!nC�1ܬCL����FƋ����YdYk�ٲ����c�]�8�]�澀�q��������E���69�9o�c� ��'�R�o-/!d,7y�e���w��Ĕ��&������3�y�J��t7��`P��wa�@�ge|N��Tv�Ю�g��u�m�����F&�TJv��P��v��P�JJ9i����y���1!3S�|�q'�Ń?��~����>�-������t����W�x?@}�����t\�יY?l���p��M񗎿���f:ͯ�>��/c�b�ҡ���9"�	���^���!�J��_��~ks󳛋,F��l�w�-��$� ��L�&D3���P��L�� 	�W�j5�(��y�
wd�*CZ����~�	m��%���	�� ����EO��42i�7L̺��wkv���	�%�n���o��WOXS�S{�Eߕ�tDC9F%S�*4+��M���p�f2�+���0���p�لե��Uյ�e��8e{���T�ρ�+@P��d�J|���>x���]�ʱ�[ї@����J��v�W&RCY;Sj��bcT�@��`E�rao�~>���Ӿ7�jÃ|��ZBeu��J.�g(I�M��6ϗ�����ԜHq#;�JwB;�1�Gq���بO��Y�r������S�#9C�I�OW��:D����=�����e��%�s��UDcZ%n�>��9��+}�Uq��'N���1�k��|�*�TVk�qmU2��Y�Zf����+;#���*1B�R��eEI�Y� ��!�v�b�B�����{{�ѹ�87�V��I(��SC?��V�kFa�s��cX?y�R2��!K�l��N��AІ@]	����q!�������6D�#m1y��j�0t��#�_��D	� �U�L��޾|��vuN�5�,:� ��sR{q�̃d���"@)���jaU�LCR`>�[��]�;C7z ��(a��n���M���M=�Ǳ(�~����_�C�ՉZ�>��2�:��(s�Yġ�8ۄ����m����6��	l[��s�|a���b��|�'R�Zm�@��3`+�#ZB 1��� �Y*3[W��R�^��`mFU��׬��SJ��1ʵ|���~�ЦVH�9l��h�>�g^����iP���`5Ϊ�(�xL֬�ׁ�{YP���̞�[��(v[d8�h�~�s��GS/����l3���SQ�|��lz�$J��+b���őu����L� s��{�?�.4T��f�j_�X���F�u����q]�(����Gg�M{�+Z��3�$��эV�k}�V�j0���Lc�*0����t���Yl	�IU�!��Tq��-�鉱��a�)%��82�Y9����2E�r�r��a�g�|a�d,�yű} �Q���0Qw�qa-#FHܳ�N��ƴ�m$���+9���V�%־�e.p�>��I<>a2"ѻ�N��pң̰�ș������l�3
�:h�|�\��":n�6PA���>YS7��bަa�c�i�Y���k붴��S�7��m�1�g�/U��X��C2�O�kK�������ߦ<tK�n��ǲ��DH!N���+'�[�yJ(�߃E۬�c��jg*N 8k\����g_�@���I�']&;���F�s��'���C�[�Cx�d��G*kWm�������Z̬1�$�ϼ�!GFjlZ7�M��^r�2��"ݻ	j�"��m_NV�i:�[���8�޶6�����s"�0��^A3{��whˮV�{'1Û�o�i���B6鬵�9�_ڨ��isJjce䧃���^j�~��lB�Ƽ��M�X��R�m i57Ʈ냒'\5�fg��n$��P�|s<�@�6ei�Ͱ���-��O�߾�
6�YŞ�M� ������lDl�r"��uh�t\�_��y0}H����e��YXG3��<~��O�� ���(#7�?�k%�X��~¼`Ӫ���6[Nٞ��A�֮��i���B��!f�&*	�yW�*�GQ� ^k*V�Ywk�����_��a���O�N����m��cY9<EZT���4Ѝm6CK�|�����[J5�F��%��ѽ�;�Y��S��G�{��|WJ��k%�»��A�x�G- TP���&�/A���A�^�g+q���T�R��f�� ���o�L�M����?q_�`�xp;c�)�|z�W�Ϲ��+1��-�J
���]�f�,����1�{u���i�"t�;���T�6^�۷�`hf|�p�gB�ʏ^u�'��L��LP�]"���/��r�����+�x�7\䯭���Y,�G|����{G�j����-�v�6���:�eJ�bZa�c"�{u�zq�l��4$�z1��B���v�1��k�:XnX)�^��xl�XE���B���g��v��NҘ�p�Qo��ZǮ��NЫ��M��.J=V���Y���Z���T+|Q����oy����	�1!�޿>:�7Ğ mj/c�8��7>�ۃ����qb��F��/f��[���i���C�j��>l��Ó�!gq<�q�Uk�U�s6ۭ�����)!M�>5�1GN��� ͓���A��|�K�_�766��9�      �   U   x���	�0ϻň�n,&��,��@0�&�z�7�Za#Q���'h'�."Y{a7��<��}��Q8l�I�kVJu��΍���?4     