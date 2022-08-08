*---------------------------------------------------------------------*
*    program for:   TABLEFRAME_ZEMPLOY_LOGALI
*   generation date: 09.06.2022 at 10:11:40
*   view maintenance generator version: #001407#
*---------------------------------------------------------------------*
FUNCTION TABLEFRAME_ZEMPLOY_LOGALI     .

  PERFORM TABLEFRAME TABLES X_HEADER X_NAMTAB DBA_SELLIST DPL_SELLIST
                            EXCL_CUA_FUNCT
                     USING  CORR_NUMBER VIEW_ACTION VIEW_NAME.

ENDFUNCTION.
