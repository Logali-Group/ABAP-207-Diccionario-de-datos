*---------------------------------------------------------------------*
*    view related data declarations
*---------------------------------------------------------------------*
*...processing: ZEMPLOY_LOGALI..................................*
DATA:  BEGIN OF STATUS_ZEMPLOY_LOGALI                .   "state vector
         INCLUDE STRUCTURE VIMSTATUS.
DATA:  END OF STATUS_ZEMPLOY_LOGALI                .
CONTROLS: TCTRL_ZEMPLOY_LOGALI
            TYPE TABLEVIEW USING SCREEN '0001'.
*.........table declarations:.................................*
TABLES: *ZEMPLOY_LOGALI                .
TABLES: ZEMPLOY_LOGALI                 .

* general table data declarations..............
  INCLUDE LSVIMTDT                                .
