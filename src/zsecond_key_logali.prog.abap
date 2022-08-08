*&---------------------------------------------------------------------*
*& Report zsecond_key_logali
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT zsecond_key_logali.

TYPES: BEGIN OF lty_employees,
         name     TYPE zname_logali,
         lastn1   TYPE zlastn1_logali,
         lastn2   TYPE zlastn2_logali,
         prof_cat TYPE zprof_cat_logali,
         status   TYPE zstatus_logali,
       END OF lty_employees.

TYPES: tt_employees TYPE STANDARD TABLE OF lty_employees
       WITH KEY name lastn1
       WITH NON-UNIQUE SORTED KEY cat_status COMPONENTS prof_cat status.

DATA: gt_employees TYPE tt_employees,
      gs_employee  TYPE lty_employees.

CONSTANTS: gc_prof_cat TYPE zprof_cat_logali VALUE '05', "Programmer
           gc_status   TYPE zstatus_logali VALUE 'D'.

"LOOP Primary key
LOOP AT gt_employees INTO gs_employee
        WHERE name EQ 'Alberto'
        AND   lastn1 EQ 'Ruiz'.
ENDLOOP.


"LOOP Secondary key

LOOP AT gt_employees INTO gs_employee
    USING KEY cat_status
    WHERE prof_cat EQ gc_prof_cat
    AND   status   EQ gc_status.
ENDLOOP.

"READ TABLE

gs_employee = gt_employees[ KEY cat_status COMPONENTS prof_cat = gc_prof_cat
                                                      status   = gc_status    ].



**********************************************************************

DATA: gt_empl TYPE ztt_empl_data_logali,
      gs_empl TYPE zstruc_empl_data_logali.

LOOP AT gt_empl INTO gs_empl
     USING KEY cat_status
     WHERE prof_cat EQ gc_prof_cat
     AND   status   EQ gc_status.
ENDLOOP.
