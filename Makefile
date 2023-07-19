CC=cc
CFLAGS=-Wall -Werror -lm
NAME=gameoflife
INSTALL_PATH=/usr/bin/$(NAME)

all: $(NAME)

$(NAME): gameoflife.c
	$(CC) $(CFLAGS) $^ -o $@

install:
	cp $(NAME) $(INSTALL_PATH)

uninstall:
	rm $(INSTALL_PATH)

clean:
	rm -f $(NAME)
