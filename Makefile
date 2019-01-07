include $(THEOS)/makefiles/common.mk

TWEAK_NAME = uncrypt11
uncrypt11_FILES = Tweak.xm

include $(THEOS_MAKE_PATH)/tweak.mk

after-install::
	install.exec "killall -9 SpringBoard"
