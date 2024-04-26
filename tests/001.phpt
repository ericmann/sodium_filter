--TEST--
Check if sodium_filter is loaded
--EXTENSIONS--
sodium_filter
--FILE--
<?php
echo 'The extension "sodium_filter" is available';
?>
--EXPECT--
The extension "sodium_filter" is available
