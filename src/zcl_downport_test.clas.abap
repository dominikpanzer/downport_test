CLASS zcl_downport_test DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    METHODS: do RETURNING VALUE(result) TYPE abap_bool.
  PROTECTED SECTION.
  PRIVATE SECTION.
    DATA: dates TYPE string_table.
    METHODS loop.
ENDCLASS.



CLASS zcl_downport_test IMPLEMENTATION.
  METHOD do.
    CONSTANTS ddmmyyyy_dot_seperated TYPE string VALUE '^(0[0-9]|[12][0-9]|3[01])[- \..](0[0-9]|1[012])[- \..]\d\d\d\d$'.
    result = xsdbool( matches( val = dates[ sy-tabix ] regex = ddmmyyyy_dot_seperated ) ).
  ENDMETHOD.

  METHOD loop.
    dates = VALUE string_table( ( |01.01.2022| ) (  |01.01.2000| ) ).
    LOOP AT dates REFERENCE INTO DATA(date).
      do( ).
    ENDLOOP.

  ENDMETHOD.

ENDCLASS.
