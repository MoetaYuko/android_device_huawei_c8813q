add_lunch_combo cm_c8813q-userdebug
add_lunch_combo cm_c8813q-eng
if [[ "$PATCHES_HUAWEI_C8813Q" -eq 1 ]]
then
  # apply Yamato patches
  export YAMATO_PATCH_SOURCE=1
  echo ""
  echo "***************** HUAWEI C8813Q *****************"
  echo ""
  sh device/huawei/c8813q/patches/apply.sh
  echo ""
  echo "***************** HUAWEI C8813Q *****************"
  echo ""
fi
