*&---------------------------------------------------------------------*
*& Report zgtt_logali
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT zgtt_logali.

INSERT zdataemp_logali FROM TABLE @(  VALUE #( ( emp_id      = 00001
                                                 name        = 'Laura'
                                                 lastn       = 'Arias'
                                                 nationality = 'Colombiana' ) ) ).

SELECT FROM  zdataemp_logali
 FIELDS *
 INTO TABLE @DATA(gt_employees).

DELETE FROM zdataemp_logali.
*commit work.
*ROLLBACK WORK.


IF sy-subrc EQ 0.
  cl_demo_output=>display( gt_employees ).
ENDIF.
