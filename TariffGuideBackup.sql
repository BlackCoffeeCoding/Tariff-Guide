PGDMP      	            
    {            Tariff Guide    16.1    16.1 (    �           0    0    ENCODING    ENCODING     !   SET client_encoding = 'WIN1251';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    17596    Tariff Guide    DATABASE     �   CREATE DATABASE "Tariff Guide" WITH TEMPLATE = template0 ENCODING = 'WIN1251' LOCALE_PROVIDER = libc LOCALE = 'Russian_Russia.1251';
    DROP DATABASE "Tariff Guide";
                postgres    false            �            1259    17597    ������    TABLE     �   CREATE TABLE public."������" (
    "��� ������" integer NOT NULL,
    "�������� ������" character varying(50) NOT NULL,
    "�����" character varying(100) NOT NULL
);
    DROP TABLE public."������";
       public         heap    postgres    false            �            1259    17658    ��������������    TABLE     �   CREATE TABLE public."��������������" (
    "id ��-��" integer NOT NULL,
    "��� �������" integer NOT NULL,
    "� ��" integer NOT NULL,
    "����������" integer NOT NULL
);
 $   DROP TABLE public."��������������";
       public         heap    postgres    false            �            1259    17630    ��������������    TABLE     �   CREATE TABLE public."��������������" (
    "id ��-��" integer NOT NULL,
    "� �� ��" integer NOT NULL,
    "� �� ��" integer NOT NULL,
    "����������" integer NOT NULL
);
 $   DROP TABLE public."��������������";
       public         heap    postgres    false            �            1259    17645    �������    TABLE     �  CREATE TABLE public."�������" (
    "��� �������" integer NOT NULL,
    "�������� �������" character varying(50) NOT NULL,
    "�������� ������" character varying(50) NOT NULL,
    "��������" character varying(30) NOT NULL,
    "�������� ��4�1" character varying(20) NOT NULL,
    "������ ��4�1" character varying(20) NOT NULL,
    CONSTRAINT "�������_��� �������_check" CHECK (("��� �������" >= 0))
);
    DROP TABLE public."�������";
       public         heap    postgres    false            �            1259    17673    ��������������    TABLE     g  CREATE TABLE public."��������������" (
    "id �������-�������" integer NOT NULL,
    "��� �������" integer NOT NULL,
    "�������� �������" character varying(50) NOT NULL,
    "id �������" integer NOT NULL,
    "�������� �������" character varying(50) NOT NULL,
    CONSTRAINT "��������������_id �������-�������_check" CHECK (("id �������-�������" >= 0))
);
 $   DROP TABLE public."��������������";
       public         heap    postgres    false            �            1259    17604    ���������������    TABLE     �   CREATE TABLE public."���������������" (
    "� ��" integer NOT NULL,
    "�������� ��" character varying(50) NOT NULL,
    "�������� ������" character varying(50) NOT NULL,
    CONSTRAINT "���������������_� ��_check" CHECK (("� ��" >= 0))
);
 %   DROP TABLE public."���������������";
       public         heap    postgres    false            �            1259    17617    �������    TABLE     �   CREATE TABLE public."�������" (
    "id �������" integer NOT NULL,
    "�������� �������" character varying(50) NOT NULL,
    "�������� ������" character varying(50) NOT NULL,
    CONSTRAINT "�������_id �������_check" CHECK (("id �������" >= 0))
);
    DROP TABLE public."�������";
       public         heap    postgres    false            �          0    17597    ������ 
   TABLE DATA           L   COPY public."������" ("��� ������", "�������� ������", "�����") FROM stdin;
    public          postgres    false    215   �8       �          0    17658    �������������� 
   TABLE DATA           [   COPY public."��������������" ("id ��-��", "��� �������", "� ��", "����������") FROM stdin;
    public          postgres    false    220   �9       �          0    17630    �������������� 
   TABLE DATA           Z   COPY public."��������������" ("id ��-��", "� �� ��", "� �� ��", "����������") FROM stdin;
    public          postgres    false    218   >       �          0    17645    ������� 
   TABLE DATA           �   COPY public."�������" ("��� �������", "�������� �������", "�������� ������", "��������", "�������� ��4�1", "������ ��4�1") FROM stdin;
    public          postgres    false    219   K       �          0    17673    �������������� 
   TABLE DATA           �   COPY public."��������������" ("id �������-�������", "��� �������", "�������� �������", "id �������", "�������� �������") FROM stdin;
    public          postgres    false    221   P       �          0    17604    ��������������� 
   TABLE DATA           U   COPY public."���������������" ("� ��", "�������� ��", "�������� ������") FROM stdin;
    public          postgres    false    216   qU       �          0    17617    ������� 
   TABLE DATA           X   COPY public."�������" ("id �������", "�������� �������", "�������� ������") FROM stdin;
    public          postgres    false    217   Y       6           2606    17603 !   ������ ������_�������� ������_key 
   CONSTRAINT     m   ALTER TABLE ONLY public."������"
    ADD CONSTRAINT "������_�������� ������_key" UNIQUE ("�������� ������");
 O   ALTER TABLE ONLY public."������" DROP CONSTRAINT "������_�������� ������_key";
       public            postgres    false    215            D           2606    17652 $   ������� �������_�������� �������_key 
   CONSTRAINT     q   ALTER TABLE ONLY public."�������"
    ADD CONSTRAINT "�������_�������� �������_key" UNIQUE ("�������� �������");
 R   ALTER TABLE ONLY public."�������" DROP CONSTRAINT "�������_�������� �������_key";
       public            postgres    false    219            :           2606    17611 /   ��������������� ���������������_�������� ��_key 
   CONSTRAINT     w   ALTER TABLE ONLY public."���������������"
    ADD CONSTRAINT "���������������_�������� ��_key" UNIQUE ("�������� ��");
 ]   ALTER TABLE ONLY public."���������������" DROP CONSTRAINT "���������������_�������� ��_key";
       public            postgres    false    216            >           2606    17624 $   ������� �������_�������� �������_key 
   CONSTRAINT     q   ALTER TABLE ONLY public."�������"
    ADD CONSTRAINT "�������_�������� �������_key" UNIQUE ("�������� �������");
 R   ALTER TABLE ONLY public."�������" DROP CONSTRAINT "�������_�������� �������_key";
       public            postgres    false    217            8           2606    17601    ������ ������_pk 
   CONSTRAINT     \   ALTER TABLE ONLY public."������"
    ADD CONSTRAINT "������_pk" PRIMARY KEY ("��� ������");
 >   ALTER TABLE ONLY public."������" DROP CONSTRAINT "������_pk";
       public            postgres    false    215            H           2606    17662     �������������� ��������������_pk 
   CONSTRAINT     j   ALTER TABLE ONLY public."��������������"
    ADD CONSTRAINT "��������������_pk" PRIMARY KEY ("id ��-��");
 N   ALTER TABLE ONLY public."��������������" DROP CONSTRAINT "��������������_pk";
       public            postgres    false    220            B           2606    17634     �������������� ��������������_pk 
   CONSTRAINT     j   ALTER TABLE ONLY public."��������������"
    ADD CONSTRAINT "��������������_pk" PRIMARY KEY ("id ��-��");
 N   ALTER TABLE ONLY public."��������������" DROP CONSTRAINT "��������������_pk";
       public            postgres    false    218            F           2606    17650    ������� �������_pk 
   CONSTRAINT     _   ALTER TABLE ONLY public."�������"
    ADD CONSTRAINT "�������_pk" PRIMARY KEY ("��� �������");
 @   ALTER TABLE ONLY public."�������" DROP CONSTRAINT "�������_pk";
       public            postgres    false    219            J           2606    17678     �������������� ��������������_pk 
   CONSTRAINT     t   ALTER TABLE ONLY public."��������������"
    ADD CONSTRAINT "��������������_pk" PRIMARY KEY ("id �������-�������");
 N   ALTER TABLE ONLY public."��������������" DROP CONSTRAINT "��������������_pk";
       public            postgres    false    221            <           2606    17609 "   ��������������� ���������������_pk 
   CONSTRAINT     h   ALTER TABLE ONLY public."���������������"
    ADD CONSTRAINT "���������������_pk" PRIMARY KEY ("� ��");
 P   ALTER TABLE ONLY public."���������������" DROP CONSTRAINT "���������������_pk";
       public            postgres    false    216            @           2606    17622    ������� �������_pk 
   CONSTRAINT     ^   ALTER TABLE ONLY public."�������"
    ADD CONSTRAINT "�������_pk" PRIMARY KEY ("id �������");
 @   ALTER TABLE ONLY public."�������" DROP CONSTRAINT "�������_pk";
       public            postgres    false    217            O           2606    17653    ������� ������_�������_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public."�������"
    ADD CONSTRAINT "������_�������_fk" FOREIGN KEY ("�������� ������") REFERENCES public."������"("�������� ������") ON UPDATE CASCADE ON DELETE CASCADE;
 G   ALTER TABLE ONLY public."�������" DROP CONSTRAINT "������_�������_fk";
       public          postgres    false    4662    219    215            K           2606    17612 )   ��������������� ������_���������������_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public."���������������"
    ADD CONSTRAINT "������_���������������_fk" FOREIGN KEY ("�������� ������") REFERENCES public."������"("�������� ������") ON UPDATE CASCADE ON DELETE CASCADE;
 W   ALTER TABLE ONLY public."���������������" DROP CONSTRAINT "������_���������������_fk";
       public          postgres    false    215    4662    216            L           2606    17625    ������� ������_�������_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public."�������"
    ADD CONSTRAINT "������_�������_fk" FOREIGN KEY ("�������� ������") REFERENCES public."������"("�������� ������") ON UPDATE CASCADE ON DELETE CASCADE;
 G   ALTER TABLE ONLY public."�������" DROP CONSTRAINT "������_�������_fk";
       public          postgres    false    215    217    4662            P           2606    17663 (   �������������� �������_��������������_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public."��������������"
    ADD CONSTRAINT "�������_��������������_fk" FOREIGN KEY ("��� �������") REFERENCES public."�������"("��� �������") ON UPDATE CASCADE ON DELETE CASCADE;
 V   ALTER TABLE ONLY public."��������������" DROP CONSTRAINT "�������_��������������_fk";
       public          postgres    false    220    219    4678            R           2606    17684 (   �������������� �������_��������������_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public."��������������"
    ADD CONSTRAINT "�������_��������������_fk" FOREIGN KEY ("��� �������") REFERENCES public."�������"("��� �������") ON UPDATE CASCADE ON DELETE CASCADE;
 V   ALTER TABLE ONLY public."��������������" DROP CONSTRAINT "�������_��������������_fk";
       public          postgres    false    221    219    4678            S           2606    17694 *   �������������� �������_��������������_fk_1    FK CONSTRAINT     �   ALTER TABLE ONLY public."��������������"
    ADD CONSTRAINT "�������_��������������_fk_1" FOREIGN KEY ("�������� �������") REFERENCES public."�������"("�������� �������") ON UPDATE CASCADE ON DELETE CASCADE;
 X   ALTER TABLE ONLY public."��������������" DROP CONSTRAINT "�������_��������������_fk_1";
       public          postgres    false    221    219    4676            M           2606    17635 '   �������������� ����������_����������_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public."��������������"
    ADD CONSTRAINT "����������_����������_fk" FOREIGN KEY ("� �� ��") REFERENCES public."���������������"("� ��") ON UPDATE CASCADE ON DELETE CASCADE;
 U   ALTER TABLE ONLY public."��������������" DROP CONSTRAINT "����������_����������_fk";
       public          postgres    false    216    218    4668            N           2606    17640 )   �������������� ����������_����������_fk_1    FK CONSTRAINT     �   ALTER TABLE ONLY public."��������������"
    ADD CONSTRAINT "����������_����������_fk_1" FOREIGN KEY ("� �� ��") REFERENCES public."���������������"("� ��") ON UPDATE CASCADE ON DELETE CASCADE;
 W   ALTER TABLE ONLY public."��������������" DROP CONSTRAINT "����������_����������_fk_1";
       public          postgres    false    4668    218    216            Q           2606    17668 )   �������������� ����������_����������_fk_2    FK CONSTRAINT     �   ALTER TABLE ONLY public."��������������"
    ADD CONSTRAINT "����������_����������_fk_2" FOREIGN KEY ("� ��") REFERENCES public."���������������"("� ��") ON UPDATE CASCADE ON DELETE CASCADE;
 W   ALTER TABLE ONLY public."��������������" DROP CONSTRAINT "����������_����������_fk_2";
       public          postgres    false    4668    220    216            T           2606    17679 (   �������������� �������_��������������_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public."��������������"
    ADD CONSTRAINT "�������_��������������_fk" FOREIGN KEY ("id �������") REFERENCES public."�������"("id �������") ON UPDATE CASCADE ON DELETE CASCADE;
 V   ALTER TABLE ONLY public."��������������" DROP CONSTRAINT "�������_��������������_fk";
       public          postgres    false    4672    221    217            U           2606    17689 *   �������������� �������_��������������_fk_1    FK CONSTRAINT     �   ALTER TABLE ONLY public."��������������"
    ADD CONSTRAINT "�������_��������������_fk_1" FOREIGN KEY ("�������� �������") REFERENCES public."�������"("�������� �������") ON UPDATE CASCADE ON DELETE CASCADE;
 X   ALTER TABLE ONLY public."��������������" DROP CONSTRAINT "�������_��������������_fk_1";
       public          postgres    false    217    221    4670            �     x�e��N�0Eד��y'�R��
����1q�xj��!�DT [lϝ��{���R#NB[�Gx"k�1(��A�"V��J�1ܐ��C�E#|1�;T���i�QRXa��9�Y�p�����y���|}���I�sK�
x +}������`#�cc��%<Ѡ����"���S�k\B��䊣"��"���Ns�N�R�3WB;FY�řFZ%~��x�K�ˎ�
��9Q�-ٝA-����Y
U��Rx���k�΃ �UhV      �     x�M�]��*D���K~D��7�q�*"I�~������V׉_�*���<[�̱�.Q@��µ���b.I�=�2e�q��%���l�S����F��KT�����4��,bP�Tkv��+�Z�g��I�Z!{n��U�A�yu�$�`���	�5��`*j��7��.0ļ�&�-t,�3��Xv��n�#.ab���3ΠΈ����(p��%�Z��[ϖ���:�uF^�(�5��F�Sg�+c�U@��x�Si�1�.^Z�g�b��wX}T;���ܰ"z.I	/b��[���]?uaOWJ0(y��$l�XE�&{��.bqӏ��y�k��Ci���n0m��X����6���}��e��;S2��"�2��,b[�j7�(��mg��d���!.9�PԨ���E֑���*<�=-��i�0�ٞA62��"�wV{Z�s��EN?�)�Y�F[J����%X.��P����`��h;	�Ț�fe ��'��V{�h����&봑|®�3������ISٔ���t�^���S6e�gB����i�)3���7e�q���tt��)`�M�ҥohK�.�"@y��p�����x����X?-gv�^!';�#��:���9�0ruNg��ctB>΁1���q4'��S�y���;I8ߏN��s��j�pU�a���J�?���w�����3Q���X���휕p�T#�>	=��Jd}Q,�Ū�:Q�Zw�o��齢���bQ+��D�4ǓĘJ�V�wB+SlиȊ1y�$�-�:��0�&��c{��PK<�Ս�8@ �݉ �p�oZH|O��o'½D7V��*6̉9)�9���%�
���D��s��I!B ��mT��)8��wV0<_�P��7��Jyu�� 2��D�����A}�)z�r�>d�g�(>[�/9���������hu��َ�Yo�	t	~ia��9F�/*_��]��1@���H�hF�]�8�q����ͱ����} �cl���/)�Qۤ˿�D��^�R      �   �  x�E�[��,�D��s$�s��?��KI}]]Q�������~��}�?B?�������o��7�Aڧ�~�o��:���m�Ygs�1�I�_s�j_o����`Ϗgp��������`��8O�_`�������u��������اO=�[����������E�b��E���dt�����ҥK�|���꒕���˿�Q�b�3���~�����{�^:������늣�N��a�;����u�{c�o�c�/�����Ѕ����f;B�Nש�O��_��뽼�z�tp���;2���/�ۧ�a���=�כ^�]�= �=[4��H/7V��}i�E	�.�h���߸��y�,Z�7{��yj�]�b}��3�|�t(^6:Q��4�y�7�Ʀ����C���(�4�ݢ��[�H�a�o��E�%
�qƷ�@�=�[�@���*�S�I�GQ�4���4��@��#�n�b=4�v+ҵsķ{��ϼߎ"=�-�e��^ݣH"�Й�h3l�۫�y�]Z�٦�+-�SSp�߰�u�w$�����^�!�(b���d�=t�(R`k�Y0��e�o�]�S�5g�5����!�3�wKF����*�Yb�]����E��T��QtI~w%Ծ��t߫�����<j;E����n����齵Bt&Xj$��p{+9H՟B� k�}Hh��B��n\�
��0�m��(�SH�P"�-���W	�
.n�ܭ��(��A��ez	b�o����m����_�����n�Knt�=3��
�2�r�o,�%����"��l,�I���vgÄF!)M��G�����E��pW�>�O��=`�p�9�P=�x?��S��Pb,L��BIފ�Nv/��1��B�@�,�D��,}Js䦵T�yY��9Ub��97���|K��W'+#�����0
����P�UB��yL�W��摉]���w�.Ԭ�C���|Ks���TI��D��*\3q��$Ks�z]��,ٻ)������9�	k��2+�nn��{�)��-��ɻJ�}5���x�5%��U���n����̦5
���/�4+"�i��Yq�D��6*P��u���u͊	br7cM_�n&nS�v��������p�ݶ6I?��I(/ĉ���˄y3*�gq$Uu�YQ�ʾ�Ya��?���CܟnV�kJ�ì��4�9��=ì`L�c��?��@�}I76����N1��'�_3�CrP���1H4J��&8�U���*���̊z�x�ez���J��f8�@W������G�,�>B���bЦ��+U��X�gP����q2 J�f����	t��x��y0-i�f�o��eF��~�,�U��c���T�f}�g�G�>��r>���R!Wm� 
9aTu�H�Cp�|�i�fHuRT|�^c�Lyh?fN+�f�GUR`7��O���W����M4S�@��]t(��G1sW׊�c���eV�LU�!��T��7�Y�e	�L��.��Ӝ����6�d��-U�$�i}��Vj�B���gÔ/u6x����T�6֫ 3�~p�kf�
��	�.���'�KF�H�'����*K������-���[��_*��jB�Ơ�;g��g�C�0����2+���ʭ$��n�a��Y��a��Q_`��)
\�<�ִ6�FjZ���ф�gn��L�V;�L#0{���a�����i�m\��eڧY���M��2\
��6��&]�o<�MUT��ϙG}����i��Y����SL�'��iV�'����@��f"`r�e^;�Զ���Ǩʘq����V�i��_��jrkd���ӕ�B���գe�_��XeO���R�F��|�а�[@��m�����ƅ��f�mF�+da�ը��f�그�G���ŵ>�%1;/o��P�UL�9�)�ͬ�H������e|����*�{�HjMaE�0����0j�����z�	Ba��z"ea�]��S�
�v��Y��Y��K�ws�q�1-�_�0�eg�@'#��9�iƴx5F���vVG�-��[�uk���U\%b���~�nV�w�g�f+/�<�,l�b��Q+%UD�酸*"�b�pU���q�n�lq,udr�ª1y�d���&'�QL��*��Tl�S�H�0+ݨ
O3;5��ˬt���Q�|��w���2:�3�F1��ˬ�'j���n0��W��gC�O�އ������$�����S���os��a�p����K�������������aF?�7����hsZ��s���hI�F�[��.N����%J��|V��\�C�l�gU2H>{Bo[�����V%�f;C6�`�1��3Z�	����J���W�\�����)=��"��&��"����f2���-l�b6
�<��qRv��X��
;�&���紓��G�3T��jO���s���'na�ݓ��-촛]��.���ĉ]<�eѓ؅�VQ���.촊zڗY5Z�\�͛P��Ǭ�i�뭏M+�/��U��R����j|���"���'���ؙ
ssp?ڧ9a��]f�X�]�[�&�w��z���k�n|�33H�����6��ŵ>j�T�r��n�^�bb���:̬�o��-3Eں�m�H��R�_3��j�}�n{�Ɗ~����}t�s)%������7U{m��5U{����o3��*��j��{p�kNX���睩<�U�Yy�4>�����4+�`�:�\���W[#�-r�#x��g{��I�S\[��f6��Ɠ��e����Y���f�X*�G}�q�F32[�Ӽ���eF?�O룛���ʋk�B'��U�*	��..��dR�n�s�g����b���u��|A�d���6�o�=�F�r5�md�&:�ʃ�li���ƴ�*2�:J��oe[/&�ȷ�]|��a�[ٲ�P�k��4g#��|�YU���<_`�2�ok����L����2����XE2������p�?�O(��=���2r��<�/3�kҾ�L09��Â����u��������nf��=��`������62ѷ����M��g���kA4���|�|jxK����c�~��}��W-;d��������ov�0�]X�f�ۆ���O�*�q��o#v���0>���-��á-�h����J[�a�D�kf��%��ف�~؆-��F���mLÖ˾��3츗��2�*��$���q���NH��}U����0l���81nggb6ܭ�$N3�yU|LÆ�@�}��o�C�2K�V�>1�>�U�f�l�W��wv�� _�&��-m��9+�;r����v5�x��}�ɻ�nf���a)5L��[����H�%�f��שB��b˫�^',�V�
�����}�N�(      �   �  x�}Vˎ�6]�_�e�_z�K���13��x�I��*�=�-K&MY�F�C�m��N �}�s�/X�rr�K�d�l�\/�3�D&D�#g���C�+�)E��L\�0��r&<��� S 8R�]��S�B��r��p	2�1��[W�D^r�ь��uU��Q���=u	�����v'�J-('wu���1�T�����.��KPbPJ�+�uq���"g���)�#{�MK2ծ��B�R�05���>�n��>F%�:��+�r	���)���ƭNi��W�VE�5P$q�ZuJ��z-ˠ	�B��sĕ��%�����Dm`r�� 	����M��d�R2[�[����1�ȝ�,�*�5�3��=��*c�V�K�2�j���j��(mؗ\�kv%�H�Ƞ��.��|Y������7v�)�r����KH>l"��
+ �����Y������L��)�oT��%�}۲�s��J�r��0�Me�A�]`��[�R��n�2�i߈�22���گL��c`��X�����f�0�>�š���9�c��j���`)-��!�K�G��ت�+�u�Bb$ߺ
����2�ۏ��;:)�Dj�\���/��C����o	'|��q"�I:NJ���w��vf��M�U���g|F�H=��"���j���j����� �
���;wZk��M6� ��~�T�(��:�IAX6�\0t�]o��i�^b�g��~P^&�a.P��]�@�ӕ�j]����#.Ar����]~�����I:
���M������5�v0�⿞�J��]m��ܺ��p�r�e�;�� �n���ַ�d�d^/j�]�H%��w^��h��4�����x��T�l��jw-�O�អ��2K�x��B��=,�� +��%+3��okr�6�j��f�u0X�H����56ď�J}�L`H(,�X�~�8|փ�-�f旞��\��}�Qm�3-���ک��%I%�>JYXY�<8"������W�)�Ǡ��نm&��]�����'ſ�PLog�8�����l��Y�gE^�Eh��{%�p=D������A���Z45Kw������d��Ow<Ge�������9�������1F���E����!�?����_X��6��g Ba�C�\|�EX�)��/���g4Z�_'��'7k!o��2���a�&��r�V�Xmՙ�K���b�ewp~v̏#^/>�ů��F� ���	      �   \  x����r�6���S���!�!������J2��Nd+I�SɄD����j��9�6C�'I�p�����,�p�%�����e�V�q6s�Z7�vS��v|UV�=D	�i����p;=�	�d<a�n5L���	�Z�/\}D%�*��5� �5�s6/�'0EX'�J;=�M�;��$KG�n���pv>'6{��1�$� ���s<p� ^�'6$]glj6Ei��L�P"���I�$�;=�/`��e|��n�o���0i�j���
��7����$p��U�*��YNd���"�����wx���AR"� ^����H�Tł-��6����kj��h��������Fmֶ�����4�cvS���~(d?�R�w�sSWe?G��]��1�� ��̼�Cd���偃8µ���?����,ʝ�MU�T� 2AE�T��q�|W��$�1gU�D�
2�-X�e���V���E3�}����A3J�%�]�u?IBH���śہЂ��v{�"km9p� E�[���~`���
�a_��h{�4�0A��y��P���x�|��u��Y����  ���r�)0�)dof<,�� !}mZ���)�M��i� * �H0�����~�T�r������)�b`W�������eH4�K�C�x��ӝ�����%	�8�zᵩ�+I	��v�1����)�)*�b�B�Y��q�b�}7z>z���LI�`c�kA�W�K;��o�ߙd��m}����k`��u��D2ch�Q`�35ԗ��Ոa���z�`��TLM��1.��F�h����\d�ץg�F�h�Tc��[�>Te$s
3A���z���c�<�dl,Xj����ݽ6�J��=?s���0� `���Y�q��<)�.��+=p�J�-.6+��q"}���	�h	�=q����f�(ƛf��L�L`���0L���p�s��n^��L�q��.�Mo��C��beЍ?"���J���!ϰ��^{�+�>��[��2���ae��H��B���(�,称[��\$)������1����ه�)?���XQ����J��N�@�4g�|��!���	�6ʉt�S"��pܙ�a{�bp�
��Ό� {��ز�~��2R�iS�`|[�I<�ye��� @��ݒVGJ0X3>�vcߙ���ǧX��9?A��7�)R(q"��?n`�1f�6�r�7���M��"�B'�y���̥k�Jz�����фcP��bi"8Z��mU�6�ts�;���ѣ�fuolE/�А�&�\M�8Т�b�k�m�-ʵ��ʙ��8A�[�8��kk����FK�&1CP�'xB�v5�?-!�D�EQ�7��      �   �  x�mU�r�6�-��p�?�G�w�Òl3�I6��N���kc��-E�KaJf鹒S&ٚ?:W�չG�P,r���,�Q$E)eQ@,ks�b���V�bQ�t�(è&��S�-�ٚ8ˌqG���N�i�q8���I�fJ�T�q�C�T�5��͉#�д,:`&M��A!�4�G��jCʯ�24��:T�g�V�!X��4C�����t�#{~FA����e�~;̂��RKv��ϊ�ɴTT&��IP\��F g��q�e�0(�=��l^l|�F�S�S=Ks�/n{��Ը���;c�;T��~����qM�F2�8�1������Bu�tA�WOj�ܐa�㙃G]��s��w�����A��I7Ңt�3����J�.�ҭU-��?�GS|�Z����'�	^�r��<7Ҕ���"V6Z��,����e�,7�����	�n��^�p2�^��s`>�bw��M��"��Qdg�nX���`��uV�̉�!h�#��b%�3z��ۗ9t�`6��bS� Q�w��~�A�CzX��˃:�V�goN�6kwv&>��4���~��n��;��,�l���5g8M��Z�� �,��Ս��d��}��򎆆w�Bڮ�e\g��]{5^����� U�6�i�X	x���u�2�0V��vY,�u��Ӻ���눥6ݕk�)����7� v���-7��"u<	�}�K�H�&� ���Ѓ�a �z+Jc?h��5��c4���R��������L���R�����˅M2��#�ǚ_��=J#��$�� j����@�/�%՜�G]�\#A�'��ް	��	ǳp\�.0G���6K�*}=�`��>��*+zK>�)��*����,���&���e�Y*�x�н����oq�{Y��(;�b�WMe+KX���Y&V��,G:O�
�oܓ��7:��}�$�$�sh�,�ķ=���gi�Eq��#��������Mc��?gST�R��{sV���&�ZH��a����:�?۪�a>b�?jCG��柯F�ѿ%�`�      �   :  x��S[n�0�^�B�)���C���n�NbG�h�ו��(J\�R��w)p� �G��3���8�Y��Ï�L��5,�*�w�;�� ��LeX Kn7\R��n���ٵ�j<�f\oyk���}M���	R��r�D�*�+�W$�>b��)EN[rd����>3L!<�-��������?|K+נ���� 
.`�e��v ?E�V�LanEy��,��8zd���B����Q�}��:�J��,���a�����}�R�);�%�h&�-:�Q�JF{�"�5��|U���Vw�ĲF���jG�?�Oa�M!�S�g4�Z*a��gzF�,���{ۋ2'�J�b���G7M7�Ǳ�Z��{�I�����-I����®�p�������e"���_I�r��:�{?���w-j���~l�`��Cf�̓X�N'Yر��|��q����	�n�egX6�飱S8�F3���_���=	�D$�-7~�x���0���<9�g\K��������^�CX[�aݪ�,8��Zvv*C��x����]A�!7%Y�=�&A����     