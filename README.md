# diktor
Russian Diktor + Typewriter Layout

![Diktor](https://raw.githubusercontent.com/dievri/diktor/master/diktor.jpg)

# Installation on windows
Just run setup.exe from diktorru directory. It will install layout to the Russian layouts with name "diktorru"

# Installation on Ubuntu

For automatic install run the following command

```
wget -O - https://raw.githubusercontent.com/dievri/diktor/master/add_diktor.sh | sudo bash
```

For manual installation, follow this steps:

1. Copy content of the file `diktor` into `/usr/share/X11/xkb/symbols/ru` file. 

After chunk
```
        partial alphanumeric_keys
        xkb_symbols "legacy" {

            include "ru(common)"
            name[Group1]= "Russian (legacy)";
        };
```


place the following
```
      //   DIKTOR        TPWRT, Russian

      partial alphanumeric_keys
      xkb_symbols "diktor" {

          name[Group1]= "Russian (diktor)";

          // Alphanumeric section
          key <TLDE> {	[     	equal,		bar	]	};
          key <AE01> {	[	question, 	1	]	};
          key <AE02> {	[	minus, 		2	]	};
          key <AE03> {	[	numerosign,	3	]	};
          key <AE04> {	[	colon,		4	]	};
          key <AE05> {	[	comma,		5	]	};
          key <AE06> {	[	parenleft,	6	]	};
          key <AE07> {	[	parenright,	7	]	};
          key <AE08> {	[	period,		8	]	};
          key <AE09> {	[	semicolon,	9	]	};
          key <AE10> {	[	percent,	0	]	};
          key <AE11> {	[     	quotedbl, underscore	]	};
          key <AE12> {	[     	exclam,		plus	]	};

          key <AD01> {	[ Cyrillic_tse, Cyrillic_TSE	]	};
          key <AD02> {	[ Cyrillic_softsign, Cyrillic_SOFTSIGN	]	};
          key <AD03> {	[ Cyrillic_ya, Cyrillic_YA	]	};
          key <AD04> {	[ Cyrillic_yu, Cyrillic_YU	]	};
          key <AD05> {	[ Cyrillic_io, Cyrillic_IO	]	};
          key <AD06> {	[ Cyrillic_ze, Cyrillic_ZE	]	};
          key <AD07> {	[ Cyrillic_ve, Cyrillic_VE	]	};
          key <AD08> {	[ Cyrillic_ka, Cyrillic_KA	]	};
          key <AD09> {	[ Cyrillic_de, Cyrillic_DE	]	};
          key <AD10> {	[ Cyrillic_che, Cyrillic_CHE]	};
          key <AD11> {	[ Cyrillic_sha, Cyrillic_SHA	]	};
          key <AD12> {	[ Cyrillic_shcha, Cyrillic_SHCHA	]	};

          key <AC01> {	[ Cyrillic_u, Cyrillic_U	]	};
          key <AC02> {	[ Cyrillic_i, Cyrillic_I	]	};
          key <AC03> {	[ Cyrillic_ie, Cyrillic_IE	]	};
          key <AC04> {	[ Cyrillic_o, Cyrillic_O	]	};
          key <AC05> {	[ Cyrillic_a, Cyrillic_A	]	};
          key <AC06> {	[ Cyrillic_el, Cyrillic_EL	]	};
          key <AC07> {	[ Cyrillic_en, Cyrillic_EN 	]	};
          key <AC08> {	[ Cyrillic_te, Cyrillic_TE	]	};
          key <AC09> {	[ Cyrillic_es, Cyrillic_ES	]	};
          key <AC10> {	[ Cyrillic_er, Cyrillic_ER	]	};
          key <AC11> {	[ Cyrillic_shorti, Cyrillic_SHORTI	]	};

          key <AB01> {	[ Cyrillic_ef, Cyrillic_EF	]	};
          key <AB02> {	[ Cyrillic_e, Cyrillic_E	]	};
          key <AB03> {	[ Cyrillic_ha, Cyrillic_HA	]	};
          key <AB04> {	[ Cyrillic_yeru, Cyrillic_YERU	]	};
          key <AB05> {	[ Cyrillic_hardsign, Cyrillic_HARDSIGN	]	};
          key <AB06> {	[ Cyrillic_be, Cyrillic_BE	]	};
          key <AB07> {	[ Cyrillic_em, Cyrillic_EM	]	};
          key <AB08> {	[ Cyrillic_pe, Cyrillic_PE	]	};
          key <AB09> {	[ Cyrillic_ghe, Cyrillic_GHE 	]	};
          key <AB10> {	[ Cyrillic_zhe, Cyrillic_ZHE	]	};

          key <BKSL> {	[ slash,	backslash	]	};
          
          // End alphanumeric section

      };
```

2. To the file `/usr/share/X11/xkb/rules/base.lst` and `/usr/share/X11/xkb/rules/evdev.lst` under section `! variant`, add following line
```
diktor 	  ru: Russian (diktor)
```
3. To the file `/usr/share/X11/xkb/rules/base.xml` and `/usr/share/X11/xkb/rules/evdev.xml` add diktor as a variant to the Russian language
```
<variant>
  <configItem>
    <name>diktor</name>
    <description>Russian (diktor)</description>
  </configItem>
</variant>
```
This should be placed somewhere after 
```
<layout>
  <configItem>
    <name>ru</name>
    <!-- Keyboard indicator for Russian ayouts -->
    <shortDescription>ru</shortDescription>
    <description>Russian</description>
    <languageList>
      <iso639Id>rus</iso639Id>
    </languageList>
  </configItem>
  <variantList>
```

4. For iBus, add into file `/usr/share/ibus/component/simple.xml` somewhere under section `engines` 

```
 <engine>
    <name>xkb:ru:diktor:rus</name>
    <language>ru</language>
    <license>GPL</license>
    <author>Oleksandr Dievri</author>
    <layout>ru</layout>
    <layout_variant>diktor</ayout_variant>
    <longname>Russian (diktor)</longname>
    <description>Russian (diktor)</description>
    <icon>ibus-keyboard</icon>
    <rank>1</rank>
</engine>
```

For more information, visit https://ubuntu-mate.community/t/make-your-own-custom-keyboard-layout-for-linux/19733

# Editing
You can edit this layour for your own needs, using [Microsoft Keyboard Layout Creator](https://www.microsoft.com/en-us/download/details.aspx?id=22339) and the file base.klc from "file for MKLC" directory.



Author on klavogonki.ru: [http://klavogonki.ru/u/#/139358/](http://klavogonki.ru/u/#/139358/)
