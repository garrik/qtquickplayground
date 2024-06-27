# Prerequisites
QT6 is required.
The installation path of Qt must be known to cmake,
can be passed as param e.g.

```bash
# check Qt path and version
qmake -query QT_INSTALL_PREFIX
qmake -query QT_VERSION

cmake -DCMAKE_PREFIX_PATH="${HOME}/Qt/6.6.3/gcc_64" -S. -B${HOME}/develop/build/qtquickplayground
```
