SRCDIR =src
VPATH = $(SRCDIR)

IDIR =$(SRCDIR)
CFLAGS=-I$(IDIR) -Werror -Wall -Wextra -std=c99 -pedantic

ODIR=build

DEPS = $(IDIR)/shs1.h

OBJ = $(ODIR)/shs1.o $(ODIR)/test.o

$(ODIR)/%.o: %.c $(DEPS)
	$(CC) -c -o $@ $< $(CFLAGS)

all: $(OBJ)
	cc -o $@ $^ $(CFLAGS) $(LIBS)

.PHONY: clean

clean:
	rm -f $(ODIR)/*.o all
