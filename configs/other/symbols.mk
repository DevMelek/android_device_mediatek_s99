# Include symbols
ifeq ($(TARGET_INCLUDE_XLOG_SYMBOLS),true)
LINKER_FORCED_SHIM_LIBS := /system/lib/liblog.so|libmtkshim_log.so:/system/lib64/liblog.so|libmtkshim_log.so
endif
ifeq ($(TARGET_INCLUDE_AUDIO_SYMBOLS),true)
LINKER_FORCED_SHIM_LIBS := $(LINKER_FORCED_SHIM_LIBS):/system/vendor/lib/hw/audio.primary.$(TARGET_BOARD_PLATFORM).so|libmtkshim_audio.so
endif
ifeq ($(TARGET_INCLUDE_UI_SYMBOLS),true)
LINKER_FORCED_SHIM_LIBS := $(LINKER_FORCED_SHIM_LIBS):/system/lib/libui.so|libmtkshim_ui.so:/system/lib64/libui.so|libmtkshim_ui.so
endif
ifeq ($(TARGET_INCLUDE_GUI_SYMBOLS),true)
LINKER_FORCED_SHIM_LIBS := $(LINKER_FORCED_SHIM_LIBS):/system/lib/libgui.so|libmtkshim_gui.so:/system/lib64/libgui.so|libmtkshim_gui.so
endif
ifeq ($(TARGET_INCLUDE_OMX_SYMBOLS),true)
LINKER_FORCED_SHIM_LIBS := $(LINKER_FORCED_SHIM_LIBS):/system/lib/libMtkOmxVdec.so|libmtkshim_omx.so
endif
