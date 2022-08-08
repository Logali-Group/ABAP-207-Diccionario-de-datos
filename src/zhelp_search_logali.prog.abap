*&---------------------------------------------------------------------*
*& Report zhelp_search_logali
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT zhelp_search_logali.

TABLES sflights.
*PARAMETERS p_carrid TYPE s_carr_id MATCHCODE OBJECT zshe_logali.

SELECT-OPTIONS s_carrid FOR sflights-carrid MATCHCODE OBJECT zshe_logali.
