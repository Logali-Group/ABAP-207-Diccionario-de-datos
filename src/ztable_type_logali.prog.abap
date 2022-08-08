*&---------------------------------------------------------------------*
*& Report ztable_type_logali
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT ztable_type_logali.

CLASS lcl_company DEFINITION.

  PUBLIC SECTION.

    METHODS: register_employees IMPORTING employees_table TYPE ztt_empl_data_logali,
      list_employees.

  PRIVATE SECTION.
    DATA employees_table TYPE ztt_empl_data_logali.

ENDCLASS.

CLASS lcl_company IMPLEMENTATION.

  METHOD register_employees.

    me->employees_table = employees_table.

  ENDMETHOD.


  METHOD list_employees.

    DATA ls_employee TYPE zstruc_empl_data_logali.

    LOOP AT me->employees_table INTO ls_employee. "POR EL TIPO DE TABLA
      WRITE: / ls_employee-name.
    ENDLOOP.

  ENDMETHOD.

ENDCLASS.

**********************************************************************

*START-OF-SELECTION.
*
*  DATA: gt_employees TYPE ztt_empl_data_logali,
*        gs_employee  TYPE zstruc_empl_data_logali,
*        gr_company   TYPE REF TO lcl_company.
*
*  gs_employee-name = 'Alejandro'.
*  APPEND gs_employee TO gt_employees.
*
*  gs_employee-name = 'Ximena'.
*  APPEND gs_employee TO gt_employees.
*
*  CREATE OBJECT gr_company.
*
*  gr_company->register_employees( employees_table = gt_employees ).
*
*  gr_company->list_employees(  ).

**********************************************************************
