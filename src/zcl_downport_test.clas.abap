CLASS zcl_downport_test DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    METHODS: do RETURNING VALUE(result) TYPE abap_bool.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_downport_test IMPLEMENTATION.
  METHOD do.
    DATA: variables TYPE string VALUE '21.01.2000'.
    CONSTANTS ddmmyyyy_dot_seperated TYPE string VALUE '^(0[0-9]|[12][0-9]|3[01])[- \..](0[0-9]|1[012])[- \..]\d\d\d\d$'.
    result = xsdbool( matches( val = variables regex = ddmmyyyy_dot_seperated ) ).
  ENDMETHOD.

ENDCLASS.
