/*Answer queries to Task 4*/

/*
Question A (3 Marks)
*/
/*Select title,firstname, surname and city of employees */
SELECT  e.name.title || '. ' ||
				e.name.firstName || ' ' ||
				e.name.surname || ' lives in ' ||
				e.address.city
AS 	"First name contains 'st'"
FROM 	employee_table e
/*containing "st" */
WHERE 	INSTR(lower(e.name.firstname),'st') > 0
/*and live in edinburgh*/
AND 	e.address.city = 'Edinburgh';


/*
Question B (3 Marks)
*/

SELECT a.bid.bid             AS "Branch ID",
       a.bid.print_address() AS "Branch Address",
       Count(a.acctype)      AS "Number of savings accounts"
FROM   account_table a
WHERE
  /*type of account is savings*/
  acctype = 'Savings'
GROUP  BY a.acctype,
          a.bid.bid,
          a.bid.print_address()
ORDER  BY a.bid.bid DESC;
/*
Question C (3 Marks)
*/
WITH balance
     AS (SELECT c.accnum.bid.bid      AS bID,
                c.accnum.acctype      AS acctype,
                /*Select the highest balance with MAX*/
                Max(c.accnum.balance) AS max_balance
         FROM   customer_account c
         WHERE  c.accnum.acctype = 'Savings'
         GROUP  BY c.accnum.bid.bid,
                   c.accnum.acctype)
SELECT c.accnum.bid.bid      AS "bID",
       c.custid.custid       AS "custID",
       c.custid.print_name() AS "Full name",
       c.accnum.accnum       AS "Account(Savings) number",
       c.accnum.balance      AS "Savings' balance"
FROM   balance
       join customer_account c
         ON c.accnum.bid.bid = balance.bid
            AND c.accnum.acctype = balance.acctype
            AND c.accnum.balance = balance.max_balance

/*
Question D (3 Marks)
*/

SELECT e.print_name()                   AS employee,
       c.accnum.accnum                  AS "Account Number",
       e.bid.print_address()            AS "Branch of address works in",
       c.accnum.bid.print_address()     AS "Branch address of account",
       e.supervisorid.print_name()      AS "Supervisor",
       e.supervisorid.position.jobtitle AS "Supervisor Job Title"
FROM   employee_table e,
       customer_account c
WHERE
  /* customer niNum should be the same as the employee (have account in the bank)*/
  c.custid.ninum = e.ninum
  AND
  /*The title of the supervisor is manager*/
  e.supervisorid.position.jobtitle = 'Manager'

/*
Question E (5 marks)
*/

SELECT c.accnum.bid.bid          AS "bID",
       c.custid.print_name()     AS "Full name",
       c.accnum.limit_of_free_od AS "Highest Free OD"
FROM   (SELECT c.accnum.bid.bid               AS bID,
               Max(c.accnum.limit_of_free_od) AS highestFreeOD
        FROM   customer_account c
        GROUP  BY c.accnum.bid.bid) highestFreeOD,
       customer_account c
WHERE  c.accnum.limit_of_free_od = highestFreeOD.highestfreeod
       AND c.accnum.bid.bid = highestFreeOD.bid
       AND c.accnum.acctype = 'Current'

/*
Question F (5 marks)
COLLECTIONS must be used.
*/

SELECT c.custid        AS "CustID",
       c.print_name()  AS "Full name",
       tp.phone_number AS "Phone number"
FROM   (SELECT c.custid            AS custID,
               Count(tp.phone_type) AS mobile_count,
               phone_type          AS phone_type
        FROM   customer_table c,
               TABLE(c.phone) tp
        WHERE  tp.phone_type = 'Mobile'
               AND tp.phone_number LIKE '0750%'
        GROUP  BY c.custid,
                  phone_type) phone_number,
       customer_table c,
       TABLE(c.phone) tp
WHERE  c.custid = phone_number.custid
       AND tp.phone_type = phone_number.phone_type
       AND tp.phone_type = 'Mobile'
       AND phone_number.mobile_count > 1
/*
Question G (5 marks)
REFERENCES must be used.
*/
SELECT Count(e.print_name())                          AS "Number of employees",
       e.supervisorid.print_name()                    AS "Supervises employees",
       (SELECT e.supervisorid.print_name()
        FROM   employee_table e
        WHERE  e.supervisorid.name.surname = 'Jones') AS "Supervises Mrs Smith"
FROM   employee_table e
WHERE  e.supervisorid.name.surname = 'Smith'
       AND e.supervisorid.empid = (SELECT e.empid
                                   FROM   employee_table e
                                   WHERE  e.supervisorid.name.surname = 'Jones')
GROUP  BY e.supervisorid.print_name();

/*
Question H (8 marks)
*/

SELECT e.print_name()          AS "Employee Full Name",
       /*e.Years_of_experience() AS "Years of experience",*/
       e.Awards()              AS "Awarded Medal"
FROM   employee_table e
WHERE  e.Awards() != '0';
