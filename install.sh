SKIPMOUNT=false

PROPFILE=false

POSTFSDATA=false

LATESTARTSERVICE=false

REPLACE_EXAMPLE="
/system/app/Youtube
/system/priv-app/SystemUI
/system/priv-app/Settings
/system/framework
"

REPLACE="
"

print() {
  ui_print ""
  ui_print "BS Bootanimation"
  ui_print ""
}

on_install() {

unzip -o "$ZIPFILE" 'files/*' -d $MODPATH >&2

if [ -f "/system/media/bootanimation.zip" ]; then
mkdir -p $MODPATH/system/media
cp -f $MODPATH/files/bootanimation.zip $MODPATH/system/media/
ui_print "[🔃] Instalando bootanimation"

elif [ -f "/system/product/media/bootanimation.zip" ]; then
mkdir -p $MODPATH/system/product/media
cp -f $MODPATH/files/bootanimation.zip $MODPATH/system/product/media/
ui_print "[🔃] Instalando bootanimation"

ui_print " "
ui_print "[🔃] Instalando bootlogo logo_a"
ui_print "[🔃] Instalando bootlogo logo_b"

else
ui_print "Parece que sua ROM não é suportada..."
exit 1;
fi
ui_print " "
ui_print "[🚀] Pronto!"
ui_print " "
ui_print "(⁠ﾉ⁠◕⁠ヮ⁠◕⁠)⁠ﾉ⁠*⁠.⁠✧"


set_permissions() {
  set_perm_recursive $MODPATH/system/media 0 0 0755 0755
  set_perm_recursive $MODPATH/system/product/media 0 0 0755 0755

}
unity_custom() {
  : 
}

}
