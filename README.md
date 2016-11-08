This solution build [Mini-XML](http://www.msweet.org/projects.php?Z3)
for with Visual C++ compiler (aka `cl.exe`)

**Needs**
* Mini-XML 2.10 sources ([download link](http://www.msweet.org/files/project3/mxml-2.10.tar.gz))
* patch.exe ([unxutils.sourceforge.net](http://unxutils.sourceforge.net/))
* make.exe (unxutils.sourceforge.net)
* cl.exe in PATH (`Start` > `All Progams` >
`Microsoft Visual Studio` > `Visual Studio command line`)

**How to use?**  
Simple. Drop `mxml-2.10.lib` file, to your project dir and add to sources list.  
```
cl.exe my-super-project.c mxml-2.10.lib
```

**How to compile?**
```
make
```
