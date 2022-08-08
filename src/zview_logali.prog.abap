*&---------------------------------------------------------------------*
*& Report zview_logali
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT zview_logali.

DATA ls_employee TYPE zvs_empl_logali.

ls_employee = VALUE #( address_number = 2
                       name = 'Sara'
                       lastn1 = 'Solano'
                       lastn2 = 'Vera'
                                         ).
INSERT zvs_empl_logali FROM ls_employee.

IF sy-subrc EQ 0.
  WRITE: 'Record inserted correctly'.
ENDIF.
