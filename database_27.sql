PGDMP     (    )            	    z         	   lesson_27    14.5    14.5                0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
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
    public          postgres    false    212   1%                  0    0    addresses_id_address_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.addresses_id_address_seq', 1, false);
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
       public          postgres    false    214    3177    212            �   �   x�m�M�@���)� ���x��$��jBX�Љ��9��|�,ڴ}_�4��p��5J��F�k�Q�@��$��f4��e�J�:��)�\bI��`���U#'z�a�WK<GF���C!	��}�g�$�C9n�����׼����|!�r��h�8��H{��x�;K�����j�tdku.���Ro��.      �   �  x��Y�n[�S_q4s �)і3�t�3J��z�L-K�dr�֭]�Z4R�y���{�_�O�Zk�s��ҁe���s�c������giv���A��f�0����A~��a7d�,�{��86v���N#{�d�l���Y�#͏*{4C6��I6�C�s��e+do��,ɖ�H�y~�%!K6��%�c�+�\<�r��!?�l-�3��8�b��	w�����;���/��b�?�.��S �C��3�j���y~�l5»�Pl���$�L��Jz>�ӠG<z#� �"p3� �"�!���>��[QK�k��i|�Ձ�`Y��_��\v%I���q0�H|78�N>� !h�1�	������9>�Q�ފ��K(�D���wx��'��$4&��ux'.hJ�MV��)�B�&��Z�2��i�>������ǰX��|cmʅ�����rLj�8���=��u~�C��O��lC?��F���I���(t�!�s_��� ��܀�
��5\b���䑖R"����DH�J�Vc*�5�wDq�H��d7��P��wi�@��g�N��Dzu����b\<oٿ��ԑ��H�;��X�	;�dX
:�@�#�M`u��k���LL-��[w�x������������_��~x��O��9|�����&s�
�|����V�}ƞ�#3�)���W|T���`�K�2�*f~��@�#��G��ս�6��-װ �omovs�E/�]��n��@;���%��,M�& �Ay��6��H�����x�R�"��d��ƊTYeD���w	h3���4��;|�;�y���1�TZ���i��1�n�����Y���kn�i���	c���`Jo�h��@G6�aRPu�@��
�ˌY= ���x�n]k-�=�c���3	+Ky�˨kC�"?ez�ݖ�T�ϡ�+`�T�I�J|���>x���=��1�[�D����Z�g���P��$�fL�
�����c[�<��PfS���
"+�%r�?CHl��~����fS3"�۱WZ	������"�c+%x��΀��z�2�' �cq�H���<��_u��~=Tz8#��G�K!�K7� y���i�U�T��9%��!DJVč
b�zل�XZ��A�f:��L�SpX�I�E�U`�-�g�h��E��X�^��mEQ�z�X4�ʒd��qtP����Ά�^(}~�y/c.�r.��M����e�RЩ���@��5�p��i�>��<�D(�U�%�v�at/�GA�G	]��)�ā�����jg�V[,b�b,0���V�0��U��=I�X(�	��޾|��vyN�1�s#��9K{՜�;�
�z�%$�=�ºșƤ�|*�*Jw�~���"�舂�K�|65~ӏ���'J���#K��W'J�=�ca$qzE+�g/�ԝ�mÌ|�v0����w[��Z�F+��Sj��祈���;����ǧآ���t��/<�Ώ��=FB���12���g���<�/�<Q["�)�A����hZ0��7ӥ:��,��<���j��E񊠢��X cMG�T�GEՌq%���G�cw���^m����\ř�^�6�4#O�j�T�3�'�'B?-�z�4�*��sb��ֶ�q��R�"�d�c�����F�v{��;������S��V��gPS[��F+�-�ը1)'>N0Ӎ=�I�#�i#�bz�I4���an��!����6j�Ua%1pb���kں�U�N�-��)�\1Ol/͢J��dT�{�V7E�>VC+�>W��0���A|n ����^��J?x�@�����j��a�-�����ƬSyذj������%_X[C}QV��^�vR�ObkR5�U�m�ݑX����F��m,��k�o�]3�H�gY�㠑7y�ˌl�� z��SL7��2,�rBpjd���tl"4�pi�����OAt\�m��N�A�tC�pKUq���kWL��j���]ե����QLl���P�Z�u�G�B�.K�|C�]!-��~���6Y`�[�x��>���C�ql�_yI:�1�C:@��.[���G�};3�s�����KY�v�A�<PY��өK��2_eW~�	�x��U;�O�E��z�PXyj�e0|�z~�Q��UB���#�HI5a��h~�r���m�Ҿ�@�e�d���J3�6EgrD<\��s1�mKCK{k�Z�g�
��{��#�5c�x^�+IӖs���i#=�6�:�ʈ|'�5����]̥6=H��Vu�����8���r�:Q�{D����b��y���ն�WvЉ���K�V�X��l��is�$������F���U�>#�#ZĞ�6���
�)l\,J�[�ٲQG���R��{������H�(��Wdi�
`�
6�VD�S+r�z����=8�C*�Xn�~B\�U��H������lj��� ak���M���Gqm��� D�_�Gq��^�,l���*V�mH�F������>ԛ��Hc�ն�O�XZ�b�,*��~j'��!��|��Q�Y4%�Ckm�I(���{w�Z�Y�����J.<��z>y��x� "��|x1�%]�Qc�-k$�l�� �������֪��R�Ku��"�����߫��sZF��雓���Y�H^�ɦ�Y9M]��y��jf㺢�g~��]vZ��X����������4|�{;���)mu�*�ݾ�T����-���J;z��:a� 4RA8��<���^�������O^�	\d�-�t�8Z�<G|O��{g�J��嵙�&�օ����>��F��
ɡ]g�4�\ms��2��v�\#1P}a�u/*ư�4������2�u���6וg�~!�0Ԭ� <���_t������rS�:w]lf�N��7�*wYȱ.nC�K�����V��4R�+ja���Ԋ�	��e�����k	�@�6���4��xTt1=�Z�v��S��l�T:_�``^ގ�������[3T��Cb*���r���c�JR,�U�_�����1��-      �   V   x���	�0ϻ�~����Գ�B�`j�t���ͼi��@&��6��D��zS�pZq�:|�=NG��&��$����U}٣4     