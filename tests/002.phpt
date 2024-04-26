--TEST--
test1() Basic test
--EXTENSIONS--
sodium_filter
--FILE--
<?php
$ret = test1();

var_dump($ret);
?>
--EXPECT--
The extension sodium_filter is loaded and working!
NULL
