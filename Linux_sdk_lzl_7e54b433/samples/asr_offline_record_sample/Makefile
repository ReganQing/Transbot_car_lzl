#common makefile header

DIR_INC = /home/zhuolong/lzl/ros_xfei_voice/Linux_sdk_lzl_7e54b433/include
DIR_BIN = /home/zhuolong/lzl/ros_xfei_voice/Linux_sdk_lzl_7e54b433/bin
DIR_LIB = /home/zhuolong/lzl/ros_xfei_voice/Linux_sdk_lzl_7e54b433/libs

TARGET	= asr_offline_record_sample
BIN_TARGET = $(DIR_BIN)/$(TARGET)

CROSS_COMPILE = 
CFLAGS = -g -Wall -I$(DIR_INC)

ifdef LINUX64
LDFLAGS := -L$(DIR_LIB)/x64
else
LDFLAGS := -L$(DIR_LIB)/x86 
endif
LDFLAGS += -lmsc -lrt -ldl -lpthread -lasound -lstdc++

OBJECTS := $(patsubst %.c,%.o,$(wildcard *.c))

$(BIN_TARGET) : $(OBJECTS)
	$(CROSS_COMPILE)gcc $(CFLAGS) $^ -o $@ $(LDFLAGS)

%.o : %.c
	$(CROSS_COMPILE)gcc -c $(CFLAGS) $< -o $@
clean:
	@rm -f *.o $(BIN_TARGET)

.PHONY:clean

#common makefile foot
