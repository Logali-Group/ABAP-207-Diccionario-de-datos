*---------------------------------------------------------------------*
*    view related data declarations
*---------------------------------------------------------------------*
*...processing: ZDATAEMP_LOGALI.................................*
DATA:  BEGIN OF STATUS_ZDATAEMP_LOGALI               .   "state vector
         INCLUDE STRUCTURE VIMSTATUS.
DATA:  END OF STATUS_ZDATAEMP_LOGALI               .
CONTROLS: TCTRL_ZDATAEMP_LOGALI
            TYPE TABLEVIEW USING SCREEN '0001'.
*.........table declarations:.................................*
TABLES: *ZDATAEMP_LOGALI               .
TABLES: ZDATAEMP_LOGALI                .

* general table data declarations..............
  INCLUDE LSVIMTDT                                .
