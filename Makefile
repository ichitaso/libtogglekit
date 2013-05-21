GO_EASY_ON_ME=1

include theos/makefiles/common.mk

TWEAK_NAME = libtogglekit
libtogglekit_FILES = Tweak.xm
libtogglekit_FRAMEWORKS = Foundation UIKit

include $(THEOS_MAKE_PATH)/tweak.mk
