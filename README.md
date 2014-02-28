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
	</manifest>

5)Now type this command:

	repo sync -j16

6)Prebuilts:

	cd vendor/cm
	./get-prebuilts
	cd ../..

!)If this is the first time you build the source,run the next command to apply patches:

	export PATCHES_HUAWEI_C8813Q=1

7)Finally you're ready to build it:
	source build/envsetup.sh
	brunch cm_c8813q-userdebug

感谢mandfx 秋叶随风ivan ChepKun Chin-Z


存在bug：wifi便携式热点 视频硬解码
