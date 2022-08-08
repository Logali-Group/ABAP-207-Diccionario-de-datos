*---------------------------------------------------------------------*
*    view related data declarations
*---------------------------------------------------------------------*
*...processing: ZMV_LOGALI......................................*
TABLES: ZMV_LOGALI, *ZMV_LOGALI. "view work areas
CONTROLS: TCTRL_ZMV_LOGALI
TYPE TABLEVIEW USING SCREEN '0001'.
DATA: BEGIN OF STATUS_ZMV_LOGALI. "state vector
          INCLUDE STRUCTURE VIMSTATUS.
DATA: END OF STATUS_ZMV_LOGALI.
* Table for entries selected to show on screen
DATA: BEGIN OF ZMV_LOGALI_EXTRACT OCCURS 0010.
INCLUDE STRUCTURE ZMV_LOGALI.
          INCLUDE STRUCTURE VIMFLAGTAB.
DATA: END OF ZMV_LOGALI_EXTRACT.
* Table for all entries loaded from database
DATA: BEGIN OF ZMV_LOGALI_TOTAL OCCURS 0010.
INCLUDE STRUCTURE ZMV_LOGALI.
          INCLUDE STRUCTURE VIMFLAGTAB.
DATA: END OF ZMV_LOGALI_TOTAL.

*.........table declarations:.................................*
TABLES: ZEMPLOY_LOGALI                 .
