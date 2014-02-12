CyanogenMod for Huawei C8813Q
=================
Compilation Notes
-----------------

* Build from Sources

1)Create a directory

	mkdir ~/android
	mkdir ~/android/system

2)Change to the created directory

	cd ~/android/system

3)Init the CyanogenMod repository

	repo init -u git://github.com/CyanogenMod/android.git -b cm-10.1

4)Paste this lines inside new file .repo/local_manifests/local_manifests.xml

	<?xml version="1.0" encoding="UTF-8"?>
	<manifest>
	  <!-- remote  name="github" fetch="git://github.com/" /-->
	  <project remote="github" revision="cm-10.1" name="dianlujitao/android_device_huawei_c8813q" path="device/huawei/c8813q"/>
	  <project remote="github" revision="3.4.0" name="dianlujitao/android_kernel_huawei_c8813q" path="kernel/huawei/c8813q"/>
	  <project remote="github" revision="cm-10.1" name="dianlujitao/android_vendor_huawei_c8813q" path="vendor/huawei/c8813q"/>
	  <project remote="github" revision="cm-10.1" name="dianlujitao/android_hardware_qcom_display-legacy" path="hardware/qcom/display-legacy"/>
	  <project remote="github" revision="cm-10.1" name="dianlujitao/android_hardware_qcom_media-legacy" path="hardware/qcom/media-legacy"/>
	  <project remote="github" revision="cm-10.1" name="dianlujitao/android_hardware_atheros_wifi_libs" path="hardware/atheros/wifi/libs"/>
	</manifest>

5)Now type this command:

	repo sync -j16

6)Prebuilts:

	cd vendor/cm
	./get-prebuilts
	cd ../..

7)Finally you're ready to build it:

	source build/envsetup.sh
	brunch cm_c8813q-userdebug

感谢mandfx 秋叶随风ivan Chin-Z


存在bug：wifi便携式热点 前置摄像头 视频硬解码
