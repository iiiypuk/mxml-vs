CC = cl -nologo
MAKELIB = lib -nologo

all: mxml-file.c mxml-2.10.lib
	$(CC) test-xml.c mxml-2.10.lib
	test-xml

mxml-file.c:
	patch -fp0 < vs-fix.patch

mxml-2.10.lib:
	copy mxml-2.10\vcnet\config.h mxml-2.10\config.h
	$(CC) /c mxml-2.10/mxml-attr.c mxml-2.10/mxml-entity.c mxml-2.10/mxml-file.c mxml-2.10/mxml-get.c mxml-2.10/mxml-index.c mxml-2.10/mxml-node.c mxml-2.10/mxml-private.c mxml-2.10/mxml-search.c mxml-2.10/mxml-set.c mxml-2.10/mxml-string.c
	$(MAKELIB) /OUT:mxml-2.10.lib mxml-attr.obj mxml-entity.obj mxml-file.obj mxml-get.obj mxml-index.obj mxml-node.obj mxml-private.obj mxml-search.obj mxml-set.obj mxml-string.obj
