wget -P /usr/share/X11/xkb/symbols/ https://raw.githubusercontent.com/dievri/diktor/master/linux/diktor
sed -i'' '/! layout/a diktor    Russian Typewriter Diktor' /usr/share/X11/xkb/rules/evdev.lst /usr/share/X11/xkb/rules/base.lst
sed -i'' '/<layoutList\>/a <layout><configItem><name>diktor</name><shortDescription>diktor</shortDescription><description>Typewriter Russian Diktor</description><languageList><iso639Id>rus</iso639Id></languageList></configItem><variantList/></layout>' /usr/share/X11/xkb/rules/evdev.xml /usr/share/X11/xkb/rules/base.xml
