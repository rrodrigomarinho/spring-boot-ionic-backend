PGDMP         .    	    	        x            curso_spring    9.6.11 %   10.12 (Ubuntu 10.12-0ubuntu0.18.04.1) X    �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                       false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                       false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                       false                        2615    2200    public    SCHEMA        CREATE SCHEMA public;
    DROP SCHEMA public;
             postgres    false            �           0    0    SCHEMA public    COMMENT     6   COMMENT ON SCHEMA public IS 'standard public schema';
                  postgres    false    3            �            1259    15991223 	   categoria    TABLE     \   CREATE TABLE public.categoria (
    id integer NOT NULL,
    nome character varying(255)
);
    DROP TABLE public.categoria;
       public         postgres    false    3            �            1259    15991221    categoria_id_seq    SEQUENCE     y   CREATE SEQUENCE public.categoria_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.categoria_id_seq;
       public       postgres    false    186    3            �           0    0    categoria_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.categoria_id_seq OWNED BY public.categoria.id;
            public       postgres    false    185            �            1259    15991231    cidade    TABLE     p   CREATE TABLE public.cidade (
    id integer NOT NULL,
    nome character varying(255),
    estado_id integer
);
    DROP TABLE public.cidade;
       public         postgres    false    3            �            1259    15991229    cidade_id_seq    SEQUENCE     v   CREATE SEQUENCE public.cidade_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.cidade_id_seq;
       public       postgres    false    188    3            �           0    0    cidade_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public.cidade_id_seq OWNED BY public.cidade.id;
            public       postgres    false    187            �            1259    15991239    cliente    TABLE     �   CREATE TABLE public.cliente (
    id integer NOT NULL,
    cpf_ou_cnpj character varying(255),
    email character varying(255),
    nome character varying(255),
    senha character varying(255),
    tipo_cliente integer
);
    DROP TABLE public.cliente;
       public         postgres    false    3            �            1259    15991237    cliente_id_seq    SEQUENCE     w   CREATE SEQUENCE public.cliente_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.cliente_id_seq;
       public       postgres    false    190    3            �           0    0    cliente_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.cliente_id_seq OWNED BY public.cliente.id;
            public       postgres    false    189            �            1259    15991250    endereco    TABLE       CREATE TABLE public.endereco (
    id integer NOT NULL,
    bairro character varying(255),
    cep character varying(255),
    complemento character varying(255),
    logradouro character varying(255),
    numero character varying(255),
    cidade_id integer,
    cliente_id integer
);
    DROP TABLE public.endereco;
       public         postgres    false    3            �            1259    15991248    endereco_id_seq    SEQUENCE     x   CREATE SEQUENCE public.endereco_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.endereco_id_seq;
       public       postgres    false    3    192            �           0    0    endereco_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.endereco_id_seq OWNED BY public.endereco.id;
            public       postgres    false    191            �            1259    15991261    estado    TABLE     Y   CREATE TABLE public.estado (
    id integer NOT NULL,
    nome character varying(255)
);
    DROP TABLE public.estado;
       public         postgres    false    3            �            1259    15991259    estado_id_seq    SEQUENCE     v   CREATE SEQUENCE public.estado_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.estado_id_seq;
       public       postgres    false    3    194            �           0    0    estado_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public.estado_id_seq OWNED BY public.estado.id;
            public       postgres    false    193            �            1259    15991267    item_pedido    TABLE     �   CREATE TABLE public.item_pedido (
    desconto double precision,
    preco double precision,
    quantidade integer,
    pedido_id integer NOT NULL,
    produto_id integer NOT NULL
);
    DROP TABLE public.item_pedido;
       public         postgres    false    3            �            1259    15991272 	   pagamento    TABLE     `   CREATE TABLE public.pagamento (
    pedido_id integer NOT NULL,
    estado_pagamento integer
);
    DROP TABLE public.pagamento;
       public         postgres    false    3            �            1259    15991277    pagamento_com_boleto    TABLE     �   CREATE TABLE public.pagamento_com_boleto (
    data_pagamento timestamp without time zone,
    data_vencimento timestamp without time zone,
    pedido_id integer NOT NULL
);
 (   DROP TABLE public.pagamento_com_boleto;
       public         postgres    false    3            �            1259    15991282    pagamento_com_cartao    TABLE     m   CREATE TABLE public.pagamento_com_cartao (
    numero_de_parcelas integer,
    pedido_id integer NOT NULL
);
 (   DROP TABLE public.pagamento_com_cartao;
       public         postgres    false    3            �            1259    15991289    pedido    TABLE     �   CREATE TABLE public.pedido (
    id integer NOT NULL,
    instante timestamp without time zone,
    cliente_id integer,
    endereco_de_entrega_id integer
);
    DROP TABLE public.pedido;
       public         postgres    false    3            �            1259    15991287    pedido_id_seq    SEQUENCE     v   CREATE SEQUENCE public.pedido_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.pedido_id_seq;
       public       postgres    false    3    200            �           0    0    pedido_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public.pedido_id_seq OWNED BY public.pedido.id;
            public       postgres    false    199            �            1259    15991295    perfis    TABLE     T   CREATE TABLE public.perfis (
    cliente_id integer NOT NULL,
    perfis integer
);
    DROP TABLE public.perfis;
       public         postgres    false    3            �            1259    15991300    produto    TABLE     v   CREATE TABLE public.produto (
    id integer NOT NULL,
    nome character varying(255),
    preco double precision
);
    DROP TABLE public.produto;
       public         postgres    false    3            �            1259    15991306    produto_categoria    TABLE     n   CREATE TABLE public.produto_categoria (
    produto_id integer NOT NULL,
    categoria_id integer NOT NULL
);
 %   DROP TABLE public.produto_categoria;
       public         postgres    false    3            �            1259    15991298    produto_id_seq    SEQUENCE     w   CREATE SEQUENCE public.produto_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.produto_id_seq;
       public       postgres    false    3    203            �           0    0    produto_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.produto_id_seq OWNED BY public.produto.id;
            public       postgres    false    202            �            1259    15991309    telefone    TABLE     h   CREATE TABLE public.telefone (
    cliente_id integer NOT NULL,
    telefones character varying(255)
);
    DROP TABLE public.telefone;
       public         postgres    false    3                       2604    15991226    categoria id    DEFAULT     l   ALTER TABLE ONLY public.categoria ALTER COLUMN id SET DEFAULT nextval('public.categoria_id_seq'::regclass);
 ;   ALTER TABLE public.categoria ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    186    185    186                       2604    15991234 	   cidade id    DEFAULT     f   ALTER TABLE ONLY public.cidade ALTER COLUMN id SET DEFAULT nextval('public.cidade_id_seq'::regclass);
 8   ALTER TABLE public.cidade ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    188    187    188                       2604    15991242 
   cliente id    DEFAULT     h   ALTER TABLE ONLY public.cliente ALTER COLUMN id SET DEFAULT nextval('public.cliente_id_seq'::regclass);
 9   ALTER TABLE public.cliente ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    190    189    190                       2604    15991253    endereco id    DEFAULT     j   ALTER TABLE ONLY public.endereco ALTER COLUMN id SET DEFAULT nextval('public.endereco_id_seq'::regclass);
 :   ALTER TABLE public.endereco ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    192    191    192                       2604    15991264 	   estado id    DEFAULT     f   ALTER TABLE ONLY public.estado ALTER COLUMN id SET DEFAULT nextval('public.estado_id_seq'::regclass);
 8   ALTER TABLE public.estado ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    194    193    194                       2604    15991292 	   pedido id    DEFAULT     f   ALTER TABLE ONLY public.pedido ALTER COLUMN id SET DEFAULT nextval('public.pedido_id_seq'::regclass);
 8   ALTER TABLE public.pedido ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    199    200    200                       2604    15991303 
   produto id    DEFAULT     h   ALTER TABLE ONLY public.produto ALTER COLUMN id SET DEFAULT nextval('public.produto_id_seq'::regclass);
 9   ALTER TABLE public.produto ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    203    202    203            �          0    15991223 	   categoria 
   TABLE DATA               -   COPY public.categoria (id, nome) FROM stdin;
    public       postgres    false    186            �          0    15991231    cidade 
   TABLE DATA               5   COPY public.cidade (id, nome, estado_id) FROM stdin;
    public       postgres    false    188            �          0    15991239    cliente 
   TABLE DATA               T   COPY public.cliente (id, cpf_ou_cnpj, email, nome, senha, tipo_cliente) FROM stdin;
    public       postgres    false    190            �          0    15991250    endereco 
   TABLE DATA               k   COPY public.endereco (id, bairro, cep, complemento, logradouro, numero, cidade_id, cliente_id) FROM stdin;
    public       postgres    false    192            �          0    15991261    estado 
   TABLE DATA               *   COPY public.estado (id, nome) FROM stdin;
    public       postgres    false    194            �          0    15991267    item_pedido 
   TABLE DATA               Y   COPY public.item_pedido (desconto, preco, quantidade, pedido_id, produto_id) FROM stdin;
    public       postgres    false    195            �          0    15991272 	   pagamento 
   TABLE DATA               @   COPY public.pagamento (pedido_id, estado_pagamento) FROM stdin;
    public       postgres    false    196            �          0    15991277    pagamento_com_boleto 
   TABLE DATA               Z   COPY public.pagamento_com_boleto (data_pagamento, data_vencimento, pedido_id) FROM stdin;
    public       postgres    false    197            �          0    15991282    pagamento_com_cartao 
   TABLE DATA               M   COPY public.pagamento_com_cartao (numero_de_parcelas, pedido_id) FROM stdin;
    public       postgres    false    198            �          0    15991289    pedido 
   TABLE DATA               R   COPY public.pedido (id, instante, cliente_id, endereco_de_entrega_id) FROM stdin;
    public       postgres    false    200            �          0    15991295    perfis 
   TABLE DATA               4   COPY public.perfis (cliente_id, perfis) FROM stdin;
    public       postgres    false    201            �          0    15991300    produto 
   TABLE DATA               2   COPY public.produto (id, nome, preco) FROM stdin;
    public       postgres    false    203            �          0    15991306    produto_categoria 
   TABLE DATA               E   COPY public.produto_categoria (produto_id, categoria_id) FROM stdin;
    public       postgres    false    204            �          0    15991309    telefone 
   TABLE DATA               9   COPY public.telefone (cliente_id, telefones) FROM stdin;
    public       postgres    false    205            �           0    0    categoria_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.categoria_id_seq', 7, true);
            public       postgres    false    185            �           0    0    cidade_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.cidade_id_seq', 5, true);
            public       postgres    false    187            �           0    0    cliente_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.cliente_id_seq', 3, true);
            public       postgres    false    189            �           0    0    endereco_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.endereco_id_seq', 3, true);
            public       postgres    false    191            �           0    0    estado_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.estado_id_seq', 3, true);
            public       postgres    false    193            �           0    0    pedido_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.pedido_id_seq', 4, true);
            public       postgres    false    199            �           0    0    produto_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.produto_id_seq', 49, true);
            public       postgres    false    202                       2606    15991228    categoria categoria_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.categoria
    ADD CONSTRAINT categoria_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.categoria DROP CONSTRAINT categoria_pkey;
       public         postgres    false    186            !           2606    15991236    cidade cidade_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.cidade
    ADD CONSTRAINT cidade_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.cidade DROP CONSTRAINT cidade_pkey;
       public         postgres    false    188            #           2606    15991247    cliente cliente_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.cliente
    ADD CONSTRAINT cliente_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.cliente DROP CONSTRAINT cliente_pkey;
       public         postgres    false    190            )           2606    15991258    endereco endereco_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.endereco
    ADD CONSTRAINT endereco_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.endereco DROP CONSTRAINT endereco_pkey;
       public         postgres    false    192            +           2606    15991266    estado estado_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.estado
    ADD CONSTRAINT estado_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.estado DROP CONSTRAINT estado_pkey;
       public         postgres    false    194            -           2606    15991271    item_pedido item_pedido_pkey 
   CONSTRAINT     m   ALTER TABLE ONLY public.item_pedido
    ADD CONSTRAINT item_pedido_pkey PRIMARY KEY (pedido_id, produto_id);
 F   ALTER TABLE ONLY public.item_pedido DROP CONSTRAINT item_pedido_pkey;
       public         postgres    false    195    195            1           2606    15991281 .   pagamento_com_boleto pagamento_com_boleto_pkey 
   CONSTRAINT     s   ALTER TABLE ONLY public.pagamento_com_boleto
    ADD CONSTRAINT pagamento_com_boleto_pkey PRIMARY KEY (pedido_id);
 X   ALTER TABLE ONLY public.pagamento_com_boleto DROP CONSTRAINT pagamento_com_boleto_pkey;
       public         postgres    false    197            3           2606    15991286 .   pagamento_com_cartao pagamento_com_cartao_pkey 
   CONSTRAINT     s   ALTER TABLE ONLY public.pagamento_com_cartao
    ADD CONSTRAINT pagamento_com_cartao_pkey PRIMARY KEY (pedido_id);
 X   ALTER TABLE ONLY public.pagamento_com_cartao DROP CONSTRAINT pagamento_com_cartao_pkey;
       public         postgres    false    198            /           2606    15991276    pagamento pagamento_pkey 
   CONSTRAINT     ]   ALTER TABLE ONLY public.pagamento
    ADD CONSTRAINT pagamento_pkey PRIMARY KEY (pedido_id);
 B   ALTER TABLE ONLY public.pagamento DROP CONSTRAINT pagamento_pkey;
       public         postgres    false    196            5           2606    15991294    pedido pedido_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.pedido
    ADD CONSTRAINT pedido_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.pedido DROP CONSTRAINT pedido_pkey;
       public         postgres    false    200            7           2606    15991305    produto produto_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.produto
    ADD CONSTRAINT produto_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.produto DROP CONSTRAINT produto_pkey;
       public         postgres    false    203            %           2606    15991313 $   cliente uk_8tl35s9d1v515db13s795p4lo 
   CONSTRAINT     f   ALTER TABLE ONLY public.cliente
    ADD CONSTRAINT uk_8tl35s9d1v515db13s795p4lo UNIQUE (cpf_ou_cnpj);
 N   ALTER TABLE ONLY public.cliente DROP CONSTRAINT uk_8tl35s9d1v515db13s795p4lo;
       public         postgres    false    190            '           2606    15991315 $   cliente uk_cmxo70m08n43599l3h0h07cc6 
   CONSTRAINT     `   ALTER TABLE ONLY public.cliente
    ADD CONSTRAINT uk_cmxo70m08n43599l3h0h07cc6 UNIQUE (email);
 N   ALTER TABLE ONLY public.cliente DROP CONSTRAINT uk_cmxo70m08n43599l3h0h07cc6;
       public         postgres    false    190            D           2606    15991376 -   produto_categoria fk1c0y58d3n6x3m6euv2j3h64vt    FK CONSTRAINT     �   ALTER TABLE ONLY public.produto_categoria
    ADD CONSTRAINT fk1c0y58d3n6x3m6euv2j3h64vt FOREIGN KEY (produto_id) REFERENCES public.produto(id);
 W   ALTER TABLE ONLY public.produto_categoria DROP CONSTRAINT fk1c0y58d3n6x3m6euv2j3h64vt;
       public       postgres    false    2103    203    204            A           2606    15991361 "   pedido fk1fihyy2fnocpuwc74674qmfkv    FK CONSTRAINT     �   ALTER TABLE ONLY public.pedido
    ADD CONSTRAINT fk1fihyy2fnocpuwc74674qmfkv FOREIGN KEY (endereco_de_entrega_id) REFERENCES public.endereco(id);
 L   ALTER TABLE ONLY public.pedido DROP CONSTRAINT fk1fihyy2fnocpuwc74674qmfkv;
       public       postgres    false    192    2089    200            @           2606    15991356 "   pedido fk30s8j2ktpay6of18lbyqn3632    FK CONSTRAINT     �   ALTER TABLE ONLY public.pedido
    ADD CONSTRAINT fk30s8j2ktpay6of18lbyqn3632 FOREIGN KEY (cliente_id) REFERENCES public.cliente(id);
 L   ALTER TABLE ONLY public.pedido DROP CONSTRAINT fk30s8j2ktpay6of18lbyqn3632;
       public       postgres    false    190    2083    200            ;           2606    15991331 '   item_pedido fk60ym08cfoysa17wrn1swyiuda    FK CONSTRAINT     �   ALTER TABLE ONLY public.item_pedido
    ADD CONSTRAINT fk60ym08cfoysa17wrn1swyiuda FOREIGN KEY (pedido_id) REFERENCES public.pedido(id);
 Q   ALTER TABLE ONLY public.item_pedido DROP CONSTRAINT fk60ym08cfoysa17wrn1swyiuda;
       public       postgres    false    2101    195    200            E           2606    15991381 $   telefone fk8aafha0njkoyoe3kvrwsy3g8u    FK CONSTRAINT     �   ALTER TABLE ONLY public.telefone
    ADD CONSTRAINT fk8aafha0njkoyoe3kvrwsy3g8u FOREIGN KEY (cliente_id) REFERENCES public.cliente(id);
 N   ALTER TABLE ONLY public.telefone DROP CONSTRAINT fk8aafha0njkoyoe3kvrwsy3g8u;
       public       postgres    false    190    205    2083            9           2606    15991321 $   endereco fk8b1kcb3wucapb8dejshyn5fsx    FK CONSTRAINT     �   ALTER TABLE ONLY public.endereco
    ADD CONSTRAINT fk8b1kcb3wucapb8dejshyn5fsx FOREIGN KEY (cidade_id) REFERENCES public.cidade(id);
 N   ALTER TABLE ONLY public.endereco DROP CONSTRAINT fk8b1kcb3wucapb8dejshyn5fsx;
       public       postgres    false    188    2081    192            :           2606    15991326 $   endereco fk8s7ivtl4foyhrfam9xqom73n9    FK CONSTRAINT     �   ALTER TABLE ONLY public.endereco
    ADD CONSTRAINT fk8s7ivtl4foyhrfam9xqom73n9 FOREIGN KEY (cliente_id) REFERENCES public.cliente(id);
 N   ALTER TABLE ONLY public.endereco DROP CONSTRAINT fk8s7ivtl4foyhrfam9xqom73n9;
       public       postgres    false    190    2083    192            >           2606    15991346 0   pagamento_com_boleto fkcr74vrxf8nfph0knq2bho8doo    FK CONSTRAINT     �   ALTER TABLE ONLY public.pagamento_com_boleto
    ADD CONSTRAINT fkcr74vrxf8nfph0knq2bho8doo FOREIGN KEY (pedido_id) REFERENCES public.pagamento(pedido_id);
 Z   ALTER TABLE ONLY public.pagamento_com_boleto DROP CONSTRAINT fkcr74vrxf8nfph0knq2bho8doo;
       public       postgres    false    197    2095    196            8           2606    15991316 "   cidade fkkworrwk40xj58kevvh3evi500    FK CONSTRAINT     �   ALTER TABLE ONLY public.cidade
    ADD CONSTRAINT fkkworrwk40xj58kevvh3evi500 FOREIGN KEY (estado_id) REFERENCES public.estado(id);
 L   ALTER TABLE ONLY public.cidade DROP CONSTRAINT fkkworrwk40xj58kevvh3evi500;
       public       postgres    false    194    2091    188            C           2606    15991371 -   produto_categoria fkq3g33tp7xk2juh53fbw6y4y57    FK CONSTRAINT     �   ALTER TABLE ONLY public.produto_categoria
    ADD CONSTRAINT fkq3g33tp7xk2juh53fbw6y4y57 FOREIGN KEY (categoria_id) REFERENCES public.categoria(id);
 W   ALTER TABLE ONLY public.produto_categoria DROP CONSTRAINT fkq3g33tp7xk2juh53fbw6y4y57;
       public       postgres    false    2079    204    186            B           2606    15991366 "   perfis fksobr8hl9guwr8775lyl1mncg2    FK CONSTRAINT     �   ALTER TABLE ONLY public.perfis
    ADD CONSTRAINT fksobr8hl9guwr8775lyl1mncg2 FOREIGN KEY (cliente_id) REFERENCES public.cliente(id);
 L   ALTER TABLE ONLY public.perfis DROP CONSTRAINT fksobr8hl9guwr8775lyl1mncg2;
       public       postgres    false    201    190    2083            ?           2606    15991351 0   pagamento_com_cartao fkta3cdnuuxclwfh52t4qi432ow    FK CONSTRAINT     �   ALTER TABLE ONLY public.pagamento_com_cartao
    ADD CONSTRAINT fkta3cdnuuxclwfh52t4qi432ow FOREIGN KEY (pedido_id) REFERENCES public.pagamento(pedido_id);
 Z   ALTER TABLE ONLY public.pagamento_com_cartao DROP CONSTRAINT fkta3cdnuuxclwfh52t4qi432ow;
       public       postgres    false    2095    196    198            =           2606    15991341 %   pagamento fkthad9tkw4188hb3qo1lm5ueb0    FK CONSTRAINT     �   ALTER TABLE ONLY public.pagamento
    ADD CONSTRAINT fkthad9tkw4188hb3qo1lm5ueb0 FOREIGN KEY (pedido_id) REFERENCES public.pedido(id);
 O   ALTER TABLE ONLY public.pagamento DROP CONSTRAINT fkthad9tkw4188hb3qo1lm5ueb0;
       public       postgres    false    200    196    2101            <           2606    15991336 '   item_pedido fktk55mn6d6bvl5h0no5uagi3sf    FK CONSTRAINT     �   ALTER TABLE ONLY public.item_pedido
    ADD CONSTRAINT fktk55mn6d6bvl5h0no5uagi3sf FOREIGN KEY (produto_id) REFERENCES public.produto(id);
 Q   ALTER TABLE ONLY public.item_pedido DROP CONSTRAINT fktk55mn6d6bvl5h0no5uagi3sf;
       public       postgres    false    203    195    2103            �   r   x���1�ڞ" $��+��h>�,�Xr�@��`�,�{��a��4��4���7�yE{fɤ"I��ܝ�4<�E��^yCG�Unb���d�O;��$1=������&_      �   T   x�3�MJ-�9�(/%3�Ӑˈ3���|���Ҝ|N#.cN��܂̼�b Ǆӱ �(593%Q!%U�=?��˘˔����� �]�      �     x�]�Ks�0�u�.\�����-��(��2�d$�XB4<|����t:=�;�.�9 ��$���J�\�B
�x]�q!(��� �~�!�C{�'��vViN�T�Ǽ�D�6�Z?�wy~�?�=�E��A[�J��a����o?�x/붥wgq?+޴L�f��Փ�R��]�-�+�L[g�B��"�av$��]Pp[���5<8�B;��J*V_$�z���^��/��i��Nu��9<,�n�G6��y���q��6���T�Y�]'�뚦}��j%      �   �   x�U˱�0 ��� E�ۆP�� Z��l"$d#�a1F`1���N�&<��)���5�e��4��B�]�!�@l��Ю�s����F�K�)S/�7(��Z=mO�͡73t�h~p�
u�K*�t��^hϠ�L��A�/@)�      �   2   x�3����K,VpO-J�,�2�>�8_! �4'�˘�=?���b�=... $�*      �   +   x�3�4200�4A.NN# Ә�� �Iqq��qqq �      �      x�3�4�2�4����� ��      �   "   x����420��54�52P00�#N#�=... Z.=      �      x�3�4����� �#      �   2   x�3�420��5��56P04�26�20�4�4�2B���26��q��qqq 9	}      �      x�3�4�2bcNC�=... B      �   5  x�E�AN�0����=�g&m�D�XT��b��K�u�4g� \���v������<��e��N�m�6*���T�NY�&ۺ�%��e[�,��}��C��mֱ��s,h6�Y����"��t��<��<�����ܿ�Ϻ�}�R+�r��Z$�;)��!�.��'��T��ZW1��`��C��fX#l6=C�00�����CB�T!UJR�T!UJR�T!UJR�T!UJR�� 5JR�� 5J0�� 3J0�� 3J0��~a�:`N��:`N���R��)uH�R��)uH�R��)uH���׻�i~ �U�9      �   v   x���� ��̕�]�����q?��**+�=sG�pj֚ٳ_��3���X��κH�ɂ��d�M����)�=�hD#шF4B!���'�B!�Fa�Fa�F��2���!�      �   *   x�3�43��02317�0�2򌡀��c�BW� 2�
     