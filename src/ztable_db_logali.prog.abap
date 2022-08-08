*&---------------------------------------------------------------------*
*& Report ztable_db_logali
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT ztable_db_logali.

DATA: gs_employee TYPE zemploy_logali.

gs_employee  = VALUE #( address_number =  1
                        name           =  'Ximena'
                        lastn1         =  'Mora'
                        lastn2         =  'Pérez'
                        prof_cat       =  '07'
                        status         =   'D'       ).

INSERT zemploy_logali FROM gs_employee.

IF sy-subrc EQ 0.

  WRITE: 'THE DATA HAS BEEN INSERTED CORRECTLY'.

ELSE.

  WRITE: / 'THE DATA HAS NOT BEEN INSERTED CORRECTLY'.

ENDIF.
