CLASS zcl_generate_demo_data_emply DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_generate_demo_data_emply IMPLEMENTATION.
  METHOD if_oo_adt_classrun~main.
    DATA: it_employee TYPE TABLE OF ZTB_EMPLOYEE.

*    read current timestamp
    GET TIME STAMP FIELD DATA(zv_tsl).
*   fill internal table (itab)
    it_employee = VALUE #(
        ( CLIENT = '100' EMPLOYEEID = '0000001' EMAILID = 'sai@gmail.com' FIRSTNAME = 'Sai' LASTNAME = 'G' FULLNAME = 'Sai G' DOB = '20010213125959' GENDER = 'M'
          DESIGNATION = 'Engineer' SALARYGRADE = 'D1' INDUSTRY = 'SAP' MANAGER_ID = '0000002' ADDRESS = '1/1/2 ABC Street' MOBILENO ='920192811' CITY = 'BNGLR'
          COUNTRY = 'INDIA' EMP_STATUS = 'Active' EMP_START_DATE = '20180213125959' EMP_END_DATE = '20210213125959' EMP_WORK_LOC_ID = 'HYD' EMP_WORK_LOC_DESC = 'Hyderabad' EMP_WORK_LOC_CITY = 'BNGLR'
          EMP_WORK_LOC_COUNTRY = 'INDIA' EMP_WORK_EXPERIENCE = '1.3Yrs'  )
        ( CLIENT = '100' EMPLOYEEID = '0000002' EMAILID = 'kumar@gmail.com' FIRSTNAME = 'Kumar' LASTNAME = 'B' FULLNAME = 'Kumar B' DOB = '19900213125959' GENDER = 'M'
          DESIGNATION = 'Engineer' SALARYGRADE = 'D1' INDUSTRY = 'SAP' MANAGER_ID = '0000002' ADDRESS = '1/1/2 ABC Street' MOBILENO ='920192811' CITY = 'BNGLR'
          COUNTRY = 'INDIA' EMP_STATUS = 'Active' EMP_START_DATE = '20180213125959' EMP_END_DATE = '20210213125959' EMP_WORK_LOC_ID = 'BNGLR' EMP_WORK_LOC_DESC = 'BANGALORE' EMP_WORK_LOC_CITY = 'BNGLR'
          EMP_WORK_LOC_COUNTRY = 'INDIA' EMP_WORK_EXPERIENCE = '1.3Yrs'  )
        ( CLIENT = '100' EMPLOYEEID = '0000003' EMAILID = 'sam@gmail.com' FIRSTNAME = 'Sam' LASTNAME = 'A' FULLNAME = 'Sam A' DOB = '19851113125959' GENDER = 'F'
          DESIGNATION = 'Engineer' SALARYGRADE = 'D1' INDUSTRY = 'SAP' MANAGER_ID = '0000002' ADDRESS = '1/1/2 ABC Street' MOBILENO ='920192811' CITY = 'BNGLR'
          COUNTRY = 'INDIA' EMP_STATUS = 'Active' EMP_START_DATE = '20180213125959' EMP_END_DATE = '20210213125959' EMP_WORK_LOC_ID = 'BNGLR' EMP_WORK_LOC_DESC = 'BANGALORE' EMP_WORK_LOC_CITY = 'BNGLR'
          EMP_WORK_LOC_COUNTRY = 'INDIA' EMP_WORK_EXPERIENCE = '1.3Yrs'  )
    ).


*   Delete the possible entries in the database table - in case it was already filled
    DELETE FROM ztb_employee.
*   insert the new table entries
    INSERT ztb_employee FROM TABLE @it_employee.

*   check the result
    SELECT * FROM ztb_employee INTO TABLE @it_employee.
    out->write( sy-dbcnt ).
    out->write( 'Employee data inserted successfully!').
  ENDMETHOD.
ENDCLASS.
