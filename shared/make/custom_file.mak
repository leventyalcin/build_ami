# vim: ts=4 st=4 sr noet smartindent syntax=make ft=make:
# Template to include a file who's path is $CUSTOM_FILE
# BUT only if it exists ...
#
PROJECT_FILE := $(strip $(wildcard $(CUSTOM_FILE)))
ifneq ($(PROJECT_FILE),)
	include $(PROJECT_FILE)
endif
