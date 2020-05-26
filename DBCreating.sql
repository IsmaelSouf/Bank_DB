/*DBCreating.sql file with types, tables and alter types*/

CREATE TYPE name_type AS OBJECT (
    title VARCHAR2(4),
    firstName VARCHAR2(15),
    surName VARCHAR2(15))
    FINAL;
/
CREATE TYPE address_type AS OBJECT (
    street VARCHAR2(20),
    city VARCHAR2(20),
    postCode VARCHAR2(8))
    NOT FINAL;
/
CREATE TYPE phone_nested_type AS OBJECT (
    phone_type VARCHAR2(20),
    phone_number VARCHAR2(20))
    FINAL;
/
CREATE TYPE tp_phone_nested AS TABLE OF phone_nested_type;
/
CREATE TYPE person_type AS OBJECT (
    name name_type,
    address address_type,
    niNum VARCHAR2(6),
    phone tp_phone_nested)
    NOT FINAL;
/

CREATE TYPE branch_type UNDER address_type (
    bID VARCHAR2(6),
    phone tp_phone_nested)
    FINAL;
/
CREATE TYPE account_type AS OBJECT (
    accNum INT,
    accType VARCHAR2(10),
    balance INT,
    bID REF branch_type,
    inRate VARCHAR2(5),
    limit_Of_Free_OD INT,
    openDate DATE)
    FINAL;
/
CREATE TYPE job_type AS OBJECT (
    jobTitle VARCHAR(20),
    jobID VARCHAR2(5),
    salary_amount INT)
    FINAL;
/
CREATE TYPE employee_type UNDER person_type (
    empID VARCHAR2(6),
    supervisorID REF employee_type,
    bID REF branch_type,
    position REF job_type,
    joinDate DATE)
    FINAL;
/
CREATE TYPE customer_type UNDER person_type(
    custID VARCHAR2(10))
    FINAL;
/
CREATE TABLE branch_table OF branch_type (
  CONSTRAINT bID_const PRIMARY KEY (bID),
  CONSTRAINT street_const CHECK (street IS NOT NULL),
  CONSTRAINT city_const CHECK (city IS NOT NULL),
  CONSTRAINT postCode_const CHECK (postCode IS NOT NULL),
  CONSTRAINT phone_const CHECK (phone IS NOT NULL))
  NESTED TABLE phone STORE AS branch_phone_nested_table;
/
CREATE TABLE employee_table OF employee_type (
  CONSTRAINT empID_const PRIMARY KEY (empID),
  CONSTRAINT niNum_const UNIQUE (niNum),
  CONSTRAINT name_const CHECK (name.surname IS NOT NULL),
  CONSTRAINT joinDate_const CHECK (joinDate IS NOT NULL),
  CONSTRAINT bID_const2 CHECK (bID IS NOT NULL),
  CONSTRAINT phone_const2 CHECK (phone IS NOT NULL),
  CONSTRAINT position_const CHECK (position IS NOT NULL))
  NESTED TABLE phone STORE AS employee_phone_nested_table;
/
CREATE TABLE customer_table OF customer_type (
  CONSTRAINT custID_const PRIMARY KEY(custID),
  CONSTRAINT niNum_const2 UNIQUE (niNum),
  CONSTRAINT name_const2 CHECK (name IS NOT NULL),
  CONSTRAINT address_const CHECK (address.city IS NOT NULL))
  NESTED TABLE phone STORE AS customer_phone_nested_table;
/
CREATE TABLE account_table OF account_type (
  CONSTRAINT accNum_const PRIMARY KEY(accNum),
  CONSTRAINT accType_const CHECK(accType IS NOT NULL),
  CONSTRAINT bID_const3 CHECK (bID IS NOT NULL),
  CONSTRAINT openDate_const CHECK (openDate IS NOT NULL));
/
CREATE TABLE job_table OF job_type (
  CONSTRAINT jobID_const PRIMARY KEY(jobID),
  CONSTRAINT jobTitle_const CHECK (jobTitle IS NOT NULL),
  CONSTRAINT salary_amount_const CHECK (salary_amount IS NOT NULL));
/
CREATE TABLE customer_account(
  custID REF customer_type SCOPE IS customer_table,
  accNum REF account_type SCOPE IS account_table);
/

  ALTER TYPE employee_type
  ADD MEMBER FUNCTION awards RETURN VARCHAR2,
  ADD MEMBER FUNCTION years_of_experience RETURN VARCHAR2,
  ADD MEMBER FUNCTION supervised_by RETURN VARCHAR2 CASCADE;
/

CREATE OR REPLACE TYPE BODY employee_type AS
member function awards return varchar2 is
    medal varchar2(20);
    years number;
    employees number;
    begin
        select count(*)
        into   employees
        from   employee_table e
        where  Deref(e.supervisorID).empID = self.empID;

        years := trunc(months_between(sysDate,self.joinDate))/12;

        if years > 12 AND employees > 6 then
            medal := 'Gold Medal';
            elsif years > 8 AND employees > 3 then
            medal := 'Silver Medal';
            elsif years > 4 then
            medal := 'Bronze Medal';
            else
            medal := '0';
        end if;
        return medal;
    end awards;

    member function years_of_experience RETURN varchar2 IS
    years number;
    begin
        years := trunc(months_between(sysDate,self.joinDate))/12;
        return round(years);
    end years_of_experience;

    member function supervised_by RETURN varchar2 IS
    employees number;
    begin
        select count(*)
        into   employees
        from   employee_table e
        where  Deref(e.supervisorID).empID = self.empID;

        return employees;
    end supervised_by;
end;
/

ALTER TYPE person_type
ADD MEMBER FUNCTION print_name RETURN STRING,
ADD MEMBER FUNCTION print_address RETURN STRING CASCADE;
/

CREATE OR REPLACE TYPE BODY person_type AS
MEMBER FUNCTION print_name RETURN STRING IS
              BEGIN
                  RETURN name.title || '. ' || name.firstname || ' ' || name.surname;
              END print_name;

MEMBER FUNCTION print_address RETURN STRING IS
              BEGIN
                  RETURN address.street || ', ' || address.city || ', ' || address.postcode;
              END print_address;
          END;
/

  ALTER TYPE branch_type
  ADD MEMBER FUNCTION print_address RETURN STRING
  CASCADE;
  /

  CREATE OR REPLACE TYPE BODY branch_type AS
  MEMBER FUNCTION print_address RETURN STRING IS
  BEGIN
  RETURN self.street || ', ' || self.city || ', ' || self.postcode;
  END print_address;
  END;
