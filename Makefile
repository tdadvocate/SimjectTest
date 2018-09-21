TARGET = simulator:clang::7.0
ARCHS = x86_64

include $(THEOS)/makefiles/common.mk

TWEAK_NAME = SimjectTest
SimjectTest_FILES = Tweak.xm

include $(THEOS_MAKE_PATH)/tweak.mk

after-install::
	install.exec "killall -9 SpringBoard"
