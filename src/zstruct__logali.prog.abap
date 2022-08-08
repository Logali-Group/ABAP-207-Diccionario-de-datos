*&---------------------------------------------------------------------*
*& Report zstruct__logali
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT zstruct__logali.

"Structure

TYPES: BEGIN OF lty_employees,
         address    TYPE z_address_logali,
         country    TYPE land1,
         population TYPE ad_city1,
         district   TYPE ad_city2,
         reg_group  TYPE regiogroup,
         post_code  TYPE ad_pstcd1,
       END OF lty_employees.

DATA ls_employee TYPE lty_employees.

ls_employee-address = 1.

DATA ls_employee2 TYPE zstruc_empl_logali.

ls_employee2-post_code = 25.


"Nested structure


DATA: gs_empl_data TYPE zstruc_empl_data_logali,
      gs_org_unit  TYPE zstruc_org_unit_logali.


gs_empl_data-name = 'Alberto'.
gs_empl_data-lastn1 = 'Pérez'.
gs_empl_data-address_num-address = '0266'.


gs_org_unit-sales_manager-name   = 'Carlos'.
gs_org_unit-sales_manager-lastn1 = 'López'.
gs_org_unit-sales_manager-address_num-address = '0899'.


gs_org_unit-employee =   gs_empl_data.

WRITE: 'Employee =' , gs_org_unit-employee-name.
