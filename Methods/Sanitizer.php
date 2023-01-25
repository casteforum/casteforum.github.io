<?php
function sanitize($method, $parameter, $sanitization_type) { return filter_input($method, $parameter, $sanitization_type); }
function doubleSanitize($method, $parameter, $sanitization_type, $sanitization_type_2=FILTER_SANITIZE_FULL_SPECIAL_CHARS) {return filter_var(filter_input($method, $parameter, $sanitization_type), $sanitization_type_2); }
?>