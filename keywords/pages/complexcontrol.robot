*** Settings ***
Resource    import.robot

*** Keywords ***
Get first row data
    ${row0data}  Get Selected Grid Rows    ${gridrow0}
    Log    ${row0data}