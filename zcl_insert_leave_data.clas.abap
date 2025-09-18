CLASS zcl_insert_leave_data DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    INTERFACES if_oo_adt_classrun.
ENDCLASS.


CLASS zcl_insert_leave_data IMPLEMENTATION.

  METHOD if_oo_adt_classrun~main.

    " Optional: clear old demo records
    DELETE FROM ztable_new WHERE id IN ( 1, 2 ).

    " Prepare internal table with demo data
    DATA lt_leaves TYPE STANDARD TABLE OF ztable_new.

    APPEND VALUE #( id = 1
                    employee   = 'Alice'
                    leave_type = 'Sick'
                    start_date = '20250920'
                    end_date   = '20250922'
                    status     = 'PENDING' ) TO lt_leaves.

    APPEND VALUE #( id = 2
                    employee   = 'Bob'
                    leave_type = 'Vacation'
                    start_date = '20250921'
                    end_date   = '20250923'
                    status     = 'PENDING' ) TO lt_leaves.

    " Insert into DB
    INSERT ztable_new FROM TABLE @lt_leaves.

    out->write( '✅ Test leave requests inserted into ZTABLE_NEW' ).

  ENDMETHOD.

ENDCLASS.
