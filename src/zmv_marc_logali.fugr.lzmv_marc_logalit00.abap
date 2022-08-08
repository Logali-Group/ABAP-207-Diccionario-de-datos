*---------------------------------------------------------------------*
*    view related data declarations
*---------------------------------------------------------------------*
*...processing: ZMV_MARC_LOGALI.................................*
TABLES: ZMV_MARC_LOGALI, *ZMV_MARC_LOGALI. "view work areas
CONTROLS: TCTRL_ZMV_MARC_LOGALI
TYPE TABLEVIEW USING SCREEN '0002'.
DATA: BEGIN OF STATUS_ZMV_MARC_LOGALI. "state vector
          INCLUDE STRUCTURE VIMSTATUS.
DATA: END OF STATUS_ZMV_MARC_LOGALI.
* Table for entries selected to show on screen
DATA: BEGIN OF ZMV_MARC_LOGALI_EXTRACT OCCURS 0010.
INCLUDE STRUCTURE ZMV_MARC_LOGALI.
          INCLUDE STRUCTURE VIMFLAGTAB.
DATA: END OF ZMV_MARC_LOGALI_EXTRACT.
* Table for all entries loaded from database
DATA: BEGIN OF ZMV_MARC_LOGALI_TOTAL OCCURS 0010.
INCLUDE STRUCTURE ZMV_MARC_LOGALI.
          INCLUDE STRUCTURE VIMFLAGTAB.
DATA: END OF ZMV_MARC_LOGALI_TOTAL.

*.........table declarations:.................................*
TABLES: MARC                           .
