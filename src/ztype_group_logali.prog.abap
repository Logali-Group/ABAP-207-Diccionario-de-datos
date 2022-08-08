*&---------------------------------------------------------------------*
*& Report ztype_group_logali
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT ztype_group_logali.

"TYPE-POOLS zloga.

DATA: gs_cntr_type TYPE zloga_cntr_type.

gs_cntr_type-cntr_type = 'U'.

gs_cntr_type-weekly_hrs = 10.

gs_cntr_type-vac_days = 15.

WRITE:  zloga_technicial_rate .
