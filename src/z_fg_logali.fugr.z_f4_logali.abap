FUNCTION z_f4_logali.
*"----------------------------------------------------------------------
*"*"Local Interface:
*"  TABLES
*"      SHLP_TAB TYPE  SHLP_DESCT
*"      RECORD_TAB STRUCTURE  SEAHLPRES
*"  CHANGING
*"     VALUE(SHLP) TYPE  SHLP_DESCR
*"     VALUE(CALLCONTROL) TYPE  DDSHF4CTRL
*"----------------------------------------------------------------------
IF callcontrol-step = 'DISP'.
*  if sy-uname EQ 'LOGALI'.
*
*  ENDIF.
ENDIF.

BREAK-POINT.

ENDFUNCTION.
