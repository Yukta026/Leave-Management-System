CLASS LHC_LEAVE DEFINITION INHERITING FROM CL_ABAP_BEHAVIOR_HANDLER.  " Local handler for RAP BO Leave
  PRIVATE SECTION.
    METHODS get_instance_authorizations FOR INSTANCE AUTHORIZATION
      IMPORTING keys REQUEST requested_authorizations FOR Leave RESULT result.

    METHODS approve FOR MODIFY
      IMPORTING keys FOR ACTION Leave~approve RESULT result.

    METHODS reject FOR MODIFY
      IMPORTING keys FOR ACTION Leave~reject RESULT result.
ENDCLASS.

CLASS lhc_leave IMPLEMENTATION.
  METHOD get_instance_authorizations.
    " Authorization checks can be implemented here (currently empty)
  ENDMETHOD.

  METHOD approve.
    " Update selected leave requests to APPROVED
    MODIFY ENTITIES OF zi_leave_request IN LOCAL MODE
      ENTITY Leave
      UPDATE FIELDS ( status )
      WITH VALUE #( FOR row IN keys
                    ( %tky = row-%tky
                      status = 'APPROVED' ) ).

    " Fetch updated records to return as action result
    READ ENTITIES OF zi_leave_request IN LOCAL MODE
       ENTITY Leave
         ALL FIELDS WITH
          CORRESPONDING #( keys )
        RESULT DATA(LEAVES).

    result = VALUE #( FOR LEAVE IN LEAVES ( %tky = LEAVE-%tky
                                            %param = LEAVE ) ).
  ENDMETHOD.

  METHOD reject.
    " Update selected leave requests to REJECTED
    MODIFY ENTITIES OF zi_leave_request IN LOCAL MODE
      ENTITY Leave
      UPDATE FIELDS ( status )
      WITH VALUE #( FOR row IN keys
                    ( %tky = row-%tky
                      status = 'REJECTED' ) ).

    " Fetch updated records to return as action result
    READ ENTITIES OF zi_leave_request IN LOCAL MODE
       ENTITY Leave
         ALL FIELDS WITH
          CORRESPONDING #( keys )
        RESULT DATA(LEAVES).

    result = VALUE #( FOR LEAVE IN LEAVES ( %tky = LEAVE-%tky
                                            %param = LEAVE ) ).
  ENDMETHOD.
ENDCLASS.
