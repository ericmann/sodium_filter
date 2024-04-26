/* sodium_filter extension for PHP (c) 2024 Eric Mann <eric@eamann.com> */

#ifndef PHP_SODIUM_FILTER_H
# define PHP_SODIUM_FILTER_H

extern zend_module_entry sodium_filter_module_entry;
# define phpext_sodium_filter_ptr &sodium_filter_module_entry

# define PHP_SODIUM_FILTER_VERSION "0.1.0"

# if defined(ZTS) && defined(COMPILE_DL_SODIUM_FILTER)
ZEND_TSRMLS_CACHE_EXTERN()
# endif

#endif	/* PHP_SODIUM_FILTER_H */
