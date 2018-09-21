GO_EASY_ONE_ME = 1
DEBUG = 0
TARGET = simulator:clang::7.0
ARCHS = x86_64

include $(THEOS)/makefiles/common.mk

TWEAK_NAME = SimjectTest
SimjectTest_FILES = Tweak.xm

include $(THEOS_MAKE_PATH)/tweak.mk

# place dylib after compiling into opt/simject :)
all::
	@rm -f /opt/simject/$(TWEAK_NAME).dylib
	@cp -v $(THEOS_OBJ_DIR)/$(TWEAK_NAME).dylib /opt/simject
	@cp -v $(PWD)/$(TWEAK_NAME).plist /opt/simject/$(TWEAK_NAME).plist
