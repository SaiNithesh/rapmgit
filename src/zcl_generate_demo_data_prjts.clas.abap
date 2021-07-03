CLASS zcl_generate_demo_data_prjts DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_generate_demo_data_prjts IMPLEMENTATION.
  METHOD if_oo_adt_classrun~main.
    DATA: it_project TYPE TABLE OF ZTB_PROJECTS.

*   READ CURRENT TIMESTAMP
    GET TIME STAMP FIELD DATA(zv_tsl).
*   fill internal table with (itab)
    it_project = VALUE #(
        ( CLIENT = '100' PROJECTID = '100001' PROJECTDESCRIPTION = 'Project A Desc' PROJECTSTATUS = 'A' CLIENTNAME = 'Client A' CLIENTLOCATION = 'INDIA'
            STARTDATE = '20180213125959' ENDDATE = '20220213125959')
        ( CLIENT = '100' PROJECTID = '100002' PROJECTDESCRIPTION = 'Project B Desc' PROJECTSTATUS = 'A' CLIENTNAME = 'Client B' CLIENTLOCATION = 'USA'
            STARTDATE = '20170313125959' ENDDATE = '20220213125959')
        ( CLIENT = '100' PROJECTID = '100003' PROJECTDESCRIPTION = 'Project C Desc' PROJECTSTATUS = 'A' CLIENTNAME = 'Client C' CLIENTLOCATION = 'UK'
            STARTDATE = '20180613125959' ENDDATE = '20220213125959')
        ( CLIENT = '100' PROJECTID = '100004' PROJECTDESCRIPTION = 'Project D Desc' PROJECTSTATUS = 'A' CLIENTNAME = 'Client D' CLIENTLOCATION = 'Australia'
            STARTDATE = '20191213125959' ENDDATE = '20220213125959')
        ( CLIENT = '100' PROJECTID = '100005' PROJECTDESCRIPTION = 'Project E Desc' PROJECTSTATUS = 'A' CLIENTNAME = 'Client E' CLIENTLOCATION = 'Canada'
            STARTDATE = '20201213125959' ENDDATE = '20220213125959')
    ).

*   Delete the possible entries in the database table - in case it was already filled
    DELETE FROM ztb_projects.
*   insert the new table entries
    INSERT ztb_projects FROM TABLE @it_project.

*   check the result
    SELECT * FROM ztb_projects INTO TABLE @it_project.
    out->write( sy-dbcnt ).
    out->write( 'projects data inserted successfully!').
  ENDMETHOD.
ENDCLASS.
