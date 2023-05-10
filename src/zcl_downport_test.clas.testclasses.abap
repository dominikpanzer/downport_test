CLASS test DEFINITION FINAL FOR TESTING
  DURATION SHORT
  RISK LEVEL HARMLESS.

  PRIVATE SECTION.
    METHODS:
      first_test FOR TESTING RAISING cx_static_check.
ENDCLASS.


CLASS test IMPLEMENTATION.

  METHOD first_test.
    DATA(test) = NEW zcl_downport_test( ).
    DATA(result) = test->do( ).
    cl_abap_unit_assert=>assert_equals( msg = 'errrir' exp = abap_true act = result ).
  ENDMETHOD.

ENDCLASS.
