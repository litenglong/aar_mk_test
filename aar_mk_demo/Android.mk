LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)
LOCAL_PREBUILT_STATIC_JAVA_LIBRARIES := upplayer0.0.6:$(LOCAL_PATH)/libs/upplayer0.0.6.aar \
										appcompat-v7:$(LOCAL_PATH)/libs/appcompat-v7-26.1.0.aar \
										support-fragment-26.1.0-sources:$(LOCAL_PATH)/libs/support-fragment-26.1.0-sources.jar \
										constraint-layout:$(LOCAL_PATH)/libs/constraint-layout.jar \
										ijkplayer-exo-0.8.8:$(LOCAL_PATH)/libs/ijkplayer-exo-0.8.8.jar \
										ijkplayer-java-0.8.8:$(LOCAL_PATH)/libs/ijkplayer-java-0.8.8.jar \
										eventbus-3.0.0-sources:$(LOCAL_PATH)/libs/eventbus-3.0.0-sources.jar
include $(BUILD_MULTI_PREBUILT)

include $(CLEAR_VARS)
LOCAL_SRC_FILES := \
    $(call all-java-files-under, java)

LOCAL_STATIC_JAVA_LIBRARIES := support-fragment-26.1.0-sources \
								constraint-layout \
								ijkplayer-exo-0.8.8 \
								ijkplayer-java-0.8.8 \
								eventbus-3.0.0-sources


LOCAL_STATIC_JAVA_AAR_LIBRARIES := upplayer0.0.6 \
									appcompat-v7



										
LOCAL_AAPT_FLAGS := --auto-add-overlay \
                   --extra-packages com.ny.ijk.upplayer.media.PlayerManager \
					--extra-packages com.ny.ijk.upplayer.ui.PlayActivity \
					--extra-packages android.support.v7.appcompat 
									
LOCAL_PACKAGE_NAME := AiTV_demo
									
include $(BUILD_PACKAGE)
						
					



































































