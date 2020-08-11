LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)
LOCAL_PREBUILT_STATIC_JAVA_LIBRARIES := upplayer0.0.6:libs/upplayer0.0.6.aar \
										appcompat-v7:libs/android-support-v7-appcompat.jar \
										support-fragment-26.1.0-sources:libs/support-fragment-26.1.0-sources.jar \
										constraint-layout:libs/constraint-layout.jar \
										ijkplayer-exo-0.8.8:libs/ijkplayer-exo-0.8.8.jar \
										ijkplayer-java-0.8.8:libs/ijkplayer-java-0.8.8.jar \
										eventbus-3.0.0-sources:libs/eventbus-3.0.0-sources.jar \
										android:libs/android.jar \
										android-support-v4:libs/android-support-v4.jar
include $(BUILD_MULTI_PREBUILT)

include $(CLEAR_VARS)
LOCAL_SRC_FILES := \
    $(call all-java-files-under, java)

LOCAL_STATIC_JAVA_LIBRARIES := support-fragment-26.1.0-sources \
								constraint-layout \
								ijkplayer-exo-0.8.8 \
								ijkplayer-java-0.8.8 \
								eventbus-3.0.0-sources \
								android \
								android-support-v4 \
								appcompat-v7


LOCAL_STATIC_JAVA_AAR_LIBRARIES := upplayer0.0.6



										
LOCAL_AAPT_FLAGS := --auto-add-overlay \
                   --extra-packages com.ny.ijk.upplayer.media.PlayerManager \
					--extra-packages com.ny.ijk.upplayer.ui.PlayActivity 
									
LOCAL_PACKAGE_NAME := AiTV_demo
									
include $(BUILD_PACKAGE)
						
					



































































