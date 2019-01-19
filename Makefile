OCAMLMAKEFILE=OCamlMakefile

TARGET=gtk_app
SOURCES=src/main.ml
OPTS = RESULT=$(TARGET) SOURCES=$(SOURCES) PACKS=lablgtk2

all: $(TARGET)

$(TARGET): $(SOURCES)
	make -f $(OCAMLMAKEFILE) $(OPTS) nc

clean:
	make -f $(OCAMLMAKEFILE) $(OPTS) clean
