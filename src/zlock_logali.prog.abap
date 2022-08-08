*&---------------------------------------------------------------------*
*& Report zlock_logali
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT zlock_logali.

DATA gs_employee TYPE zemploy_logali.

CALL FUNCTION 'ENQUEUE_EZ_EMPLOY_LOGALI'
*  EXPORTING
*    mode_zemploy_logali = 'E'
*   client              = SY-MANDT
*   address_number      = '6'
*    x_address_number    = space
*    _scope              = '2'
*    _wait               = space
*    _collect            = ' '
  EXCEPTIONS
    foreign_lock   = 1
    system_failure = 2
    OTHERS         = 3.
IF sy-subrc <> 0.
* MESSAGE ID SY-MSGID TYPE SY-MSGTY NUMBER SY-MSGNO
*   WITH SY-MSGV1 SY-MSGV2 SY-MSGV3 SY-MSGV4.
ENDIF.


gs_employee = VALUE #( address_number = '6'
                       name           = 'Alejandro'
                       lastn1         = 'Forero'
                       lastn2         = 'López'
                       prof_cat       = '3'
                       status         = 'A'    ).

INSERT zemploy_logali FROM gs_employee.

IF sy-subrc EQ 0.

    MESSAGE i000(00) WITH 'Record inserted correctly'.

ENDIF.

CALL FUNCTION 'DEQUEUE_EZ_EMPLOY_LOGALI'
*  EXPORTING
*    mode_zemploy_logali = 'E'
*    client              = SY-MANDT
*    address_number      =
*    x_address_number    = space
*    _scope              = '3'
*    _synchron           = space
*    _collect            = ' '
  .
