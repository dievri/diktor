# diktor
Russian Diktor + Typewriter Layout

# Installation on windows
Just run setup.exe from diktorru directory. It will install layout to the Russian layouts with name "diktorru"

# Installation on Ubuntu

For automatic install run the following command

```
sudo wget -O - https://raw.githubusercontent.com/dievri/diktor/master/add_diktor.sh | bash
```

For manual installation, follow this steps:

1. Copy file `diktor` from linux directory to the  /usr/share/X11/xkb/symbols directory.
2. To the file /usr/share/X11/xkb/rules/base.lst and /usr/share/X11/xkb/rules/evdev.lst under section `! layout`, add following line
```
diktor          Russian Typewriter Diktor
```
3. To the file /usr/share/X11/xkb/rules/base.xml and /usr/share/X11/xkb/rules/evdev.xml under section `<layoutList>`, add following lines
```
<layout>
      <configItem>
        <name>diktor</name>
        <shortDescription>diktor</shortDescription>
          <description>Typewriter Russian Diktor</description>
        <languageList><iso639Id>rus</iso639Id></languageList>
      </configItem>
    <variantList/>
</layout>
```

For more information, visit https://ubuntu-mate.community/t/make-your-own-custom-keyboard-layout-for-linux/19733

# Editing
You can edit this layour for your own needs, using [Microsoft Keyboard Layout Creator](https://www.microsoft.com/en-us/download/details.aspx?id=22339) and the file base.klc from "file for MKLC" directory.

![Diktor](https://raw.githubusercontent.com/dievri/diktor/master/diktor.jpg)

Author on klavogonki.ru: [http://klavogonki.ru/u/#/139358/](http://klavogonki.ru/u/#/139358/)
