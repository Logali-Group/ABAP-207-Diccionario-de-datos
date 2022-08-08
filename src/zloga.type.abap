TYPE-POOL zloga.

CONSTANTS: zloga_technicial_rate TYPE i VALUE 80,
           zloga_programeer_rate TYPE i VALUE 100,
           zloga_analyst_rate    TYPE i VALUE 150,
           zloga_proj_manager_rate TYPE i VALUE 200.


TYPES: BEGIN OF zloga_cntr_type,
        cntr_type  TYPE zcntr_type_logali,
        weekly_hrs TYPE i,
        vac_days   TYPE i,
       END OF zloga_cntr_type.
