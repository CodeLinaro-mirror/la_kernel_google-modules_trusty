M ?= $(shell pwd)

KBASE_PATH_RELATIVE = $(M)

CFLAGS_MODULE += -Werror

modules modules_install clean:
	$(MAKE) -C $(KERNEL_SRC) M=$(M) W=1 \
	CFLAGS_MODULE="$(CFLAGS_MODULE)" KBUILD_EXTRA_SYMBOLS="$(EXTRA_SYMBOLS)" $(@)
