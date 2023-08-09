GTKDIALOG_CFLAGS	:= `pkg-config --cflags gtk+-2.0`
GTKDIALOG_LDFLAGS	:= `pkg-config --libs gtk+-2.0`
GTKDIALOG_OBJECTS	:= gtkdialog.o
CFLAGS	:= -Wall $(GTKDIALOG_CFLAGS)

all: $(GTKDIALOG_OBJECTS)
	$(CC) -o gtkdialog $(GTKDIALOG_OBJECTS) $(GTKDIALOG_LDFLAGS)

install: gtkdialog
	mkdir -p $(DESTDIR)/usr/bin/
	cp gtkdialog $(DESTDIR)/usr/bin/

remove:
	rm $(DESTDIR)/usr/bin/gtkdialog

clean:
	rm -f gtkdialog

