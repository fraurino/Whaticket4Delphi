PGDMP                      }            whaticket4delphi    17.5    17.5 c   E           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                           false            F           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                           false            G           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                           false            H           1262    35836    whaticket4delphi    DATABASE     {   CREATE DATABASE whaticket4delphi WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'en_US.utf8';
     DROP DATABASE whaticket4delphi;
                     postgres    false            �            1259    35837    Announcements    TABLE     b  CREATE TABLE public."Announcements" (
    id integer NOT NULL,
    priority integer,
    title character varying(255) NOT NULL,
    text text NOT NULL,
    "mediaPath" text,
    "mediaName" text,
    "companyId" integer NOT NULL,
    status boolean,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);
 #   DROP TABLE public."Announcements";
       public         heap r       postgres    false            �            1259    35842    Announcements_id_seq    SEQUENCE     �   CREATE SEQUENCE public."Announcements_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public."Announcements_id_seq";
       public               postgres    false    217            I           0    0    Announcements_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public."Announcements_id_seq" OWNED BY public."Announcements".id;
          public               postgres    false    218            �            1259    35843    Baileys    TABLE     �   CREATE TABLE public."Baileys" (
    id integer NOT NULL,
    "whatsappId" integer NOT NULL,
    contacts text,
    chats text,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);
    DROP TABLE public."Baileys";
       public         heap r       postgres    false            �            1259    35848    BaileysKeys    TABLE     �   CREATE TABLE public."BaileysKeys" (
    "whatsappId" integer NOT NULL,
    type character varying(255) NOT NULL,
    key character varying(255) NOT NULL,
    value text NOT NULL
);
 !   DROP TABLE public."BaileysKeys";
       public         heap r       postgres    false            �            1259    35853    Baileys_id_seq    SEQUENCE     �   CREATE SEQUENCE public."Baileys_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public."Baileys_id_seq";
       public               postgres    false    219            J           0    0    Baileys_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public."Baileys_id_seq" OWNED BY public."Baileys".id;
          public               postgres    false    221            �            1259    35854    CampaignSettings    TABLE     �   CREATE TABLE public."CampaignSettings" (
    id integer NOT NULL,
    key character varying(255) NOT NULL,
    value text,
    "companyId" integer,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);
 &   DROP TABLE public."CampaignSettings";
       public         heap r       postgres    false            �            1259    35859    CampaignSettings_id_seq    SEQUENCE     �   CREATE SEQUENCE public."CampaignSettings_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public."CampaignSettings_id_seq";
       public               postgres    false    222            K           0    0    CampaignSettings_id_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE public."CampaignSettings_id_seq" OWNED BY public."CampaignSettings".id;
          public               postgres    false    223            �            1259    35860    CampaignShipping    TABLE       CREATE TABLE public."CampaignShipping" (
    id integer NOT NULL,
    "jobId" character varying(255),
    number character varying(255) NOT NULL,
    message text NOT NULL,
    "confirmationMessage" text,
    confirmation boolean,
    "contactId" integer,
    "campaignId" integer NOT NULL,
    "confirmationRequestedAt" timestamp with time zone,
    "confirmedAt" timestamp with time zone,
    "deliveredAt" timestamp with time zone,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);
 &   DROP TABLE public."CampaignShipping";
       public         heap r       postgres    false            �            1259    35865    CampaignShipping_id_seq    SEQUENCE     �   CREATE SEQUENCE public."CampaignShipping_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public."CampaignShipping_id_seq";
       public               postgres    false    224            L           0    0    CampaignShipping_id_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE public."CampaignShipping_id_seq" OWNED BY public."CampaignShipping".id;
          public               postgres    false    225            �            1259    35866 	   Campaigns    TABLE     �  CREATE TABLE public."Campaigns" (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    message1 text DEFAULT ''::text,
    message2 text DEFAULT ''::text,
    message3 text DEFAULT ''::text,
    message4 text DEFAULT ''::text,
    message5 text DEFAULT ''::text,
    "confirmationMessage1" text DEFAULT ''::text,
    "confirmationMessage2" text DEFAULT ''::text,
    "confirmationMessage3" text DEFAULT ''::text,
    "confirmationMessage4" text DEFAULT ''::text,
    "confirmationMessage5" text DEFAULT ''::text,
    status character varying(255),
    confirmation boolean DEFAULT false,
    "mediaPath" text,
    "mediaName" text,
    "companyId" integer NOT NULL,
    "contactListId" integer,
    "whatsappId" integer,
    "scheduledAt" timestamp with time zone,
    "completedAt" timestamp with time zone,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);
    DROP TABLE public."Campaigns";
       public         heap r       postgres    false            �            1259    35882    Campaigns_id_seq    SEQUENCE     �   CREATE SEQUENCE public."Campaigns_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public."Campaigns_id_seq";
       public               postgres    false    226            M           0    0    Campaigns_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public."Campaigns_id_seq" OWNED BY public."Campaigns".id;
          public               postgres    false    227            �            1259    35883    ChatMessages    TABLE     K  CREATE TABLE public."ChatMessages" (
    id integer NOT NULL,
    "chatId" integer NOT NULL,
    "senderId" integer NOT NULL,
    message text DEFAULT ''::text,
    "mediaPath" text,
    "mediaName" text,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL,
    "mediaType" text
);
 "   DROP TABLE public."ChatMessages";
       public         heap r       postgres    false            �            1259    35889    ChatMessages_id_seq    SEQUENCE     �   CREATE SEQUENCE public."ChatMessages_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public."ChatMessages_id_seq";
       public               postgres    false    228            N           0    0    ChatMessages_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public."ChatMessages_id_seq" OWNED BY public."ChatMessages".id;
          public               postgres    false    229            �            1259    35890 	   ChatUsers    TABLE        CREATE TABLE public."ChatUsers" (
    id integer NOT NULL,
    "chatId" integer NOT NULL,
    "userId" integer NOT NULL,
    unreads integer DEFAULT 0,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);
    DROP TABLE public."ChatUsers";
       public         heap r       postgres    false            �            1259    35894    ChatUsers_id_seq    SEQUENCE     �   CREATE SEQUENCE public."ChatUsers_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public."ChatUsers_id_seq";
       public               postgres    false    230            O           0    0    ChatUsers_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public."ChatUsers_id_seq" OWNED BY public."ChatUsers".id;
          public               postgres    false    231            �            1259    35895    Chats    TABLE     Y  CREATE TABLE public."Chats" (
    id integer NOT NULL,
    title text DEFAULT ''::text,
    uuid character varying(255) DEFAULT ''::character varying,
    "ownerId" integer NOT NULL,
    "lastMessage" text,
    "companyId" integer NOT NULL,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);
    DROP TABLE public."Chats";
       public         heap r       postgres    false            �            1259    35902    Chats_id_seq    SEQUENCE     �   CREATE SEQUENCE public."Chats_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public."Chats_id_seq";
       public               postgres    false    232            P           0    0    Chats_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public."Chats_id_seq" OWNED BY public."Chats".id;
          public               postgres    false    233            �            1259    35903 	   Companies    TABLE     �  CREATE TABLE public."Companies" (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    phone character varying(255),
    email character varying(255),
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL,
    "planId" integer,
    status boolean DEFAULT true,
    schedules jsonb DEFAULT '[]'::jsonb,
    "dueDate" timestamp with time zone,
    recurrence character varying(255) DEFAULT ''::character varying
);
    DROP TABLE public."Companies";
       public         heap r       postgres    false            �            1259    35911    Companies_id_seq    SEQUENCE     �   CREATE SEQUENCE public."Companies_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public."Companies_id_seq";
       public               postgres    false    234            Q           0    0    Companies_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public."Companies_id_seq" OWNED BY public."Companies".id;
          public               postgres    false    235            �            1259    35912    ContactCustomFields    TABLE     $  CREATE TABLE public."ContactCustomFields" (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    value character varying(255) NOT NULL,
    "contactId" integer NOT NULL,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);
 )   DROP TABLE public."ContactCustomFields";
       public         heap r       postgres    false            �            1259    35917    ContactCustomFields_id_seq    SEQUENCE     �   CREATE SEQUENCE public."ContactCustomFields_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE public."ContactCustomFields_id_seq";
       public               postgres    false    236            R           0    0    ContactCustomFields_id_seq    SEQUENCE OWNED BY     ]   ALTER SEQUENCE public."ContactCustomFields_id_seq" OWNED BY public."ContactCustomFields".id;
          public               postgres    false    237            �            1259    35918    ContactListItems    TABLE     �  CREATE TABLE public."ContactListItems" (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    number character varying(255) NOT NULL,
    email character varying(255),
    "contactListId" integer NOT NULL,
    "isWhatsappValid" boolean DEFAULT false,
    "companyId" integer,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);
 &   DROP TABLE public."ContactListItems";
       public         heap r       postgres    false            �            1259    35924    ContactListItems_id_seq    SEQUENCE     �   CREATE SEQUENCE public."ContactListItems_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public."ContactListItems_id_seq";
       public               postgres    false    238            S           0    0    ContactListItems_id_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE public."ContactListItems_id_seq" OWNED BY public."ContactListItems".id;
          public               postgres    false    239            �            1259    35925    ContactLists    TABLE     �   CREATE TABLE public."ContactLists" (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    "companyId" integer,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);
 "   DROP TABLE public."ContactLists";
       public         heap r       postgres    false            �            1259    35928    ContactLists_id_seq    SEQUENCE     �   CREATE SEQUENCE public."ContactLists_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public."ContactLists_id_seq";
       public               postgres    false    240            T           0    0    ContactLists_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public."ContactLists_id_seq" OWNED BY public."ContactLists".id;
          public               postgres    false    241            �            1259    35929    Contacts    TABLE     v  CREATE TABLE public."Contacts" (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    number character varying(255) NOT NULL,
    "profilePicUrl" character varying(255),
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL,
    email character varying(255) DEFAULT ''::character varying NOT NULL,
    "isGroup" boolean DEFAULT false NOT NULL,
    "companyId" integer,
    channel text DEFAULT 'whatsapp'::text,
    "disableBot" boolean DEFAULT false,
    presence character varying(255) DEFAULT 'available'::character varying,
    "profileHiresPictureUrl" text
);
    DROP TABLE public."Contacts";
       public         heap r       postgres    false            �            1259    35939    Contacts_id_seq    SEQUENCE     �   CREATE SEQUENCE public."Contacts_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public."Contacts_id_seq";
       public               postgres    false    242            U           0    0    Contacts_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public."Contacts_id_seq" OWNED BY public."Contacts".id;
          public               postgres    false    243            �            1259    35940    Helps    TABLE       CREATE TABLE public."Helps" (
    id integer NOT NULL,
    title character varying(255) NOT NULL,
    description text,
    video character varying(255),
    link text,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);
    DROP TABLE public."Helps";
       public         heap r       postgres    false            �            1259    35945    Helps_id_seq    SEQUENCE     �   CREATE SEQUENCE public."Helps_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public."Helps_id_seq";
       public               postgres    false    244            V           0    0    Helps_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public."Helps_id_seq" OWNED BY public."Helps".id;
          public               postgres    false    245            �            1259    35946    IntegrationSessions    TABLE     `  CREATE TABLE public."IntegrationSessions" (
    id integer NOT NULL,
    token character varying(255) NOT NULL,
    "sessionId" character varying(255) NOT NULL,
    data jsonb,
    "ticketId" integer NOT NULL,
    "integrationId" integer NOT NULL,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);
 )   DROP TABLE public."IntegrationSessions";
       public         heap r       postgres    false            �            1259    35951    IntegrationSessions_id_seq    SEQUENCE     �   CREATE SEQUENCE public."IntegrationSessions_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE public."IntegrationSessions_id_seq";
       public               postgres    false    246            W           0    0    IntegrationSessions_id_seq    SEQUENCE OWNED BY     ]   ALTER SEQUENCE public."IntegrationSessions_id_seq" OWNED BY public."IntegrationSessions".id;
          public               postgres    false    247            �            1259    35952    Integrations    TABLE       CREATE TABLE public."Integrations" (
    id integer NOT NULL,
    driver character varying(255) NOT NULL,
    configuration jsonb,
    "queueId" integer NOT NULL,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);
 "   DROP TABLE public."Integrations";
       public         heap r       postgres    false            �            1259    35957    Integrations_id_seq    SEQUENCE     �   CREATE SEQUENCE public."Integrations_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public."Integrations_id_seq";
       public               postgres    false    248            X           0    0    Integrations_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public."Integrations_id_seq" OWNED BY public."Integrations".id;
          public               postgres    false    249            �            1259    35958    Invoices    TABLE     �  CREATE TABLE public."Invoices" (
    id integer NOT NULL,
    detail character varying(255),
    status character varying(255),
    value double precision,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL,
    "dueDate" character varying(255),
    "companyId" integer,
    "txId" character varying(255),
    "payGw" character varying(255),
    "payGwData" text
);
    DROP TABLE public."Invoices";
       public         heap r       postgres    false            �            1259    35963    Invoices_id_seq    SEQUENCE     �   CREATE SEQUENCE public."Invoices_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public."Invoices_id_seq";
       public               postgres    false    250            Y           0    0    Invoices_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public."Invoices_id_seq" OWNED BY public."Invoices".id;
          public               postgres    false    251            �            1259    35964    Kanban    TABLE     v   CREATE TABLE public."Kanban" (
    id integer NOT NULL,
    "Name" character varying,
    "Icon" character varying
);
    DROP TABLE public."Kanban";
       public         heap r       postgres    false            �            1259    35969    Kanban_id_seq    SEQUENCE     �   CREATE SEQUENCE public."Kanban_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public."Kanban_id_seq";
       public               postgres    false    252            Z           0    0    Kanban_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public."Kanban_id_seq" OWNED BY public."Kanban".id;
          public               postgres    false    253            �            1259    35970    Messages    TABLE     G  CREATE TABLE public."Messages" (
    id character varying(255) NOT NULL,
    body text NOT NULL,
    ack integer DEFAULT 0 NOT NULL,
    read boolean DEFAULT false NOT NULL,
    "mediaType" character varying(255),
    "mediaUrl" text,
    "ticketId" integer NOT NULL,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL,
    "fromMe" boolean DEFAULT false NOT NULL,
    "isDeleted" boolean DEFAULT false NOT NULL,
    "contactId" integer,
    "quotedMsgId" character varying(255),
    "companyId" integer,
    "remoteJid" text,
    "dataJson" text,
    participant text,
    "queueId" integer,
    channel text DEFAULT 'whatsapp'::text,
    "isEdited" boolean DEFAULT false NOT NULL,
    "thumbnailUrl" character varying(255),
    "userId" integer,
    "mimeType" character varying(255)
);
    DROP TABLE public."Messages";
       public         heap r       postgres    false            �            1259    35981    NotificamehubIdMappings    TABLE        CREATE TABLE public."NotificamehubIdMappings" (
    id text NOT NULL,
    "messageId" character varying(255) NOT NULL,
    "ticketId" integer NOT NULL,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);
 -   DROP TABLE public."NotificamehubIdMappings";
       public         heap r       postgres    false                        1259    35986    OldMessages    TABLE       CREATE TABLE public."OldMessages" (
    id integer NOT NULL,
    "messageId" character varying(255) NOT NULL,
    body text NOT NULL,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL,
    "ticketId" integer,
    "userId" integer
);
 !   DROP TABLE public."OldMessages";
       public         heap r       postgres    false                       1259    35991    OldMessages_id_seq    SEQUENCE     �   CREATE SEQUENCE public."OldMessages_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public."OldMessages_id_seq";
       public               postgres    false    256            [           0    0    OldMessages_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public."OldMessages_id_seq" OWNED BY public."OldMessages".id;
          public               postgres    false    257                       1259    35992    Plans    TABLE     q  CREATE TABLE public."Plans" (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    users integer DEFAULT 0,
    connections integer DEFAULT 0,
    queues integer DEFAULT 0,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL,
    value double precision,
    "isPublic" boolean DEFAULT true NOT NULL
);
    DROP TABLE public."Plans";
       public         heap r       postgres    false                       1259    35999    Plans_id_seq    SEQUENCE     �   CREATE SEQUENCE public."Plans_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public."Plans_id_seq";
       public               postgres    false    258            \           0    0    Plans_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public."Plans_id_seq" OWNED BY public."Plans".id;
          public               postgres    false    259                       1259    36000    QueueOptions    TABLE     �  CREATE TABLE public."QueueOptions" (
    id integer NOT NULL,
    title character varying(255) NOT NULL,
    message text,
    option text,
    "queueId" integer,
    "parentId" integer,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL,
    "mediaName" text DEFAULT ''::text,
    "mediaPath" text DEFAULT ''::text,
    "forwardQueueId" integer,
    "exitChatbot" boolean DEFAULT false
);
 "   DROP TABLE public."QueueOptions";
       public         heap r       postgres    false                       1259    36008    QueueOptions_id_seq    SEQUENCE     �   CREATE SEQUENCE public."QueueOptions_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public."QueueOptions_id_seq";
       public               postgres    false    260            ]           0    0    QueueOptions_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public."QueueOptions_id_seq" OWNED BY public."QueueOptions".id;
          public               postgres    false    261                       1259    36009    Queues    TABLE       CREATE TABLE public."Queues" (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    color character varying(255) NOT NULL,
    "greetingMessage" text,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL,
    "companyId" integer,
    schedules jsonb DEFAULT '[]'::jsonb,
    "outOfHoursMessage" text,
    "mediaName" text DEFAULT ''::text,
    "mediaPath" text DEFAULT ''::text,
    "whatsappId" integer,
    "isDefault" boolean DEFAULT false NOT NULL,
    "Status" integer
);
    DROP TABLE public."Queues";
       public         heap r       postgres    false                       1259    36018    Queues_id_seq    SEQUENCE     �   CREATE SEQUENCE public."Queues_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public."Queues_id_seq";
       public               postgres    false    262            ^           0    0    Queues_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public."Queues_id_seq" OWNED BY public."Queues".id;
          public               postgres    false    263                       1259    36019    QuickMessages    TABLE     e  CREATE TABLE public."QuickMessages" (
    id integer NOT NULL,
    shortcode character varying(255) NOT NULL,
    message text,
    "companyId" integer,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL,
    "userId" integer,
    "mediaName" text DEFAULT ''::text,
    "mediaPath" text DEFAULT ''::text
);
 #   DROP TABLE public."QuickMessages";
       public         heap r       postgres    false            	           1259    36026    QuickMessages_id_seq    SEQUENCE     �   CREATE SEQUENCE public."QuickMessages_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public."QuickMessages_id_seq";
       public               postgres    false    264            _           0    0    QuickMessages_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public."QuickMessages_id_seq" OWNED BY public."QuickMessages".id;
          public               postgres    false    265            
           1259    36027 	   Schedules    TABLE     �  CREATE TABLE public."Schedules" (
    id integer NOT NULL,
    body text NOT NULL,
    "sendAt" timestamp with time zone,
    "sentAt" timestamp with time zone,
    "contactId" character varying,
    "ticketId" integer,
    "userId" integer,
    "companyId" integer,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL,
    "saveMessage" boolean DEFAULT false NOT NULL,
    descricao character varying(150),
    "Status" bigint
);
    DROP TABLE public."Schedules";
       public         heap r       postgres    false                       1259    36033    Schedules_id_seq    SEQUENCE     �   CREATE SEQUENCE public."Schedules_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public."Schedules_id_seq";
       public               postgres    false    266            `           0    0    Schedules_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public."Schedules_id_seq" OWNED BY public."Schedules".id;
          public               postgres    false    267                       1259    36034    SequelizeData    TABLE     R   CREATE TABLE public."SequelizeData" (
    name character varying(255) NOT NULL
);
 #   DROP TABLE public."SequelizeData";
       public         heap r       postgres    false                       1259    36037    SequelizeMeta    TABLE     R   CREATE TABLE public."SequelizeMeta" (
    name character varying(255) NOT NULL
);
 #   DROP TABLE public."SequelizeMeta";
       public         heap r       postgres    false                       1259    36040    Settings    TABLE     �   CREATE TABLE public."Settings" (
    key character varying(255) NOT NULL,
    value text NOT NULL,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL,
    "companyId" integer,
    id integer NOT NULL
);
    DROP TABLE public."Settings";
       public         heap r       postgres    false                       1259    36045    Settings_id_seq    SEQUENCE     �   CREATE SEQUENCE public."Settings_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public."Settings_id_seq";
       public               postgres    false    270            a           0    0    Settings_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public."Settings_id_seq" OWNED BY public."Settings".id;
          public               postgres    false    271                       1259    36046    Status    TABLE     q   CREATE TABLE public."Status" (
    id integer NOT NULL,
    descricao character varying(30),
    crud boolean
);
    DROP TABLE public."Status";
       public         heap r       postgres    false                       1259    36049    Subscriptions    TABLE     �  CREATE TABLE public."Subscriptions" (
    id integer NOT NULL,
    "isActive" boolean DEFAULT false,
    "expiresAt" timestamp with time zone NOT NULL,
    "userPriceCents" integer,
    "whatsPriceCents" integer,
    "lastInvoiceUrl" character varying(255),
    "lastPlanChange" timestamp with time zone,
    "companyId" integer,
    "providerSubscriptionId" character varying(255) NOT NULL,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);
 #   DROP TABLE public."Subscriptions";
       public         heap r       postgres    false                       1259    36055    Subscriptions_id_seq    SEQUENCE     �   CREATE SEQUENCE public."Subscriptions_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public."Subscriptions_id_seq";
       public               postgres    false    273            b           0    0    Subscriptions_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public."Subscriptions_id_seq" OWNED BY public."Subscriptions".id;
          public               postgres    false    274                       1259    36056    Tags    TABLE     F  CREATE TABLE public."Tags" (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    color character varying(255),
    "companyId" integer NOT NULL,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL,
    kanban integer,
    teste bytea,
    "Status" bigint
);
    DROP TABLE public."Tags";
       public         heap r       postgres    false                       1259    36061    Tags_id_seq    SEQUENCE     �   CREATE SEQUENCE public."Tags_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public."Tags_id_seq";
       public               postgres    false    275            c           0    0    Tags_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public."Tags_id_seq" OWNED BY public."Tags".id;
          public               postgres    false    276                       1259    36062    Tasks    TABLE     @  CREATE TABLE public."Tasks" (
    id integer NOT NULL,
    name text,
    "companyId" integer,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL,
    "userId" integer,
    "mediaName" text DEFAULT ''::text,
    "mediaPath" text DEFAULT ''::text,
    "Status" bigint
);
    DROP TABLE public."Tasks";
       public         heap r       postgres    false                       1259    36069    Tasks_id_seq    SEQUENCE     �   CREATE SEQUENCE public."Tasks_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public."Tasks_id_seq";
       public               postgres    false    277            d           0    0    Tasks_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public."Tasks_id_seq" OWNED BY public."Tasks".id;
          public               postgres    false    278                       1259    36070    TicketNotes    TABLE       CREATE TABLE public."TicketNotes" (
    id integer NOT NULL,
    note character varying(255) NOT NULL,
    "userId" integer,
    "contactId" integer NOT NULL,
    "ticketId" integer,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);
 !   DROP TABLE public."TicketNotes";
       public         heap r       postgres    false                       1259    36073    TicketNotes_id_seq    SEQUENCE     �   CREATE SEQUENCE public."TicketNotes_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public."TicketNotes_id_seq";
       public               postgres    false    279            e           0    0    TicketNotes_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public."TicketNotes_id_seq" OWNED BY public."TicketNotes".id;
          public               postgres    false    280                       1259    36074 
   TicketTags    TABLE     �   CREATE TABLE public."TicketTags" (
    "ticketId" integer NOT NULL,
    "tagId" integer NOT NULL,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);
     DROP TABLE public."TicketTags";
       public         heap r       postgres    false                       1259    36077    TicketTraking    TABLE     �  CREATE TABLE public."TicketTraking" (
    id integer NOT NULL,
    "ticketId" integer,
    "companyId" integer,
    "whatsappId" integer,
    "userId" integer,
    "createdAt" timestamp with time zone,
    "updatedAt" timestamp with time zone,
    "queuedAt" timestamp with time zone,
    "startedAt" timestamp with time zone,
    "finishedAt" timestamp with time zone,
    "ratingAt" timestamp with time zone,
    rated boolean DEFAULT false,
    expired boolean DEFAULT false
);
 #   DROP TABLE public."TicketTraking";
       public         heap r       postgres    false                       1259    36082    TicketTraking_id_seq    SEQUENCE     �   CREATE SEQUENCE public."TicketTraking_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public."TicketTraking_id_seq";
       public               postgres    false    282            f           0    0    TicketTraking_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public."TicketTraking_id_seq" OWNED BY public."TicketTraking".id;
          public               postgres    false    283                       1259    36083    Tickets    TABLE     �  CREATE TABLE public."Tickets" (
    id integer NOT NULL,
    status character varying(255),
    "lastMessage" text,
    "contactId" integer,
    "userId" integer,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL,
    "whatsappId" integer,
    "isGroup" boolean NOT NULL,
    "unreadMessages" integer,
    "queueId" integer,
    "companyId" integer,
    uuid uuid,
    chatbot boolean,
    "queueOptionId" integer,
    channel text
);
    DROP TABLE public."Tickets";
       public         heap r       postgres    false                       1259    36088    Tickets_id_seq    SEQUENCE     �   CREATE SEQUENCE public."Tickets_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public."Tickets_id_seq";
       public               postgres    false                       1259    36089 
   UserQueues    TABLE     �   CREATE TABLE public."UserQueues" (
    "userId" integer NOT NULL,
    "queueId" integer NOT NULL,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);
     DROP TABLE public."UserQueues";
       public         heap r       postgres    false                       1259    36092    UserRatings    TABLE     �   CREATE TABLE public."UserRatings" (
    id integer NOT NULL,
    "ticketId" integer,
    "companyId" integer,
    "userId" integer,
    rate integer DEFAULT 0,
    "createdAt" timestamp with time zone,
    "updatedAt" timestamp with time zone
);
 !   DROP TABLE public."UserRatings";
       public         heap r       postgres    false                        1259    36096    UserRatings_id_seq    SEQUENCE     �   CREATE SEQUENCE public."UserRatings_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public."UserRatings_id_seq";
       public               postgres    false    287            g           0    0    UserRatings_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public."UserRatings_id_seq" OWNED BY public."UserRatings".id;
          public               postgres    false    288            !           1259    36097    UserSocketSessions    TABLE     �   CREATE TABLE public."UserSocketSessions" (
    id character varying(255) NOT NULL,
    "userId" integer,
    active boolean DEFAULT true NOT NULL,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);
 (   DROP TABLE public."UserSocketSessions";
       public         heap r       postgres    false            "           1259    36101    Users    TABLE     5  CREATE TABLE public."Users" (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    email character varying(255) NOT NULL,
    "passwordHash" character varying(255) NOT NULL,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL,
    profile character varying(255) DEFAULT 'admin'::character varying NOT NULL,
    "tokenVersion" integer DEFAULT 0 NOT NULL,
    "companyId" integer,
    super boolean DEFAULT false,
    online boolean DEFAULT false,
    "hideAdminUI" boolean DEFAULT false NOT NULL
);
    DROP TABLE public."Users";
       public         heap r       postgres    false            #           1259    36111    Users_id_seq    SEQUENCE     �   CREATE SEQUENCE public."Users_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public."Users_id_seq";
       public               postgres    false    290            h           0    0    Users_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public."Users_id_seq" OWNED BY public."Users".id;
          public               postgres    false    291            $           1259    36112    WhatsappQueues    TABLE     �   CREATE TABLE public."WhatsappQueues" (
    "whatsappId" integer NOT NULL,
    "queueId" integer NOT NULL,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);
 $   DROP TABLE public."WhatsappQueues";
       public         heap r       postgres    false            %           1259    36115 	   Whatsapps    TABLE     v  CREATE TABLE public."Whatsapps" (
    id integer NOT NULL,
    session text,
    qrcode text,
    status character varying(255),
    battery character varying(255),
    plugged boolean,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL,
    name character varying(255) NOT NULL,
    "isDefault" boolean DEFAULT false NOT NULL,
    retries integer DEFAULT 0 NOT NULL,
    "greetingMessage" text,
    "companyId" integer,
    "complationMessage" text,
    "outOfHoursMessage" text,
    "ratingMessage" text,
    token text,
    "farewellMessage" text,
    provider text DEFAULT 'stable'::text,
    channel character varying(255) DEFAULT 'whatsapp'::text NOT NULL,
    "facebookUserToken" text,
    "tokenMeta" text,
    "facebookPageUserId" text,
    "facebookUserId" text,
    "transferMessage" text,
    "restrictToQueues" boolean DEFAULT false,
    "transferToNewTicket" boolean DEFAULT false,
    "proxyConfig" jsonb,
    apikey character varying(255),
    number character varying(50),
    instanceid character varying(100),
    integration character varying(255),
    queueid integer
);
    DROP TABLE public."Whatsapps";
       public         heap r       postgres    false            &           1259    36126    Whatsapps_id_seq    SEQUENCE     �   CREATE SEQUENCE public."Whatsapps_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public."Whatsapps_id_seq";
       public               postgres    false    293            i           0    0    Whatsapps_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public."Whatsapps_id_seq" OWNED BY public."Whatsapps".id;
          public               postgres    false    294            '           1259    36127    status_id_seq    SEQUENCE     �   CREATE SEQUENCE public.status_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.status_id_seq;
       public               postgres    false    272            j           0    0    status_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.status_id_seq OWNED BY public."Status".id;
          public               postgres    false    295            (           1259    36128    tickets_id_seq    SEQUENCE     �   CREATE SEQUENCE public.tickets_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.tickets_id_seq;
       public               postgres    false    284            k           0    0    tickets_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.tickets_id_seq OWNED BY public."Tickets".id;
          public               postgres    false    296            U           2604    36129    Announcements id    DEFAULT     x   ALTER TABLE ONLY public."Announcements" ALTER COLUMN id SET DEFAULT nextval('public."Announcements_id_seq"'::regclass);
 A   ALTER TABLE public."Announcements" ALTER COLUMN id DROP DEFAULT;
       public               postgres    false    218    217            V           2604    36130 
   Baileys id    DEFAULT     l   ALTER TABLE ONLY public."Baileys" ALTER COLUMN id SET DEFAULT nextval('public."Baileys_id_seq"'::regclass);
 ;   ALTER TABLE public."Baileys" ALTER COLUMN id DROP DEFAULT;
       public               postgres    false    221    219            W           2604    36131    CampaignSettings id    DEFAULT     ~   ALTER TABLE ONLY public."CampaignSettings" ALTER COLUMN id SET DEFAULT nextval('public."CampaignSettings_id_seq"'::regclass);
 D   ALTER TABLE public."CampaignSettings" ALTER COLUMN id DROP DEFAULT;
       public               postgres    false    223    222            X           2604    36132    CampaignShipping id    DEFAULT     ~   ALTER TABLE ONLY public."CampaignShipping" ALTER COLUMN id SET DEFAULT nextval('public."CampaignShipping_id_seq"'::regclass);
 D   ALTER TABLE public."CampaignShipping" ALTER COLUMN id DROP DEFAULT;
       public               postgres    false    225    224            Y           2604    36133    Campaigns id    DEFAULT     p   ALTER TABLE ONLY public."Campaigns" ALTER COLUMN id SET DEFAULT nextval('public."Campaigns_id_seq"'::regclass);
 =   ALTER TABLE public."Campaigns" ALTER COLUMN id DROP DEFAULT;
       public               postgres    false    227    226            e           2604    36134    ChatMessages id    DEFAULT     v   ALTER TABLE ONLY public."ChatMessages" ALTER COLUMN id SET DEFAULT nextval('public."ChatMessages_id_seq"'::regclass);
 @   ALTER TABLE public."ChatMessages" ALTER COLUMN id DROP DEFAULT;
       public               postgres    false    229    228            g           2604    36135    ChatUsers id    DEFAULT     p   ALTER TABLE ONLY public."ChatUsers" ALTER COLUMN id SET DEFAULT nextval('public."ChatUsers_id_seq"'::regclass);
 =   ALTER TABLE public."ChatUsers" ALTER COLUMN id DROP DEFAULT;
       public               postgres    false    231    230            i           2604    36136    Chats id    DEFAULT     h   ALTER TABLE ONLY public."Chats" ALTER COLUMN id SET DEFAULT nextval('public."Chats_id_seq"'::regclass);
 9   ALTER TABLE public."Chats" ALTER COLUMN id DROP DEFAULT;
       public               postgres    false    233    232            l           2604    36137    Companies id    DEFAULT     p   ALTER TABLE ONLY public."Companies" ALTER COLUMN id SET DEFAULT nextval('public."Companies_id_seq"'::regclass);
 =   ALTER TABLE public."Companies" ALTER COLUMN id DROP DEFAULT;
       public               postgres    false    235    234            p           2604    36138    ContactCustomFields id    DEFAULT     �   ALTER TABLE ONLY public."ContactCustomFields" ALTER COLUMN id SET DEFAULT nextval('public."ContactCustomFields_id_seq"'::regclass);
 G   ALTER TABLE public."ContactCustomFields" ALTER COLUMN id DROP DEFAULT;
       public               postgres    false    237    236            q           2604    36139    ContactListItems id    DEFAULT     ~   ALTER TABLE ONLY public."ContactListItems" ALTER COLUMN id SET DEFAULT nextval('public."ContactListItems_id_seq"'::regclass);
 D   ALTER TABLE public."ContactListItems" ALTER COLUMN id DROP DEFAULT;
       public               postgres    false    239    238            s           2604    36140    ContactLists id    DEFAULT     v   ALTER TABLE ONLY public."ContactLists" ALTER COLUMN id SET DEFAULT nextval('public."ContactLists_id_seq"'::regclass);
 @   ALTER TABLE public."ContactLists" ALTER COLUMN id DROP DEFAULT;
       public               postgres    false    241    240            t           2604    36141    Contacts id    DEFAULT     n   ALTER TABLE ONLY public."Contacts" ALTER COLUMN id SET DEFAULT nextval('public."Contacts_id_seq"'::regclass);
 <   ALTER TABLE public."Contacts" ALTER COLUMN id DROP DEFAULT;
       public               postgres    false    243    242            z           2604    36142    Helps id    DEFAULT     h   ALTER TABLE ONLY public."Helps" ALTER COLUMN id SET DEFAULT nextval('public."Helps_id_seq"'::regclass);
 9   ALTER TABLE public."Helps" ALTER COLUMN id DROP DEFAULT;
       public               postgres    false    245    244            {           2604    36143    IntegrationSessions id    DEFAULT     �   ALTER TABLE ONLY public."IntegrationSessions" ALTER COLUMN id SET DEFAULT nextval('public."IntegrationSessions_id_seq"'::regclass);
 G   ALTER TABLE public."IntegrationSessions" ALTER COLUMN id DROP DEFAULT;
       public               postgres    false    247    246            |           2604    36144    Integrations id    DEFAULT     v   ALTER TABLE ONLY public."Integrations" ALTER COLUMN id SET DEFAULT nextval('public."Integrations_id_seq"'::regclass);
 @   ALTER TABLE public."Integrations" ALTER COLUMN id DROP DEFAULT;
       public               postgres    false    249    248            }           2604    36145    Invoices id    DEFAULT     n   ALTER TABLE ONLY public."Invoices" ALTER COLUMN id SET DEFAULT nextval('public."Invoices_id_seq"'::regclass);
 <   ALTER TABLE public."Invoices" ALTER COLUMN id DROP DEFAULT;
       public               postgres    false    251    250            ~           2604    36146 	   Kanban id    DEFAULT     j   ALTER TABLE ONLY public."Kanban" ALTER COLUMN id SET DEFAULT nextval('public."Kanban_id_seq"'::regclass);
 :   ALTER TABLE public."Kanban" ALTER COLUMN id DROP DEFAULT;
       public               postgres    false    253    252            �           2604    36147    OldMessages id    DEFAULT     t   ALTER TABLE ONLY public."OldMessages" ALTER COLUMN id SET DEFAULT nextval('public."OldMessages_id_seq"'::regclass);
 ?   ALTER TABLE public."OldMessages" ALTER COLUMN id DROP DEFAULT;
       public               postgres    false    257    256            �           2604    36148    Plans id    DEFAULT     h   ALTER TABLE ONLY public."Plans" ALTER COLUMN id SET DEFAULT nextval('public."Plans_id_seq"'::regclass);
 9   ALTER TABLE public."Plans" ALTER COLUMN id DROP DEFAULT;
       public               postgres    false    259    258            �           2604    36149    QueueOptions id    DEFAULT     v   ALTER TABLE ONLY public."QueueOptions" ALTER COLUMN id SET DEFAULT nextval('public."QueueOptions_id_seq"'::regclass);
 @   ALTER TABLE public."QueueOptions" ALTER COLUMN id DROP DEFAULT;
       public               postgres    false    261    260            �           2604    36150 	   Queues id    DEFAULT     j   ALTER TABLE ONLY public."Queues" ALTER COLUMN id SET DEFAULT nextval('public."Queues_id_seq"'::regclass);
 :   ALTER TABLE public."Queues" ALTER COLUMN id DROP DEFAULT;
       public               postgres    false    263    262            �           2604    36151    QuickMessages id    DEFAULT     x   ALTER TABLE ONLY public."QuickMessages" ALTER COLUMN id SET DEFAULT nextval('public."QuickMessages_id_seq"'::regclass);
 A   ALTER TABLE public."QuickMessages" ALTER COLUMN id DROP DEFAULT;
       public               postgres    false    265    264            �           2604    36152    Schedules id    DEFAULT     p   ALTER TABLE ONLY public."Schedules" ALTER COLUMN id SET DEFAULT nextval('public."Schedules_id_seq"'::regclass);
 =   ALTER TABLE public."Schedules" ALTER COLUMN id DROP DEFAULT;
       public               postgres    false    267    266            �           2604    36153    Settings id    DEFAULT     n   ALTER TABLE ONLY public."Settings" ALTER COLUMN id SET DEFAULT nextval('public."Settings_id_seq"'::regclass);
 <   ALTER TABLE public."Settings" ALTER COLUMN id DROP DEFAULT;
       public               postgres    false    271    270            �           2604    36154 	   Status id    DEFAULT     h   ALTER TABLE ONLY public."Status" ALTER COLUMN id SET DEFAULT nextval('public.status_id_seq'::regclass);
 :   ALTER TABLE public."Status" ALTER COLUMN id DROP DEFAULT;
       public               postgres    false    295    272            �           2604    36155    Subscriptions id    DEFAULT     x   ALTER TABLE ONLY public."Subscriptions" ALTER COLUMN id SET DEFAULT nextval('public."Subscriptions_id_seq"'::regclass);
 A   ALTER TABLE public."Subscriptions" ALTER COLUMN id DROP DEFAULT;
       public               postgres    false    274    273            �           2604    36156    Tags id    DEFAULT     f   ALTER TABLE ONLY public."Tags" ALTER COLUMN id SET DEFAULT nextval('public."Tags_id_seq"'::regclass);
 8   ALTER TABLE public."Tags" ALTER COLUMN id DROP DEFAULT;
       public               postgres    false    276    275            �           2604    36157    Tasks id    DEFAULT     h   ALTER TABLE ONLY public."Tasks" ALTER COLUMN id SET DEFAULT nextval('public."Tasks_id_seq"'::regclass);
 9   ALTER TABLE public."Tasks" ALTER COLUMN id DROP DEFAULT;
       public               postgres    false    278    277            �           2604    36158    TicketNotes id    DEFAULT     t   ALTER TABLE ONLY public."TicketNotes" ALTER COLUMN id SET DEFAULT nextval('public."TicketNotes_id_seq"'::regclass);
 ?   ALTER TABLE public."TicketNotes" ALTER COLUMN id DROP DEFAULT;
       public               postgres    false    280    279            �           2604    36159    TicketTraking id    DEFAULT     x   ALTER TABLE ONLY public."TicketTraking" ALTER COLUMN id SET DEFAULT nextval('public."TicketTraking_id_seq"'::regclass);
 A   ALTER TABLE public."TicketTraking" ALTER COLUMN id DROP DEFAULT;
       public               postgres    false    283    282            �           2604    36160 
   Tickets id    DEFAULT     j   ALTER TABLE ONLY public."Tickets" ALTER COLUMN id SET DEFAULT nextval('public.tickets_id_seq'::regclass);
 ;   ALTER TABLE public."Tickets" ALTER COLUMN id DROP DEFAULT;
       public               postgres    false    296    284            �           2604    36161    UserRatings id    DEFAULT     t   ALTER TABLE ONLY public."UserRatings" ALTER COLUMN id SET DEFAULT nextval('public."UserRatings_id_seq"'::regclass);
 ?   ALTER TABLE public."UserRatings" ALTER COLUMN id DROP DEFAULT;
       public               postgres    false    288    287            �           2604    36162    Users id    DEFAULT     h   ALTER TABLE ONLY public."Users" ALTER COLUMN id SET DEFAULT nextval('public."Users_id_seq"'::regclass);
 9   ALTER TABLE public."Users" ALTER COLUMN id DROP DEFAULT;
       public               postgres    false    291    290            �           2604    36163    Whatsapps id    DEFAULT     p   ALTER TABLE ONLY public."Whatsapps" ALTER COLUMN id SET DEFAULT nextval('public."Whatsapps_id_seq"'::regclass);
 =   ALTER TABLE public."Whatsapps" ALTER COLUMN id DROP DEFAULT;
       public               postgres    false    294    293            �          0    35837    Announcements 
   TABLE DATA           �   COPY public."Announcements" (id, priority, title, text, "mediaPath", "mediaName", "companyId", status, "createdAt", "updatedAt") FROM stdin;
    public               postgres    false    217   ��      �          0    35843    Baileys 
   TABLE DATA           `   COPY public."Baileys" (id, "whatsappId", contacts, chats, "createdAt", "updatedAt") FROM stdin;
    public               postgres    false    219   ��      �          0    35848    BaileysKeys 
   TABLE DATA           G   COPY public."BaileysKeys" ("whatsappId", type, key, value) FROM stdin;
    public               postgres    false    220   ��      �          0    35854    CampaignSettings 
   TABLE DATA           c   COPY public."CampaignSettings" (id, key, value, "companyId", "createdAt", "updatedAt") FROM stdin;
    public               postgres    false    222   �      �          0    35860    CampaignShipping 
   TABLE DATA           �   COPY public."CampaignShipping" (id, "jobId", number, message, "confirmationMessage", confirmation, "contactId", "campaignId", "confirmationRequestedAt", "confirmedAt", "deliveredAt", "createdAt", "updatedAt") FROM stdin;
    public               postgres    false    224   -�      �          0    35866 	   Campaigns 
   TABLE DATA           m  COPY public."Campaigns" (id, name, message1, message2, message3, message4, message5, "confirmationMessage1", "confirmationMessage2", "confirmationMessage3", "confirmationMessage4", "confirmationMessage5", status, confirmation, "mediaPath", "mediaName", "companyId", "contactListId", "whatsappId", "scheduledAt", "completedAt", "createdAt", "updatedAt") FROM stdin;
    public               postgres    false    226   J�      �          0    35883    ChatMessages 
   TABLE DATA           �   COPY public."ChatMessages" (id, "chatId", "senderId", message, "mediaPath", "mediaName", "createdAt", "updatedAt", "mediaType") FROM stdin;
    public               postgres    false    228   g�                 0    35890 	   ChatUsers 
   TABLE DATA           `   COPY public."ChatUsers" (id, "chatId", "userId", unreads, "createdAt", "updatedAt") FROM stdin;
    public               postgres    false    230   ��                0    35895    Chats 
   TABLE DATA           s   COPY public."Chats" (id, title, uuid, "ownerId", "lastMessage", "companyId", "createdAt", "updatedAt") FROM stdin;
    public               postgres    false    232   ��                0    35903 	   Companies 
   TABLE DATA           �   COPY public."Companies" (id, name, phone, email, "createdAt", "updatedAt", "planId", status, schedules, "dueDate", recurrence) FROM stdin;
    public               postgres    false    234   ��                0    35912    ContactCustomFields 
   TABLE DATA           g   COPY public."ContactCustomFields" (id, name, value, "contactId", "createdAt", "updatedAt") FROM stdin;
    public               postgres    false    236   O�                0    35918    ContactListItems 
   TABLE DATA           �   COPY public."ContactListItems" (id, name, number, email, "contactListId", "isWhatsappValid", "companyId", "createdAt", "updatedAt") FROM stdin;
    public               postgres    false    238   l�      
          0    35925    ContactLists 
   TABLE DATA           Y   COPY public."ContactLists" (id, name, "companyId", "createdAt", "updatedAt") FROM stdin;
    public               postgres    false    240   ��                0    35929    Contacts 
   TABLE DATA           �   COPY public."Contacts" (id, name, number, "profilePicUrl", "createdAt", "updatedAt", email, "isGroup", "companyId", channel, "disableBot", presence, "profileHiresPictureUrl") FROM stdin;
    public               postgres    false    242   ��                0    35940    Helps 
   TABLE DATA           `   COPY public."Helps" (id, title, description, video, link, "createdAt", "updatedAt") FROM stdin;
    public               postgres    false    244   ��                0    35946    IntegrationSessions 
   TABLE DATA           �   COPY public."IntegrationSessions" (id, token, "sessionId", data, "ticketId", "integrationId", "createdAt", "updatedAt") FROM stdin;
    public               postgres    false    246   ��                0    35952    Integrations 
   TABLE DATA           h   COPY public."Integrations" (id, driver, configuration, "queueId", "createdAt", "updatedAt") FROM stdin;
    public               postgres    false    248   ��                0    35958    Invoices 
   TABLE DATA           �   COPY public."Invoices" (id, detail, status, value, "createdAt", "updatedAt", "dueDate", "companyId", "txId", "payGw", "payGwData") FROM stdin;
    public               postgres    false    250   �                0    35964    Kanban 
   TABLE DATA           6   COPY public."Kanban" (id, "Name", "Icon") FROM stdin;
    public               postgres    false    252   r�                0    35970    Messages 
   TABLE DATA           $  COPY public."Messages" (id, body, ack, read, "mediaType", "mediaUrl", "ticketId", "createdAt", "updatedAt", "fromMe", "isDeleted", "contactId", "quotedMsgId", "companyId", "remoteJid", "dataJson", participant, "queueId", channel, "isEdited", "thumbnailUrl", "userId", "mimeType") FROM stdin;
    public               postgres    false    254   ��                0    35981    NotificamehubIdMappings 
   TABLE DATA           j   COPY public."NotificamehubIdMappings" (id, "messageId", "ticketId", "createdAt", "updatedAt") FROM stdin;
    public               postgres    false    255   ��                0    35986    OldMessages 
   TABLE DATA           n   COPY public."OldMessages" (id, "messageId", body, "createdAt", "updatedAt", "ticketId", "userId") FROM stdin;
    public               postgres    false    256   ��                0    35992    Plans 
   TABLE DATA           t   COPY public."Plans" (id, name, users, connections, queues, "createdAt", "updatedAt", value, "isPublic") FROM stdin;
    public               postgres    false    258   ��                0    36000    QueueOptions 
   TABLE DATA           �   COPY public."QueueOptions" (id, title, message, option, "queueId", "parentId", "createdAt", "updatedAt", "mediaName", "mediaPath", "forwardQueueId", "exitChatbot") FROM stdin;
    public               postgres    false    260   S�                 0    36009    Queues 
   TABLE DATA           �   COPY public."Queues" (id, name, color, "greetingMessage", "createdAt", "updatedAt", "companyId", schedules, "outOfHoursMessage", "mediaName", "mediaPath", "whatsappId", "isDefault", "Status") FROM stdin;
    public               postgres    false    262   p�      "          0    36019    QuickMessages 
   TABLE DATA           �   COPY public."QuickMessages" (id, shortcode, message, "companyId", "createdAt", "updatedAt", "userId", "mediaName", "mediaPath") FROM stdin;
    public               postgres    false    264   ��      $          0    36027 	   Schedules 
   TABLE DATA           �   COPY public."Schedules" (id, body, "sendAt", "sentAt", "contactId", "ticketId", "userId", "companyId", "createdAt", "updatedAt", "saveMessage", descricao, "Status") FROM stdin;
    public               postgres    false    266   ��      &          0    36034    SequelizeData 
   TABLE DATA           /   COPY public."SequelizeData" (name) FROM stdin;
    public               postgres    false    268   �      '          0    36037    SequelizeMeta 
   TABLE DATA           /   COPY public."SequelizeMeta" (name) FROM stdin;
    public               postgres    false    269   {�      (          0    36040    Settings 
   TABLE DATA           [   COPY public."Settings" (key, value, "createdAt", "updatedAt", "companyId", id) FROM stdin;
    public               postgres    false    270   ,�      *          0    36046    Status 
   TABLE DATA           7   COPY public."Status" (id, descricao, crud) FROM stdin;
    public               postgres    false    272   u�      +          0    36049    Subscriptions 
   TABLE DATA           �   COPY public."Subscriptions" (id, "isActive", "expiresAt", "userPriceCents", "whatsPriceCents", "lastInvoiceUrl", "lastPlanChange", "companyId", "providerSubscriptionId", "createdAt", "updatedAt") FROM stdin;
    public               postgres    false    273   ��      -          0    36056    Tags 
   TABLE DATA           q   COPY public."Tags" (id, name, color, "companyId", "createdAt", "updatedAt", kanban, teste, "Status") FROM stdin;
    public               postgres    false    275   ��      /          0    36062    Tasks 
   TABLE DATA           �   COPY public."Tasks" (id, name, "companyId", "createdAt", "updatedAt", "userId", "mediaName", "mediaPath", "Status") FROM stdin;
    public               postgres    false    277   ��      1          0    36070    TicketNotes 
   TABLE DATA           n   COPY public."TicketNotes" (id, note, "userId", "contactId", "ticketId", "createdAt", "updatedAt") FROM stdin;
    public               postgres    false    279   �      3          0    36074 
   TicketTags 
   TABLE DATA           U   COPY public."TicketTags" ("ticketId", "tagId", "createdAt", "updatedAt") FROM stdin;
    public               postgres    false    281   6�      4          0    36077    TicketTraking 
   TABLE DATA           �   COPY public."TicketTraking" (id, "ticketId", "companyId", "whatsappId", "userId", "createdAt", "updatedAt", "queuedAt", "startedAt", "finishedAt", "ratingAt", rated, expired) FROM stdin;
    public               postgres    false    282   S�      6          0    36083    Tickets 
   TABLE DATA           �   COPY public."Tickets" (id, status, "lastMessage", "contactId", "userId", "createdAt", "updatedAt", "whatsappId", "isGroup", "unreadMessages", "queueId", "companyId", uuid, chatbot, "queueOptionId", channel) FROM stdin;
    public               postgres    false    284   p�      8          0    36089 
   UserQueues 
   TABLE DATA           U   COPY public."UserQueues" ("userId", "queueId", "createdAt", "updatedAt") FROM stdin;
    public               postgres    false    286   ��      9          0    36092    UserRatings 
   TABLE DATA           n   COPY public."UserRatings" (id, "ticketId", "companyId", "userId", rate, "createdAt", "updatedAt") FROM stdin;
    public               postgres    false    287   ��      ;          0    36097    UserSocketSessions 
   TABLE DATA           ^   COPY public."UserSocketSessions" (id, "userId", active, "createdAt", "updatedAt") FROM stdin;
    public               postgres    false    289   ��      <          0    36101    Users 
   TABLE DATA           �   COPY public."Users" (id, name, email, "passwordHash", "createdAt", "updatedAt", profile, "tokenVersion", "companyId", super, online, "hideAdminUI") FROM stdin;
    public               postgres    false    290   S�      >          0    36112    WhatsappQueues 
   TABLE DATA           ]   COPY public."WhatsappQueues" ("whatsappId", "queueId", "createdAt", "updatedAt") FROM stdin;
    public               postgres    false    292   ��      ?          0    36115 	   Whatsapps 
   TABLE DATA           �  COPY public."Whatsapps" (id, session, qrcode, status, battery, plugged, "createdAt", "updatedAt", name, "isDefault", retries, "greetingMessage", "companyId", "complationMessage", "outOfHoursMessage", "ratingMessage", token, "farewellMessage", provider, channel, "facebookUserToken", "tokenMeta", "facebookPageUserId", "facebookUserId", "transferMessage", "restrictToQueues", "transferToNewTicket", "proxyConfig", apikey, number, instanceid, integration, queueid) FROM stdin;
    public               postgres    false    293   �      l           0    0    Announcements_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public."Announcements_id_seq"', 1, false);
          public               postgres    false    218            m           0    0    Baileys_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public."Baileys_id_seq"', 1, false);
          public               postgres    false    221            n           0    0    CampaignSettings_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public."CampaignSettings_id_seq"', 1, false);
          public               postgres    false    223            o           0    0    CampaignShipping_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public."CampaignShipping_id_seq"', 1, false);
          public               postgres    false    225            p           0    0    Campaigns_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public."Campaigns_id_seq"', 1, false);
          public               postgres    false    227            q           0    0    ChatMessages_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public."ChatMessages_id_seq"', 1, false);
          public               postgres    false    229            r           0    0    ChatUsers_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public."ChatUsers_id_seq"', 1, false);
          public               postgres    false    231            s           0    0    Chats_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public."Chats_id_seq"', 1, false);
          public               postgres    false    233            t           0    0    Companies_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public."Companies_id_seq"', 1, false);
          public               postgres    false    235            u           0    0    ContactCustomFields_id_seq    SEQUENCE SET     K   SELECT pg_catalog.setval('public."ContactCustomFields_id_seq"', 1, false);
          public               postgres    false    237            v           0    0    ContactListItems_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public."ContactListItems_id_seq"', 1, false);
          public               postgres    false    239            w           0    0    ContactLists_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public."ContactLists_id_seq"', 1, false);
          public               postgres    false    241            x           0    0    Contacts_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public."Contacts_id_seq"', 1, false);
          public               postgres    false    243            y           0    0    Helps_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public."Helps_id_seq"', 1, false);
          public               postgres    false    245            z           0    0    IntegrationSessions_id_seq    SEQUENCE SET     K   SELECT pg_catalog.setval('public."IntegrationSessions_id_seq"', 1, false);
          public               postgres    false    247            {           0    0    Integrations_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public."Integrations_id_seq"', 1, false);
          public               postgres    false    249            |           0    0    Invoices_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public."Invoices_id_seq"', 1, false);
          public               postgres    false    251            }           0    0    Kanban_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public."Kanban_id_seq"', 1, false);
          public               postgres    false    253            ~           0    0    OldMessages_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public."OldMessages_id_seq"', 1, false);
          public               postgres    false    257                       0    0    Plans_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public."Plans_id_seq"', 1, false);
          public               postgres    false    259            �           0    0    QueueOptions_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public."QueueOptions_id_seq"', 1, false);
          public               postgres    false    261            �           0    0    Queues_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public."Queues_id_seq"', 1, false);
          public               postgres    false    263            �           0    0    QuickMessages_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public."QuickMessages_id_seq"', 1, false);
          public               postgres    false    265            �           0    0    Schedules_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public."Schedules_id_seq"', 1, false);
          public               postgres    false    267            �           0    0    Settings_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public."Settings_id_seq"', 28, true);
          public               postgres    false    271            �           0    0    Subscriptions_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public."Subscriptions_id_seq"', 1, false);
          public               postgres    false    274            �           0    0    Tags_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public."Tags_id_seq"', 1, false);
          public               postgres    false    276            �           0    0    Tasks_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public."Tasks_id_seq"', 1, false);
          public               postgres    false    278            �           0    0    TicketNotes_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public."TicketNotes_id_seq"', 1, false);
          public               postgres    false    280            �           0    0    TicketTraking_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public."TicketTraking_id_seq"', 1, false);
          public               postgres    false    283            �           0    0    Tickets_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public."Tickets_id_seq"', 1, false);
          public               postgres    false    285            �           0    0    UserRatings_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public."UserRatings_id_seq"', 1, false);
          public               postgres    false    288            �           0    0    Users_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public."Users_id_seq"', 1, false);
          public               postgres    false    291            �           0    0    Whatsapps_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public."Whatsapps_id_seq"', 1, false);
          public               postgres    false    294            �           0    0    status_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.status_id_seq', 1, false);
          public               postgres    false    295            �           0    0    tickets_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.tickets_id_seq', 1, true);
          public               postgres    false    296            �           2606    36262     Announcements Announcements_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public."Announcements"
    ADD CONSTRAINT "Announcements_pkey" PRIMARY KEY (id);
 N   ALTER TABLE ONLY public."Announcements" DROP CONSTRAINT "Announcements_pkey";
       public                 postgres    false    217            �           2606    36264    BaileysKeys BaileysKeys_pkey 
   CONSTRAINT     s   ALTER TABLE ONLY public."BaileysKeys"
    ADD CONSTRAINT "BaileysKeys_pkey" PRIMARY KEY ("whatsappId", type, key);
 J   ALTER TABLE ONLY public."BaileysKeys" DROP CONSTRAINT "BaileysKeys_pkey";
       public                 postgres    false    220    220    220            �           2606    36266    Baileys Baileys_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public."Baileys"
    ADD CONSTRAINT "Baileys_pkey" PRIMARY KEY (id, "whatsappId");
 B   ALTER TABLE ONLY public."Baileys" DROP CONSTRAINT "Baileys_pkey";
       public                 postgres    false    219    219            �           2606    36268 &   CampaignSettings CampaignSettings_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY public."CampaignSettings"
    ADD CONSTRAINT "CampaignSettings_pkey" PRIMARY KEY (id);
 T   ALTER TABLE ONLY public."CampaignSettings" DROP CONSTRAINT "CampaignSettings_pkey";
       public                 postgres    false    222            �           2606    36270 &   CampaignShipping CampaignShipping_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY public."CampaignShipping"
    ADD CONSTRAINT "CampaignShipping_pkey" PRIMARY KEY (id);
 T   ALTER TABLE ONLY public."CampaignShipping" DROP CONSTRAINT "CampaignShipping_pkey";
       public                 postgres    false    224            �           2606    36272    Campaigns Campaigns_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public."Campaigns"
    ADD CONSTRAINT "Campaigns_pkey" PRIMARY KEY (id);
 F   ALTER TABLE ONLY public."Campaigns" DROP CONSTRAINT "Campaigns_pkey";
       public                 postgres    false    226            �           2606    36274    ChatMessages ChatMessages_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public."ChatMessages"
    ADD CONSTRAINT "ChatMessages_pkey" PRIMARY KEY (id);
 L   ALTER TABLE ONLY public."ChatMessages" DROP CONSTRAINT "ChatMessages_pkey";
       public                 postgres    false    228            �           2606    36276    ChatUsers ChatUsers_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public."ChatUsers"
    ADD CONSTRAINT "ChatUsers_pkey" PRIMARY KEY (id);
 F   ALTER TABLE ONLY public."ChatUsers" DROP CONSTRAINT "ChatUsers_pkey";
       public                 postgres    false    230            �           2606    36278    Chats Chats_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public."Chats"
    ADD CONSTRAINT "Chats_pkey" PRIMARY KEY (id);
 >   ALTER TABLE ONLY public."Chats" DROP CONSTRAINT "Chats_pkey";
       public                 postgres    false    232            �           2606    36280    Companies Companies_name_key 
   CONSTRAINT     [   ALTER TABLE ONLY public."Companies"
    ADD CONSTRAINT "Companies_name_key" UNIQUE (name);
 J   ALTER TABLE ONLY public."Companies" DROP CONSTRAINT "Companies_name_key";
       public                 postgres    false    234            �           2606    36282    Companies Companies_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public."Companies"
    ADD CONSTRAINT "Companies_pkey" PRIMARY KEY (id);
 F   ALTER TABLE ONLY public."Companies" DROP CONSTRAINT "Companies_pkey";
       public                 postgres    false    234            �           2606    36284 ,   ContactCustomFields ContactCustomFields_pkey 
   CONSTRAINT     n   ALTER TABLE ONLY public."ContactCustomFields"
    ADD CONSTRAINT "ContactCustomFields_pkey" PRIMARY KEY (id);
 Z   ALTER TABLE ONLY public."ContactCustomFields" DROP CONSTRAINT "ContactCustomFields_pkey";
       public                 postgres    false    236            �           2606    36286 &   ContactListItems ContactListItems_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY public."ContactListItems"
    ADD CONSTRAINT "ContactListItems_pkey" PRIMARY KEY (id);
 T   ALTER TABLE ONLY public."ContactListItems" DROP CONSTRAINT "ContactListItems_pkey";
       public                 postgres    false    238            �           2606    36288    ContactLists ContactLists_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public."ContactLists"
    ADD CONSTRAINT "ContactLists_pkey" PRIMARY KEY (id);
 L   ALTER TABLE ONLY public."ContactLists" DROP CONSTRAINT "ContactLists_pkey";
       public                 postgres    false    240            �           2606    36290    Contacts Contacts_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public."Contacts"
    ADD CONSTRAINT "Contacts_pkey" PRIMARY KEY (id);
 D   ALTER TABLE ONLY public."Contacts" DROP CONSTRAINT "Contacts_pkey";
       public                 postgres    false    242            �           2606    36292    Helps Helps_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public."Helps"
    ADD CONSTRAINT "Helps_pkey" PRIMARY KEY (id);
 >   ALTER TABLE ONLY public."Helps" DROP CONSTRAINT "Helps_pkey";
       public                 postgres    false    244            �           2606    36294 ,   IntegrationSessions IntegrationSessions_pkey 
   CONSTRAINT     n   ALTER TABLE ONLY public."IntegrationSessions"
    ADD CONSTRAINT "IntegrationSessions_pkey" PRIMARY KEY (id);
 Z   ALTER TABLE ONLY public."IntegrationSessions" DROP CONSTRAINT "IntegrationSessions_pkey";
       public                 postgres    false    246            �           2606    36296 1   IntegrationSessions IntegrationSessions_token_key 
   CONSTRAINT     q   ALTER TABLE ONLY public."IntegrationSessions"
    ADD CONSTRAINT "IntegrationSessions_token_key" UNIQUE (token);
 _   ALTER TABLE ONLY public."IntegrationSessions" DROP CONSTRAINT "IntegrationSessions_token_key";
       public                 postgres    false    246            �           2606    36298    Integrations Integrations_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public."Integrations"
    ADD CONSTRAINT "Integrations_pkey" PRIMARY KEY (id);
 L   ALTER TABLE ONLY public."Integrations" DROP CONSTRAINT "Integrations_pkey";
       public                 postgres    false    248            �           2606    36300    Invoices Invoices_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public."Invoices"
    ADD CONSTRAINT "Invoices_pkey" PRIMARY KEY (id);
 D   ALTER TABLE ONLY public."Invoices" DROP CONSTRAINT "Invoices_pkey";
       public                 postgres    false    250            �           2606    36302    Messages Messges_id_ticketId_pk 
   CONSTRAINT     m   ALTER TABLE ONLY public."Messages"
    ADD CONSTRAINT "Messges_id_ticketId_pk" PRIMARY KEY (id, "ticketId");
 M   ALTER TABLE ONLY public."Messages" DROP CONSTRAINT "Messges_id_ticketId_pk";
       public                 postgres    false    254    254            �           2606    36304 I   NotificamehubIdMappings NotificamehubIdMappings_messageId_ticketId_unique 
   CONSTRAINT     �   ALTER TABLE ONLY public."NotificamehubIdMappings"
    ADD CONSTRAINT "NotificamehubIdMappings_messageId_ticketId_unique" UNIQUE ("messageId", "ticketId");
 w   ALTER TABLE ONLY public."NotificamehubIdMappings" DROP CONSTRAINT "NotificamehubIdMappings_messageId_ticketId_unique";
       public                 postgres    false    255    255            �           2606    36306 4   NotificamehubIdMappings NotificamehubIdMappings_pkey 
   CONSTRAINT     v   ALTER TABLE ONLY public."NotificamehubIdMappings"
    ADD CONSTRAINT "NotificamehubIdMappings_pkey" PRIMARY KEY (id);
 b   ALTER TABLE ONLY public."NotificamehubIdMappings" DROP CONSTRAINT "NotificamehubIdMappings_pkey";
       public                 postgres    false    255            �           2606    36308    OldMessages OldMessages_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public."OldMessages"
    ADD CONSTRAINT "OldMessages_pkey" PRIMARY KEY (id);
 J   ALTER TABLE ONLY public."OldMessages" DROP CONSTRAINT "OldMessages_pkey";
       public                 postgres    false    256            �           2606    36310    Plans Plans_name_key 
   CONSTRAINT     S   ALTER TABLE ONLY public."Plans"
    ADD CONSTRAINT "Plans_name_key" UNIQUE (name);
 B   ALTER TABLE ONLY public."Plans" DROP CONSTRAINT "Plans_name_key";
       public                 postgres    false    258            �           2606    36312    Plans Plans_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public."Plans"
    ADD CONSTRAINT "Plans_pkey" PRIMARY KEY (id);
 >   ALTER TABLE ONLY public."Plans" DROP CONSTRAINT "Plans_pkey";
       public                 postgres    false    258            �           2606    36314    QueueOptions QueueOptions_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public."QueueOptions"
    ADD CONSTRAINT "QueueOptions_pkey" PRIMARY KEY (id);
 L   ALTER TABLE ONLY public."QueueOptions" DROP CONSTRAINT "QueueOptions_pkey";
       public                 postgres    false    260            �           2606    36316    Queues Queues_color_key 
   CONSTRAINT     d   ALTER TABLE ONLY public."Queues"
    ADD CONSTRAINT "Queues_color_key" UNIQUE (color, "companyId");
 E   ALTER TABLE ONLY public."Queues" DROP CONSTRAINT "Queues_color_key";
       public                 postgres    false    262    262            �           2606    36318    Queues Queues_name_key 
   CONSTRAINT     b   ALTER TABLE ONLY public."Queues"
    ADD CONSTRAINT "Queues_name_key" UNIQUE (name, "companyId");
 D   ALTER TABLE ONLY public."Queues" DROP CONSTRAINT "Queues_name_key";
       public                 postgres    false    262    262            �           2606    36320    Queues Queues_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public."Queues"
    ADD CONSTRAINT "Queues_pkey" PRIMARY KEY (id);
 @   ALTER TABLE ONLY public."Queues" DROP CONSTRAINT "Queues_pkey";
       public                 postgres    false    262                       2606    36322     QuickMessages QuickMessages_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public."QuickMessages"
    ADD CONSTRAINT "QuickMessages_pkey" PRIMARY KEY (id);
 N   ALTER TABLE ONLY public."QuickMessages" DROP CONSTRAINT "QuickMessages_pkey";
       public                 postgres    false    264                       2606    36324    Schedules Schedules_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public."Schedules"
    ADD CONSTRAINT "Schedules_pkey" PRIMARY KEY (id);
 F   ALTER TABLE ONLY public."Schedules" DROP CONSTRAINT "Schedules_pkey";
       public                 postgres    false    266                       2606    36326     SequelizeData SequelizeData_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public."SequelizeData"
    ADD CONSTRAINT "SequelizeData_pkey" PRIMARY KEY (name);
 N   ALTER TABLE ONLY public."SequelizeData" DROP CONSTRAINT "SequelizeData_pkey";
       public                 postgres    false    268                       2606    36328     SequelizeMeta SequelizeMeta_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public."SequelizeMeta"
    ADD CONSTRAINT "SequelizeMeta_pkey" PRIMARY KEY (name);
 N   ALTER TABLE ONLY public."SequelizeMeta" DROP CONSTRAINT "SequelizeMeta_pkey";
       public                 postgres    false    269                       2606    36330     Subscriptions Subscriptions_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public."Subscriptions"
    ADD CONSTRAINT "Subscriptions_pkey" PRIMARY KEY (id);
 N   ALTER TABLE ONLY public."Subscriptions" DROP CONSTRAINT "Subscriptions_pkey";
       public                 postgres    false    273                       2606    36332    Tags Tags_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public."Tags"
    ADD CONSTRAINT "Tags_pkey" PRIMARY KEY (id);
 <   ALTER TABLE ONLY public."Tags" DROP CONSTRAINT "Tags_pkey";
       public                 postgres    false    275                       2606    36334    Tasks Tasks_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public."Tasks"
    ADD CONSTRAINT "Tasks_pkey" PRIMARY KEY (id);
 >   ALTER TABLE ONLY public."Tasks" DROP CONSTRAINT "Tasks_pkey";
       public                 postgres    false    277                       2606    36336    TicketNotes TicketNotes_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public."TicketNotes"
    ADD CONSTRAINT "TicketNotes_pkey" PRIMARY KEY (id);
 J   ALTER TABLE ONLY public."TicketNotes" DROP CONSTRAINT "TicketNotes_pkey";
       public                 postgres    false    279                       2606    36338     TicketTraking TicketTraking_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public."TicketTraking"
    ADD CONSTRAINT "TicketTraking_pkey" PRIMARY KEY (id);
 N   ALTER TABLE ONLY public."TicketTraking" DROP CONSTRAINT "TicketTraking_pkey";
       public                 postgres    false    282                       2606    36340    UserQueues UserQueues_pkey 
   CONSTRAINT     m   ALTER TABLE ONLY public."UserQueues"
    ADD CONSTRAINT "UserQueues_pkey" PRIMARY KEY ("userId", "queueId");
 H   ALTER TABLE ONLY public."UserQueues" DROP CONSTRAINT "UserQueues_pkey";
       public                 postgres    false    286    286                       2606    36342    UserRatings UserRatings_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public."UserRatings"
    ADD CONSTRAINT "UserRatings_pkey" PRIMARY KEY (id);
 J   ALTER TABLE ONLY public."UserRatings" DROP CONSTRAINT "UserRatings_pkey";
       public                 postgres    false    287                       2606    36344 *   UserSocketSessions UserSocketSessions_pkey 
   CONSTRAINT     l   ALTER TABLE ONLY public."UserSocketSessions"
    ADD CONSTRAINT "UserSocketSessions_pkey" PRIMARY KEY (id);
 X   ALTER TABLE ONLY public."UserSocketSessions" DROP CONSTRAINT "UserSocketSessions_pkey";
       public                 postgres    false    289                        2606    36346    Users Users_email_key 
   CONSTRAINT     U   ALTER TABLE ONLY public."Users"
    ADD CONSTRAINT "Users_email_key" UNIQUE (email);
 C   ALTER TABLE ONLY public."Users" DROP CONSTRAINT "Users_email_key";
       public                 postgres    false    290            "           2606    36348    Users Users_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public."Users"
    ADD CONSTRAINT "Users_pkey" PRIMARY KEY (id);
 >   ALTER TABLE ONLY public."Users" DROP CONSTRAINT "Users_pkey";
       public                 postgres    false    290            %           2606    36350 "   WhatsappQueues WhatsappQueues_pkey 
   CONSTRAINT     y   ALTER TABLE ONLY public."WhatsappQueues"
    ADD CONSTRAINT "WhatsappQueues_pkey" PRIMARY KEY ("whatsappId", "queueId");
 P   ALTER TABLE ONLY public."WhatsappQueues" DROP CONSTRAINT "WhatsappQueues_pkey";
       public                 postgres    false    292    292            '           2606    36352    Whatsapps Whatsapps_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public."Whatsapps"
    ADD CONSTRAINT "Whatsapps_pkey" PRIMARY KEY (id);
 F   ALTER TABLE ONLY public."Whatsapps" DROP CONSTRAINT "Whatsapps_pkey";
       public                 postgres    false    293            �           2606    36354    Kanban _kanban__pk 
   CONSTRAINT     R   ALTER TABLE ONLY public."Kanban"
    ADD CONSTRAINT _kanban__pk PRIMARY KEY (id);
 >   ALTER TABLE ONLY public."Kanban" DROP CONSTRAINT _kanban__pk;
       public                 postgres    false    252            )           2606    36356 !   Whatsapps company_name_constraint 
   CONSTRAINT     k   ALTER TABLE ONLY public."Whatsapps"
    ADD CONSTRAINT company_name_constraint UNIQUE ("companyId", name);
 M   ALTER TABLE ONLY public."Whatsapps" DROP CONSTRAINT company_name_constraint;
       public                 postgres    false    293    293            �           2606    36358     Contacts number_companyid_unique 
   CONSTRAINT     l   ALTER TABLE ONLY public."Contacts"
    ADD CONSTRAINT number_companyid_unique UNIQUE (number, "companyId");
 L   ALTER TABLE ONLY public."Contacts" DROP CONSTRAINT number_companyid_unique;
       public                 postgres    false    242    242            
           2606    36360    Status status_pk 
   CONSTRAINT     P   ALTER TABLE ONLY public."Status"
    ADD CONSTRAINT status_pk PRIMARY KEY (id);
 <   ALTER TABLE ONLY public."Status" DROP CONSTRAINT status_pk;
       public                 postgres    false    272                       2606    36362    Tickets tickets_unique 
   CONSTRAINT     Q   ALTER TABLE ONLY public."Tickets"
    ADD CONSTRAINT tickets_unique UNIQUE (id);
 B   ALTER TABLE ONLY public."Tickets" DROP CONSTRAINT tickets_unique;
       public                 postgres    false    284            �           1259    36363 #   idx_baileyskeys_whatsappid_type_key    INDEX     p   CREATE INDEX idx_baileyskeys_whatsappid_type_key ON public."BaileysKeys" USING btree ("whatsappId", type, key);
 7   DROP INDEX public.idx_baileyskeys_whatsappid_type_key;
       public                 postgres    false    220    220    220            �           1259    36364    idx_cont_company_id    INDEX     Q   CREATE INDEX idx_cont_company_id ON public."Contacts" USING btree ("companyId");
 '   DROP INDEX public.idx_cont_company_id;
       public                 postgres    false    242            �           1259    36365    idx_cpsh_campaign_id    INDEX     [   CREATE INDEX idx_cpsh_campaign_id ON public."CampaignShipping" USING btree ("campaignId");
 (   DROP INDEX public.idx_cpsh_campaign_id;
       public                 postgres    false    224            �           1259    36366    idx_ctli_contact_list_id    INDEX     b   CREATE INDEX idx_ctli_contact_list_id ON public."ContactListItems" USING btree ("contactListId");
 ,   DROP INDEX public.idx_ctli_contact_list_id;
       public                 postgres    false    238            #           1259    36367    idx_lower_email    INDEX     S   CREATE INDEX idx_lower_email ON public."Users" USING btree (lower((email)::text));
 #   DROP INDEX public.idx_lower_email;
       public                 postgres    false    290    290            �           1259    36368     idx_messages_companyid_contactid    INDEX     k   CREATE INDEX idx_messages_companyid_contactid ON public."Messages" USING btree ("companyId", "contactId");
 4   DROP INDEX public.idx_messages_companyid_contactid;
       public                 postgres    false    254    254            �           1259    36369    idx_messages_id_fromme    INDEX     U   CREATE INDEX idx_messages_id_fromme ON public."Messages" USING btree (id, "fromMe");
 *   DROP INDEX public.idx_messages_id_fromme;
       public                 postgres    false    254    254            �           1259    36370    idx_messages_ticketid_companyid    INDEX     i   CREATE INDEX idx_messages_ticketid_companyid ON public."Messages" USING btree ("ticketId", "companyId");
 3   DROP INDEX public.idx_messages_ticketid_companyid;
       public                 postgres    false    254    254            �           1259    36371 !   idx_messages_ticketid_quotedmsgid    INDEX     m   CREATE INDEX idx_messages_ticketid_quotedmsgid ON public."Messages" USING btree ("ticketId", "quotedMsgId");
 5   DROP INDEX public.idx_messages_ticketid_quotedmsgid;
       public                 postgres    false    254    254            �           1259    36372    idx_ms_company_id_ticket_id    INDEX     e   CREATE INDEX idx_ms_company_id_ticket_id ON public."Messages" USING btree ("companyId", "ticketId");
 /   DROP INDEX public.idx_ms_company_id_ticket_id;
       public                 postgres    false    254    254                       1259    36373    idx_sched_company_id    INDEX     S   CREATE INDEX idx_sched_company_id ON public."Schedules" USING btree ("companyId");
 (   DROP INDEX public.idx_sched_company_id;
       public                 postgres    false    266                       1259    36374    idx_tg_company_id    INDEX     K   CREATE INDEX idx_tg_company_id ON public."Tags" USING btree ("companyId");
 %   DROP INDEX public.idx_tg_company_id;
       public                 postgres    false    275                       1259    36375    idx_tickettraking_ticketid    INDEX     \   CREATE INDEX idx_tickettraking_ticketid ON public."TicketTraking" USING btree ("ticketId");
 .   DROP INDEX public.idx_tickettraking_ticketid;
       public                 postgres    false    282            �           1259    36376    idx_txid    INDEX     A   CREATE INDEX idx_txid ON public."Invoices" USING btree ("txId");
    DROP INDEX public.idx_txid;
       public                 postgres    false    250            *           2606    36377 *   Announcements Announcements_companyId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."Announcements"
    ADD CONSTRAINT "Announcements_companyId_fkey" FOREIGN KEY ("companyId") REFERENCES public."Companies"(id) ON UPDATE CASCADE ON DELETE CASCADE;
 X   ALTER TABLE ONLY public."Announcements" DROP CONSTRAINT "Announcements_companyId_fkey";
       public               postgres    false    234    217    5069            +           2606    36382 '   BaileysKeys BaileysKeys_whatsappId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."BaileysKeys"
    ADD CONSTRAINT "BaileysKeys_whatsappId_fkey" FOREIGN KEY ("whatsappId") REFERENCES public."Whatsapps"(id) ON UPDATE CASCADE ON DELETE CASCADE;
 U   ALTER TABLE ONLY public."BaileysKeys" DROP CONSTRAINT "BaileysKeys_whatsappId_fkey";
       public               postgres    false    293    5159    220            ,           2606    36387 0   CampaignSettings CampaignSettings_companyId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."CampaignSettings"
    ADD CONSTRAINT "CampaignSettings_companyId_fkey" FOREIGN KEY ("companyId") REFERENCES public."Companies"(id) ON UPDATE CASCADE ON DELETE CASCADE;
 ^   ALTER TABLE ONLY public."CampaignSettings" DROP CONSTRAINT "CampaignSettings_companyId_fkey";
       public               postgres    false    234    5069    222            -           2606    36392 1   CampaignShipping CampaignShipping_campaignId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."CampaignShipping"
    ADD CONSTRAINT "CampaignShipping_campaignId_fkey" FOREIGN KEY ("campaignId") REFERENCES public."Campaigns"(id) ON UPDATE CASCADE ON DELETE CASCADE;
 _   ALTER TABLE ONLY public."CampaignShipping" DROP CONSTRAINT "CampaignShipping_campaignId_fkey";
       public               postgres    false    226    224    5059            .           2606    36397 0   CampaignShipping CampaignShipping_contactId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."CampaignShipping"
    ADD CONSTRAINT "CampaignShipping_contactId_fkey" FOREIGN KEY ("contactId") REFERENCES public."ContactListItems"(id) ON UPDATE SET NULL ON DELETE SET NULL;
 ^   ALTER TABLE ONLY public."CampaignShipping" DROP CONSTRAINT "CampaignShipping_contactId_fkey";
       public               postgres    false    238    224    5073            /           2606    36402 "   Campaigns Campaigns_companyId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."Campaigns"
    ADD CONSTRAINT "Campaigns_companyId_fkey" FOREIGN KEY ("companyId") REFERENCES public."Companies"(id) ON UPDATE CASCADE ON DELETE CASCADE;
 P   ALTER TABLE ONLY public."Campaigns" DROP CONSTRAINT "Campaigns_companyId_fkey";
       public               postgres    false    5069    234    226            0           2606    36407 &   Campaigns Campaigns_contactListId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."Campaigns"
    ADD CONSTRAINT "Campaigns_contactListId_fkey" FOREIGN KEY ("contactListId") REFERENCES public."ContactLists"(id) ON UPDATE SET NULL ON DELETE SET NULL;
 T   ALTER TABLE ONLY public."Campaigns" DROP CONSTRAINT "Campaigns_contactListId_fkey";
       public               postgres    false    226    5076    240            1           2606    36412 #   Campaigns Campaigns_whatsappId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."Campaigns"
    ADD CONSTRAINT "Campaigns_whatsappId_fkey" FOREIGN KEY ("whatsappId") REFERENCES public."Whatsapps"(id) ON UPDATE SET NULL ON DELETE SET NULL;
 Q   ALTER TABLE ONLY public."Campaigns" DROP CONSTRAINT "Campaigns_whatsappId_fkey";
       public               postgres    false    226    293    5159            2           2606    36417 %   ChatMessages ChatMessages_chatId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."ChatMessages"
    ADD CONSTRAINT "ChatMessages_chatId_fkey" FOREIGN KEY ("chatId") REFERENCES public."Chats"(id) ON UPDATE CASCADE ON DELETE CASCADE;
 S   ALTER TABLE ONLY public."ChatMessages" DROP CONSTRAINT "ChatMessages_chatId_fkey";
       public               postgres    false    228    232    5065            3           2606    36422 '   ChatMessages ChatMessages_senderId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."ChatMessages"
    ADD CONSTRAINT "ChatMessages_senderId_fkey" FOREIGN KEY ("senderId") REFERENCES public."Users"(id) ON UPDATE CASCADE ON DELETE CASCADE;
 U   ALTER TABLE ONLY public."ChatMessages" DROP CONSTRAINT "ChatMessages_senderId_fkey";
       public               postgres    false    228    290    5154            4           2606    36427    ChatUsers ChatUsers_chatId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."ChatUsers"
    ADD CONSTRAINT "ChatUsers_chatId_fkey" FOREIGN KEY ("chatId") REFERENCES public."Chats"(id) ON UPDATE CASCADE ON DELETE CASCADE;
 M   ALTER TABLE ONLY public."ChatUsers" DROP CONSTRAINT "ChatUsers_chatId_fkey";
       public               postgres    false    230    5065    232            5           2606    36432    ChatUsers ChatUsers_userId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."ChatUsers"
    ADD CONSTRAINT "ChatUsers_userId_fkey" FOREIGN KEY ("userId") REFERENCES public."Users"(id) ON UPDATE CASCADE ON DELETE CASCADE;
 M   ALTER TABLE ONLY public."ChatUsers" DROP CONSTRAINT "ChatUsers_userId_fkey";
       public               postgres    false    230    5154    290            6           2606    36437    Chats Chats_companyId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."Chats"
    ADD CONSTRAINT "Chats_companyId_fkey" FOREIGN KEY ("companyId") REFERENCES public."Companies"(id) ON UPDATE CASCADE ON DELETE CASCADE;
 H   ALTER TABLE ONLY public."Chats" DROP CONSTRAINT "Chats_companyId_fkey";
       public               postgres    false    232    5069    234            7           2606    36442    Chats Chats_ownerId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."Chats"
    ADD CONSTRAINT "Chats_ownerId_fkey" FOREIGN KEY ("ownerId") REFERENCES public."Users"(id) ON UPDATE CASCADE ON DELETE CASCADE;
 F   ALTER TABLE ONLY public."Chats" DROP CONSTRAINT "Chats_ownerId_fkey";
       public               postgres    false    232    290    5154            8           2606    36447    Companies Companies_planId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."Companies"
    ADD CONSTRAINT "Companies_planId_fkey" FOREIGN KEY ("planId") REFERENCES public."Plans"(id) ON UPDATE CASCADE ON DELETE SET NULL;
 M   ALTER TABLE ONLY public."Companies" DROP CONSTRAINT "Companies_planId_fkey";
       public               postgres    false    5111    234    258            9           2606    36452 6   ContactCustomFields ContactCustomFields_contactId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."ContactCustomFields"
    ADD CONSTRAINT "ContactCustomFields_contactId_fkey" FOREIGN KEY ("contactId") REFERENCES public."Contacts"(id) ON UPDATE CASCADE ON DELETE CASCADE;
 d   ALTER TABLE ONLY public."ContactCustomFields" DROP CONSTRAINT "ContactCustomFields_contactId_fkey";
       public               postgres    false    236    5078    242            :           2606    36457 0   ContactListItems ContactListItems_companyId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."ContactListItems"
    ADD CONSTRAINT "ContactListItems_companyId_fkey" FOREIGN KEY ("companyId") REFERENCES public."Companies"(id) ON UPDATE CASCADE ON DELETE CASCADE;
 ^   ALTER TABLE ONLY public."ContactListItems" DROP CONSTRAINT "ContactListItems_companyId_fkey";
       public               postgres    false    234    5069    238            ;           2606    36462 4   ContactListItems ContactListItems_contactListId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."ContactListItems"
    ADD CONSTRAINT "ContactListItems_contactListId_fkey" FOREIGN KEY ("contactListId") REFERENCES public."ContactLists"(id) ON UPDATE CASCADE ON DELETE CASCADE;
 b   ALTER TABLE ONLY public."ContactListItems" DROP CONSTRAINT "ContactListItems_contactListId_fkey";
       public               postgres    false    238    240    5076            <           2606    36467 (   ContactLists ContactLists_companyId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."ContactLists"
    ADD CONSTRAINT "ContactLists_companyId_fkey" FOREIGN KEY ("companyId") REFERENCES public."Companies"(id) ON UPDATE CASCADE ON DELETE CASCADE;
 V   ALTER TABLE ONLY public."ContactLists" DROP CONSTRAINT "ContactLists_companyId_fkey";
       public               postgres    false    240    5069    234            =           2606    36472     Contacts Contacts_companyId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."Contacts"
    ADD CONSTRAINT "Contacts_companyId_fkey" FOREIGN KEY ("companyId") REFERENCES public."Companies"(id) ON UPDATE CASCADE ON DELETE SET NULL;
 N   ALTER TABLE ONLY public."Contacts" DROP CONSTRAINT "Contacts_companyId_fkey";
       public               postgres    false    5069    234    242            >           2606    36477 :   IntegrationSessions IntegrationSessions_integrationId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."IntegrationSessions"
    ADD CONSTRAINT "IntegrationSessions_integrationId_fkey" FOREIGN KEY ("integrationId") REFERENCES public."Integrations"(id) ON UPDATE CASCADE ON DELETE CASCADE;
 h   ALTER TABLE ONLY public."IntegrationSessions" DROP CONSTRAINT "IntegrationSessions_integrationId_fkey";
       public               postgres    false    248    246    5089            ?           2606    36482 &   Integrations Integrations_queueId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."Integrations"
    ADD CONSTRAINT "Integrations_queueId_fkey" FOREIGN KEY ("queueId") REFERENCES public."Queues"(id) ON UPDATE CASCADE ON DELETE CASCADE;
 T   ALTER TABLE ONLY public."Integrations" DROP CONSTRAINT "Integrations_queueId_fkey";
       public               postgres    false    262    248    5119            @           2606    36487     Invoices Invoices_companyId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."Invoices"
    ADD CONSTRAINT "Invoices_companyId_fkey" FOREIGN KEY ("companyId") REFERENCES public."Companies"(id) ON UPDATE CASCADE ON DELETE CASCADE;
 N   ALTER TABLE ONLY public."Invoices" DROP CONSTRAINT "Invoices_companyId_fkey";
       public               postgres    false    250    5069    234            A           2606    36492     Messages Messages_companyId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."Messages"
    ADD CONSTRAINT "Messages_companyId_fkey" FOREIGN KEY ("companyId") REFERENCES public."Companies"(id) ON UPDATE CASCADE ON DELETE SET NULL;
 N   ALTER TABLE ONLY public."Messages" DROP CONSTRAINT "Messages_companyId_fkey";
       public               postgres    false    5069    254    234            B           2606    36497     Messages Messages_contactId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."Messages"
    ADD CONSTRAINT "Messages_contactId_fkey" FOREIGN KEY ("contactId") REFERENCES public."Contacts"(id) ON UPDATE CASCADE ON DELETE CASCADE;
 N   ALTER TABLE ONLY public."Messages" DROP CONSTRAINT "Messages_contactId_fkey";
       public               postgres    false    5078    242    254            C           2606    36502    Messages Messages_queueId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."Messages"
    ADD CONSTRAINT "Messages_queueId_fkey" FOREIGN KEY ("queueId") REFERENCES public."Queues"(id) ON UPDATE SET NULL ON DELETE SET NULL;
 L   ALTER TABLE ONLY public."Messages" DROP CONSTRAINT "Messages_queueId_fkey";
       public               postgres    false    254    262    5119            D           2606    36507    Messages Messages_userId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."Messages"
    ADD CONSTRAINT "Messages_userId_fkey" FOREIGN KEY ("userId") REFERENCES public."Users"(id) ON UPDATE CASCADE ON DELETE SET NULL;
 K   ALTER TABLE ONLY public."Messages" DROP CONSTRAINT "Messages_userId_fkey";
       public               postgres    false    290    5154    254            E           2606    36512 #   OldMessages OldMessages_userId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."OldMessages"
    ADD CONSTRAINT "OldMessages_userId_fkey" FOREIGN KEY ("userId") REFERENCES public."Users"(id) ON UPDATE CASCADE ON DELETE SET NULL;
 Q   ALTER TABLE ONLY public."OldMessages" DROP CONSTRAINT "OldMessages_userId_fkey";
       public               postgres    false    5154    290    256            F           2606    36517 .   QueueOptions QueueOptions_forwardQueueId_fkey1    FK CONSTRAINT     �   ALTER TABLE ONLY public."QueueOptions"
    ADD CONSTRAINT "QueueOptions_forwardQueueId_fkey1" FOREIGN KEY ("forwardQueueId") REFERENCES public."Queues"(id) ON UPDATE CASCADE ON DELETE SET NULL;
 \   ALTER TABLE ONLY public."QueueOptions" DROP CONSTRAINT "QueueOptions_forwardQueueId_fkey1";
       public               postgres    false    260    5119    262            G           2606    36522 '   QueueOptions QueueOptions_parentId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."QueueOptions"
    ADD CONSTRAINT "QueueOptions_parentId_fkey" FOREIGN KEY ("parentId") REFERENCES public."QueueOptions"(id) ON UPDATE CASCADE ON DELETE CASCADE;
 U   ALTER TABLE ONLY public."QueueOptions" DROP CONSTRAINT "QueueOptions_parentId_fkey";
       public               postgres    false    5113    260    260            H           2606    36527 &   QueueOptions QueueOptions_queueId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."QueueOptions"
    ADD CONSTRAINT "QueueOptions_queueId_fkey" FOREIGN KEY ("queueId") REFERENCES public."Queues"(id) ON UPDATE CASCADE ON DELETE CASCADE;
 T   ALTER TABLE ONLY public."QueueOptions" DROP CONSTRAINT "QueueOptions_queueId_fkey";
       public               postgres    false    260    5119    262            I           2606    36532    Queues Queues_companyId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."Queues"
    ADD CONSTRAINT "Queues_companyId_fkey" FOREIGN KEY ("companyId") REFERENCES public."Companies"(id) ON UPDATE CASCADE ON DELETE SET NULL;
 J   ALTER TABLE ONLY public."Queues" DROP CONSTRAINT "Queues_companyId_fkey";
       public               postgres    false    234    262    5069            J           2606    36537 *   QuickMessages QuickMessages_companyId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."QuickMessages"
    ADD CONSTRAINT "QuickMessages_companyId_fkey" FOREIGN KEY ("companyId") REFERENCES public."Companies"(id) ON UPDATE CASCADE ON DELETE CASCADE;
 X   ALTER TABLE ONLY public."QuickMessages" DROP CONSTRAINT "QuickMessages_companyId_fkey";
       public               postgres    false    264    234    5069            K           2606    36542 '   QuickMessages QuickMessages_userId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."QuickMessages"
    ADD CONSTRAINT "QuickMessages_userId_fkey" FOREIGN KEY ("userId") REFERENCES public."Users"(id) ON UPDATE CASCADE ON DELETE CASCADE;
 U   ALTER TABLE ONLY public."QuickMessages" DROP CONSTRAINT "QuickMessages_userId_fkey";
       public               postgres    false    290    5154    264            N           2606    36547 "   Schedules Schedules_companyId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."Schedules"
    ADD CONSTRAINT "Schedules_companyId_fkey" FOREIGN KEY ("companyId") REFERENCES public."Companies"(id) ON UPDATE CASCADE ON DELETE CASCADE;
 P   ALTER TABLE ONLY public."Schedules" DROP CONSTRAINT "Schedules_companyId_fkey";
       public               postgres    false    266    234    5069            O           2606    36552     Settings Settings_companyId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."Settings"
    ADD CONSTRAINT "Settings_companyId_fkey" FOREIGN KEY ("companyId") REFERENCES public."Companies"(id) ON UPDATE CASCADE ON DELETE SET NULL;
 N   ALTER TABLE ONLY public."Settings" DROP CONSTRAINT "Settings_companyId_fkey";
       public               postgres    false    234    5069    270            P           2606    36557 *   Subscriptions Subscriptions_companyId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."Subscriptions"
    ADD CONSTRAINT "Subscriptions_companyId_fkey" FOREIGN KEY ("companyId") REFERENCES public."Companies"(id) ON UPDATE CASCADE ON DELETE CASCADE;
 X   ALTER TABLE ONLY public."Subscriptions" DROP CONSTRAINT "Subscriptions_companyId_fkey";
       public               postgres    false    234    273    5069            Q           2606    36562    Tags Tags_companyId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."Tags"
    ADD CONSTRAINT "Tags_companyId_fkey" FOREIGN KEY ("companyId") REFERENCES public."Companies"(id) ON UPDATE CASCADE ON DELETE CASCADE;
 F   ALTER TABLE ONLY public."Tags" DROP CONSTRAINT "Tags_companyId_fkey";
       public               postgres    false    275    5069    234            L           2606    36567 "   QuickMessages Tasks_companyId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."QuickMessages"
    ADD CONSTRAINT "Tasks_companyId_fkey" FOREIGN KEY ("companyId") REFERENCES public."Companies"(id) ON UPDATE CASCADE ON DELETE CASCADE;
 P   ALTER TABLE ONLY public."QuickMessages" DROP CONSTRAINT "Tasks_companyId_fkey";
       public               postgres    false    264    5069    234            M           2606    36572    QuickMessages Tasks_userId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."QuickMessages"
    ADD CONSTRAINT "Tasks_userId_fkey" FOREIGN KEY ("userId") REFERENCES public."Users"(id) ON UPDATE CASCADE ON DELETE CASCADE;
 M   ALTER TABLE ONLY public."QuickMessages" DROP CONSTRAINT "Tasks_userId_fkey";
       public               postgres    false    5154    290    264            S           2606    36577 &   TicketNotes TicketNotes_contactId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."TicketNotes"
    ADD CONSTRAINT "TicketNotes_contactId_fkey" FOREIGN KEY ("contactId") REFERENCES public."Contacts"(id) ON UPDATE CASCADE ON DELETE CASCADE;
 T   ALTER TABLE ONLY public."TicketNotes" DROP CONSTRAINT "TicketNotes_contactId_fkey";
       public               postgres    false    5078    279    242            T           2606    36582 #   TicketNotes TicketNotes_userId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."TicketNotes"
    ADD CONSTRAINT "TicketNotes_userId_fkey" FOREIGN KEY ("userId") REFERENCES public."Users"(id) ON UPDATE CASCADE ON DELETE SET NULL;
 Q   ALTER TABLE ONLY public."TicketNotes" DROP CONSTRAINT "TicketNotes_userId_fkey";
       public               postgres    false    290    5154    279            U           2606    36587     TicketTags TicketTags_tagId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."TicketTags"
    ADD CONSTRAINT "TicketTags_tagId_fkey" FOREIGN KEY ("tagId") REFERENCES public."Tags"(id) ON UPDATE CASCADE ON DELETE CASCADE;
 N   ALTER TABLE ONLY public."TicketTags" DROP CONSTRAINT "TicketTags_tagId_fkey";
       public               postgres    false    5134    275    281            V           2606    36592 *   TicketTraking TicketTraking_companyId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."TicketTraking"
    ADD CONSTRAINT "TicketTraking_companyId_fkey" FOREIGN KEY ("companyId") REFERENCES public."Companies"(id) ON DELETE SET NULL;
 X   ALTER TABLE ONLY public."TicketTraking" DROP CONSTRAINT "TicketTraking_companyId_fkey";
       public               postgres    false    282    234    5069            W           2606    36597 '   TicketTraking TicketTraking_userId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."TicketTraking"
    ADD CONSTRAINT "TicketTraking_userId_fkey" FOREIGN KEY ("userId") REFERENCES public."Users"(id) ON DELETE SET NULL;
 U   ALTER TABLE ONLY public."TicketTraking" DROP CONSTRAINT "TicketTraking_userId_fkey";
       public               postgres    false    290    282    5154            X           2606    36602 +   TicketTraking TicketTraking_whatsappId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."TicketTraking"
    ADD CONSTRAINT "TicketTraking_whatsappId_fkey" FOREIGN KEY ("whatsappId") REFERENCES public."Whatsapps"(id) ON DELETE SET NULL;
 Y   ALTER TABLE ONLY public."TicketTraking" DROP CONSTRAINT "TicketTraking_whatsappId_fkey";
       public               postgres    false    282    293    5159            [           2606    36607 &   UserRatings UserRatings_companyId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."UserRatings"
    ADD CONSTRAINT "UserRatings_companyId_fkey" FOREIGN KEY ("companyId") REFERENCES public."Companies"(id) ON DELETE SET NULL;
 T   ALTER TABLE ONLY public."UserRatings" DROP CONSTRAINT "UserRatings_companyId_fkey";
       public               postgres    false    234    5069    287            \           2606    36612 #   UserRatings UserRatings_userId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."UserRatings"
    ADD CONSTRAINT "UserRatings_userId_fkey" FOREIGN KEY ("userId") REFERENCES public."Users"(id) ON DELETE SET NULL;
 Q   ALTER TABLE ONLY public."UserRatings" DROP CONSTRAINT "UserRatings_userId_fkey";
       public               postgres    false    5154    287    290            ]           2606    36617 1   UserSocketSessions UserSocketSessions_userId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."UserSocketSessions"
    ADD CONSTRAINT "UserSocketSessions_userId_fkey" FOREIGN KEY ("userId") REFERENCES public."Users"(id) ON UPDATE CASCADE ON DELETE CASCADE;
 _   ALTER TABLE ONLY public."UserSocketSessions" DROP CONSTRAINT "UserSocketSessions_userId_fkey";
       public               postgres    false    5154    290    289            ^           2606    36622    Users Users_companyId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."Users"
    ADD CONSTRAINT "Users_companyId_fkey" FOREIGN KEY ("companyId") REFERENCES public."Companies"(id) ON UPDATE CASCADE ON DELETE SET NULL;
 H   ALTER TABLE ONLY public."Users" DROP CONSTRAINT "Users_companyId_fkey";
       public               postgres    false    5069    234    290            a           2606    36627 "   Whatsapps Whatsapps_companyId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."Whatsapps"
    ADD CONSTRAINT "Whatsapps_companyId_fkey" FOREIGN KEY ("companyId") REFERENCES public."Companies"(id) ON UPDATE CASCADE ON DELETE SET NULL;
 P   ALTER TABLE ONLY public."Whatsapps" DROP CONSTRAINT "Whatsapps_companyId_fkey";
       public               postgres    false    234    293    5069            Y           2606    36632     UserQueues fk_userqueues_queueid    FK CONSTRAINT     �   ALTER TABLE ONLY public."UserQueues"
    ADD CONSTRAINT fk_userqueues_queueid FOREIGN KEY ("queueId") REFERENCES public."Queues"(id) ON UPDATE CASCADE ON DELETE CASCADE;
 L   ALTER TABLE ONLY public."UserQueues" DROP CONSTRAINT fk_userqueues_queueid;
       public               postgres    false    5119    262    286            Z           2606    36637    UserQueues fk_userqueues_userid    FK CONSTRAINT     �   ALTER TABLE ONLY public."UserQueues"
    ADD CONSTRAINT fk_userqueues_userid FOREIGN KEY ("userId") REFERENCES public."Users"(id) ON UPDATE CASCADE ON DELETE CASCADE;
 K   ALTER TABLE ONLY public."UserQueues" DROP CONSTRAINT fk_userqueues_userid;
       public               postgres    false    290    5154    286            _           2606    36642 (   WhatsappQueues fk_whatsappqueues_queueid    FK CONSTRAINT     �   ALTER TABLE ONLY public."WhatsappQueues"
    ADD CONSTRAINT fk_whatsappqueues_queueid FOREIGN KEY ("queueId") REFERENCES public."Queues"(id) ON UPDATE CASCADE ON DELETE CASCADE;
 T   ALTER TABLE ONLY public."WhatsappQueues" DROP CONSTRAINT fk_whatsappqueues_queueid;
       public               postgres    false    5119    262    292            `           2606    36647 +   WhatsappQueues fk_whatsappqueues_whatsappid    FK CONSTRAINT     �   ALTER TABLE ONLY public."WhatsappQueues"
    ADD CONSTRAINT fk_whatsappqueues_whatsappid FOREIGN KEY ("whatsappId") REFERENCES public."Whatsapps"(id) ON UPDATE CASCADE ON DELETE CASCADE;
 W   ALTER TABLE ONLY public."WhatsappQueues" DROP CONSTRAINT fk_whatsappqueues_whatsappid;
       public               postgres    false    292    293    5159            R           2606    36652    Tasks tasks_status_fk    FK CONSTRAINT     t   ALTER TABLE ONLY public."Tasks"
    ADD CONSTRAINT tasks_status_fk FOREIGN KEY (id) REFERENCES public."Status"(id);
 A   ALTER TABLE ONLY public."Tasks" DROP CONSTRAINT tasks_status_fk;
       public               postgres    false    272    5130    277            �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �             x������ � �            x������ � �         �   x�E�1
1@�zr�\ a&��`*E�Fm,,�b�A���]��F�w���E�D͂0�g�4�k��H���4���>�T8tb�M���������I��Q�
5!x������[��j�_l��*��UD"�            x������ � �            x������ � �      
      x������ � �            x������ � �            x������ � �            x������ � �            x������ � �         H   x�3��I��W0��/H��46�4202�50�54W00�#=K]c�R@d�
INC�?����� c��            x������ � �            x������ � �            x������ � �            x������ � �         ]   x�3��I��W0�44�"##S]]SCC+##+3=c3c]c|R��%\FP���sR�!t�+�Z��[�X�����)eb 21F��� ��             x������ � �          b  x�퓱N�0@g�+�tm�sҔ6#�� ��ap��]9����N|HD�R��CΛ��ζ��+!C�<M H�l78bO/X���nt`�#�	Gx�#Ƙx��@������A�o6�Y\���M&!�=����猾�{[�<�N�
I�\��T?�b���R��}����Ln?��UͪS�w��uïYƻ4(x�걖'�#�t��0�=|�Y�L�����	p��e��4����< A
�G�,�gh 0���$��I@�\߃V_64f��;�h�>՛Лp~&� ��]��T?]�:��47� ��dkC�R�Њ �գO��O�8N�V�V��ɍ�·ײ�O�㬃      "      x������ � �      $      x������ � �      &   O   x�32020�40107000�M.JM,I�MIMK,�)�M��-H̫��*�2BVh����8�C�9���Ԓ�̼�b��=... <�%�      '   �  x��Y�r�6��+�La!șc�N�J�l��K.3B�!���Oc#�MRl�\��k,ݯ_7��J\bJs�3^��8�:���G�#��CV�k��Jj�9�sD��k5����|BhY=���"gpJ�#JDȴė{���B(�M1[�#�F��kv���x�qa�-�\6��n�aF	-�A\�G焌+�U�kٵ�y�=��v�fv1�[a6X�b�Zd�=o/�IYÕ�u`8U3^�L?�b�;"L(c�h7��,����:"J0;�88I	�e{I9��Ү��=npw+0�?��ř���N�4b�`�(|�K^��c��}mN��׳ۂ��J�N��[���$��-��/� �X�3�&��{��?_g��(D�?��'���c~�N��/��1C���7/]���;.<V|�߿����<���))�P9Fv�A�A
�?� �9q��w�L@�겱.�!<�Rl�}��{-$Gy �����;��ns�x��9,sH�)���8�JPnI6Am��p@d°��e¤\H�u�D�<jٵ�u-?5륙'���?��}�	�cX�~�7ٶ*w����6<���nw���6#h����K�ky��cGB����{ �.n��y>�/(���2�֙��E=6.'^2�Uެ��[����VN:܊l���o 4�ѭ����8��oV�3ҩ���M�8�Zꍮq��w��!���W~��k��t7���e�_O:�_ǥ��W��;h2sZ��V�rs:܀��/( u�8p����D�@+�,����b�S��t�SZP{���ؔ�d[�����x�妮�Cz��9�M�L��6�X��&���a��e@q}���A+M�Eh���\xTeh�q�3a6E,�+,�)���РL�k~Q�p�G=�:��7�e��6�z}V��� �7g>�/�i��g~��(Cs�(k��]��w1W���s	�@w�TT�=�/A=���Y�C'Y8�cD<G 5QJ]�i��Tz����-�{��p��PF���K�f��,��<�?�_ļL�|�ֿ�}�z.��R�&=�asT���Q|��\��h1kQ�� �j�ȅj��z�w�+�l�����ce��Ӿ�~V3b�`�7���2�q0�̾k�n��_E�0a��3�{�e+^�>'O�$k��2qH�l�'�+���O��LQ#l��l;Y%pJ�Gތ�m�� в"Q�{���'�2�WP�'�H� ��⾊����	���+q꺇��X�]�X���6�"hߒ��F��b��f-�JB�yҺ�}���r{���i��L���J�I�a`F��S#�-�jB]E-�����
�5�� ��k�E:Ph`c���Z�8� �*S|�}�\��sR5�K��.q�ҸNYPn3�Cm6����1��95Gu!S�{�����n>n	�~��]���ȗ����n�%�N���z����ya��Tfgߍ�tN�9tE����BY"3DeT��{��(�aEّ�Z&T^s41#T�7�����¢��l�"j���4�	��Cffo�0�6�s�Q?������t',��=;w�>Կ�b>��I p��xgق���ѷ�f?��#݅i���"y�����M,[^U@�L<i���`�i�{`p��?%�4���s֗�>N�}}mB
\P㠳|r�̍h5��}$��ŵ� f$Ef���[mcQ���ڞ���\�˧�-�&���⚺�vY�$;򙦉y|��C��AVZwއ�J�,@Q"$�z9�?�S��-p��ӹWO���R����m�Z�3Y���D���Ӛ�Qm�>-�<P0�^�?�3��*��r�D������t����=�D���q^t�%�������?���-�ǣ��iy����x��o�}1D�i�P�POϰ�Y^�`t�s>�*�N�������w���h�Q      (   9  x��ώ�0���)���c�j��۪�z\�����`��>}ai��l�������73a�3�Zۻ����&���F�Dl��cE�b1dD.�$���5�wm�2�Vy����^ݳhӵYu�y��Wg:s%��wk�n��٧�cSuud�[Jc �Eqk��u��FW���VS�@}ۍ���ZB�"7��W�q��iM�{#�[�۫�1�u}_e�}��m��I̥$��E�?�u?�������%ګP�t�п�*�1B��O�??�)a�	�J}�a:��γ�}?��m�wG,0W�)� ���K=���c��5�g��^�^�v�?�jS4�Rg��m���2����9�\��9V�C��1i0�`B���	
&L(���5�):Q�A&�L��������dT1_ ��TL�X8�4#1c�фz){i�$�^�~��r�M���n�f��n��-9�E�ן܀�ϊ'ӥ�9y��C��ss��H�4��{=�B�~"������y{����+��}��4��+�熝�ko8�+Ġ8��$�^X��za����{C��   �y��      *   =   x�3�t���,�2��􃱍9]\}\C]@NW�0O;�˔3�����/�ȉ���� ���      +      x������ � �      -      x������ � �      /      x������ � �      1      x������ � �      3      x������ � �      4      x������ � �      6      x������ � �      8      x������ � �      9      x������ � �      ;   |   x���,��O�,�̳t*Kttt��4�L�4202�50�54U04�20�26�3���50F�2�20�2��335Jq��'���z�xFzX �KF5�d���������!�q0)K=S#�q1z\\\ �G$}      <   �   x�3�tL����L�`R/9?�S�(Q��@�0-��=�/'<#4�/�(#���(�4)3�7"7)��3 ,�4�0į·²"�ҧ���)�����T��D��@��������\���R��!e�`ddebjeb�ghi��8ĀӐ��b���� ��*`      >      x������ � �      ?      x������ � �     