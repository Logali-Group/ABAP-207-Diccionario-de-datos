FUNCTION z_f4_airline_logali.
*"----------------------------------------------------------------------
*"*"Local Interface:
*"  TABLES
*"      SHLP_TAB TYPE  SHLP_DESCT
*"      RECORD_TAB STRUCTURE  SEAHLPRES
*"  CHANGING
*"     VALUE(SHLP) TYPE  SHLP_DESCR
*"     VALUE(CALLCONTROL) TYPE  DDSHF4CTRL
*"----------------------------------------------------------------------

  IF callcontrol-step EQ 'DISP'.

    DELETE record_tab WHERE string+3(2) NE 'AA'.
*    IF sy-uname EQ 'LOGALI'.
*
*    ENDIF.

  ENDIF.





ENDFUNCTION.
