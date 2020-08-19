sudo wget -P /usr/share/X11/xkb/symbols/ https://raw.githubusercontent.com/dievri/diktor/master/linux/diktor
awk '/! layout/{print;print "diktor    Russian Typewriter Diktor";next}1' /usr/share/X11/xkb/rules/evdev.lst > tmp && mv tmp /usr/share/X11/xkb/rules/evdev.lst
awk '/! layout/{print;print "diktor    Russian Typewriter Diktor";next}1' /usr/share/X11/xkb/rules/base.lst > tmp && mv tmp /usr/share/X11/xkb/rules/base.lst
awk '/\<layoutList\>/{print;print "<layout><configItem><name>diktor</name><shortDescription>diktor</shortDescription><description>Typewriter Russian Diktor</description><languageList><iso639Id>rus</iso639Id></languageList></configItem><variantList/></layout>";next}1' /usr/share/X11/xkb/rules/base.xml > tmp && mv tmp /usr/share/X11/xkb/rules/base.xml 
awk '/\<layoutList\>/{print;print "<layout><configItem><name>diktor</name><shortDescription>diktor</shortDescription><description>Typewriter Russian Diktor</description><languageList><iso639Id>rus</iso639Id></languageList></configItem><variantList/></layout>";next}1' /usr/share/X11/xkb/rules/evdev.xml > tmp && mv tmp /usr/share/X11/xkb/rules/evdev.xml


