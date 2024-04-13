GTKDIALOG_CFLAGS	:= `pkg-config --cflags gtk+-2.0`
GTKDIALOG_LDFLAGS	:= `pkg-config --libs gtk+-2.0`
GTKDIALOG_OBJECTS	:= gtkask.o
CFLAGS	:= -Wall $(GTKDIALOG_CFLAGS)

all: $(GTKDIALOG_OBJECTS)
	$(CC) -o gtkask $(GTKDIALOG_OBJECTS) $(GTKDIALOG_LDFLAGS)

install: gtkask
	mkdir -p $(DESTDIR)/usr/bin/
	cp gtkask $(DESTDIR)/usr/bin/

remove:
	rm $(DESTDIR)/usr/bin/gtkask

clean:
	rm -f gtkask gtkask.o

