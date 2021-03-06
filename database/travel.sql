PGDMP     '                    x            travel     12.3 (Ubuntu 12.3-1.pgdg20.04+1)     12.3 (Ubuntu 12.3-1.pgdg20.04+1) �    �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    16783    travel    DATABASE     l   CREATE DATABASE travel WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'en_IN' LC_CTYPE = 'en_IN';
    DROP DATABASE travel;
                postgres    false            �            1259    16815 
   auth_group    TABLE     f   CREATE TABLE public.auth_group (
    id integer NOT NULL,
    name character varying(150) NOT NULL
);
    DROP TABLE public.auth_group;
       public         heap    postgres    false            �            1259    16813    auth_group_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_group_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.auth_group_id_seq;
       public          postgres    false    209            �           0    0    auth_group_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.auth_group_id_seq OWNED BY public.auth_group.id;
          public          postgres    false    208            �            1259    16825    auth_group_permissions    TABLE     �   CREATE TABLE public.auth_group_permissions (
    id integer NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);
 *   DROP TABLE public.auth_group_permissions;
       public         heap    postgres    false            �            1259    16823    auth_group_permissions_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_group_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.auth_group_permissions_id_seq;
       public          postgres    false    211            �           0    0    auth_group_permissions_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.auth_group_permissions_id_seq OWNED BY public.auth_group_permissions.id;
          public          postgres    false    210            �            1259    16807    auth_permission    TABLE     �   CREATE TABLE public.auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);
 #   DROP TABLE public.auth_permission;
       public         heap    postgres    false            �            1259    16805    auth_permission_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_permission_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.auth_permission_id_seq;
       public          postgres    false    207            �           0    0    auth_permission_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.auth_permission_id_seq OWNED BY public.auth_permission.id;
          public          postgres    false    206            �            1259    16833 	   auth_user    TABLE     �  CREATE TABLE public.auth_user (
    id integer NOT NULL,
    password character varying(128) NOT NULL,
    last_login timestamp with time zone,
    is_superuser boolean NOT NULL,
    username character varying(150) NOT NULL,
    first_name character varying(30) NOT NULL,
    last_name character varying(150) NOT NULL,
    email character varying(254) NOT NULL,
    is_staff boolean NOT NULL,
    is_active boolean NOT NULL,
    date_joined timestamp with time zone NOT NULL
);
    DROP TABLE public.auth_user;
       public         heap    postgres    false            �            1259    16843    auth_user_groups    TABLE        CREATE TABLE public.auth_user_groups (
    id integer NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);
 $   DROP TABLE public.auth_user_groups;
       public         heap    postgres    false            �            1259    16841    auth_user_groups_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_user_groups_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.auth_user_groups_id_seq;
       public          postgres    false    215            �           0    0    auth_user_groups_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.auth_user_groups_id_seq OWNED BY public.auth_user_groups.id;
          public          postgres    false    214            �            1259    16831    auth_user_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.auth_user_id_seq;
       public          postgres    false    213            �           0    0    auth_user_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.auth_user_id_seq OWNED BY public.auth_user.id;
          public          postgres    false    212            �            1259    16851    auth_user_user_permissions    TABLE     �   CREATE TABLE public.auth_user_user_permissions (
    id integer NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);
 .   DROP TABLE public.auth_user_user_permissions;
       public         heap    postgres    false            �            1259    16849 !   auth_user_user_permissions_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_user_user_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 8   DROP SEQUENCE public.auth_user_user_permissions_id_seq;
       public          postgres    false    217            �           0    0 !   auth_user_user_permissions_id_seq    SEQUENCE OWNED BY     g   ALTER SEQUENCE public.auth_user_user_permissions_id_seq OWNED BY public.auth_user_user_permissions.id;
          public          postgres    false    216            �            1259    16911    django_admin_log    TABLE     �  CREATE TABLE public.django_admin_log (
    id integer NOT NULL,
    action_time timestamp with time zone NOT NULL,
    object_id text,
    object_repr character varying(200) NOT NULL,
    action_flag smallint NOT NULL,
    change_message text NOT NULL,
    content_type_id integer,
    user_id integer NOT NULL,
    CONSTRAINT django_admin_log_action_flag_check CHECK ((action_flag >= 0))
);
 $   DROP TABLE public.django_admin_log;
       public         heap    postgres    false            �            1259    16909    django_admin_log_id_seq    SEQUENCE     �   CREATE SEQUENCE public.django_admin_log_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.django_admin_log_id_seq;
       public          postgres    false    219            �           0    0    django_admin_log_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.django_admin_log_id_seq OWNED BY public.django_admin_log.id;
          public          postgres    false    218            �            1259    16797    django_content_type    TABLE     �   CREATE TABLE public.django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);
 '   DROP TABLE public.django_content_type;
       public         heap    postgres    false            �            1259    16795    django_content_type_id_seq    SEQUENCE     �   CREATE SEQUENCE public.django_content_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.django_content_type_id_seq;
       public          postgres    false    205            �           0    0    django_content_type_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.django_content_type_id_seq OWNED BY public.django_content_type.id;
          public          postgres    false    204            �            1259    16786    django_migrations    TABLE     �   CREATE TABLE public.django_migrations (
    id integer NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);
 %   DROP TABLE public.django_migrations;
       public         heap    postgres    false            �            1259    16784    django_migrations_id_seq    SEQUENCE     �   CREATE SEQUENCE public.django_migrations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.django_migrations_id_seq;
       public          postgres    false    203            �           0    0    django_migrations_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.django_migrations_id_seq OWNED BY public.django_migrations.id;
          public          postgres    false    202            �            1259    16942    django_session    TABLE     �   CREATE TABLE public.django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);
 "   DROP TABLE public.django_session;
       public         heap    postgres    false            �            1259    17143    travell_about    TABLE     A  CREATE TABLE public.travell_about (
    id integer NOT NULL,
    abt_name character varying(100) NOT NULL,
    abt_desc text NOT NULL,
    abt_img character varying(100) NOT NULL,
    abt_course integer NOT NULL,
    abt_students integer NOT NULL,
    abt_teachers integer NOT NULL,
    abt_countries integer NOT NULL
);
 !   DROP TABLE public.travell_about;
       public         heap    postgres    false            �            1259    17154    travell_about_card    TABLE     �   CREATE TABLE public.travell_about_card (
    id integer NOT NULL,
    abt_card_name character varying(100) NOT NULL,
    abt_card_desc text NOT NULL,
    abt_card_img character varying(100) NOT NULL
);
 &   DROP TABLE public.travell_about_card;
       public         heap    postgres    false            �            1259    17152    travell_about_card_id_seq    SEQUENCE     �   CREATE SEQUENCE public.travell_about_card_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public.travell_about_card_id_seq;
       public          postgres    false    228            �           0    0    travell_about_card_id_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE public.travell_about_card_id_seq OWNED BY public.travell_about_card.id;
          public          postgres    false    227            �            1259    17141    travell_about_id_seq    SEQUENCE     �   CREATE SEQUENCE public.travell_about_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.travell_about_id_seq;
       public          postgres    false    226            �           0    0    travell_about_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.travell_about_id_seq OWNED BY public.travell_about.id;
          public          postgres    false    225            �            1259    17165    travell_about_team    TABLE     �   CREATE TABLE public.travell_about_team (
    id integer NOT NULL,
    abt_team_name character varying(100) NOT NULL,
    abt_team_desc text NOT NULL,
    abt_team_img character varying(100) NOT NULL
);
 &   DROP TABLE public.travell_about_team;
       public         heap    postgres    false            �            1259    17163    travell_about_team_id_seq    SEQUENCE     �   CREATE SEQUENCE public.travell_about_team_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public.travell_about_team_id_seq;
       public          postgres    false    230            �           0    0    travell_about_team_id_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE public.travell_about_team_id_seq OWNED BY public.travell_about_team.id;
          public          postgres    false    229            �            1259    17176    travell_category    TABLE     �   CREATE TABLE public.travell_category (
    id integer NOT NULL,
    cat_name character varying(100) NOT NULL,
    cat_desc text NOT NULL
);
 $   DROP TABLE public.travell_category;
       public         heap    postgres    false            �            1259    17174    travell_category_id_seq    SEQUENCE     �   CREATE SEQUENCE public.travell_category_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.travell_category_id_seq;
       public          postgres    false    232            �           0    0    travell_category_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.travell_category_id_seq OWNED BY public.travell_category.id;
          public          postgres    false    231            �            1259    17198    travell_contact    TABLE     �   CREATE TABLE public.travell_contact (
    id integer NOT NULL,
    "Name" character varying(100) NOT NULL,
    "Email" character varying(250) NOT NULL,
    "Subject" character varying(250) NOT NULL,
    "Message" text NOT NULL
);
 #   DROP TABLE public.travell_contact;
       public         heap    postgres    false            �            1259    17196    travell_contact_id_seq    SEQUENCE     �   CREATE SEQUENCE public.travell_contact_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.travell_contact_id_seq;
       public          postgres    false    236            �           0    0    travell_contact_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.travell_contact_id_seq OWNED BY public.travell_contact.id;
          public          postgres    false    235            �            1259    16954    travell_destination    TABLE     �   CREATE TABLE public.travell_destination (
    id integer NOT NULL,
    name character varying(100) NOT NULL,
    img character varying(100) NOT NULL,
    "desc" text NOT NULL,
    price integer NOT NULL,
    offer boolean NOT NULL
);
 '   DROP TABLE public.travell_destination;
       public         heap    postgres    false            �            1259    16952    travell_destination_id_seq    SEQUENCE     �   CREATE SEQUENCE public.travell_destination_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.travell_destination_id_seq;
       public          postgres    false    222            �           0    0    travell_destination_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.travell_destination_id_seq OWNED BY public.travell_destination.id;
          public          postgres    false    221            �            1259    17187    travell_news    TABLE     �   CREATE TABLE public.travell_news (
    id integer NOT NULL,
    news_header character varying(100) NOT NULL,
    news_description text NOT NULL,
    news_img character varying(100) NOT NULL,
    news_date date NOT NULL
);
     DROP TABLE public.travell_news;
       public         heap    postgres    false            �            1259    17185    travell_news_id_seq    SEQUENCE     �   CREATE SEQUENCE public.travell_news_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.travell_news_id_seq;
       public          postgres    false    234            �           0    0    travell_news_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.travell_news_id_seq OWNED BY public.travell_news.id;
          public          postgres    false    233            �            1259    17209    travell_newsletter    TABLE     �   CREATE TABLE public.travell_newsletter (
    id integer NOT NULL,
    nl_name character varying(100) NOT NULL,
    nl_email character varying(250) NOT NULL
);
 &   DROP TABLE public.travell_newsletter;
       public         heap    postgres    false            �            1259    17207    travell_newsletter_id_seq    SEQUENCE     �   CREATE SEQUENCE public.travell_newsletter_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public.travell_newsletter_id_seq;
       public          postgres    false    238            �           0    0    travell_newsletter_id_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE public.travell_newsletter_id_seq OWNED BY public.travell_newsletter.id;
          public          postgres    false    237            �            1259    16965    travell_testimonials    TABLE     �   CREATE TABLE public.travell_testimonials (
    id integer NOT NULL,
    testi_name character varying(100) NOT NULL,
    testi_desc text NOT NULL,
    testi_client boolean NOT NULL
);
 (   DROP TABLE public.travell_testimonials;
       public         heap    postgres    false            �            1259    16963    travell_testimonials_id_seq    SEQUENCE     �   CREATE SEQUENCE public.travell_testimonials_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE public.travell_testimonials_id_seq;
       public          postgres    false    224            �           0    0    travell_testimonials_id_seq    SEQUENCE OWNED BY     [   ALTER SEQUENCE public.travell_testimonials_id_seq OWNED BY public.travell_testimonials.id;
          public          postgres    false    223            �           2604    16818    auth_group id    DEFAULT     n   ALTER TABLE ONLY public.auth_group ALTER COLUMN id SET DEFAULT nextval('public.auth_group_id_seq'::regclass);
 <   ALTER TABLE public.auth_group ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    208    209    209            �           2604    16828    auth_group_permissions id    DEFAULT     �   ALTER TABLE ONLY public.auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_group_permissions_id_seq'::regclass);
 H   ALTER TABLE public.auth_group_permissions ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    210    211    211            �           2604    16810    auth_permission id    DEFAULT     x   ALTER TABLE ONLY public.auth_permission ALTER COLUMN id SET DEFAULT nextval('public.auth_permission_id_seq'::regclass);
 A   ALTER TABLE public.auth_permission ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    207    206    207            �           2604    16836    auth_user id    DEFAULT     l   ALTER TABLE ONLY public.auth_user ALTER COLUMN id SET DEFAULT nextval('public.auth_user_id_seq'::regclass);
 ;   ALTER TABLE public.auth_user ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    212    213    213            �           2604    16846    auth_user_groups id    DEFAULT     z   ALTER TABLE ONLY public.auth_user_groups ALTER COLUMN id SET DEFAULT nextval('public.auth_user_groups_id_seq'::regclass);
 B   ALTER TABLE public.auth_user_groups ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    214    215    215            �           2604    16854    auth_user_user_permissions id    DEFAULT     �   ALTER TABLE ONLY public.auth_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_user_user_permissions_id_seq'::regclass);
 L   ALTER TABLE public.auth_user_user_permissions ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    216    217    217            �           2604    16914    django_admin_log id    DEFAULT     z   ALTER TABLE ONLY public.django_admin_log ALTER COLUMN id SET DEFAULT nextval('public.django_admin_log_id_seq'::regclass);
 B   ALTER TABLE public.django_admin_log ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    219    218    219            �           2604    16800    django_content_type id    DEFAULT     �   ALTER TABLE ONLY public.django_content_type ALTER COLUMN id SET DEFAULT nextval('public.django_content_type_id_seq'::regclass);
 E   ALTER TABLE public.django_content_type ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    204    205    205            �           2604    16789    django_migrations id    DEFAULT     |   ALTER TABLE ONLY public.django_migrations ALTER COLUMN id SET DEFAULT nextval('public.django_migrations_id_seq'::regclass);
 C   ALTER TABLE public.django_migrations ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    202    203    203            �           2604    17146    travell_about id    DEFAULT     t   ALTER TABLE ONLY public.travell_about ALTER COLUMN id SET DEFAULT nextval('public.travell_about_id_seq'::regclass);
 ?   ALTER TABLE public.travell_about ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    226    225    226            �           2604    17157    travell_about_card id    DEFAULT     ~   ALTER TABLE ONLY public.travell_about_card ALTER COLUMN id SET DEFAULT nextval('public.travell_about_card_id_seq'::regclass);
 D   ALTER TABLE public.travell_about_card ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    228    227    228            �           2604    17168    travell_about_team id    DEFAULT     ~   ALTER TABLE ONLY public.travell_about_team ALTER COLUMN id SET DEFAULT nextval('public.travell_about_team_id_seq'::regclass);
 D   ALTER TABLE public.travell_about_team ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    229    230    230            �           2604    17179    travell_category id    DEFAULT     z   ALTER TABLE ONLY public.travell_category ALTER COLUMN id SET DEFAULT nextval('public.travell_category_id_seq'::regclass);
 B   ALTER TABLE public.travell_category ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    232    231    232            �           2604    17201    travell_contact id    DEFAULT     x   ALTER TABLE ONLY public.travell_contact ALTER COLUMN id SET DEFAULT nextval('public.travell_contact_id_seq'::regclass);
 A   ALTER TABLE public.travell_contact ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    235    236    236            �           2604    16957    travell_destination id    DEFAULT     �   ALTER TABLE ONLY public.travell_destination ALTER COLUMN id SET DEFAULT nextval('public.travell_destination_id_seq'::regclass);
 E   ALTER TABLE public.travell_destination ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    222    221    222            �           2604    17190    travell_news id    DEFAULT     r   ALTER TABLE ONLY public.travell_news ALTER COLUMN id SET DEFAULT nextval('public.travell_news_id_seq'::regclass);
 >   ALTER TABLE public.travell_news ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    233    234    234            �           2604    17212    travell_newsletter id    DEFAULT     ~   ALTER TABLE ONLY public.travell_newsletter ALTER COLUMN id SET DEFAULT nextval('public.travell_newsletter_id_seq'::regclass);
 D   ALTER TABLE public.travell_newsletter ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    237    238    238            �           2604    16968    travell_testimonials id    DEFAULT     �   ALTER TABLE ONLY public.travell_testimonials ALTER COLUMN id SET DEFAULT nextval('public.travell_testimonials_id_seq'::regclass);
 F   ALTER TABLE public.travell_testimonials ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    223    224    224            f          0    16815 
   auth_group 
   TABLE DATA           .   COPY public.auth_group (id, name) FROM stdin;
    public          postgres    false    209    �       h          0    16825    auth_group_permissions 
   TABLE DATA           M   COPY public.auth_group_permissions (id, group_id, permission_id) FROM stdin;
    public          postgres    false    211   =�       d          0    16807    auth_permission 
   TABLE DATA           N   COPY public.auth_permission (id, name, content_type_id, codename) FROM stdin;
    public          postgres    false    207   Z�       j          0    16833 	   auth_user 
   TABLE DATA           �   COPY public.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
    public          postgres    false    213   ��       l          0    16843    auth_user_groups 
   TABLE DATA           A   COPY public.auth_user_groups (id, user_id, group_id) FROM stdin;
    public          postgres    false    215   �       n          0    16851    auth_user_user_permissions 
   TABLE DATA           P   COPY public.auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
    public          postgres    false    217   "�       p          0    16911    django_admin_log 
   TABLE DATA           �   COPY public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
    public          postgres    false    219   ?�       b          0    16797    django_content_type 
   TABLE DATA           C   COPY public.django_content_type (id, app_label, model) FROM stdin;
    public          postgres    false    205   N�       `          0    16786    django_migrations 
   TABLE DATA           C   COPY public.django_migrations (id, app, name, applied) FROM stdin;
    public          postgres    false    203   �       q          0    16942    django_session 
   TABLE DATA           P   COPY public.django_session (session_key, session_data, expire_date) FROM stdin;
    public          postgres    false    220   M�       w          0    17143    travell_about 
   TABLE DATA              COPY public.travell_about (id, abt_name, abt_desc, abt_img, abt_course, abt_students, abt_teachers, abt_countries) FROM stdin;
    public          postgres    false    226   ��       y          0    17154    travell_about_card 
   TABLE DATA           \   COPY public.travell_about_card (id, abt_card_name, abt_card_desc, abt_card_img) FROM stdin;
    public          postgres    false    228   !�       {          0    17165    travell_about_team 
   TABLE DATA           \   COPY public.travell_about_team (id, abt_team_name, abt_team_desc, abt_team_img) FROM stdin;
    public          postgres    false    230   ��       }          0    17176    travell_category 
   TABLE DATA           B   COPY public.travell_category (id, cat_name, cat_desc) FROM stdin;
    public          postgres    false    232   ��       �          0    17198    travell_contact 
   TABLE DATA           T   COPY public.travell_contact (id, "Name", "Email", "Subject", "Message") FROM stdin;
    public          postgres    false    236   ��       s          0    16954    travell_destination 
   TABLE DATA           R   COPY public.travell_destination (id, name, img, "desc", price, offer) FROM stdin;
    public          postgres    false    222   {�                 0    17187    travell_news 
   TABLE DATA           ^   COPY public.travell_news (id, news_header, news_description, news_img, news_date) FROM stdin;
    public          postgres    false    234   ��       �          0    17209    travell_newsletter 
   TABLE DATA           C   COPY public.travell_newsletter (id, nl_name, nl_email) FROM stdin;
    public          postgres    false    238   ��       u          0    16965    travell_testimonials 
   TABLE DATA           X   COPY public.travell_testimonials (id, testi_name, testi_desc, testi_client) FROM stdin;
    public          postgres    false    224   ��       �           0    0    auth_group_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.auth_group_id_seq', 1, false);
          public          postgres    false    208            �           0    0    auth_group_permissions_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 1, false);
          public          postgres    false    210            �           0    0    auth_permission_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.auth_permission_id_seq', 60, true);
          public          postgres    false    206            �           0    0    auth_user_groups_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.auth_user_groups_id_seq', 1, false);
          public          postgres    false    214            �           0    0    auth_user_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.auth_user_id_seq', 6, true);
          public          postgres    false    212            �           0    0 !   auth_user_user_permissions_id_seq    SEQUENCE SET     P   SELECT pg_catalog.setval('public.auth_user_user_permissions_id_seq', 1, false);
          public          postgres    false    216            �           0    0    django_admin_log_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.django_admin_log_id_seq', 37, true);
          public          postgres    false    218            �           0    0    django_content_type_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.django_content_type_id_seq', 16, true);
          public          postgres    false    204            �           0    0    django_migrations_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.django_migrations_id_seq', 24, true);
          public          postgres    false    202            �           0    0    travell_about_card_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.travell_about_card_id_seq', 3, true);
          public          postgres    false    227            �           0    0    travell_about_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.travell_about_id_seq', 1, true);
          public          postgres    false    225            �           0    0    travell_about_team_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.travell_about_team_id_seq', 4, true);
          public          postgres    false    229            �           0    0    travell_category_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.travell_category_id_seq', 5, true);
          public          postgres    false    231            �           0    0    travell_contact_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.travell_contact_id_seq', 18, true);
          public          postgres    false    235            �           0    0    travell_destination_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.travell_destination_id_seq', 6, true);
          public          postgres    false    221            �           0    0    travell_news_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.travell_news_id_seq', 6, true);
          public          postgres    false    233            �           0    0    travell_newsletter_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.travell_newsletter_id_seq', 1, true);
          public          postgres    false    237            �           0    0    travell_testimonials_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.travell_testimonials_id_seq', 7, true);
          public          postgres    false    223            �           2606    16940    auth_group auth_group_name_key 
   CONSTRAINT     Y   ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);
 H   ALTER TABLE ONLY public.auth_group DROP CONSTRAINT auth_group_name_key;
       public            postgres    false    209            �           2606    16877 R   auth_group_permissions auth_group_permissions_group_id_permission_id_0cd325b0_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq UNIQUE (group_id, permission_id);
 |   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq;
       public            postgres    false    211    211            �           2606    16830 2   auth_group_permissions auth_group_permissions_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);
 \   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_pkey;
       public            postgres    false    211            �           2606    16820    auth_group auth_group_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.auth_group DROP CONSTRAINT auth_group_pkey;
       public            postgres    false    209            �           2606    16863 F   auth_permission auth_permission_content_type_id_codename_01ab375a_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq UNIQUE (content_type_id, codename);
 p   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq;
       public            postgres    false    207    207            �           2606    16812 $   auth_permission auth_permission_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_pkey;
       public            postgres    false    207            �           2606    16848 &   auth_user_groups auth_user_groups_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_pkey;
       public            postgres    false    215            �           2606    16892 @   auth_user_groups auth_user_groups_user_id_group_id_94350c0c_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq UNIQUE (user_id, group_id);
 j   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq;
       public            postgres    false    215    215            �           2606    16838    auth_user auth_user_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.auth_user DROP CONSTRAINT auth_user_pkey;
       public            postgres    false    213            �           2606    16856 :   auth_user_user_permissions auth_user_user_permissions_pkey 
   CONSTRAINT     x   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_pkey PRIMARY KEY (id);
 d   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_pkey;
       public            postgres    false    217            �           2606    16906 Y   auth_user_user_permissions auth_user_user_permissions_user_id_permission_id_14a6b632_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq UNIQUE (user_id, permission_id);
 �   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq;
       public            postgres    false    217    217            �           2606    16934     auth_user auth_user_username_key 
   CONSTRAINT     _   ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_username_key UNIQUE (username);
 J   ALTER TABLE ONLY public.auth_user DROP CONSTRAINT auth_user_username_key;
       public            postgres    false    213            �           2606    16920 &   django_admin_log django_admin_log_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_pkey;
       public            postgres    false    219            �           2606    16804 E   django_content_type django_content_type_app_label_model_76bd3d3b_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq UNIQUE (app_label, model);
 o   ALTER TABLE ONLY public.django_content_type DROP CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq;
       public            postgres    false    205    205            �           2606    16802 ,   django_content_type django_content_type_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);
 V   ALTER TABLE ONLY public.django_content_type DROP CONSTRAINT django_content_type_pkey;
       public            postgres    false    205            �           2606    16794 (   django_migrations django_migrations_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.django_migrations DROP CONSTRAINT django_migrations_pkey;
       public            postgres    false    203            �           2606    16949 "   django_session django_session_pkey 
   CONSTRAINT     i   ALTER TABLE ONLY public.django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);
 L   ALTER TABLE ONLY public.django_session DROP CONSTRAINT django_session_pkey;
       public            postgres    false    220            �           2606    17162 *   travell_about_card travell_about_card_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY public.travell_about_card
    ADD CONSTRAINT travell_about_card_pkey PRIMARY KEY (id);
 T   ALTER TABLE ONLY public.travell_about_card DROP CONSTRAINT travell_about_card_pkey;
       public            postgres    false    228            �           2606    17151     travell_about travell_about_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.travell_about
    ADD CONSTRAINT travell_about_pkey PRIMARY KEY (id);
 J   ALTER TABLE ONLY public.travell_about DROP CONSTRAINT travell_about_pkey;
       public            postgres    false    226            �           2606    17173 *   travell_about_team travell_about_team_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY public.travell_about_team
    ADD CONSTRAINT travell_about_team_pkey PRIMARY KEY (id);
 T   ALTER TABLE ONLY public.travell_about_team DROP CONSTRAINT travell_about_team_pkey;
       public            postgres    false    230            �           2606    17184 &   travell_category travell_category_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.travell_category
    ADD CONSTRAINT travell_category_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.travell_category DROP CONSTRAINT travell_category_pkey;
       public            postgres    false    232            �           2606    17206 $   travell_contact travell_contact_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.travell_contact
    ADD CONSTRAINT travell_contact_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.travell_contact DROP CONSTRAINT travell_contact_pkey;
       public            postgres    false    236            �           2606    16962 ,   travell_destination travell_destination_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.travell_destination
    ADD CONSTRAINT travell_destination_pkey PRIMARY KEY (id);
 V   ALTER TABLE ONLY public.travell_destination DROP CONSTRAINT travell_destination_pkey;
       public            postgres    false    222            �           2606    17195    travell_news travell_news_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.travell_news
    ADD CONSTRAINT travell_news_pkey PRIMARY KEY (id);
 H   ALTER TABLE ONLY public.travell_news DROP CONSTRAINT travell_news_pkey;
       public            postgres    false    234            �           2606    17214 *   travell_newsletter travell_newsletter_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY public.travell_newsletter
    ADD CONSTRAINT travell_newsletter_pkey PRIMARY KEY (id);
 T   ALTER TABLE ONLY public.travell_newsletter DROP CONSTRAINT travell_newsletter_pkey;
       public            postgres    false    238            �           2606    16973 .   travell_testimonials travell_testimonials_pkey 
   CONSTRAINT     l   ALTER TABLE ONLY public.travell_testimonials
    ADD CONSTRAINT travell_testimonials_pkey PRIMARY KEY (id);
 X   ALTER TABLE ONLY public.travell_testimonials DROP CONSTRAINT travell_testimonials_pkey;
       public            postgres    false    224            �           1259    16941    auth_group_name_a6ea08ec_like    INDEX     h   CREATE INDEX auth_group_name_a6ea08ec_like ON public.auth_group USING btree (name varchar_pattern_ops);
 1   DROP INDEX public.auth_group_name_a6ea08ec_like;
       public            postgres    false    209            �           1259    16878 (   auth_group_permissions_group_id_b120cbf9    INDEX     o   CREATE INDEX auth_group_permissions_group_id_b120cbf9 ON public.auth_group_permissions USING btree (group_id);
 <   DROP INDEX public.auth_group_permissions_group_id_b120cbf9;
       public            postgres    false    211            �           1259    16879 -   auth_group_permissions_permission_id_84c5c92e    INDEX     y   CREATE INDEX auth_group_permissions_permission_id_84c5c92e ON public.auth_group_permissions USING btree (permission_id);
 A   DROP INDEX public.auth_group_permissions_permission_id_84c5c92e;
       public            postgres    false    211            �           1259    16864 (   auth_permission_content_type_id_2f476e4b    INDEX     o   CREATE INDEX auth_permission_content_type_id_2f476e4b ON public.auth_permission USING btree (content_type_id);
 <   DROP INDEX public.auth_permission_content_type_id_2f476e4b;
       public            postgres    false    207            �           1259    16894 "   auth_user_groups_group_id_97559544    INDEX     c   CREATE INDEX auth_user_groups_group_id_97559544 ON public.auth_user_groups USING btree (group_id);
 6   DROP INDEX public.auth_user_groups_group_id_97559544;
       public            postgres    false    215            �           1259    16893 !   auth_user_groups_user_id_6a12ed8b    INDEX     a   CREATE INDEX auth_user_groups_user_id_6a12ed8b ON public.auth_user_groups USING btree (user_id);
 5   DROP INDEX public.auth_user_groups_user_id_6a12ed8b;
       public            postgres    false    215            �           1259    16908 1   auth_user_user_permissions_permission_id_1fbb5f2c    INDEX     �   CREATE INDEX auth_user_user_permissions_permission_id_1fbb5f2c ON public.auth_user_user_permissions USING btree (permission_id);
 E   DROP INDEX public.auth_user_user_permissions_permission_id_1fbb5f2c;
       public            postgres    false    217            �           1259    16907 +   auth_user_user_permissions_user_id_a95ead1b    INDEX     u   CREATE INDEX auth_user_user_permissions_user_id_a95ead1b ON public.auth_user_user_permissions USING btree (user_id);
 ?   DROP INDEX public.auth_user_user_permissions_user_id_a95ead1b;
       public            postgres    false    217            �           1259    16935     auth_user_username_6821ab7c_like    INDEX     n   CREATE INDEX auth_user_username_6821ab7c_like ON public.auth_user USING btree (username varchar_pattern_ops);
 4   DROP INDEX public.auth_user_username_6821ab7c_like;
       public            postgres    false    213            �           1259    16931 )   django_admin_log_content_type_id_c4bce8eb    INDEX     q   CREATE INDEX django_admin_log_content_type_id_c4bce8eb ON public.django_admin_log USING btree (content_type_id);
 =   DROP INDEX public.django_admin_log_content_type_id_c4bce8eb;
       public            postgres    false    219            �           1259    16932 !   django_admin_log_user_id_c564eba6    INDEX     a   CREATE INDEX django_admin_log_user_id_c564eba6 ON public.django_admin_log USING btree (user_id);
 5   DROP INDEX public.django_admin_log_user_id_c564eba6;
       public            postgres    false    219            �           1259    16951 #   django_session_expire_date_a5c62663    INDEX     e   CREATE INDEX django_session_expire_date_a5c62663 ON public.django_session USING btree (expire_date);
 7   DROP INDEX public.django_session_expire_date_a5c62663;
       public            postgres    false    220            �           1259    16950 (   django_session_session_key_c0390e0f_like    INDEX     ~   CREATE INDEX django_session_session_key_c0390e0f_like ON public.django_session USING btree (session_key varchar_pattern_ops);
 <   DROP INDEX public.django_session_session_key_c0390e0f_like;
       public            postgres    false    220            �           2606    16871 O   auth_group_permissions auth_group_permissio_permission_id_84c5c92e_fk_auth_perm    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;
 y   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm;
       public          postgres    false    211    207    2977            �           2606    16866 P   auth_group_permissions auth_group_permissions_group_id_b120cbf9_fk_auth_group_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 z   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id;
       public          postgres    false    211    2982    209            �           2606    16857 E   auth_permission auth_permission_content_type_id_2f476e4b_fk_django_co    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 o   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co;
       public          postgres    false    207    205    2972            �           2606    16886 D   auth_user_groups auth_user_groups_group_id_97559544_fk_auth_group_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 n   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id;
       public          postgres    false    215    209    2982            �           2606    16881 B   auth_user_groups auth_user_groups_user_id_6a12ed8b_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 l   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id;
       public          postgres    false    2990    213    215            �           2606    16900 S   auth_user_user_permissions auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;
 }   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm;
       public          postgres    false    2977    217    207            �           2606    16895 V   auth_user_user_permissions auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id;
       public          postgres    false    217    2990    213            �           2606    16921 G   django_admin_log django_admin_log_content_type_id_c4bce8eb_fk_django_co    FK CONSTRAINT     �   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 q   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co;
       public          postgres    false    2972    219    205            �           2606    16926 B   django_admin_log django_admin_log_user_id_c564eba6_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 l   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id;
       public          postgres    false    213    2990    219            f      x������ � �      h      x������ � �      d   H  x�e�]n� ���=�T���]c���Ej�*��v�c�M߂�!����z���N�ir����uQF��'��
���.WW�1(���ݜ/�t���~�	�%��z=��o��p���(�P���;r	��@���=�v����5��6gn'H���FEW�R�����L���|�$�[����<�!�r���"]vI h`�'���6Ղ������,>�|����4<��^�Ň���Nu`��#�+���B�_��'x�����]����� �']���z&:>c�G���!���1��u��mWh�E�4
����*/��/p��p�~��>�
y8�Aע�	@MdD��fȰ d0�K���n�2&�@D�Ë�\
�ˋ�\/�͹p$6�"i
[��]����T��	���_m-l#ݔ��e����2Z�kX�&.�t֍���&R�'�P�Ɔsq��ʓ���]��}�o݊QIi4����D�I$�0�<�l-��Cc����Q�M��b;���wȱ]\'�R���EM�}���21�ۡ�OFY�})k�iV1����[f�zH~�i��l�~      j   C  x�}��n�0���Sp����C�ؑVZ�R�&@�9���!��%@�@ Oߴ@w����e�?�����,��4�P2P�������MN@u�;�ۑ�+3H�L�+�,�ϦE����0�fAjf�
ԀYF!��&:f�X��@Y*��������Ls�.ßa,�Z�o��D�5�:��$�9M��"j���k>�����V��&&�RhS�퍽ִ��@y>�Ir����YAr�Px��r���}� U`XX����!�M8yL����r�vո�y�<��_,��x\4��\��l�ߕ�g��W<�Ji_��4"��ٽ
��T�� �Bb��a�#PtyG��b���j��k�z�%G�� =w9�C���k9��`4�y�XԾp�����޹ރ﹨��N07)�p��lc�����i��_�Wkc �u��ԑ�,��֖�&.FƩ�}����~�>��v�����G�	5��8r�/x�rwض��;S�w�����wd*w��h���oO��!���?D�K�P��ƲP�Ub��it���.�ŷ�bh�#V&����W*�7r�s      l      x������ � �      n      x������ � �      p   �  x����j1���O-%bf4��Z�䖖����KbC����w��&��ǐC��'����qE@p�
LM�
�0Q�
W��S�?���xh����m߼��鋛�M��u�Ml�����OpM3�D�H��<��D�΁�9�V�QԢ�ω\���)���E�ρ�mĠТ�"Q4�D[�.�W6���E[Q��DW��#���9�t������p�����w��S��f��N�ͷ�E�t��9�Q��2vH�����:��p<�����a��0Z��!�"�ʫ��vL!�K���@��D�9+!RP�Z�CN�(�TD�ELY)O���:�tg�I�&ϑAYk`l�������ސ1�0��1"�Pi߷����o���il�)d�\H"�QH[�Q�B@
f��)�B��4�8�N]Y�w�Å�)��&]�Ԕ��E�3R.���&C4�3X��g�\x&	*RcDV!�z�D���e!ǶAh J�xŎ����[���m�L�Q��4�R�W:OQ����?�Yq�t��H���h����S*ט�c�3>j3LΧ`c��n �c�ڛ�P�������u�٥�����\�r�t5�/+`g�����\o}�˃�v�<;��(�����AQjC?�P~�3��������;��+�.ǫ'����~���k�����o��tsz�J�5$Dֻ�yU O -��1�
��e�x�T�02`���� p����!Jc6Me��p��D�xK"�Ƹ�������0�gYƾ��z�{���      b   �   x�m�]
�0�����?�.���RiR���7�����1��h%����z<T
��z��@^���$75Q-�biV2Đ&hW��"t�/9&�D�-࠘^i~p,����[t���`��$��\�t�C�p]jPhy�n
��`��Ǔ�F�+��őHy��b�m      `   6  x����n�0���S�~��?�ȳ�dY�7E␂�m�~MVe�"�̗�x��������yS 蚾��o+�P/ � j�Z������T�{|}&�'2lq�/]�?QI8�0�vQ�UE����������%���.5!�\1�b���sl���j�՝_�����hUp�Kz�=-/������4�.��t���oc�-�]3M���:����_�W{4&2@�/�����M�$�Rٖ- �͏�����b#g;#���Oqމ&-���7A�Ъ���T
��ތ%��6�9�}a�!��Ջ�w�6�qzT"��0�.L����BZ��\�f7�'�K�lU���_��M�Ԙ��LCXh�q�߾G�h�I����o)��n���)�~VJ�\)���O���Xa�yS�ѿ�Ԕ�B�5�8�VG.�)6��'�?n�Ԡj�'�Ĝ�l��w��*Piwɬ{D]��t
l9݄[���`����B��mҝS��!M�>�^��t$��r�l9�G���ǩIs�nCL�X|D�	j��F�G�-Co���n��#P�i/�_�5�2���p8����      q   B  x���N�0 E��+|7[Jc���p�e�@(�e��-�-(��N�~��7'�9��h>Î��ڷC5]�i��n8sԫ�Cd�(p(�ObI������,p���͘�6��s��n$��^g�*�.Jd��S��y��&���Z���2ܕ��H��<�[�_X�^i!��Q�[�G�)�F�%����r�q��x9P?�B��;����TK�,�������;���;���6�; �m��! ���Ä�I܂ }^� �`6+�|�UikC&�<�B@ټ�F}hE�1c����McJY�i4�����RUlצ�L}���m�(�'aOҫ      w   r  x�5�An�0E��)�l���&�.����l�L�LmQ#J�d�k�z=I)�]Ȁ������j=��,�S�Vr���/��28�z&�i$��feO�0KG�~}Ϟ�e�N�Q�('�;p�%@P�&�a�l��ۻ��i�n�]���+u�zV8P}�_Ο���&R����c�aL_z����3\$�3Naה]7ьWsu	�'[n@����lM�e�ߑ"-�]1�(2N
��e���KpC�P���]ʱ�b_
�gg�f��l����/яҚ1���І���n��.V��F��N�����J�����t"�i��o���0u�mz	��n�nֻ���l�����j��~�y�UM�]��j�	��n      y   �  x�eR���0=w���y�h���Vb���xZ�$N�ݩ���t!�S������6Q�P9sO�|8SY!�",�$CB3*0�ů�B��3�)�y�����i��Q/��G��88t�,����H�}p�,����'��ǽw]�x�`g�����si�4Ѱ{��B���I��{	|�0c�>�ĖH�n�0�<O@�c.v8��M��Գ�Q������i��OU�Zs�d��E���Y����o,.�SN����m|Ct�^�ݼs+�=aԫ�z��s6�G�B�n
*"T�+�f ~q��W�8K(`����Yj���_�|s[:Ob�.����{R,'Б��)�����[�l�h�2���tȉt�����|o�c�9�Fq�X���^����v�����      {     x�U�MK�0@�鯘�P�~H��P=��(�Y;�f�Mb���o�킞��^�֠VS�l=�ژ����hx>��^���`!tЏ%�HQ��::�`�Hڧ��������K��L2�8*��I�5�x�ڬ3��8FN;��>qOt1��_���\�,oy%�Z9�����݉|D�P�A�� HG������u��@ؑ�ze�{�A������PV�"[���U�>�膀����H��ހ[�yX�i�$��0�       }   �   x�=�=n�0�g�<@!��Щc�.LB�jh� %���KIu �#�==���1�*Wb����V��&��6X���&!
p�+����3\�������f��v�B��
Z�(��W�ZC�s�~1�C	n�4�Ѓv��ʶv nr�
��LYJ�h�n��$`z;Wf4���R�c���Ⴟ1]�덻c���_ݩ�I���1ߢ(�1u���*\�qY�ᢎyA��g��]�F�2�h	p���������      �   �   x�3�t��,�L B/9?�3(�8��,�$3?�3��3X!�X�(5=�(%3/]IV��Ђ3;�8�(J9��&f�M	�/-�,�U�ILN-�t�R�pU��Qw�q��suQP�qtv����� h�-�      s   t  x�=Q�R�0]�_qw�����*N�uDY9��4�D��$�`�޴E�gr�7sRu�iUio����Ys���+�%tI��G��3ɭ���|ց�]h�F�$�)qADVB˫�j�@i�-çׂ�Kk����U54'�i!��S� y�p��d�L���fQ����9�r�rv�l��-ߍ�������H�P#&Ec�[����&X������0U�δ�;�N�'�V���3z�jr�D�����v�_HtX���ǖ7�zJ�pD�u�����:�1��?�uX0d~8w��=i�]���Kk���f��?�\*�#+$:v왓�X��a��R�.R����O�]��W�د7����~��I6��� ��汈         w  x��X�r�6>�<*�M�ff%ű+���#WT��MY�c���0`s0 84u�;�%y=?I�n��+y��=H"A����׍:_<���M������znwM^�44*I�Ԗ�����Q��^����T8Pt!�R�Q���u�5�Z��YUr���5E�w�Ӡ"��v�L��G����ɍ�_N{�����8o��w�gg����W�t�+�S#�TC�B�mf���U6�({����T9���N����[�z��W��*U[�����m%gٷ�����GϠ�Bp�g��u��p�c���2��9Z�6x��c|��،a�o����S�db�.�i�ӄD^���Eg�v6�+�{���*V?��}�l�RPY�I%x���������'����TC�ㄎ��LQZu!�q<ڶ�Y C�3#��$��ٻ�)��#�(Y.Hz�zX���/�|��Y{���3j��)sT*'�� ���Oq&�u��h�g"���601�0��}��j�ׯM��S�=x�p���9���m�[0��g���_//[}�<9���A���e߶��!��G��V���m�sA\pu$'LDuTl��t6�<�C��s��VJ7
��g󫍊F�	�i�Z���BU�y�$>~f�`}߂Ө7��n�*�q�0���M��iB��bbHI0ж4�A��f3.���Ħ��!�RZ9����F�XsaĄ"�0>{i}#:��{B�W��އ� ��t��*2("�M�Rr�檖Ul�K"bЕNBzf`�ޯ&`9]i���']S� ��l�R~D��ޡ�}��'����T+l�����F�<�`I���w�Z��<�1�^��K����x��u�k2��S=��|_^?�|s����t���6��h�a���W����ճ���o�_/~ ��8�N{{G6�	o��d���������?����Vk4ӯ������y���n.Ζ�/��L�O���~1I%��r�Z�Ñ��;�F hq�?�9�2B�0�(t� �{�}�|a[ӱ�c��0�ɛgi�`�`�Ψ�*L;����A�!;�_��,*�7�
ڍ�9�l��+Oj�8<��ǎ��>3�)��z	8�j4��Z���N��kG~Mmr4�l��~��>����o�����Á����d"j�5�
��+X=�+પ�	Lx"���oA�ę��1��9?;+Bg��;9R�t@����҅e-����S�45f�0ix� !��"x��i縑�'�ŀ%b=ɮ@Ff���x{G�!70�s4,J�߭���B���ٙ� {��Q�D.{�����g�}�4��h��k��ǐy׹ kN~Cs��4O)���!m$�DIv�հ�f��'�ة' ��@�����ה!A�+��a�UDI��WjuգPͥ.2b�&��B|,%4�,yBL�彏ԅ��:����
�����e't��r�"����.�
䒌f�B� #����]����9�TH��C$8�ܒ(Vu28K��c�=hQ�0fϗ4��z;]��ɉ�ڢ����i7{"b#��N�T�N�^A�:>�","�~� :+��&�^G��NkS����}��/!�?�([,�`�C	m��t�y�/Ѳ�-�+E��ևw+ޱ����;�ﮋ���� �.�8�vVRi��3&!U���������}�^�pI�v��ʱ�&���/>r��9<u��|�ʽ]��`�$l-�\���q,��o �v����T+��1�A��9��a�����t�)�	�����&�-J��f������n���? ���R�##f4 ��3cZ=��
��n1(bb�A��2E.ؒ��f�&w�݉R(T���'����I�>X�],�n��埐�-�      �      x�3�L��,鹙9�z���\1z\\\ z      u   �   x�U�A�0E��)�+w$*�d���M��VKǔ!��[�Đ�r�{3�*��qp��J�z�1��R�ӵ�xS��x���⩣ �Ps�<	���L5��1ԍ�g�IF�x��i� ����3z٠GU�+g�F�*�μ)q9�����Sr���Lb�k�d(��њ%���j̍��ȴ�_��Z�     