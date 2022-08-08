*---------------------------------------------------------------------*
*    view related data declarations
*---------------------------------------------------------------------*
*...processing: ZMV_MARA_LOGALI.................................*
TABLES: ZMV_MARA_LOGALI, *ZMV_MARA_LOGALI. "view work areas
CONTROLS: TCTRL_ZMV_MARA_LOGALI
TYPE TABLEVIEW USING SCREEN '0001'.
DATA: BEGIN OF STATUS_ZMV_MARA_LOGALI. "state vector
          INCLUDE STRUCTURE VIMSTATUS.
DATA: END OF STATUS_ZMV_MARA_LOGALI.
* Table for entries selected to show on screen
DATA: BEGIN OF ZMV_MARA_LOGALI_EXTRACT OCCURS 0010.
INCLUDE STRUCTURE ZMV_MARA_LOGALI.
          INCLUDE STRUCTURE VIMFLAGTAB.
DATA: END OF ZMV_MARA_LOGALI_EXTRACT.
* Table for all entries loaded from database
DATA: BEGIN OF ZMV_MARA_LOGALI_TOTAL OCCURS 0010.
INCLUDE STRUCTURE ZMV_MARA_LOGALI.
          INCLUDE STRUCTURE VIMFLAGTAB.
DATA: END OF ZMV_MARA_LOGALI_TOTAL.

*.........table declarations:.................................*
TABLES: MARA                           .
