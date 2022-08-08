*---------------------------------------------------------------------*
*    view related data declarations
*---------------------------------------------------------------------*
*...processing: ZMV_MARD_LOGALI.................................*
TABLES: ZMV_MARD_LOGALI, *ZMV_MARD_LOGALI. "view work areas
CONTROLS: TCTRL_ZMV_MARD_LOGALI
TYPE TABLEVIEW USING SCREEN '0003'.
DATA: BEGIN OF STATUS_ZMV_MARD_LOGALI. "state vector
          INCLUDE STRUCTURE VIMSTATUS.
DATA: END OF STATUS_ZMV_MARD_LOGALI.
* Table for entries selected to show on screen
DATA: BEGIN OF ZMV_MARD_LOGALI_EXTRACT OCCURS 0010.
INCLUDE STRUCTURE ZMV_MARD_LOGALI.
          INCLUDE STRUCTURE VIMFLAGTAB.
DATA: END OF ZMV_MARD_LOGALI_EXTRACT.
* Table for all entries loaded from database
DATA: BEGIN OF ZMV_MARD_LOGALI_TOTAL OCCURS 0010.
INCLUDE STRUCTURE ZMV_MARD_LOGALI.
          INCLUDE STRUCTURE VIMFLAGTAB.
DATA: END OF ZMV_MARD_LOGALI_TOTAL.

*.........table declarations:.................................*
TABLES: MARD                           .
