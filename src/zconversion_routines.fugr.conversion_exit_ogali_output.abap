FUNCTION CONVERSION_EXIT_OGALI_OUTPUT.
*"----------------------------------------------------------------------
*"*"Local Interface:
*"  IMPORTING
*"     REFERENCE(INPUT) TYPE  CLIKE
*"  EXPORTING
*"     REFERENCE(OUTPUT) TYPE  CLIKE
*"----------------------------------------------------------------------
CONCATENATE input+4(2) '.' input(4) INTO output.






ENDFUNCTION.
