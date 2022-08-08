*---------------------------------------------------------------------*
*    program for:   TABLEFRAME_ZDATAEMP_LOGALI
*   generation date: 06.06.2022 at 16:39:26
*   view maintenance generator version: #001407#
*---------------------------------------------------------------------*
FUNCTION TABLEFRAME_ZDATAEMP_LOGALI    .

  PERFORM TABLEFRAME TABLES X_HEADER X_NAMTAB DBA_SELLIST DPL_SELLIST
                            EXCL_CUA_FUNCT
                     USING  CORR_NUMBER VIEW_ACTION VIEW_NAME.

ENDFUNCTION.
