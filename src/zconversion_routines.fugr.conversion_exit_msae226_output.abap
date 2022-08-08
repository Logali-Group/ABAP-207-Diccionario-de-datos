FUNCTION CONVERSION_EXIT_MSAE226_OUTPUT.
*"----------------------------------------------------------------------
*"*"Local Interface:
*"  IMPORTING
*"     REFERENCE(INPUT)
*"  EXPORTING
*"     REFERENCE(OUTPUT)
*"----------------------------------------------------------------------

CONCATENATE input+4(2) '.' input(4) into output.



ENDFUNCTION.
