dnl config.m4 for extension sodium_filter

dnl Comments in this file start with the string 'dnl'.
dnl Remove where necessary.

dnl If your extension references something external, use 'with':

dnl PHP_ARG_WITH([sodium_filter],
dnl   [for sodium_filter support],
dnl   [AS_HELP_STRING([--with-sodium_filter],
dnl     [Include sodium_filter support])])

dnl Otherwise use 'enable':

PHP_ARG_ENABLE([sodium_filter],
  [whether to enable sodium_filter support],
  [AS_HELP_STRING([--enable-sodium_filter],
    [Enable sodium_filter support])],
  [no])

if test "$PHP_SODIUM_FILTER" != "no"; then
  dnl Write more examples of tests here...

  dnl Remove this code block if the library does not support pkg-config.
  dnl PKG_CHECK_MODULES([LIBFOO], [foo])
  dnl PHP_EVAL_INCLINE($LIBFOO_CFLAGS)
  dnl PHP_EVAL_LIBLINE($LIBFOO_LIBS, SODIUM_FILTER_SHARED_LIBADD)

  dnl If you need to check for a particular library version using PKG_CHECK_MODULES,
  dnl you can use comparison operators. For example:
  dnl PKG_CHECK_MODULES([LIBFOO], [foo >= 1.2.3])
  dnl PKG_CHECK_MODULES([LIBFOO], [foo < 3.4])
  dnl PKG_CHECK_MODULES([LIBFOO], [foo = 1.2.3])

  dnl Remove this code block if the library supports pkg-config.
  dnl --with-sodium_filter -> check with-path
  dnl SEARCH_PATH="/usr/local /usr"     # you might want to change this
  dnl SEARCH_FOR="/include/sodium_filter.h"  # you most likely want to change this
  dnl if test -r $PHP_SODIUM_FILTER/$SEARCH_FOR; then # path given as parameter
  dnl   SODIUM_FILTER_DIR=$PHP_SODIUM_FILTER
  dnl else # search default path list
  dnl   AC_MSG_CHECKING([for sodium_filter files in default path])
  dnl   for i in $SEARCH_PATH ; do
  dnl     if test -r $i/$SEARCH_FOR; then
  dnl       SODIUM_FILTER_DIR=$i
  dnl       AC_MSG_RESULT(found in $i)
  dnl     fi
  dnl   done
  dnl fi
  dnl
  dnl if test -z "$SODIUM_FILTER_DIR"; then
  dnl   AC_MSG_RESULT([not found])
  dnl   AC_MSG_ERROR([Please reinstall the sodium_filter distribution])
  dnl fi

  dnl Remove this code block if the library supports pkg-config.
  dnl --with-sodium_filter -> add include path
  dnl PHP_ADD_INCLUDE($SODIUM_FILTER_DIR/include)

  dnl Remove this code block if the library supports pkg-config.
  dnl --with-sodium_filter -> check for lib and symbol presence
  dnl LIBNAME=SODIUM_FILTER # you may want to change this
  dnl LIBSYMBOL=SODIUM_FILTER # you most likely want to change this

  dnl If you need to check for a particular library function (e.g. a conditional
  dnl or version-dependent feature) and you are using pkg-config:
  dnl PHP_CHECK_LIBRARY($LIBNAME, $LIBSYMBOL,
  dnl [
  dnl   AC_DEFINE(HAVE_SODIUM_FILTER_FEATURE, 1, [ ])
  dnl ],[
  dnl   AC_MSG_ERROR([FEATURE not supported by your sodium_filter library.])
  dnl ], [
  dnl   $LIBFOO_LIBS
  dnl ])

  dnl If you need to check for a particular library function (e.g. a conditional
  dnl or version-dependent feature) and you are not using pkg-config:
  dnl PHP_CHECK_LIBRARY($LIBNAME, $LIBSYMBOL,
  dnl [
  dnl   PHP_ADD_LIBRARY_WITH_PATH($LIBNAME, $SODIUM_FILTER_DIR/$PHP_LIBDIR, SODIUM_FILTER_SHARED_LIBADD)
  dnl   AC_DEFINE(HAVE_SODIUM_FILTER_FEATURE, 1, [ ])
  dnl ],[
  dnl   AC_MSG_ERROR([FEATURE not supported by your sodium_filter library.])
  dnl ],[
  dnl   -L$SODIUM_FILTER_DIR/$PHP_LIBDIR -lm
  dnl ])
  dnl
  dnl PHP_SUBST(SODIUM_FILTER_SHARED_LIBADD)

  dnl In case of no dependencies
  AC_DEFINE(HAVE_SODIUM_FILTER, 1, [ Have sodium_filter support ])

  PHP_NEW_EXTENSION(sodium_filter, sodium_filter.c, $ext_shared)
fi
