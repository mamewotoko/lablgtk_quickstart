OCAMLMAKEFILE=OCamlMakefile

TARGET=gtk_app
SOURCES=src/main.ml
# gtk2
#OPTS = RESULT=$(TARGET) SOURCES=$(SOURCES) PACKS=lablgtk2
# gtk3
OPTS = RESULT=$(TARGET) SOURCES=$(SOURCES) PACKS=lablgtk3

all: $(TARGET)

$(TARGET): $(SOURCES)
	make -f $(OCAMLMAKEFILE) $(OPTS) nc

clean:
	make -f $(OCAMLMAKEFILE) $(OPTS) clean
