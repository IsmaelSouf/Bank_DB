/*DBPopulating.sql file inserting data (branch,employee,job,customer,account) to the database implemented*/

INSERT INTO branch_table (bID, street, city, postCode, phone) VALUES(
            'VI40D',
            'Vyzou',
            'Edinburgh',
            'EH1 5AB',
            tp_phone_nested(phone_nested_type('Branch','01783773508')));

INSERT INTO branch_table (bID, street, city, postCode, phone) VALUES(
            'VI41D',
            'St Lothian',
            'Edinburgh',
            'EH1 5AB',
            tp_phone_nested(phone_nested_type('Branch','01783773508')));

INSERT INTO branch_table (bID, street, city, postCode, phone) VALUES(
            'VI42D',
            'Sillac',
            'Edinburgh',
            'EH1 5AB',
            tp_phone_nested(phone_nested_type('Branch','01783773508')));

INSERT INTO branch_table (bID, street, city, postCode, phone) VALUES(
            'AE366',
            'Jyozaken',
            'Edinburgh',
            'EH78 9RS',
            tp_phone_nested(phone_nested_type('Branch','01902938745')));

INSERT INTO branch_table (bID, street, city, postCode, phone) VALUES(
            'AE367',
            'East Boul',
            'Edinburgh',
            'EH7 9RS',
            tp_phone_nested(phone_nested_type('Branch','01902938745')));

INSERT INTO branch_table (bID, street, city, postCode, phone) VALUES(
            'TZA65',
            '206 Rilo',
            'London',
            'EH12 8SH',
            tp_phone_nested(phone_nested_type('Branch','01762896534')));

INSERT INTO branch_table (bID, street, city, postCode, phone) VALUES(
            '41BCY',
            '75 George',
            'Edinburgh',
            'EH9 3KJ',
            tp_phone_nested(phone_nested_type('Branch','01909842167')));

INSERT INTO branch_table (bID, street, city, postCode, phone) VALUES(
            '42BCY',
            'North Camp',
            'Edinburgh',
            'EH9 3KJ',
            tp_phone_nested(phone_nested_type('Branch','01909842167')));

INSERT INTO branch_table (bID, street, city, postCode, phone) VALUES(
            '43BCY',
            'Rio Los',
            'Edinburgh',
            'EH9 3KJ',
            tp_phone_nested(phone_nested_type('Branch','01909842167')));

INSERT INTO branch_table (bID, street, city, postCode, phone) VALUES(
            'BI39B',
            'ComelyLonBank',
            'Edinburgh',
            'EH1 3LK',
            tp_phone_nested(phone_nested_type('Branch','01547634290')));

INSERT INTO branch_table (bID, street, city, postCode, phone) VALUES(
            'BI40B',
            'St Patrick',
            'Edinburgh',
            'EH1 3LK',
            tp_phone_nested(phone_nested_type('Branch','01547634290')));

INSERT INTO branch_table (bID, street, city, postCode, phone) VALUES(
            'BI41B',
            'Square Loth',
            'Edinburgh',
            'EH1 3LK',
            tp_phone_nested(phone_nested_type('Branch','01547634290')));

INSERT INTO branch_table (bID, street, city, postCode, phone) VALUES(
            'BI42B',
            'Welcome Road',
            'Edinburgh',
            'EH1 3LK',
            tp_phone_nested(phone_nested_type('Branch','01547634290')));

INSERT INTO branch_table (bID, street, city, postCode, phone) VALUES(
            'R1W92',
            '153 Poroboul',
            'Edinburgh',
            'EH78 2AN',
            tp_phone_nested(phone_nested_type('Branch','01812465457')));

INSERT INTO branch_table (bID, street, city, postCode, phone) VALUES(
            'H728K',
            'Peach P',
            'Edinburgh',
            'EH5 3AJ',
            tp_phone_nested(phone_nested_type('Branch','01709457634')));

INSERT INTO branch_table (bID, street, city, postCode, phone) VALUES(
            'H729K',
            'Manger Com',
            'Edinburgh',
            'EH5 3AJ',
            tp_phone_nested(phone_nested_type('Branch','01709457634')));

INSERT INTO branch_table (bID, street, city, postCode, phone) VALUES(
            'H730K',
            'Silent Hill',
            'Edinburgh',
            'EH5 3AJ',
            tp_phone_nested(phone_nested_type('Branch','01709457634')));

INSERT INTO branch_table (bID, street, city, postCode, phone) VALUES(
            'MN432',
            'SouthGyle',
            'London',
            'EH12 9JU',
            tp_phone_nested(phone_nested_type('Branch','01116788430')));

INSERT INTO branch_table (bID, street, city, postCode, phone) VALUES(
            'MN433',
            'Apparamment',
            'London',
            'EH12 9JU',
            tp_phone_nested(phone_nested_type('Branch','01116788430')));

INSERT INTO branch_table (bID, street, city, postCode, phone) VALUES(
            'MN434',
            'GaterleCoin',
            'London',
            'EH12 9JU',
            tp_phone_nested(phone_nested_type('Branch','01116788430')));


INSERT INTO account_table (accNum, accType, balance, bID, inRate, limit_Of_Free_OD, openDate) VALUES (
            6273098905,
            'Current',
            1928.90,
            (select ref(b) FROM branch_table b WHERE b.bID = 'VI40D'),
            '0.009',
             300,
             '10-JAN-2018');

INSERT INTO account_table (accNum, accType, balance, bID, inRate, limit_Of_Free_OD, openDate) VALUES (
            8913881013,
            'Current',
            998.23,
            (select ref(b) FROM branch_table b WHERE b.bID = 'VI40D'),
            '0.006',
             150,
             '11-FEB-2018');

INSERT INTO account_table (accNum, accType, balance, bID, inRate, limit_Of_Free_OD, openDate) VALUES (
            3389378301,
            'Savings',
            3998.23,
            (select ref(b) FROM branch_table b WHERE b.bID = 'VI40D'),
            '0.09',
             0,
             '12-DEC-2017');

INSERT INTO account_table (accNum, accType, balance, bID, inRate, limit_Of_Free_OD, openDate) VALUES (
            4089328410,
            'Savings',
            4558.23,
            (select ref(b) FROM branch_table b WHERE b.bID = 'VI40D'),
            '0.10',
             0,
             '03-FEB-2019');

INSERT INTO account_table (accNum, accType, balance, bID, inRate, limit_Of_Free_OD, openDate) VALUES (
            5031270374,
            'Current',
            130.55,
            (select ref(b) FROM branch_table b WHERE b.bID = 'VI40D'),
            '0.004',
             200,
             '07-JUN-2015');

INSERT INTO account_table (accNum, accType, balance, bID, inRate, limit_Of_Free_OD, openDate) VALUES (
            6084137021,
            'Current',
            34.19,
            (select ref(b) FROM branch_table b WHERE b.bID = 'VI40D'),
            '0.002',
             100,
             '23-JAN-2014');

INSERT INTO account_table (accNum, accType, balance, bID, inRate, limit_Of_Free_OD, openDate) VALUES (
            7038912374,
            'Current',
            467.20,
            (select ref(b) FROM branch_table b WHERE b.bID = 'VI40D'),
            '0.010',
             100,
             '22-AUG-2019');

INSERT INTO account_table (accNum, accType, balance, bID, inRate, limit_Of_Free_OD, openDate) VALUES (
            1968601537,
            'Savings',
            1894.32,
            (SELECT ref(b) FROM branch_table b WHERE b.bID = 'VI40D'),
            '0.10',
            0,
            '01-MAR-2020');

INSERT INTO account_table (accNum, accType, balance, bID, inRate, limit_Of_Free_OD, openDate) VALUES (
            5098903726,
            'Savings',
            3336.20,
            (SELECT ref(b) FROM branch_table b WHERE b.bID = 'VI41D'),
            '0.04',
             0,
             '22-FEB-2020');

INSERT INTO account_table (accNum, accType, balance, bID, inRate, limit_Of_Free_OD, openDate) VALUES (
            9827942041,
            'Savings',
            4432.90,
            (SELECT ref(b) FROM branch_table b WHERE b.bID = 'VI41D'),
            '0.06',
             0,
             '22-FEB-2018');

INSERT INTO account_table (accNum, accType, balance, bID, inRate, limit_Of_Free_OD, openDate) VALUES (
            3094880340,
            'Current',
            56.20,
            (SELECT ref(b) FROM branch_table b WHERE b.bID = 'VI41D'),
            '0.04',
             200,
             '03-MAR-2020');

INSERT INTO account_table (accNum, accType, balance, bID, inRate, limit_Of_Free_OD, openDate) VALUES (
            3024890243,
            'Savings',
            19056.20,
            (SELECT ref(b) FROM branch_table b WHERE b.bID = 'VI41D'),
            '0.05',
             0,
             '08-JAN-2015');

INSERT INTO account_table (accNum, accType, balance, bID, inRate, limit_Of_Free_OD, openDate) VALUES (
            9248728703,
            'Savings',
            556.67,
            (SELECT ref(b) FROM branch_table b WHERE b.bID = 'VI41D'),
            '0.001',
             0,
             '12-NOV-2019');

INSERT INTO account_table (accNum, accType, balance, bID, inRate, limit_Of_Free_OD, openDate) VALUES (
            1028018304,
            'Current',
            561.92,
            (SELECT ref(b) FROM branch_table b WHERE b.bID = 'VI41D'),
            '0.08',
             200,
             '01-MAR-2020');

INSERT INTO account_table (accNum, accType, balance, bID, inRate, limit_Of_Free_OD, openDate) VALUES (
            2038028411,
            'Current',
            96.20,
            (SELECT ref(b) FROM branch_table b WHERE b.bID = 'VI41D'),
            '0.009',
             300,
             '26-JAN-2018');

INSERT INTO account_table (accNum, accType, balance, bID, inRate, limit_Of_Free_OD, openDate) VALUES (
            2893939811,
            'Current',
            946.20,
            (SELECT ref(b) FROM branch_table b WHERE b.bID = 'VI41D'),
            '0.09',
             100,
             '20-JAN-2015');

INSERT INTO account_table (accNum, accType, balance, bID, inRate, limit_Of_Free_OD, openDate) VALUES (
            1067308412,
            'Savings',
            10056.00,
            (SELECT ref(b) FROM branch_table b WHERE b.bID = 'VI42D'),
            '0.07',
            0,
            '24-FEB-2020');

INSERT INTO account_table (accNum, accType, balance, bID, inRate, limit_Of_Free_OD, openDate) VALUES (
            7066328412,
            'Current',
            172.69,
            (SELECT ref(b) FROM branch_table b WHERE b.bID = 'VI42D'),
            '0.003',
            500,
            '29-FEB-2020');

INSERT INTO account_table (accNum, accType, balance, bID, inRate, limit_Of_Free_OD, openDate) VALUES (
            3476023803,
            'Current',
            224.22,
            (SELECT ref(b) FROM branch_table b WHERE b.bID = 'VI42D'),
            '0.009',
            100,
            '28-MAR-2019');

INSERT INTO account_table (accNum, accType, balance, bID, inRate, limit_Of_Free_OD, openDate) VALUES (
            3268438801,
            'Savings',
            1872.00,
            (SELECT ref(b) FROM branch_table b WHERE b.bID = 'VI42D'),
            '0.05',
            0,
            '14-FEB-2020');

INSERT INTO account_table (accNum, accType, balance, bID, inRate, limit_Of_Free_OD, openDate) VALUES (
            7351068691,
            'Current',
            336.32,
            (SELECT ref(b) FROM branch_table b WHERE b.bID = 'AE366'),
            '0.002',
            200,
            '02-MAR-2013');

INSERT INTO account_table (accNum, accType, balance, bID, inRate, limit_Of_Free_OD, openDate) VALUES (
            2673873200,
            'Current',
            562.80,
            (SELECT ref(b) FROM branch_table b WHERE b.bID = 'AE366'),
            '0.006',
            100,
            '05-NOV-2019');

INSERT INTO account_table (accNum, accType, balance, bID, inRate, limit_Of_Free_OD, openDate) VALUES (
            3928430023,
            'Savings',
            4562.30,
            (SELECT ref(b) FROM branch_table b WHERE b.bID = 'AE366'),
            '0.06',
             0,
            '05-NOV-2017');

INSERT INTO account_table (accNum, accType, balance, bID, inRate, limit_Of_Free_OD, openDate) VALUES (
            8032736312,
            'Savings',
            13874.55,
            (SELECT ref(b) FROM branch_table b WHERE b.bID = 'AE367'),
            '0.20',
            0,
            '02-MAR-2020');

INSERT INTO account_table (accNum, accType, balance, bID, inRate, limit_Of_Free_OD, openDate) VALUES (
            2630923801,
            'Current',
            174.55,
            (SELECT ref(b) FROM branch_table b WHERE b.bID = 'AE367'),
            '0.20',
            400,
            '05-MAR-2020');

INSERT INTO account_table (accNum, accType, balance, bID, inRate, limit_Of_Free_OD, openDate) VALUES (
            3978379281,
            'Savings',
            1924.75,
            (SELECT ref(b) FROM branch_table b WHERE b.bID = 'AE367'),
            '0.002',
            0,
            '06-MAR-2020');


INSERT INTO account_table (accNum, accType, balance, bID, inRate, limit_Of_Free_OD, openDate) VALUES (
            2673873212,
            'Savings',
            2097.20,
            (SELECT ref(b) FROM branch_table b WHERE b.bID = 'TZA65'),
            '0.03',
            0,
            '11-MAY-2017');

INSERT INTO account_table (accNum, accType, balance, bID, inRate, limit_Of_Free_OD, openDate) VALUES (
            5298373228,
            'Current',
            897.12,
            (SELECT ref(b) FROM branch_table b WHERE b.bID = 'TZA65'),
            '0.08',
            600,
            '24-JUN-2015');

INSERT INTO account_table (accNum, accType, balance, bID, inRate, limit_Of_Free_OD, openDate) VALUES (
            7038347943,
            'Current',
            1097.20,
            (SELECT ref(b) FROM branch_table b WHERE b.bID = 'TZA65'),
            '0.06',
            100,
            '09-APR-2018');

INSERT INTO account_table (accNum, accType, balance, bID, inRate, limit_Of_Free_OD, openDate) VALUES (
            9827093787,
            'Current',
            397.98,
            (SELECT ref(b) FROM branch_table b WHERE b.bID = '41BCY'),
            '0.004',
            400,
            '27-JAN-2020');

INSERT INTO account_table (accNum, accType, balance, bID, inRate, limit_Of_Free_OD, openDate) VALUES (
            2900329102,
            'Savings',
            8397.14,
            (SELECT ref(b) FROM branch_table b WHERE b.bID = '41BCY'),
            '0.002',
             0,
            '01-FEB-2020');

INSERT INTO account_table (accNum, accType, balance, bID, inRate, limit_Of_Free_OD, openDate) VALUES (
            6394872370,
            'Current',
            163.31,
            (SELECT ref(b) FROM branch_table b WHERE b.bID = '42BCY'),
            '0.008',
            200,
            '03-FEB-2020');

INSERT INTO account_table (accNum, accType, balance, bID, inRate, limit_Of_Free_OD, openDate) VALUES (
            0223873269,
            'Savings',
            16553.73,
            (SELECT ref(b) FROM branch_table b WHERE b.bID = '42BCY'),
            '0.30',
            0,
            '07-MAR-2009');

INSERT INTO account_table (accNum, accType, balance, bID, inRate, limit_Of_Free_OD, openDate) VALUES (
            4018238229,
            'Current',
            43.13,
            (SELECT ref(b) FROM branch_table b WHERE b.bID = '43BCY'),
            '0.005',
            200,
            '07-MAR-2020');

INSERT INTO account_table (accNum, accType, balance, bID, inRate, limit_Of_Free_OD, openDate) VALUES (
            2293080309,
            'Savings',
            430.54,
            (SELECT ref(b) FROM branch_table b WHERE b.bID = '43BCY'),
            '0.010',
            0,
            '05-MAR-2018');


INSERT INTO account_table (accNum, accType, balance, bID, inRate, limit_Of_Free_OD, openDate) VALUES (
            5502389730,
            'Savings',
            32553.55,
            (SELECT ref(b) FROM branch_table b WHERE b.bID = 'BI39B'),
            '0.50',
            0,
            '19-JUL-2008');

INSERT INTO account_table (accNum, accType, balance, bID, inRate, limit_Of_Free_OD, openDate) VALUES (
            5567290123,
            'Current',
            323.55,
            (SELECT ref(b) FROM branch_table b WHERE b.bID = 'BI39B'),
            '0.03',
            100,
            '22-NOV-2008');

INSERT INTO account_table (accNum, accType, balance, bID, inRate, limit_Of_Free_OD, openDate) VALUES (
            5592389371,
            'Current',
            253.21,
            (SELECT ref(b) FROM branch_table b WHERE b.bID = 'BI40B'),
            '0.001',
            300,
            '30-MAR-2019');


INSERT INTO account_table (accNum, accType, balance, bID, inRate, limit_Of_Free_OD, openDate) VALUES (
            5528911371,
            'Savings',
            2553.21,
            (SELECT ref(b) FROM branch_table b WHERE b.bID = 'BI40B'),
            '0.001',
             0,
            '30-APR-2018');


INSERT INTO account_table (accNum, accType, balance, bID, inRate, limit_Of_Free_OD, openDate) VALUES (
            4183640184,
            'Savings',
            4953.31,
            (SELECT ref(b) FROM branch_table b WHERE b.bID = 'BI41B'),
            '0.20',
            0,
            '10-AUG-2015');

INSERT INTO account_table (accNum, accType, balance, bID, inRate, limit_Of_Free_OD, openDate) VALUES (
            8828639102,
            'Current',
            222.31,
            (SELECT ref(b) FROM branch_table b WHERE b.bID = 'BI41B'),
            '0.07',
            700,
            '17-DEC-2016');

INSERT INTO account_table (accNum, accType, balance, bID, inRate, limit_Of_Free_OD, openDate) VALUES (
            6073270442,
            'Savings',
            929.00,
            (SELECT ref(b) FROM branch_table b WHERE b.bID = 'BI42B'),
            '0.20',
            0,
            '06-JAN-2020');

INSERT INTO account_table (accNum, accType, balance, bID, inRate, limit_Of_Free_OD, openDate) VALUES (
            3383947119,
            'Current',
            247.50,
            (SELECT ref(b) FROM branch_table b WHERE b.bID = 'BI42B'),
            '0.009',
            400,
            '26-FEB-2020');

INSERT INTO account_table (accNum, accType, balance, bID, inRate, limit_Of_Free_OD, openDate) VALUES (
            8862386704,
            'Current',
            180.00,
            (SELECT ref(b) FROM branch_table b WHERE b.bID = 'R1W92'),
            '0.009',
            400,
            '31-DEC-2019');

INSERT INTO account_table (accNum, accType, balance, bID, inRate, limit_Of_Free_OD, openDate) VALUES (
            3902390932,
            'Savings',
            1800.00,
            (SELECT ref(b) FROM branch_table b WHERE b.bID = 'R1W92'),
            '0.029',
            0,
            '12-OCT-2019');

INSERT INTO account_table (accNum, accType, balance, bID, inRate, limit_Of_Free_OD, openDate) VALUES (
            3897372095,
            'Current',
            424.66,
            (SELECT ref(b) FROM branch_table b WHERE b.bID = 'H728K'),
            '0.007',
            600,
            '30-NOV-2018');

INSERT INTO account_table (accNum, accType, balance, bID, inRate, limit_Of_Free_OD, openDate) VALUES (
            4493092311,
            'Savings',
            824.66,
            (SELECT ref(b) FROM branch_table b WHERE b.bID = 'H728K'),
            '0.007',
            0,
            '30-MAY-2019');

INSERT INTO account_table (accNum, accType, balance, bID, inRate, limit_Of_Free_OD, openDate) VALUES (
            1010101010,
            'Current',
            424.66,
            (SELECT ref(b) FROM branch_table b WHERE b.bID = 'MN433'),
            '0.007',
            200,
            '30-NOV-2018');

INSERT INTO account_table (accNum, accType, balance, bID, inRate, limit_Of_Free_OD, openDate) VALUES (
            0505052311,
            'Savings',
            654.33,
            (SELECT ref(b) FROM branch_table b WHERE b.bID = 'MN433'),
            '0.08',
             0,
             '06-OCT-2018');

INSERT INTO account_table (accNum, accType, balance, bID, inRate, limit_Of_Free_OD, openDate) VALUES (
            2388932983,
            'Savings',
            1654.33,
            (SELECT ref(b) FROM branch_table b WHERE b.bID = 'H729K'),
            '0.003',
             0,
             '06-OCT-2019');

INSERT INTO account_table (accNum, accType, balance, bID, inRate, limit_Of_Free_OD, openDate) VALUES (
            3893280023,
            'Savings',
            1009.24,
            (SELECT ref(b) FROM branch_table b WHERE b.bID = 'H730K'),
            '0.005',
             0,
             '11-FEB-2018');

INSERT INTO account_table (accNum, accType, balance, bID, inRate, limit_Of_Free_OD, openDate) VALUES (
            8832823981,
            'Savings',
            10012.24,
            (SELECT ref(b) FROM branch_table b WHERE b.bID = 'MN432'),
            '0.05',
             0,
             '05-JAN-2017');

INSERT INTO account_table (accNum, accType, balance, bID, inRate, limit_Of_Free_OD, openDate) VALUES (
            8392938923,
            'Savings',
            5012.24,
            (SELECT ref(b) FROM branch_table b WHERE b.bID = 'MN434'),
            '0.09',
             0,
            '22-JUN-2017');



INSERT INTO job_table (jobTitle, jobID, salary_amount) VALUES (
            'Head',
            '0001',
            150000);

INSERT INTO job_table (jobTitle, jobID, salary_amount) VALUES (
            'Manager',
            '0002',
             90000);

INSERT INTO job_table (jobTitle, jobID, salary_amount) VALUES (
            'Project Leader',
            '0003',
            65000);

INSERT INTO job_table (jobTitle, jobID, salary_amount) VALUES (
            'Accountant',
            '0004',
            50000);

INSERT INTO job_table (jobTitle, jobID, salary_amount) VALUES (
            'Cashier',
            '0005',
            35000);

INSERT INTO employee_table (name, address, niNum, phone, empID, bID, position, supervisorID, joinDate) VALUES (
            name_type(
            'Mr', 'Ismael', 'Souf'),
            address_type(
            '20 Dundrennan',
            'Edinburgh',
            'EH16 5RG'),
            'NI387',
            tp_phone_nested(phone_nested_type('Mobile','07509831723'), phone_nested_type('Home','0131 191 0419')),
            1,
            (SELECT REF(b) FROM branch_table b WHERE b.bID = 'VI40D'),
            (SELECT REF(j) FROM job_table j WHERE j.jobTitle= 'Head'),
            (SELECT REF(e) FROM employee_table e WHERE e.empID = 1),
            '05-NOV-04');

INSERT INTO employee_table (name, address, niNum, phone, empID, bID, position, supervisorID, joinDate) VALUES (
            name_type(
            'Mr', 'Jack', 'Steve'),
            address_type(
            'Midlothian',
            'Edinburgh',
            'EH22 3HB'),
            'NI234',
            tp_phone_nested(phone_nested_type('Mobile','07502136441'), phone_nested_type('Home','0131 373 0237')),
            2,
            (SELECT REF(b) FROM branch_table b WHERE b.bID = 'VI40D'),
            (SELECT REF(j) FROM job_table j WHERE j.jobTitle= 'Manager'),
            (SELECT REF(e) FROM employee_table e WHERE e.empID = 1),
            '24-MAR-11');

INSERT INTO employee_table (name, address, niNum, phone, empID, bID, position, supervisorID, joinDate) VALUES (
            name_type(
            'Mrs', 'Stella', 'Linda'),
            address_type(
            'Crescent',
            'Edinburgh',
            'EH15 1AB'),
            'NI582',
            tp_phone_nested(phone_nested_type('Mobile','07509735652'), phone_nested_type('Home','0131 464 0146')),
            3,
            (SELECT REF(b) FROM branch_table b WHERE b.bID = 'VI40D'),
            (SELECT REF(j) FROM job_table j WHERE j.jobTitle= 'Accountant'),
            (SELECT REF(e) FROM employee_table e WHERE e.empID = 2),
            '23-AUG-14');

INSERT INTO employee_table (name, address, niNum, phone, empID, bID, position, supervisorID, joinDate) VALUES (
            name_type(
            'Mrs', 'Finley', 'Stanley'),
            address_type(
            'Montogou',
            'Edinburgh',
            'EH2 6KP'),
            'NI081',
            tp_phone_nested(phone_nested_type('Mobile','07112345096'), phone_nested_type('Home','0131 646 0864')),
            4,
            (SELECT REF(b) FROM branch_table b WHERE b.bID = 'VI40D'),
            (SELECT REF(j) FROM job_table j WHERE j.jobTitle= 'Project Leader'),
            (SELECT REF(e) FROM employee_table e WHERE e.empID = 2),
            '09-NOV-11');

INSERT INTO employee_table (name, address, niNum, phone, empID, bID, position, supervisorID, joinDate) VALUES (
            name_type(
            'Mr', 'Ayoub', 'Bikram'),
            address_type(
            'WestSouth',
            'Edinburgh',
            'EH5 8MP'),
            'NI291',
            tp_phone_nested(phone_nested_type('Mobile','07507138713'), phone_nested_type('Home','0131 191 5298')),
            5,
            (SELECT REF(b) FROM branch_table b WHERE b.bID = 'VI40D'),
            (SELECT REF(j) FROM job_table j WHERE j.jobTitle= 'Cashier'),
            (SELECT REF(e) FROM employee_table e WHERE e.empID = 2),
            '02-NOV-19');

INSERT INTO employee_table (name, address, niNum, phone, empID, bID, position, supervisorID, joinDate) VALUES (
            name_type(
            'Mrs', 'Fanta', 'Founet'),
            address_type(
            'Sirocco',
            'Edinburgh',
            'EH9 B23'),
            'NI092',
            tp_phone_nested(phone_nested_type('Mobile','07893030980'), phone_nested_type('Home','0131 280 7381')),
            6,
            (SELECT REF(b) FROM branch_table b WHERE b.bID = 'VI40D'),
            (SELECT REF(j) FROM job_table j WHERE j.jobTitle= 'Cashier'),
            (SELECT REF(e) FROM employee_table e WHERE e.empID = 2),
            '11-FEB-18');

INSERT INTO employee_table (name, address, niNum, phone, empID, bID, position, supervisorID, joinDate) VALUES (
            name_type(
            'Mr', 'Stone', 'Mabrk'),
            address_type(
            'Petit Gâteau',
            'Edinburgh',
            'EH5 9NR'),
            'NI021',
            tp_phone_nested(phone_nested_type('Mobile','07509237342'), phone_nested_type('Home','0131 920 3894')),
            7,
            (SELECT REF(b) FROM branch_table b WHERE b.bID = 'VI40D'),
            (SELECT REF(j) FROM job_table j WHERE j.jobTitle= 'Accountant'),
            (SELECT REF(e) FROM employee_table e WHERE e.empID = 1),
            '29-NOV-15');

INSERT INTO employee_table (name, address, niNum, phone, empID, bID, position, supervisorID, joinDate) VALUES (
            name_type(
            'Mr', 'Lumi', 'Jones'),
            address_type(
            'Cameron Foul',
            'Edinburgh',
            'EH3 6JM'),
            'NI923',
            tp_phone_nested(phone_nested_type('Mobile','07139813980'), phone_nested_type('Home','0131 834 9004')),
            8,
            (SELECT REF(b) FROM branch_table b WHERE b.bID = 'VI41D'),
            (SELECT REF(j) FROM job_table j WHERE j.jobTitle= 'Head'),
            (SELECT REF(e) FROM employee_table e WHERE e.empID = 1),
            '25-MAR-05');

INSERT INTO employee_table (name, address, niNum, phone, empID, bID, position, supervisorID, joinDate) VALUES (
            name_type(
            'Mrs', 'Vanidha', 'Smith'),
            address_type(
            '20 Marnaz',
            'Edinburgh',
            'EH16 0HD'),
            'NI511',
            tp_phone_nested(phone_nested_type('Mobile','07972398203'), phone_nested_type('Home','0131 555 8038')),
            9,
            (SELECT REF(b) FROM branch_table b WHERE b.bID = 'VI41D'),
            (SELECT REF(j) FROM job_table j WHERE j.jobTitle= 'Manager'),
            (SELECT REF(e) FROM employee_table e WHERE e.empID = 8),
            '11-DEC-06');

INSERT INTO employee_table (name, address, niNum, phone, empID, bID, position, supervisorID, joinDate) VALUES (
            name_type(
            'Mr', 'Loke', 'Fairy'),
            address_type(
            '11 Street K',
            'Edinburgh',
            'EH11 5TG'),
            'NI002',
            tp_phone_nested(phone_nested_type('Mobile','07932187943'), phone_nested_type('Home','0131 093 2673')),
            10,
            (SELECT REF(b) FROM branch_table b WHERE b.bID = 'VI41D'),
            (SELECT REF(j) FROM job_table j WHERE j.jobTitle= 'Project Leader'),
            (SELECT REF(e) FROM employee_table e WHERE e.empID = 9),
            '01-JAN-11');

INSERT INTO employee_table (name, address, niNum, phone, empID, bID, position, supervisorID, joinDate) VALUES (
            name_type(
            'Mr', 'Caramba', 'Oula'),
            address_type(
            'Madeleine',
            'Edinburgh',
            'EH1 9JP'),
            'NI302',
            tp_phone_nested(phone_nested_type('Mobile','07503287634'), phone_nested_type('Home','0131 111 5598')),
            11,
            (SELECT REF(b) FROM branch_table b WHERE b.bID = 'VI41D'),
            (SELECT REF(j) FROM job_table j WHERE j.jobTitle= 'Accountant'),
            (SELECT REF(e) FROM employee_table e WHERE e.empID = 9),
            '23-JAN-11');

INSERT INTO employee_table (name, address, niNum, phone, empID, bID, position, supervisorID, joinDate) VALUES (
            name_type(
            'Mrs', 'Stila', 'Stough'),
            address_type(
            'Bainfield',
            'Edinburgh',
            'EH11 1AR'),
            'NI590',
            tp_phone_nested(phone_nested_type('Mobile','07607812372'), phone_nested_type('Home','0131 282 0328')),
            12,
            (SELECT REF(b) FROM branch_table b WHERE b.bID = 'VI41D'),
            (SELECT REF(j) FROM job_table j WHERE j.jobTitle= 'Cashier'),
            (SELECT REF(e) FROM employee_table e WHERE e.empID = 9),
            '06-FEB-12');

INSERT INTO employee_table (name, address, niNum, phone, empID, bID, position, supervisorID, joinDate) VALUES (
            name_type(
            'Mr', 'Steve', 'Lee'),
            address_type(
            '890 Midway',
            'Edinburgh',
            'EH9 5HW'),
            'NI094',
            tp_phone_nested(phone_nested_type('Mobile','07503978301'), phone_nested_type('Home','0131 390 3784')),
            13,
            (SELECT REF(b) FROM branch_table b WHERE b.bID = 'VI41D'),
            (SELECT REF(j) FROM job_table j WHERE j.jobTitle= 'Cashier'),
            (SELECT REF(e) FROM employee_table e WHERE e.empID = 9),
            '22-NOV-12');

INSERT INTO employee_table (name, address, niNum, phone, empID, bID, position, supervisorID, joinDate) VALUES (
            name_type(
            'Mr', 'Prince', 'Belair'),
            address_type(
            '88 Noway',
            'Edinburgh',
            'EH92 5HM'),
            'NI783',
            tp_phone_nested(phone_nested_type('Mobile','07328923893'), phone_nested_type('Home','0131 452 3784')),
            100,
            (SELECT REF(b) FROM branch_table b WHERE b.bID = 'VI41D'),
            (SELECT REF(j) FROM job_table j WHERE j.jobTitle= 'Cashier'),
            (SELECT REF(e) FROM employee_table e WHERE e.empID = 9),
            '05-NOV-13');

INSERT INTO employee_table (name, address, niNum, phone, empID, bID, position, supervisorID, joinDate) VALUES (
            name_type(
            'Mrs', 'Claire', 'Duna'),
            address_type(
            '56 Midway',
            'Edinburgh',
            'EH2 5XW'),
            'NI824',
            tp_phone_nested(phone_nested_type('Mobile','07328329831'), phone_nested_type('Home','0109 322 3784')),
            101,
            (SELECT REF(b) FROM branch_table b WHERE b.bID = 'VI41D'),
            (SELECT REF(j) FROM job_table j WHERE j.jobTitle= 'Accountant'),
            (SELECT REF(e) FROM employee_table e WHERE e.empID = 9),
            '17-DEC-10');

INSERT INTO employee_table (name, address, niNum, phone, empID, bID, position, supervisorID, joinDate) VALUES (
            name_type(
            'Mr', 'Clo', 'Duna'),
            address_type(
            '56 Midway',
            'Edinburgh',
            'EH2 5XW'),
            'NI854',
            tp_phone_nested(phone_nested_type('Mobile','07328378228'), phone_nested_type('Home','0122 322 3784')),
            102,
            (SELECT REF(b) FROM branch_table b WHERE b.bID = 'VI41D'),
            (SELECT REF(j) FROM job_table j WHERE j.jobTitle= 'Accountant'),
            (SELECT REF(e) FROM employee_table e WHERE e.empID = 9),
            '19-DEC-10');

INSERT INTO employee_table (name, address, niNum, phone, empID, bID, position, supervisorID, joinDate) VALUES (
            name_type(
            'Mr', 'Natsu', 'Dragnir'),
            address_type(
            'Stormfield',
            'Edinburgh',
            'EH23 3IH'),
            'NI932',
            tp_phone_nested(phone_nested_type('Mobile','07093408830'), phone_nested_type('Home','0131 099 2376')),
            14,
            (SELECT REF(b) FROM branch_table b WHERE b.bID = 'AE366'),
            (SELECT REF(j) FROM job_table j WHERE j.jobTitle= 'Head'),
            (SELECT REF(e) FROM employee_table e WHERE e.empID = 1),
            '05-FEB-18');

INSERT INTO employee_table (name, address, niNum, phone, empID, bID, position, supervisorID, joinDate) VALUES (
            name_type(
            'Mrs', 'Lola', 'Vapeur'),
            address_type(
            'FoutainBridge',
            'Edinburgh',
            'EH11 1BR'),
            'NI144',
            tp_phone_nested(phone_nested_type('Mobile','07503987320'), phone_nested_type('Home','0131 444 1923')),
            15,
            (SELECT REF(b) FROM branch_table b WHERE b.bID = 'AE366'),
            (SELECT REF(j) FROM job_table j WHERE j.jobTitle= 'Manager'),
            (SELECT REF(e) FROM employee_table e WHERE e.empID = 14),
            '27-MAR-18');

INSERT INTO employee_table (name, address, niNum, phone, empID, bID, position, supervisorID, joinDate) VALUES (
            name_type(
            'Mr', 'Zako', 'Laurent'),
            address_type(
            'Yves St',
            'Edinburgh',
            'EH54 9JY'),
            'NI934',
            tp_phone_nested(phone_nested_type('Mobile','07984747984'), phone_nested_type('Home','0131 222 0966')),
            16,
            (SELECT REF(b) FROM branch_table b WHERE b.bID = 'AE366'),
            (SELECT REF(j) FROM job_table j WHERE j.jobTitle= 'Accountant'),
            (SELECT REF(e) FROM employee_table e WHERE e.empID = 15),
            '05-MAY-19');

INSERT INTO employee_table (name, address, niNum, phone, empID, bID, position, supervisorID, joinDate) VALUES (
            name_type(
            'Mr', 'Ishaq', 'Abu'),
            address_type(
            'Week end',
            'Edinburgh',
            'EH59 2WH'),
            'NI324',
            tp_phone_nested(phone_nested_type('Mobile','07832947981'), phone_nested_type('Home','0131 903 6666')),
            17,
            (SELECT REF(b) FROM branch_table b WHERE b.bID = 'AE366'),
            (SELECT REF(j) FROM job_table j WHERE j.jobTitle= 'Manager'),
            (SELECT REF(e) FROM employee_table e WHERE e.empID = 14),
            '15-NOV-19');

INSERT INTO employee_table (name, address, niNum, phone, empID, bID, position, supervisorID, joinDate) VALUES (
            name_type(
            'Mrs', 'Moma', 'Toctoc'),
            address_type(
            'Mickey St',
            'Edinburgh',
            'EH23 9BL'),
            'NI304',
            tp_phone_nested(phone_nested_type('Mobile','07394764237'), phone_nested_type('Home','0131 999 3784')),
            18,
            (SELECT REF(b) FROM branch_table b WHERE b.bID = 'AE366'),
            (SELECT REF(j) FROM job_table j WHERE j.jobTitle= 'Cashier'),
            (SELECT REF(e) FROM employee_table e WHERE e.empID = 17),
            '13-FEB-20');

INSERT INTO employee_table (name, address, niNum, phone, empID, bID, position, supervisorID, joinDate) VALUES (
            name_type(
            'Mr', 'Jack', 'Lumo'),
            address_type(
            'Jacky Hum',
            'Edinburgh',
            'EH34 5HN'),
            'NI732',
            tp_phone_nested(phone_nested_type('Mobile','07503972324'), phone_nested_type('Home','0131 934 2893')),
            19,
            (SELECT REF(b) FROM branch_table b WHERE b.bID = 'AE366'),
            (SELECT REF(j) FROM job_table j WHERE j.jobTitle= 'Accountant'),
            (SELECT REF(e) FROM employee_table e WHERE e.empID = 17),
            '18-MAR-19');

INSERT INTO employee_table (name, address, niNum, phone, empID, bID, position, supervisorID, joinDate) VALUES (
            name_type(
            'Mr', 'Liam', 'Dok'),
            address_type(
            'Helicop',
            'Edinburgh',
            'EH19 5ME'),
            'NI354',
            tp_phone_nested(phone_nested_type('Mobile','07329074298'), phone_nested_type('Home','0131 123 5547')),
            20,
            (SELECT REF(b) FROM branch_table b WHERE b.bID = 'AE366'),
            (SELECT REF(j) FROM job_table j WHERE j.jobTitle= 'Project Leader'),
            (SELECT REF(e) FROM employee_table e WHERE e.empID = 17),
            '01-JAN-20');

INSERT INTO employee_table (name, address, niNum, phone, empID, bID, position, supervisorID, joinDate) VALUES (
            name_type(
            'Mr', 'Joe', 'Mille'),
            address_type(
            'Over 9',
            'Edinburgh',
            'EH92 5KM'),
            'NI377',
            tp_phone_nested(phone_nested_type('Mobile','07408943983'), phone_nested_type('Home','0131 321 9031')),
            21,
            (SELECT REF(b) FROM branch_table b WHERE b.bID = 'VI42D'),
            (SELECT REF(j) FROM job_table j WHERE j.jobTitle= 'Head'),
            (SELECT REF(e) FROM employee_table e WHERE e.empID = 1),
            '19-AUG-05');

INSERT INTO employee_table (name, address, niNum, phone, empID, bID, position, supervisorID, joinDate) VALUES (
            name_type(
            'Mrs', 'Sarah', 'Yve'),
            address_type(
            'Mermaid',
            'Edinburgh',
            'EH25 7OZ'),
            'NI091',
            tp_phone_nested(phone_nested_type('Mobile','07347884361'), phone_nested_type('Home','0131 888 1277')),
            22,
            (SELECT REF(b) FROM branch_table b WHERE b.bID = 'VI42D'),
            (SELECT REF(j) FROM job_table j WHERE j.jobTitle= 'Manager'),
            (SELECT REF(e) FROM employee_table e WHERE e.empID = 21),
            '22-MAR-06');

INSERT INTO employee_table (name, address, niNum, phone, empID, bID, position, supervisorID, joinDate) VALUES (
            name_type(
            'Mr', 'Evian', 'Lina'),
            address_type(
            'Jonquille',
            'Edinburgh',
            'EH13 7HP'),
            'NI834',
            tp_phone_nested(phone_nested_type('Mobile','07839984870'), phone_nested_type('Home','0131 823 5501')),
            23,
            (SELECT REF(b) FROM branch_table b WHERE b.bID = 'VI42D'),
            (SELECT REF(j) FROM job_table j WHERE j.jobTitle= 'Project Leader'),
            (SELECT REF(e) FROM employee_table e WHERE e.empID = 21),
            '13-NOV-06');

INSERT INTO employee_table (name, address, niNum, phone, empID, bID, position, supervisorID, joinDate) VALUES (
            name_type(
            'Mr', 'Roman', 'Souci'),
            address_type(
            'Aquarium',
            'Edinburgh',
            'EH10 4JD'),
            'NI482',
            tp_phone_nested(phone_nested_type('Mobile','07503747892'), phone_nested_type('Home','0131 430 3740')),
            24,
            (SELECT REF(b) FROM branch_table b WHERE b.bID = 'VI42D'),
            (SELECT REF(j) FROM job_table j WHERE j.jobTitle= 'Accountant'),
            (SELECT REF(e) FROM employee_table e WHERE e.empID = 21),
            '29-APR-07');

INSERT INTO employee_table (name, address, niNum, phone, empID, bID, position, supervisorID, joinDate) VALUES (
            name_type(
            'Mrs', 'Baby', 'Liss'),
            address_type(
            'Silver Stone',
            'Edinburgh',
            'EH24 9OC'),
            'NI939',
            tp_phone_nested(phone_nested_type('Mobile','07893479871'), phone_nested_type('Home','0131 092 1188')),
            25,
            (SELECT REF(b) FROM branch_table b WHERE b.bID = 'VI42D'),
            (SELECT REF(j) FROM job_table j WHERE j.jobTitle= 'Cashier'),
            (SELECT REF(e) FROM employee_table e WHERE e.empID = 22),
            '05-JUN-07');

INSERT INTO employee_table (name, address, niNum, phone, empID, bID, position, supervisorID, joinDate) VALUES (
            name_type(
            'Mr', 'Bio', 'Kilo'),
            address_type(
            'WestSide',
            'Edinburgh',
            'EH22 9LO'),
            'NI381',
            tp_phone_nested(phone_nested_type('Mobile','07389437981'), phone_nested_type('Home','0131 292 8811')),
            26,
            (SELECT REF(b) FROM branch_table b WHERE b.bID = 'AE367'),
            (SELECT REF(j) FROM job_table j WHERE j.jobTitle= 'Head'),
            (SELECT REF(e) FROM employee_table e WHERE e.empID = 1),
            '12-DEC-18');

INSERT INTO employee_table (name, address, niNum, phone, empID, bID, position, supervisorID, joinDate) VALUES (
            name_type(
            'Mr', 'John', 'Lemon'),
            address_type(
            'EastSide',
            'Edinburgh',
            'EH10 9OS'),
            'NI444',
            tp_phone_nested(phone_nested_type('Mobile','07327653201'), phone_nested_type('Home','0131 209 1341')),
            27,
            (SELECT REF(b) FROM branch_table b WHERE b.bID = 'AE367'),
            (SELECT REF(j) FROM job_table j WHERE j.jobTitle= 'Manager'),
            (SELECT REF(e) FROM employee_table e WHERE e.empID = 26),
            '01-JAN-19');

INSERT INTO employee_table (name, address, niNum, phone, empID, bID, position, supervisorID, joinDate) VALUES (
            name_type(
            'Mrs', 'Synthia', 'Moly'),
            address_type(
            'Villa',
            'Edinburgh',
            'EH18 3ZM'),
            'NI782',
            tp_phone_nested(phone_nested_type('Mobile','07328764713'), phone_nested_type('Home','0131 294 3784')),
            28,
            (SELECT REF(b) FROM branch_table b WHERE b.bID = 'AE367'),
            (SELECT REF(j) FROM job_table j WHERE j.jobTitle= 'Project Leader'),
            (SELECT REF(e) FROM employee_table e WHERE e.empID = 26),
            '25-JAN-19');

INSERT INTO employee_table (name, address, niNum, phone, empID, bID, position, supervisorID, joinDate) VALUES (
            name_type(
            'Mr', 'Nash', 'Jr'),
            address_type(
            'Gold Nash',
            'Edinburgh',
            'EH13 7NX'),
            'NI102',
            tp_phone_nested(phone_nested_type('Mobile','07329874901'), phone_nested_type('Home','0131 496 8311')),
            29,
            (SELECT REF(b) FROM branch_table b WHERE b.bID = 'AE367'),
            (SELECT REF(j) FROM job_table j WHERE j.jobTitle= 'Accountant'),
            (SELECT REF(e) FROM employee_table e WHERE e.empID = 27),
            '09-MAR-19');

INSERT INTO employee_table (name, address, niNum, phone, empID, bID, position, supervisorID, joinDate) VALUES (
            name_type(
            'Mrs', 'Blue', 'Light'),
            address_type(
            'Isle Led',
            'Edinburgh',
            'EH32 7HJ'),
            'NI887',
            tp_phone_nested(phone_nested_type('Mobile','07508738231'), phone_nested_type('Home','0131 374 9913')),
            30,
            (SELECT REF(b) FROM branch_table b WHERE b.bID = 'AE367'),
            (SELECT REF(j) FROM job_table j WHERE j.jobTitle= 'Cashier'),
            (SELECT REF(e) FROM employee_table e WHERE e.empID = 27),
            '15-OCT-19');

INSERT INTO employee_table (name, address, niNum, phone, empID, bID, position, supervisorID, joinDate) VALUES (
            name_type(
            'Mr', 'Charlie', 'Shop'),
            address_type(
            'Reunion Isle',
            'London',
            'LH32 7HJ'),
            'NI557',
            tp_phone_nested(phone_nested_type('Mobile','07503677401'), phone_nested_type('Home','0131 333 4483')),
            31,
            (SELECT REF(b) FROM branch_table b WHERE b.bID = 'TZA65'),
            (SELECT REF(j) FROM job_table j WHERE j.jobTitle= 'Head'),
            (SELECT REF(e) FROM employee_table e WHERE e.empID = 1),
            '03-OCT-10');

INSERT INTO employee_table (name, address, niNum, phone, empID, bID, position, supervisorID, joinDate) VALUES (
            name_type(
            'Mrs', 'Yellow', 'Sty'),
            address_type(
            'Red Light',
            'London',
            'LK88 5HD'),
            'NI023',
            tp_phone_nested(phone_nested_type('Mobile','07509427832'), phone_nested_type('Home','0131 921 7494')),
            32,
            (SELECT REF(b) FROM branch_table b WHERE b.bID = 'TZA65'),
            (SELECT REF(j) FROM job_table j WHERE j.jobTitle= 'Manager'),
            (SELECT REF(e) FROM employee_table e WHERE e.empID = 31),
            '23-NOV-10');

INSERT INTO employee_table (name, address, niNum, phone, empID, bID, position, supervisorID, joinDate) VALUES (
            name_type(
            'Mrs', 'Software', 'Lili'),
            address_type(
            'Hi Java',
            'London',
            'LE32 9NE'),
            'NI333',
            tp_phone_nested(phone_nested_type('Mobile','07537642890'), phone_nested_type('Home','0131 128 3192')),
            33,
            (SELECT REF(b) FROM branch_table b WHERE b.bID = 'TZA65'),
            (SELECT REF(j) FROM job_table j WHERE j.jobTitle= 'Project Leader'),
            (SELECT REF(e) FROM employee_table e WHERE e.empID = 32),
            '04-OCT-13');

INSERT INTO employee_table (name, address, niNum, phone, empID, bID, position, supervisorID, joinDate) VALUES (
            name_type(
            'Mr', 'Fraud', 'Oeil'),
            address_type(
            'Linars',
            'London',
            'L032 3ZI'),
            'NI998',
            tp_phone_nested(phone_nested_type('Mobile','07493788327'), phone_nested_type('Home','0131 033 4413')),
            34,
            (SELECT REF(b) FROM branch_table b WHERE b.bID = 'TZA65'),
            (SELECT REF(j) FROM job_table j WHERE j.jobTitle= 'Accountant'),
            (SELECT REF(e) FROM employee_table e WHERE e.empID = 32),
            '11-FEB-19');

INSERT INTO employee_table (name, address, niNum, phone, empID, bID, position, supervisorID, joinDate) VALUES (
            name_type(
            'Mrs', 'Flight', 'Tesco'),
            address_type(
            'Lolo St',
            'London',
            'LN92 3SQ'),
            'NI987',
            tp_phone_nested(phone_nested_type('Mobile','07508987322'), phone_nested_type('Home','0131 777 3321')),
            35,
            (SELECT REF(b) FROM branch_table b WHERE b.bID = 'TZA65'),
            (SELECT REF(j) FROM job_table j WHERE j.jobTitle= 'Cashier'),
            (SELECT REF(e) FROM employee_table e WHERE e.empID = 32),
            '28-JUN-19');

INSERT INTO employee_table (name, address, niNum, phone, empID, bID, position, supervisorID, joinDate) VALUES (
            name_type(
            'Mr', 'Drago', 'Sains'),
            address_type(
            'Lala St',
            'London',
            'LN83 3SQ'),
            'NI781',
            tp_phone_nested(phone_nested_type('Mobile','07508987322'), phone_nested_type('Home','0131 777 3321')),
            103,
            (SELECT REF(b) FROM branch_table b WHERE b.bID = 'TZA65'),
            (SELECT REF(j) FROM job_table j WHERE j.jobTitle= 'Cashier'),
            (SELECT REF(e) FROM employee_table e WHERE e.empID = 32),
            '28-APR-20');

INSERT INTO employee_table (name, address, niNum, phone, empID, bID, position, supervisorID, joinDate) VALUES (
            name_type(
            'Mr', 'Yagami', 'Light'),
            address_type(
            'Software',
            'Edinburgh',
            'EH39 2LJ'),
            'NI037',
            tp_phone_nested(phone_nested_type('Mobile','07503297831'), phone_nested_type('Home','0131 209 2283')),
            36,
            (SELECT REF(b) FROM branch_table b WHERE b.bID = '41BCY'),
            (SELECT REF(j) FROM job_table j WHERE j.jobTitle= 'Head'),
            (SELECT REF(e) FROM employee_table e WHERE e.empID = 1),
            '01-OCT-17');

INSERT INTO employee_table (name, address, niNum, phone, empID, bID, position, supervisorID, joinDate) VALUES (
            name_type(
            'Mrs', 'Smith', 'Taylor'),
            address_type(
            'Coverage',
            'Edinburgh',
            'EH78 8SJ'),
            'NI040',
            tp_phone_nested(phone_nested_type('Mobile','07703927834'), phone_nested_type('Home','0131 767 2313')),
            37,
            (SELECT REF(b) FROM branch_table b WHERE b.bID = '41BCY'),
            (SELECT REF(j) FROM job_table j WHERE j.jobTitle= 'Manager'),
            (SELECT REF(e) FROM employee_table e WHERE e.empID = 36),
            '15-OCT-17');

INSERT INTO employee_table (name, address, niNum, phone, empID, bID, position, supervisorID, joinDate) VALUES (
            name_type(
            'Mr', 'Nesty', 'Table'),
            address_type(
            'Welcome',
            'Edinburgh',
            'EH94 3KP'),
            'NI041',
            tp_phone_nested(phone_nested_type('Mobile','07903820224'), phone_nested_type('Home','0131 473 9813')),
            38,
            (SELECT REF(b) FROM branch_table b WHERE b.bID = '41BCY'),
            (SELECT REF(j) FROM job_table j WHERE j.jobTitle= 'Project Leader'),
            (SELECT REF(e) FROM employee_table e WHERE e.empID = 37),
            '19-SEP-17');

INSERT INTO employee_table (name, address, niNum, phone, empID, bID, position, supervisorID, joinDate) VALUES (
            name_type(
            'Mrs', 'Oil', 'Couvat'),
            address_type(
            'Sea Line',
            'Edinburgh',
            'EH23 5FN'),
            'NI042',
            tp_phone_nested(phone_nested_type('Mobile','07503878792'), phone_nested_type('Home','0131 131 1313')),
            39,
            (SELECT REF(b) FROM branch_table b WHERE b.bID = '41BCY'),
            (SELECT REF(j) FROM job_table j WHERE j.jobTitle= 'Accountant'),
            (SELECT REF(e) FROM employee_table e WHERE e.empID = 37),
            '12-NOV-17');

INSERT INTO employee_table (name, address, niNum, phone, empID, bID, position, supervisorID, joinDate) VALUES (
            name_type(
            'Mr', 'Home', 'Steak'),
            address_type(
            'Soupe',
            'Edinburgh',
            'EH12 3AJ'),
            'NI043',
            tp_phone_nested(phone_nested_type('Mobile','07503987324'), phone_nested_type('Home','0131 093 1723')),
            40,
            (SELECT REF(b) FROM branch_table b WHERE b.bID = '41BCY'),
            (SELECT REF(j) FROM job_table j WHERE j.jobTitle= 'Cashier'),
            (SELECT REF(e) FROM employee_table e WHERE e.empID = 37),
            '22-DEC-17');

INSERT INTO employee_table (name, address, niNum, phone, empID, bID, position, supervisorID, joinDate) VALUES (
            name_type(
            'Mrs', 'Lamp', 'Lie'),
            address_type(
            'Lampidou',
            'Edinburgh',
            'EH11 3HK'),
            'NI120',
            tp_phone_nested(phone_nested_type('Mobile','07503872874'), phone_nested_type('Home','0131 094 0483')),
            41,
            (SELECT REF(b) FROM branch_table b WHERE b.bID = '42BCY'),
            (SELECT REF(j) FROM job_table j WHERE j.jobTitle= 'Head'),
            (SELECT REF(e) FROM employee_table e WHERE e.empID = 1),
            '01-OCT-18');

INSERT INTO employee_table (name, address, niNum, phone, empID, bID, position, supervisorID, joinDate) VALUES (
            name_type(
            'Mr', 'Laptop', 'Still'),
            address_type(
            'Company',
            'Edinburgh',
            'EWJ3 9MF'),
            'NI187',
            tp_phone_nested(phone_nested_type('Mobile','07920932441'), phone_nested_type('Home','0131 555 9999')),
            42,
            (SELECT REF(b) FROM branch_table b WHERE b.bID = '42BCY'),
            (SELECT REF(j) FROM job_table j WHERE j.jobTitle= 'Manager'),
            (SELECT REF(e) FROM employee_table e WHERE e.empID = 41),
            '03-NOV-19');

INSERT INTO employee_table (name, address, niNum, phone, empID, bID, position, supervisorID, joinDate) VALUES (
            name_type(
            'Mrs', 'Stuart', 'Ayo'),
            address_type(
            'Lumen History',
            'Edinburgh',
            'EQ23 LM3'),
            'NI882',
            tp_phone_nested(phone_nested_type('Mobile','07502038092'), phone_nested_type('Home','0131 093 2223')),
            43,
            (SELECT REF(b) FROM branch_table b WHERE b.bID = '42BCY'),
            (SELECT REF(j) FROM job_table j WHERE j.jobTitle= 'Project Leader'),
            (SELECT REF(e) FROM employee_table e WHERE e.empID = 42),
            '29-DEC-19');

INSERT INTO employee_table (name, address, niNum, phone, empID, bID, position, supervisorID, joinDate) VALUES (
            name_type(
            'Mr', 'Stylé', 'Cravate'),
            address_type(
            'Kiwi',
            'Edinburgh',
            'EA10 5FI'),
            'NI046',
            tp_phone_nested(phone_nested_type('Mobile','07239879230'), phone_nested_type('Home','0131 555 1982')),
            44,
            (SELECT REF(b) FROM branch_table b WHERE b.bID = '42BCY'),
            (SELECT REF(j) FROM job_table j WHERE j.jobTitle= 'Accountant'),
            (SELECT REF(e) FROM employee_table e WHERE e.empID = 42),
            '13-JAN-19');

INSERT INTO employee_table (name, address, niNum, phone, empID, bID, position, supervisorID, joinDate) VALUES (
            name_type(
            'Mrs', 'Green', 'Led'),
            address_type(
            'Law Street',
            'Edinburgh',
            'EZ12 7HJ'),
            'NI063',
            tp_phone_nested(phone_nested_type('Mobile','07503098432'), phone_nested_type('Home','0131 827 2308')),
            45,
            (SELECT REF(b) FROM branch_table b WHERE b.bID = '42BCY'),
            (SELECT REF(j) FROM job_table j WHERE j.jobTitle= 'Cashier'),
            (SELECT REF(e) FROM employee_table e WHERE e.empID = 42),
            '09-APR-19');

INSERT INTO employee_table (name, address, niNum, phone, empID, bID, position, supervisorID, joinDate) VALUES (
            name_type(
            'Mr', 'Buffer', 'Loan'),
            address_type(
            'Loan',
            'Edinburgh',
            'EAK2 1ML'),
            'NI064',
            tp_phone_nested(phone_nested_type('Mobile','07390840430'), phone_nested_type('Home','0131 728 5513')),
            46,
            (SELECT REF(b) FROM branch_table b WHERE b.bID = 'BI39B'),
            (SELECT REF(j) FROM job_table j WHERE j.jobTitle= 'Head'),
            (SELECT REF(e) FROM employee_table e WHERE e.empID = 1),
            '05-SEP-19');

INSERT INTO employee_table (name, address, niNum, phone, empID, bID, position, supervisorID, joinDate) VALUES (
            name_type(
            'Mrs', 'Sine', 'Superkazo'),
            address_type(
            'Extinction',
            'Edinburgh',
            'EQ32 4NJ'),
            'NI065',
            tp_phone_nested(phone_nested_type('Mobile','07504389843'), phone_nested_type('Home','0131 032 4556')),
            47,
            (SELECT REF(b) FROM branch_table b WHERE b.bID = 'BI39B'),
            (SELECT REF(j) FROM job_table j WHERE j.jobTitle= 'Manager'),
            (SELECT REF(e) FROM employee_table e WHERE e.empID = 46),
            '03-OCT-19');

INSERT INTO employee_table (name, address, niNum, phone, empID, bID, position, supervisorID, joinDate) VALUES (
            name_type(
            'Mr', 'Campbell', 'Route'),
            address_type(
            'City Square',
            'Edinburgh',
            'EW30 5DN'),
            'NI066',
            tp_phone_nested(phone_nested_type('Mobile','07504093840'), phone_nested_type('Home','0131 034 3124')),
            48,
            (SELECT REF(b) FROM branch_table b WHERE b.bID = 'BI39B'),
            (SELECT REF(j) FROM job_table j WHERE j.jobTitle= 'Project Leader'),
            (SELECT REF(e) FROM employee_table e WHERE e.empID = 47),
            '15-OCT-19');

INSERT INTO employee_table (name, address, niNum, phone, empID, bID, position, supervisorID, joinDate) VALUES (
            name_type(
            'Mrs', 'Synthia', 'Stouly'),
            address_type(
            'Amaville',
            'Edinburgh',
            'EP42 9SJ'),
            'NI467',
            tp_phone_nested(phone_nested_type('Mobile','07802930423'), phone_nested_type('Home','0131 849 1113')),
            49,
            (SELECT REF(b) FROM branch_table b WHERE b.bID = 'BI39B'),
            (SELECT REF(j) FROM job_table j WHERE j.jobTitle= 'Accountant'),
            (SELECT REF(e) FROM employee_table e WHERE e.empID = 47),
            '23-DEC-19');

INSERT INTO employee_table (name, address, niNum, phone, empID, bID, position, supervisorID, joinDate) VALUES (
            name_type(
            'Mr', 'Marmand', 'Delwe'),
            address_type(
            'Souris',
            'Edinburgh',
            'EV29 3SH'),
            'NI668',
            tp_phone_nested(phone_nested_type('Mobile','07348093095'), phone_nested_type('Home','0131 391 0934')),
            50,
            (SELECT REF(b) FROM branch_table b WHERE b.bID = 'BI39B'),
            (SELECT REF(j) FROM job_table j WHERE j.jobTitle= 'Cashier'),
            (SELECT REF(e) FROM employee_table e WHERE e.empID = 46),
            '01-JAN-20');

INSERT INTO employee_table (name, address, niNum, phone, empID, bID, position, supervisorID, joinDate) VALUES (
            name_type(
            'Mrs', 'Purple', 'Stye'),
            address_type(
            'Lino St',
            'Edinburgh',
            'EX23 6NN'),
            'NI067',
            tp_phone_nested(phone_nested_type('Mobile','07508290823'), phone_nested_type('Home','0131 839 3313')),
            51,
            (SELECT REF(b) FROM branch_table b WHERE b.bID = 'BI40B'),
            (SELECT REF(j) FROM job_table j WHERE j.jobTitle= 'Head'),
            (SELECT REF(e) FROM employee_table e WHERE e.empID = 1),
            '03-JAN-20');

INSERT INTO employee_table (name, address, niNum, phone, empID, bID, position, supervisorID, joinDate) VALUES (
            name_type(
            'Mr', 'Pink', 'Light'),
            address_type(
            'Uber Eats',
            'Edinburgh',
            'EW92 8QS'),
            'NI068',
            tp_phone_nested(phone_nested_type('Mobile','07398742432'), phone_nested_type('Home','0131 444 1892')),
            52,
            (SELECT REF(b) FROM branch_table b WHERE b.bID = 'BI40B'),
            (SELECT REF(j) FROM job_table j WHERE j.jobTitle= 'Manager'),
            (SELECT REF(e) FROM employee_table e WHERE e.empID = 51),
            '05-JAN-20');

INSERT INTO employee_table (name, address, niNum, phone, empID, bID, position, supervisorID, joinDate) VALUES (
            name_type(
            'Mr', 'Stuarto', 'Duck'),
            address_type(
            'Mickey House',
            'Edinburgh',
            'EO23 6MS'),
            'NI069',
            tp_phone_nested(phone_nested_type('Mobile','07320983403'), phone_nested_type('Home','0131 034 3233')),
            53,
            (SELECT REF(b) FROM branch_table b WHERE b.bID = 'BI40B'),
            (SELECT REF(j) FROM job_table j WHERE j.jobTitle= 'Project Leader'),
            (SELECT REF(e) FROM employee_table e WHERE e.empID = 52),
            '10-JAN-20');

INSERT INTO employee_table (name, address, niNum, phone, empID, bID, position, supervisorID, joinDate) VALUES (
            name_type(
            'Mrs', 'Savile', 'Set'),
            address_type(
            'Road L',
            'Edinburgh',
            'EM32 1JN'),
            'NI070',
            tp_phone_nested(phone_nested_type('Mobile','07324342342'), phone_nested_type('Home','0131 934 4545')),
            54,
            (SELECT REF(b) FROM branch_table b WHERE b.bID = 'BI40B'),
            (SELECT REF(j) FROM job_table j WHERE j.jobTitle= 'Accountant'),
            (SELECT REF(e) FROM employee_table e WHERE e.empID = 52),
            '03-FEB-20');

INSERT INTO employee_table (name, address, niNum, phone, empID, bID, position, supervisorID, joinDate) VALUES (
            name_type(
            'Mr', 'Orange', 'Link'),
            address_type(
            'Souf Min',
            'Edinburgh',
            'EO20 5WJ'),
            'NI771',
            tp_phone_nested(phone_nested_type('Mobile','07324908302'), phone_nested_type('Home','0131 390 9178')),
            55,
            (SELECT REF(b) FROM branch_table b WHERE b.bID = 'BI40B'),
            (SELECT REF(j) FROM job_table j WHERE j.jobTitle= 'Cashier'),
            (SELECT REF(e) FROM employee_table e WHERE e.empID = 52),
            '10-FEB-20');

INSERT INTO employee_table (name, address, niNum, phone, empID, bID, position, supervisorID, joinDate) VALUES (
            name_type(
            'Mr', 'Sabate', 'Parallel'),
            address_type(
            'Home Town',
            'Edinburgh',
            'ES23 7PJ'),
            'NI071',
            tp_phone_nested(phone_nested_type('Mobile','07309803422'), phone_nested_type('Home','0131 238 3984')),
            56,
            (SELECT REF(b) FROM branch_table b WHERE b.bID = 'BI41B'),
            (SELECT REF(j) FROM job_table j WHERE j.jobTitle= 'Head'),
            (SELECT REF(e) FROM employee_table e WHERE e.empID = 1),
            '01-APR-16');

INSERT INTO employee_table (name, address, niNum, phone, empID, bID, position, supervisorID, joinDate) VALUES (
            name_type(
            'Mrs', 'Raté', 'Lumière'),
            address_type(
            'Led Lumo',
            'Edinburgh',
            'EH78 2MJ'),
            'NI072',
            tp_phone_nested(phone_nested_type('Mobile','07234980232'), phone_nested_type('Home','0131 340 4303')),
            57,
            (SELECT REF(b) FROM branch_table b WHERE b.bID = 'BI41B'),
            (SELECT REF(j) FROM job_table j WHERE j.jobTitle= 'Manager'),
            (SELECT REF(e) FROM employee_table e WHERE e.empID = 56),
            '23-AUG-16');

INSERT INTO employee_table (name, address, niNum, phone, empID, bID, position, supervisorID, joinDate) VALUES (
            name_type(
            'Mr', 'Silo', 'Bernard'),
            address_type(
            'Judoka',
            'Edinburgh',
            'EU23 3HS'),
            'NI073',
            tp_phone_nested(phone_nested_type('Mobile','07508888888'), phone_nested_type('Home','0131 393 1092')),
            58,
            (SELECT REF(b) FROM branch_table b WHERE b.bID = 'BI41B'),
            (SELECT REF(j) FROM job_table j WHERE j.jobTitle= 'Project Leader'),
            (SELECT REF(e) FROM employee_table e WHERE e.empID = 56),
            '08-SEP-16');

INSERT INTO employee_table (name, address, niNum, phone, empID, bID, position, supervisorID, joinDate) VALUES (
            name_type(
            'Mrs', 'Grey', 'March'),
            address_type(
            'Alacampagne',
            'Edinburgh',
            'EE02 5ST'),
            'NI074',
            tp_phone_nested(phone_nested_type('Mobile','07502989844'), phone_nested_type('Home','0131 022 8748')),
            59,
            (SELECT REF(b) FROM branch_table b WHERE b.bID = 'BI41B'),
            (SELECT REF(j) FROM job_table j WHERE j.jobTitle= 'Accountant'),
            (SELECT REF(e) FROM employee_table e WHERE e.empID = 57),
            '16-OCT-16');

INSERT INTO employee_table (name, address, niNum, phone, empID, bID, position, supervisorID, joinDate) VALUES (
            name_type(
            'Mr', 'Onion', 'Yellow'),
            address_type(
            'Sauve',
            'Edinburgh',
            'EJ02 3HZ'),
            'NI075',
            tp_phone_nested(phone_nested_type('Mobile','07508937237'), phone_nested_type('Home','0131 093 9123')),
            60,
            (SELECT REF(b) FROM branch_table b WHERE b.bID = 'BI41B'),
            (SELECT REF(j) FROM job_table j WHERE j.jobTitle= 'Cashier'),
            (SELECT REF(e) FROM employee_table e WHERE e.empID = 57),
            '29-JAN-17');

INSERT INTO employee_table (name, address, niNum, phone, empID, bID, position, supervisorID, joinDate) VALUES (
            name_type(
            'Mr', 'Ayo', 'Lost'),
            address_type(
            'View',
            'Edinburgh',
            'EO98 5MZ'),
            'NI076',
            tp_phone_nested(phone_nested_type('Mobile','07982349473'), phone_nested_type('Home','0131 667 6031')),
            61,
            (SELECT REF(b) FROM branch_table b WHERE b.bID = 'BI42B'),
            (SELECT REF(j) FROM job_table j WHERE j.jobTitle= 'Head'),
            (SELECT REF(e) FROM employee_table e WHERE e.empID = 1),
            '04-JAN-18');

INSERT INTO employee_table (name, address, niNum, phone, empID, bID, position, supervisorID, joinDate) VALUES (
            name_type(
            'Mrs', 'Angela', 'Minto'),
            address_type(
            'Creascent',
            'Edinburgh',
            'EP39 8RV'),
            'NI077',
            tp_phone_nested(phone_nested_type('Mobile','07389247942'), phone_nested_type('Home','0131 008 9143')),
            62,
            (SELECT REF(b) FROM branch_table b WHERE b.bID = 'BI42B'),
            (SELECT REF(j) FROM job_table j WHERE j.jobTitle= 'Manager'),
            (SELECT REF(e) FROM employee_table e WHERE e.empID = 61),
            '19-JAN-18');

INSERT INTO employee_table (name, address, niNum, phone, empID, bID, position, supervisorID, joinDate) VALUES (
            name_type(
            'Mr', 'Pepito', 'Cooler'),
            address_type(
            'Lift Yve',
            'Edinburgh',
            'EQ92 4LX'),
            'NI078',
            tp_phone_nested(phone_nested_type('Mobile','07508398321'), phone_nested_type('Home','0131 022 3915')),
            63,
            (SELECT REF(b) FROM branch_table b WHERE b.bID = 'BI42B'),
            (SELECT REF(j) FROM job_table j WHERE j.jobTitle= 'Project Leader'),
            (SELECT REF(e) FROM employee_table e WHERE e.empID = 62),
            '29-APR-18');

INSERT INTO employee_table (name, address, niNum, phone, empID, bID, position, supervisorID, joinDate) VALUES (
            name_type(
            'Mr', 'Fish', 'Chips'),
            address_type(
            'Kinnaird',
            'Edinburgh',
            'EH18 3PX'),
            'NI079',
            tp_phone_nested(phone_nested_type('Mobile','07238992384'), phone_nested_type('Home','0131 888 4444')),
            64,
            (SELECT REF(b) FROM branch_table b WHERE b.bID = 'BI42B'),
            (SELECT REF(j) FROM job_table j WHERE j.jobTitle= 'Accountant'),
            (SELECT REF(e) FROM employee_table e WHERE e.empID = 61),
            '07-MAR-19');

INSERT INTO employee_table (name, address, niNum, phone, empID, bID, position, supervisorID, joinDate) VALUES (
            name_type(
            'Mrs', 'Stan', 'Diamond'),
            address_type(
            'Wonka St',
            'Edinburgh',
            'EF40 6WD'),
            'NI080',
            tp_phone_nested(phone_nested_type('Mobile','07398372940'), phone_nested_type('Home','0131 872 0192')),
            65,
            (SELECT REF(b) FROM branch_table b WHERE b.bID = 'BI42B'),
            (SELECT REF(j) FROM job_table j WHERE j.jobTitle= 'Cashier'),
            (SELECT REF(e) FROM employee_table e WHERE e.empID = 61),
            '04-SEP-19');

INSERT INTO employee_table (name, address, niNum, phone, empID, bID, position, supervisorID, joinDate) VALUES (
            name_type(
            'Mr', 'Steel', 'Bob'),
            address_type(
            'Starsun',
            'Edinburgh',
            'EP32 1WK'),
            'NI681',
            tp_phone_nested(phone_nested_type('Mobile','07507823827'), phone_nested_type('Home','0131 421 6421')),
            66,
            (SELECT REF(b) FROM branch_table b WHERE b.bID = 'R1W92'),
            (SELECT REF(j) FROM job_table j WHERE j.jobTitle= 'Head'),
            (SELECT REF(e) FROM employee_table e WHERE e.empID = 1),
            '22-JAN-15');

INSERT INTO employee_table (name, address, niNum, phone, empID, bID, position, supervisorID, joinDate) VALUES (
            name_type(
            'Mr', 'Alistair', 'James'),
            address_type(
            'Sea Food',
            'Edinburgh',
            'E82L 9XN'),
            'NI082',
            tp_phone_nested(phone_nested_type('Mobile','07982982410'), phone_nested_type('Home','0131 323 9494')),
            67,
            (SELECT REF(b) FROM branch_table b WHERE b.bID = 'R1W92'),
            (SELECT REF(j) FROM job_table j WHERE j.jobTitle= 'Manager'),
            (SELECT REF(e) FROM employee_table e WHERE e.empID = 66),
            '14-SEP-16');

INSERT INTO employee_table (name, address, niNum, phone, empID, bID, position, supervisorID, joinDate) VALUES (
            name_type(
            'Mr', 'Haris', 'Patinson'),
            address_type(
            'Jump Master',
            'Edinburgh',
            'E5HE 0LS'),
            'NI083',
            tp_phone_nested(phone_nested_type('Mobile','07530812398'), phone_nested_type('Home','0131 932 5555')),
            68,
            (SELECT REF(b) FROM branch_table b WHERE b.bID = 'R1W92'),
            (SELECT REF(j) FROM job_table j WHERE j.jobTitle= 'Project Leader'),
            (SELECT REF(e) FROM employee_table e WHERE e.empID = 67),
            '06-NOV-17');

INSERT INTO employee_table (name, address, niNum, phone, empID, bID, position, supervisorID, joinDate) VALUES (
            name_type(
            'Mr', 'Luke', 'Cage'),
            address_type(
            'Heroes St',
            'Edinburgh',
            'E9YU 7ZM'),
            'NI084',
            tp_phone_nested(phone_nested_type('Mobile','07298943811'), phone_nested_type('Home','0131 111 0308')),
            69,
            (SELECT REF(b) FROM branch_table b WHERE b.bID = 'R1W92'),
            (SELECT REF(j) FROM job_table j WHERE j.jobTitle= 'Accountant'),
            (SELECT REF(e) FROM employee_table e WHERE e.empID = 67),
            '14-FEB-19');

INSERT INTO employee_table (name, address, niNum, phone, empID, bID, position, supervisorID, joinDate) VALUES (
            name_type(
            'Mr', 'Kyle', 'Larry'),
            address_type(
            'Sauve Nous',
            'Edinburgh',
            'E9ML 1WQ'),
            'NI085',
            tp_phone_nested(phone_nested_type('Mobile','07503298032'), phone_nested_type('Home','0131 555 0485')),
            70,
            (SELECT REF(b) FROM branch_table b WHERE b.bID = 'R1W92'),
            (SELECT REF(j) FROM job_table j WHERE j.jobTitle= 'Cashier'),
            (SELECT REF(e) FROM employee_table e WHERE e.empID = 67),
            '05-FEB-20');

INSERT INTO employee_table (name, address, niNum, phone, empID, bID, position, supervisorID, joinDate) VALUES (
            name_type(
            'Mr', 'Lauren', 'Walin'),
            address_type(
            'Cameron Crest',
            'Edinburgh',
            'EA32 9NX'),
            'NI086',
            tp_phone_nested(phone_nested_type('Mobile','07333948921'), phone_nested_type('Home','0131 000 3203')),
            71,
            (SELECT REF(b) FROM branch_table b WHERE b.bID = 'H728K'),
            (SELECT REF(j) FROM job_table j WHERE j.jobTitle= 'Head'),
            (SELECT REF(e) FROM employee_table e WHERE e.empID = 1),
            '09-APR-19');

INSERT INTO employee_table (name, address, niNum, phone, empID, bID, position, supervisorID, joinDate) VALUES (
            name_type(
            'Mrs', 'Rebecca', 'Saman'),
            address_type(
            'Gulli',
            'Edinburgh',
            'EP3L 9HS'),
            'NI087',
            tp_phone_nested(phone_nested_type('Mobile','07398084301'), phone_nested_type('Home','0131 490 9123')),
            72,
            (SELECT REF(b) FROM branch_table b WHERE b.bID = 'H728K'),
            (SELECT REF(j) FROM job_table j WHERE j.jobTitle= 'Manager'),
            (SELECT REF(e) FROM employee_table e WHERE e.empID = 71),
            '28-AUG-19');

INSERT INTO employee_table (name, address, niNum, phone, empID, bID, position, supervisorID, joinDate) VALUES (
            name_type(
            'Mrs', 'Mariam', 'Mitzi'),
            address_type(
            'Dundee',
            'Edinburgh',
            'E9XW 5JK'),
            'NI088',
            tp_phone_nested(phone_nested_type('Mobile','07503428982'), phone_nested_type('Home','0131 043 6485')),
            73,
            (SELECT REF(b) FROM branch_table b WHERE b.bID = 'H728K'),
            (SELECT REF(j) FROM job_table j WHERE j.jobTitle= 'Project Leader'),
            (SELECT REF(e) FROM employee_table e WHERE e.empID = 72),
            '06-DEC-19');

INSERT INTO employee_table (name, address, niNum, phone, empID, bID, position, supervisorID, joinDate) VALUES (
            name_type(
            'Mr', 'Romeo', 'Lambo'),
            address_type(
            'Synergy',
            'Edinburgh',
            'ET39 8XD'),
            'NI089',
            tp_phone_nested(phone_nested_type('Mobile','07508922237'), phone_nested_type('Home','0131 093 9321')),
            74,
            (SELECT REF(b) FROM branch_table b WHERE b.bID = 'H728K'),
            (SELECT REF(j) FROM job_table j WHERE j.jobTitle= 'Accountant'),
            (SELECT REF(e) FROM employee_table e WHERE e.empID = 71),
            '13-JAN-20');

INSERT INTO employee_table (name, address, niNum, phone, empID, bID, position, supervisorID, joinDate) VALUES (
            name_type(
            'Mrs', 'Annie', 'Couve'),
            address_type(
            'Silway',
            'Edinburgh',
            'EJ03 9HZ'),
            'NI090',
            tp_phone_nested(phone_nested_type('Mobile','07509137237'), phone_nested_type('Home','0131 093 5123')),
            75,
            (SELECT REF(b) FROM branch_table b WHERE b.bID = 'H728K'),
            (SELECT REF(j) FROM job_table j WHERE j.jobTitle= 'Cashier'),
            (SELECT REF(e) FROM employee_table e WHERE e.empID = 72),
            '02-MAR-20');

INSERT INTO employee_table (name, address, niNum, phone, empID, bID, position, supervisorID, joinDate) VALUES (
            name_type(
            'Mrs', 'Lola', 'Steam'),
            address_type(
            'Photomaton',
            'Edinburgh',
            'EJ11 3PD'),
            'NI129',
            tp_phone_nested(phone_nested_type('Mobile','07308937237'), phone_nested_type('Home','0131 096 9123')),
            76,
            (SELECT REF(b) FROM branch_table b WHERE b.bID = 'H729K'),
            (SELECT REF(j) FROM job_table j WHERE j.jobTitle= 'Head'),
            (SELECT REF(e) FROM employee_table e WHERE e.empID = 1),
            '15-JUN-18');

INSERT INTO employee_table (name, address, niNum, phone, empID, bID, position, supervisorID, joinDate) VALUES (
            name_type(
            'Mr', 'Florent', 'Pink'),
            address_type(
            'Mamadou',
            'Edinburgh',
            'E83M 4NX'),
            'NI912',
            tp_phone_nested(phone_nested_type('Mobile','07208937237'), phone_nested_type('Home','0131 087 9143')),
            77,
            (SELECT REF(b) FROM branch_table b WHERE b.bID = 'H729K'),
            (SELECT REF(j) FROM job_table j WHERE j.jobTitle= 'Manager'),
            (SELECT REF(e) FROM employee_table e WHERE e.empID = 76),
            '11-SEP-18');

INSERT INTO employee_table (name, address, niNum, phone, empID, bID, position, supervisorID, joinDate) VALUES (
            name_type(
            'Mrs', 'Annie', 'Erica'),
            address_type(
            'Dunki St',
            'Edinburgh',
            'E0K2 3HZ'),
            'NI093',
            tp_phone_nested(phone_nested_type('Mobile','07108937240'), phone_nested_type('Home','0131 196 2523')),
            78,
            (SELECT REF(b) FROM branch_table b WHERE b.bID = 'H729K'),
            (SELECT REF(j) FROM job_table j WHERE j.jobTitle= 'Project Leader'),
            (SELECT REF(e) FROM employee_table e WHERE e.empID = 77),
            '23-NOV-18');

INSERT INTO employee_table (name, address, niNum, phone, empID, bID, position, supervisorID, joinDate) VALUES (
            name_type(
            'Mrs', 'Leona', 'Amina'),
            address_type(
            'Silouhette',
            'Edinburgh',
            'EJ33 3PZ'),
            'NI394',
            tp_phone_nested(phone_nested_type('Mobile','07301837237'), phone_nested_type('Home','0131 222 9849')),
            79,
            (SELECT REF(b) FROM branch_table b WHERE b.bID = 'H729K'),
            (SELECT REF(j) FROM job_table j WHERE j.jobTitle= 'Accountant'),
            (SELECT REF(e) FROM employee_table e WHERE e.empID = 77),
            '21-JAN-19');

INSERT INTO employee_table (name, address, niNum, phone, empID, bID, position, supervisorID, joinDate) VALUES (
            name_type(
            'Mr', 'Malin', 'Mapped'),
            address_type(
            'Maserati',
            'Edinburgh',
            'EK29 4CN'),
            'NI095',
            tp_phone_nested(phone_nested_type('Mobile','07508982937'), phone_nested_type('Home','0131 563 0394')),
            80,
            (SELECT REF(b) FROM branch_table b WHERE b.bID = 'H729K'),
            (SELECT REF(j) FROM job_table j WHERE j.jobTitle= 'Cashier'),
            (SELECT REF(e) FROM employee_table e WHERE e.empID = 77),
            '13-DEC-19');

INSERT INTO employee_table (name, address, niNum, phone, empID, bID, position, supervisorID, joinDate) VALUES (
            name_type(
            'Mrs', 'Loni', 'Welcome'),
            address_type(
            'Broccoli',
            'Edinburgh',
            'ER02 3HV'),
            'NI096',
            tp_phone_nested(phone_nested_type('Mobile','07593048930'), phone_nested_type('Home','0131 999 9333')),
            81,
            (SELECT REF(b) FROM branch_table b WHERE b.bID = 'H730K'),
            (SELECT REF(j) FROM job_table j WHERE j.jobTitle= 'Head'),
            (SELECT REF(e) FROM employee_table e WHERE e.empID = 1),
            '03-FEB-20');

INSERT INTO employee_table (name, address, niNum, phone, empID, bID, position, supervisorID, joinDate) VALUES (
            name_type(
            'Mr', 'Max', 'Steph'),
            address_type(
            'Micheal K',
            'Edinburgh',
            'EO22 6DL'),
            'NI097',
            tp_phone_nested(phone_nested_type('Mobile','07708937237'), phone_nested_type('Home','0131 902 9193')),
            82,
            (SELECT REF(b) FROM branch_table b WHERE b.bID = 'H730K'),
            (SELECT REF(j) FROM job_table j WHERE j.jobTitle= 'Manager'),
            (SELECT REF(e) FROM employee_table e WHERE e.empID = 81),
            '05-FEB-20');

INSERT INTO employee_table (name, address, niNum, phone, empID, bID, position, supervisorID, joinDate) VALUES (
            name_type(
            'Mrs', 'Nia', 'Jay'),
            address_type(
            'Bronson',
            'Edinburgh',
            'EP02 8ZB'),
            'NI098',
            tp_phone_nested(phone_nested_type('Mobile','07728937237'), phone_nested_type('Home','0131 000 0012')),
            83,
            (SELECT REF(b) FROM branch_table b WHERE b.bID = 'H730K'),
            (SELECT REF(j) FROM job_table j WHERE j.jobTitle= 'Project Leader'),
            (SELECT REF(e) FROM employee_table e WHERE e.empID = 82),
            '18-FEB-20');

INSERT INTO employee_table (name, address, niNum, phone, empID, bID, position, supervisorID, joinDate) VALUES (
            name_type(
            'Mrs', 'Michelle', 'Senti'),
            address_type(
            'FindH',
            'Edinburgh',
            'EK30 2XB'),
            'NI100',
            tp_phone_nested(phone_nested_type('Mobile','07230829341'), phone_nested_type('Home','0131 923 0451')),
            84,
            (SELECT REF(b) FROM branch_table b WHERE b.bID = 'H730K'),
            (SELECT REF(j) FROM job_table j WHERE j.jobTitle= 'Accountant'),
            (SELECT REF(e) FROM employee_table e WHERE e.empID = 82),
            '28-FEB-20');

INSERT INTO employee_table (name, address, niNum, phone, empID, bID, position, supervisorID, joinDate) VALUES (
            name_type(
            'Mr', 'Jacob', 'Riz'),
            address_type(
            'Cuisine',
            'Edinburgh',
            'EP52 3HW'),
            'NI101',
            tp_phone_nested(phone_nested_type('Mobile','07242937237'), phone_nested_type('Home','0131 630 1923')),
            85,
            (SELECT REF(b) FROM branch_table b WHERE b.bID = 'H730K'),
            (SELECT REF(j) FROM job_table j WHERE j.jobTitle= 'Cashier'),
            (SELECT REF(e) FROM employee_table e WHERE e.empID = 82),
            '05-MAR-20');

INSERT INTO employee_table (name, address, niNum, phone, empID, bID, position, supervisorID, joinDate) VALUES (
            name_type(
            'Mr', 'Garlic', 'Junior'),
            address_type(
            'Minto',
            'Edinburgh',
            'E8YY 3HZ'),
            'NI103',
            tp_phone_nested(phone_nested_type('Mobile','07003937237'), phone_nested_type('Home','0131 456 9123')),
            86,
            (SELECT REF(b) FROM branch_table b WHERE b.bID = 'MN432'),
            (SELECT REF(j) FROM job_table j WHERE j.jobTitle= 'Head'),
            (SELECT REF(e) FROM employee_table e WHERE e.empID = 1),
            '12-JAN-15');

INSERT INTO employee_table (name, address, niNum, phone, empID, bID, position, supervisorID, joinDate) VALUES (
            name_type(
            'Mrs', 'Hafsa', 'Sandoval'),
            address_type(
            'Stanford',
            'Edinburgh',
            'EO23 6NV'),
            'NI104',
            tp_phone_nested(phone_nested_type('Mobile','07201938031'), phone_nested_type('Home','0131 592 1793')),
            87,
            (SELECT REF(b) FROM branch_table b WHERE b.bID = 'MN432'),
            (SELECT REF(j) FROM job_table j WHERE j.jobTitle= 'Manager'),
            (SELECT REF(e) FROM employee_table e WHERE e.empID = 86),
            '28-FEB-15');

INSERT INTO employee_table (name, address, niNum, phone, empID, bID, position, supervisorID, joinDate) VALUES (
            name_type(
            'Mr', 'Benjamin', 'Jemima'),
            address_type(
            'Carly St',
            'Edinburgh',
            'EH9Y 6XN'),
            'NI105',
            tp_phone_nested(phone_nested_type('Mobile','07102337237'), phone_nested_type('Home','0131 999 1893')),
            88,
            (SELECT REF(b) FROM branch_table b WHERE b.bID = 'MN432'),
            (SELECT REF(j) FROM job_table j WHERE j.jobTitle= 'Project Leader'),
            (SELECT REF(e) FROM employee_table e WHERE e.empID = 87),
            '16-MAY-16');

INSERT INTO employee_table (name, address, niNum, phone, empID, bID, position, supervisorID, joinDate) VALUES (
            name_type(
            'Mr', 'Ibrom', 'Saskia'),
            address_type(
            'MorningSide',
            'Edinburgh',
            'EU50 3QM'),
            'NI107',
            tp_phone_nested(phone_nested_type('Mobile','07998937240'), phone_nested_type('Home','0131 182 5933')),
            89,
            (SELECT REF(b) FROM branch_table b WHERE b.bID = 'MN432'),
            (SELECT REF(j) FROM job_table j WHERE j.jobTitle= 'Accountant'),
            (SELECT REF(e) FROM employee_table e WHERE e.empID = 87),
            '07-DEC-16');

INSERT INTO employee_table (name, address, niNum, phone, empID, bID, position, supervisorID, joinDate) VALUES (
            name_type(
            'Mrs', 'Paula', 'Brad'),
            address_type(
            'Tesco',
            'Edinburgh',
            'EA92 6XP'),
            'NI108',
            tp_phone_nested(phone_nested_type('Mobile','07338940402'), phone_nested_type('Home','0131 444 5151')),
            90,
            (SELECT REF(b) FROM branch_table b WHERE b.bID = 'MN432'),
            (SELECT REF(j) FROM job_table j WHERE j.jobTitle= 'Cashier'),
            (SELECT REF(e) FROM employee_table e WHERE e.empID = 88),
            '18-DEC-17');

INSERT INTO employee_table (name, address, niNum, phone, empID, bID, position, supervisorID, joinDate) VALUES (
            name_type(
            'Mrs', 'Carly', 'Strong'),
            address_type(
            'Ford ST',
            'Edinburgh',
            'EJ09 1HZ'),
            'NI109',
            tp_phone_nested(phone_nested_type('Mobile','07448937349'), phone_nested_type('Home','0131 034 8371')),
            91,
            (SELECT REF(b) FROM branch_table b WHERE b.bID = 'MN433'),
            (SELECT REF(j) FROM job_table j WHERE j.jobTitle= 'Head'),
            (SELECT REF(e) FROM employee_table e WHERE e.empID = 1),
            '26-JAN-17');

INSERT INTO employee_table (name, address, niNum, phone, empID, bID, position, supervisorID, joinDate) VALUES (
            name_type(
            'Mrs', 'Aysha', 'Massy'),
            address_type(
            'Bonnie',
            'Edinburgh',
            'EZ92 8WN'),
            'NI110',
            tp_phone_nested(phone_nested_type('Mobile','07803278647'), phone_nested_type('Home','0131 412 7193')),
            92,
            (SELECT REF(b) FROM branch_table b WHERE b.bID = 'MN433'),
            (SELECT REF(j) FROM job_table j WHERE j.jobTitle= 'Manager'),
            (SELECT REF(e) FROM employee_table e WHERE e.empID = 91),
            '29-JAN-17');

INSERT INTO employee_table (name, address, niNum, phone, empID, bID, position, supervisorID, joinDate) VALUES (
            name_type(
            'Mr', 'Jean', 'Jackso'),
            address_type(
            'Hype Tower',
            'Edinburgh',
            'EJ62 8WN'),
            'NI111',
            tp_phone_nested(phone_nested_type('Mobile','07508099827'), phone_nested_type('Home','0131 400 2019')),
            93,
            (SELECT REF(b) FROM branch_table b WHERE b.bID = 'MN433'),
            (SELECT REF(j) FROM job_table j WHERE j.jobTitle= 'Project Leader'),
            (SELECT REF(e) FROM employee_table e WHERE e.empID = 92),
            '01-MAR-17');

INSERT INTO employee_table (name, address, niNum, phone, empID, bID, position, supervisorID, joinDate) VALUES (
            name_type(
            'Mr', 'Alex', 'Norman'),
            address_type(
            'Angoulême',
            'Edinburgh',
            'EY20 1GH'),
            'NI112',
            tp_phone_nested(phone_nested_type('Mobile','07503784011'), phone_nested_type('Home','0131 175 8321')),
            94,
            (SELECT REF(b) FROM branch_table b WHERE b.bID = 'MN433'),
            (SELECT REF(j) FROM job_table j WHERE j.jobTitle= 'Accountant'),
            (SELECT REF(e) FROM employee_table e WHERE e.empID = 93),
            '28-APR-17');

INSERT INTO employee_table (name, address, niNum, phone, empID, bID, position, supervisorID, joinDate) VALUES (
            name_type(
            'Mr', 'Calvin', 'Card'),
            address_type(
            'Gilmore',
            'Edinburgh',
            'EH92 1YW'),
            'NI113',
            tp_phone_nested(phone_nested_type('Mobile','07602354431'), phone_nested_type('Home','0131 770 9213')),
            95,
            (SELECT REF(b) FROM branch_table b WHERE b.bID = 'MN433'),
            (SELECT REF(j) FROM job_table j WHERE j.jobTitle= 'Cashier'),
            (SELECT REF(e) FROM employee_table e WHERE e.empID = 93),
            '15-AUG-18');

INSERT INTO employee_table (name, address, niNum, phone, empID, bID, position, supervisorID, joinDate) VALUES (
            name_type(
            'Mrs', 'Anna', 'William'),
            address_type(
            'Basket J',
            'Edinburgh',
            'EJ70 7NE'),
            'NI114',
            tp_phone_nested(phone_nested_type('Mobile','07918937237'), phone_nested_type('Home','0131 487 9123')),
            96,
            (SELECT REF(b) FROM branch_table b WHERE b.bID = 'MN434'),
            (SELECT REF(j) FROM job_table j WHERE j.jobTitle= 'Head'),
            (SELECT REF(e) FROM employee_table e WHERE e.empID = 1),
            '04-APR-17');

INSERT INTO employee_table (name, address, niNum, phone, empID, bID, position, supervisorID, joinDate) VALUES (
            name_type(
            'Mr', 'Naruto', 'Tout'),
            address_type(
            'Hokage',
            'Edinburgh',
            'EJ02 3HZ'),
            'NI115',
            tp_phone_nested(phone_nested_type('Mobile','07578937238'), phone_nested_type('Home','0131 099 9143')),
            97,
            (SELECT REF(b) FROM branch_table b WHERE b.bID = 'MN434'),
            (SELECT REF(j) FROM job_table j WHERE j.jobTitle= 'Manager'),
            (SELECT REF(e) FROM employee_table e WHERE e.empID = 96),
            '01-MAY-17');

INSERT INTO employee_table (name, address, niNum, phone, empID, bID, position, supervisorID, joinDate) VALUES (
            name_type(
            'Mrs', 'Eleana', 'Friedman'),
            address_type(
            'SuperVille',
            'Edinburgh',
            'EF32 9MZ'),
            'NI116',
            tp_phone_nested(phone_nested_type('Mobile','07558937237'), phone_nested_type('Home','0131 993 9123')),
            98,
            (SELECT REF(b) FROM branch_table b WHERE b.bID = 'MN434'),
            (SELECT REF(j) FROM job_table j WHERE j.jobTitle= 'Project Leader'),
            (SELECT REF(e) FROM employee_table e WHERE e.empID = 97),
            '17-MAY-17');

INSERT INTO employee_table (name, address, niNum, phone, empID, bID, position, supervisorID, joinDate) VALUES (
            name_type(
            'Mr', 'Hugo', 'Leblanc'),
            address_type(
            'Humblot',
            'Edinburgh',
            'ES02 5HZ'),
            'NI117',
            tp_phone_nested(phone_nested_type('Mobile','07093372371'), phone_nested_type('Home','0131 093 8803')),
            99,
            (SELECT REF(b) FROM branch_table b WHERE b.bID = 'MN434'),
            (SELECT REF(j) FROM job_table j WHERE j.jobTitle= 'Accountant'),
            (SELECT REF(e) FROM employee_table e WHERE e.empID = 98),
            '22-JAN-18');

INSERT INTO customer_table (custID, name, address, niNum, phone) VALUES (
            '1001',
            name_type(
            'Mr',
            'Ulrich',
            'Yjze'),
            address_type(
            'Walking RD',
            'Edinburgh',
            'EH1'),
            'NI500',
            tp_phone_nested(phone_nested_type('Mobile','07500 123456'), phone_nested_type('Home','300 7946 0648'))
);
INSERT INTO customer_table (custID, name, address, niNum, phone) VALUES (
            '1002',
            name_type(
            'Mr',
            'Theo',
            'Eugene'),
            address_type(
            'Haymarket',
            'Edinburgh',
            'EH1 1AD'),
            'NI501',
            tp_phone_nested(phone_nested_type('Mobile','07500 654321'), phone_nested_type('Home','290 7946 0648'))
);
INSERT INTO customer_table (custID, name, address, niNum, phone) VALUES (
            '1003',
            name_type(
            'Mrs',
            'Victoria',
            'Bruce'),
            address_type(
            'Colinton',
            'Edinburgh',
            'EH5 1BS'),
            'NI502',
            tp_phone_nested(phone_nested_type('Mobile','07500 983712'), phone_nested_type('Home','280 7946 0648'))
);
INSERT INTO customer_table (custID, name, address, niNum, phone) VALUES (
            '1004',
            name_type(
            'Mr',
            'Rafael',
            'Barnaby'),
            address_type(
            'FordBridge',
            'London',
            'LH8 5MK'),
            'NI503',
            tp_phone_nested(phone_nested_type('Mobile','07500 290321'), phone_nested_type('Home','270 7946 0648'))
);
INSERT INTO customer_table (custID, name, address, niNum, phone) VALUES (
            '1005',
            name_type(
            'Mr',
            'Christian',
            'Andrew'),
            address_type(
            'Serial L',
            'Edinburgh',
            'EH19 1HJ'),
            'NI504',
            tp_phone_nested(phone_nested_type('Mobile','07500 210973'), phone_nested_type('Home','260 7946 0648'))
);
INSERT INTO customer_table (custID, name, address, niNum, phone) VALUES (
            '1006',
            name_type(
            'Mr',
            'Ismail',
            'Verity'),
            address_type(
            'Pure Evian',
            'Edinburgh',
            'EH89 5XS'),
            'NI505',
            tp_phone_nested(phone_nested_type('Mobile','07500 983714'), phone_nested_type('Home','250 7946 0648'))
);
INSERT INTO customer_table (custID, name, address, niNum, phone) VALUES (
            '1007',
            name_type(
            'Mr',
            'Jacob',
            'Francis'),
            address_type(
            'CleanP',
            'Edinburgh',
            'EH55 3LW'),
            'NI506',
            tp_phone_nested(phone_nested_type('Mobile','07500 883981'), phone_nested_type('Home','240 7946 0648'))
);
INSERT INTO customer_table (custID, name, address, niNum, phone) VALUES (
            '1008',
            name_type(
            'Mrs',
            'Abby',
            'Jose'),
            address_type(
            'Magnesium',
            'Edinburgh',
            'EH10 7YR'),
            'NI507',
            tp_phone_nested(phone_nested_type('Mobile','07500 552893'), phone_nested_type('Home','230 7946 0648'))
);
INSERT INTO customer_table (custID, name, address, niNum, phone) VALUES (
            '1009',
            name_type(
            'Mrs',
            'Garie',
            'Zack'),
            address_type(
            'Scott Av',
            'Edinburgh',
            'EH16 3GR'),
            'NI508',
            tp_phone_nested(phone_nested_type('Mobile','07500 793894'), phone_nested_type('Home','220 7946 0648'))
);
INSERT INTO customer_table (custID, name, address, niNum, phone) VALUES (
            '1010',
            name_type(
            'Mr',
            'Franklin',
            'Antonio'),
            address_type(
            'Nectarine',
            'Edinburgh',
            'EY21 9NS'),
            'NI509',
            tp_phone_nested(phone_nested_type('Mobile','07500 663981'), phone_nested_type('Home','210 7946 0648'))
);
INSERT INTO customer_table (custID, name, address, niNum, phone) VALUES (
            '1011',
            name_type(
            'Mrs',
            'Leane',
            'Lewis'),
            address_type(
            'Rochefoucauld',
            'London',
            'LH89 1NP'),
            'NI510',
            tp_phone_nested(phone_nested_type('Mobile','07500 772912'), phone_nested_type('Home','190 7946 0648'))
);
INSERT INTO customer_table (custID, name, address, niNum, phone) VALUES (
            '1012',
            name_type(
            'Mr',
            'Simon',
            'Charley'),
            address_type(
            'Nopublic',
            'Edinburgh',
            'EH12 3DR'),
            'NI511',
            tp_phone_nested(phone_nested_type('Mobile','07500 563784'), phone_nested_type('Home','180 7946 0648'))
);
INSERT INTO customer_table (custID, name, address, niNum, phone) VALUES (
            '1013',
            name_type(
            'Mrs',
            'Sonia',
            'Craig'),
            address_type(
            'SantaMaria',
            'Edinburgh',
            'EH56 8LM'),
            'NI512',
            tp_phone_nested(phone_nested_type('Mobile','07500 378129'), phone_nested_type('Home','170 7946 0648'))
);
INSERT INTO customer_table (custID, name, address, niNum, phone) VALUES (
            '1014',
            name_type(
            'Mr',
            'Jon',
            'Bailey'),
            address_type(
            'Rindaman',
            'Edinburgh',
            'EH55 0LO'),
            'NI513',
            tp_phone_nested(phone_nested_type('Mobile','07500 444181'), phone_nested_type('Home','160 7946 0648'))
);
INSERT INTO customer_table (custID, name, address, niNum, phone) VALUES (
            '1015',
            name_type(
            'Mr',
            'Jason',
            'Shane'),
            address_type(
            'Erik St',
            'Edinburgh',
            'EU37 9MM'),
            'NI514',
            tp_phone_nested(phone_nested_type('Mobile','07500 209301'), phone_nested_type('Home','150 7946 0648'))
);

INSERT INTO customer_table (custID, name, address, niNum, phone) VALUES (
            '1017',
            name_type(
            'Mrs',
            'Tanya',
            'Curtis'),
            address_type(
            'Netflix',
            'Edinburgh',
            'EP81 3TN'),
            'NI516',
            tp_phone_nested(phone_nested_type('Mobile','07903 129830'), phone_nested_type('Home','130 7946 0648'))
);
INSERT INTO customer_table (custID, name, address, niNum, phone) VALUES (
            '1018',
            name_type(
            'Mr',
            'Aron',
            'Grover'),
            address_type(
            'SurgeonHall',
            'Edinburgh',
            'EH25 1HS'),
            'NI517',
            tp_phone_nested(phone_nested_type('Mobile','07372 317878'), phone_nested_type('Home','120 7946 0648'))
);

INSERT INTO customer_table (custID, name, address, niNum, phone) VALUES (
            '1020',
            name_type(
            'Mr',
            'Hamzah',
            'Courtney'),
            address_type(
            'Dyno',
            'Edinburgh',
            'EH19 2NW'),
            'NI519',
            tp_phone_nested(phone_nested_type('Mobile','07129 409231'), phone_nested_type('Home','080 7946 0648'))
);
INSERT INTO customer_table (custID, name, address, niNum, phone) VALUES (
            '1021',
            name_type(
            'Mr',
            'Zak',
            'Oliver'),
            address_type(
            'Subway',
            'Edinburgh',
            'EH90 4CB'),
            'NI520',
            tp_phone_nested(phone_nested_type('Mobile','07500 128730'), phone_nested_type('Home','070 7946 0648'))
);
INSERT INTO customer_table (custID, name, address, niNum, phone) VALUES (
            '1022',
            name_type(
            'Mrs',
            'Georgia',
            'Will'),
            address_type(
            'WilliamSt',
            'Edinburgh',
            'EH23 5YF'),
            'NI521',
            tp_phone_nested(phone_nested_type('Mobile','07800 847811'), phone_nested_type('Home','060 7946 0648'))
);
INSERT INTO customer_table (custID, name, address, niNum, phone) VALUES (
            '1023',
            name_type(
            'Mr',
            'Aidan',
            'Nilo'),
            address_type(
            'BiOil',
            'Edinburgh',
            'EH1 2DL'),
            'NI522',
            tp_phone_nested(phone_nested_type('Mobile','07330 922738'), phone_nested_type('Home','050 7946 0648'))
);
INSERT INTO customer_table (custID, name, address, niNum, phone) VALUES (
            '1024',
            name_type(
            'Mr',
            'Will',
            'Turner'),
            address_type(
            'Bel Air',
            'Edinburgh',
            'EH19 7HY'),
            'NI523',
            tp_phone_nested(phone_nested_type('Mobile','07390 178872'), phone_nested_type('Home','040 7578 0659'))
);
INSERT INTO customer_table (custID, name, address, niNum, phone) VALUES (
            '1025',
            name_type(
            'Mrs',
            'Anita',
            'Vincent'),
            address_type(
            'Dialo N',
            'Edinburgh',
            'EH11 1AR'),
            'NI524',
            tp_phone_nested(phone_nested_type('Mobile','07420 888314'), phone_nested_type('Home','030 5598 0237'))
);

INSERT INTO customer_table (custID ,name, address, niNum, phone) VALUES (
            '1026',
            name_Type(
            'Mrs',
            'Gorka',
            'Cole'),
            address_Type(
            'Netherway',
            'Edinburgh',
            'EH09 3LM'),
            'NI525',
            tp_phone_nested(phone_nested_type('Mobile','07500908828'), phone_nested_type('Mobile','07500 400218'), phone_nested_type('Home','0122 496 0550'))
);
INSERT INTO customer_table (custID , name,  address, niNum, phone) VALUES (
            '1027',
            name_Type(
            'Mr',
            'Micheal',
            'Michel'),
            address_Type(
            'Soft St',
            'Edinburgh',
            'EH13 8EY'),
            'NI526',
            tp_phone_nested(phone_nested_type('Mobile','07500003811'), phone_nested_type('Mobile','07500 927219'), phone_nested_type('Home','0103 500 1583'))
);
INSERT INTO customer_table (custID , name, address, niNum, phone) VALUES (
            '1028',
            name_Type(
            'Mr',
            'Chemise',
            'Col'),
            address_Type(
            'Ground',
            'Edinburgh',
            'EH22 90D'),
            'NI527',
            tp_phone_nested(phone_nested_type('Mobile','07500111893'), phone_nested_type('Mobile','07500 223884'), phone_nested_type('Home','0112 243 1192'))
);
INSERT INTO customer_table (custID ,name, address, niNum, phone) VALUES (
            '1029',
            name_Type(
            'Mrs',
            'Ayumi',
            'Magical'),
            address_Type(
            'Doremi',
            'Edinburgh',
            'EZ29 0WN'),
            'NI528',
            tp_phone_nested(phone_nested_type('Mobile','07500990273'), phone_nested_type('Mobile','07500 883741'), phone_nested_type('Home','0190 657 0899'))
);
INSERT INTO customer_table (custID ,name, address, niNum, phone) VALUES (
            '1030',
            name_Type(
            'Mr',
            'Soko',
            'Steul'),
            address_Type(
            'Maskoun',
            'Edinburgh',
            'E083 7ZL'),
            'NI529',
            tp_phone_nested(phone_nested_type('Mobile','07509379872'), phone_nested_type('Mobile','07500 328932'), phone_nested_type('Home','0113 498 0749'))
);

INSERT INTO customer_table (custID ,name, address, niNum, phone) VALUES (
            '1032',
            name_Type(
            'Mr',
            'Loke',
            'Fairy'),
            address_Type(
            '11 Street K',
            'Edinburgh',
            'EH11 5TG'),
            'NI002',
            tp_phone_nested(phone_nested_type('Mobile','07801277121'), phone_nested_type('Mobile','07503 22221'), phone_nested_type('Home','0200 496 0561'))
);

INSERT INTO customer_table (custID ,name, address, niNum, phone) VALUES (
            '1033',
            name_Type(
            'Mr',
            'Nash',
            'Jr'),
            address_Type(
            'Gold Nash',
            'Edinburgh',
            'EH13 7NX'),
            'NI102',
            tp_phone_nested(phone_nested_type('Mobile','07600839831'), phone_nested_type('Mobile','07503 784011'), phone_nested_type('Home','0110 892 0513'))
);

INSERT INTO customer_table (custID ,name, address, niNum, phone) VALUES (
            '1019',
            name_Type(
            'Mr',
            'Zako',
            'Laurent'),
            address_Type(
            'Yves St',
            'Edinburgh',
            'EH54 9JY'),
            'NI934',
            tp_phone_nested(phone_nested_type('Mobile','07587262781'), phone_nested_type('Mobile','07503 720801'), phone_nested_type('Home','0122 893 3456'))
);

INSERT INTO customer_table (custID ,name, address, niNum, phone) VALUES (
            '1016',
            name_Type(
            'Mrs',
            'Baby',
            'Liss'),
            address_Type(
            'Silver Stone',
            'Edinburgh',
            'EH24 9OC'),
            'NI939',
            tp_phone_nested(phone_nested_type('Mobile','07892792101'), phone_nested_type('Mobile','07503 298311'), phone_nested_type('Home','0116 092 0649'))
);

INSERT INTO customer_table (custID ,name, address, niNum, phone) VALUES (
            '1034',
            name_Type(
            'Mr',
            'Dino',
            'Xbox'),
            address_Type(
            'Mayo',
            'Edinburgh',
            'EH89 7JY'),
            'NI281',
            tp_phone_nested(phone_nested_type('Mobile','07503928732'), phone_nested_type('Mobile','07503 218100'), phone_nested_type('Home','0178 226 0949'))
);
INSERT INTO customer_table (custID ,name, address, niNum, phone) VALUES (
            '1036',
            name_Type(
            'Mrs',
            'Man',
            'Bush'),
            address_Type(
            'Lonely',
            'Edinburgh',
            'EH33 5MP'),
            'NI285',
            tp_phone_nested(phone_nested_type('Mobile','07503244322'), phone_nested_type('Mobile','07503 323198'), phone_nested_type('Home','0129 044 1209'))
);
INSERT INTO customer_table (custID ,name, address, niNum, phone) VALUES (
            '1037',
            name_Type(
            'Mr',
            'Time',
            'SQL'),
            address_Type(
            'Master',
            'Edinburgh',
            'EH24 5IP'),
            'NI289',
            tp_phone_nested(phone_nested_type('Mobile','07603782368'), phone_nested_type('Mobile','07503 329882'), phone_nested_type('Home','0129 288 9203'))
);

INSERT INTO customer_table (custID ,name, address, niNum, phone) VALUES (
            '1038',
            name_Type(
            'Mr',
            'Comment',
            'Aloe'),
            address_Type(
            'Montgomer',
            'Edinburgh',
            'EH91 7OZ'),
            'NI259',
            tp_phone_nested(phone_nested_type('Mobile','07603221685'), phone_nested_type('Mobile','07603 555211'), phone_nested_type('Home','0130 212 9209'))
);
INSERT INTO customer_table (custID ,name, address, niNum, phone) VALUES (
            '1039',
            name_Type(
            'Mrs',
            'Vera',
            'Mogu'),
            address_Type(
            'SilverLac',
            'Edinburgh',
            'EH10 4MZ'),
            'NI321',
            tp_phone_nested(phone_nested_type('Mobile','07230982312'), phone_nested_type('Mobile','07271 392837'), phone_nested_type('Home','0290 212 9209'))
);

INSERT INTO customer_table (custID ,name, address, niNum, phone) VALUES (
            '1040',
            name_Type(
            'Mr',
            'Mark',
            'Anderson'),
            address_Type(
            'Mixa',
            'Edinburgh',
            'EH12 3SL'),
            'NI478',
            tp_phone_nested(phone_nested_type('Mobile','07398712121'), phone_nested_type('Mobile','07503 89311'), phone_nested_type('Home','0130 444 8930'))
);

INSERT INTO customer_table (custID ,name, address, niNum, phone) VALUES (
            '1041',
            name_Type(
            'Mrs',
            'Ophelie',
            'Lit'),
            address_Type(
            'Excel',
            'Edinburgh',
            'EA19 6WN'),
            'NI479',
            tp_phone_nested(phone_nested_type('Mobile','07503298311'), phone_nested_type('Mobile','07802 537841'), phone_nested_type('Home','0130 902 9209'))
);

INSERT INTO customer_table (custID ,name, address, niNum, phone) VALUES (
            '1042',
            name_Type(
            'Mr',
            'Manger',
            'Bouger'),
            address_Type(
            'Hiyo',
            'Edinburgh',
            'E81M 6WN'),
            'NI390',
            tp_phone_nested(phone_nested_type('Mobile','07923798311'), phone_nested_type('Mobile','07802 820011'), phone_nested_type('Home','0121 830 9209'))
);

INSERT INTO customer_table (custID ,name, address, niNum, phone) VALUES (
            '1043',
            name_Type(
            'Mr',
            'Good',
            'Hello'),
            address_Type(
            'Jump',
            'Edinburgh',
            'EJ4M 5HN'),
            'NI903',
            tp_phone_nested(phone_nested_type('Mobile','07938932981'), phone_nested_type('Mobile','07802 830011'), phone_nested_type('Home','0900 830 9209'))
);

INSERT INTO customer_table (custID ,name, address, niNum, phone) VALUES (
            '1044',
            name_Type(
            'Mr',
            'Gundam',
            'Build'),
            address_Type(
            'Fighters',
            'Edinburgh',
            'EY7Z 1JN'),
            'NI921',
            tp_phone_nested(phone_nested_type('Mobile','07503209312'), phone_nested_type('Mobile','07781 830011'), phone_nested_type('Home','0888 830 9209'))
);

INSERT INTO customer_table (custID ,name, address, niNum, phone) VALUES (
            '1045',
            name_Type(
            'Mrs',
            'Star',
            'Ball'),
            address_Type(
            'Try',
            'Edinburgh',
            'EY1J 1JN'),
            'NI950',
            tp_phone_nested(phone_nested_type('Mobile','07502761112'), phone_nested_type('Mobile','07829 830011'), phone_nested_type('Home','0111 830 9209'))
);


INSERT INTO customer_account (custID, accNum) VALUES (
    (SELECT REF(c) FROM customer_table c WHERE custID = '1001'),
    (SELECT REF(a) FROM account_table a WHERE accNum = '3268438801')
);

INSERT INTO customer_account (custID, accNum) VALUES (
    (SELECT REF(c) FROM customer_table c WHERE custID = '1002'),
    (SELECT REF(a) FROM account_table a WHERE accNum = '2893939811')
);

INSERT INTO customer_account (custID, accNum) VALUES (
    (SELECT REF(c) FROM customer_table c WHERE custID = '1002'),
    (SELECT REF(a) FROM account_table a WHERE accNum = '2673873212')
);

INSERT INTO customer_account (custID, accNum) VALUES (
    (SELECT REF(c) FROM customer_table c WHERE custID = '1003'),
    (SELECT REF(a) FROM account_table a WHERE accNum = '3928430023')
);

INSERT INTO customer_account (custID, accNum) VALUES (
    (SELECT REF(c) FROM customer_table c WHERE custID = '1004'),
    (SELECT REF(a) FROM account_table a WHERE accNum = '5031270374')
);

INSERT INTO customer_account (custID, accNum) VALUES (
    (SELECT REF(c) FROM customer_table c WHERE custID = '1005'),
    (SELECT REF(a) FROM account_table a WHERE accNum = '6084137021')
);

INSERT INTO customer_account (custID, accNum) VALUES (
    (SELECT REF(c) FROM customer_table c WHERE custID = '1006'),
    (SELECT REF(a) FROM account_table a WHERE accNum = '7038912374')
);

INSERT INTO customer_account (custID, accNum) VALUES (
    (SELECT REF(c) FROM customer_table c WHERE custID = '1006'),
    (SELECT REF(a) FROM account_table a WHERE accNum = '1968601537')
);

INSERT INTO customer_account (custID, accNum) VALUES (
    (SELECT REF(c) FROM customer_table c WHERE custID = '1007'),
    (SELECT REF(a) FROM account_table a WHERE accNum = '5098903726')
);

INSERT INTO customer_account (custID, accNum) VALUES (
    (SELECT REF(c) FROM customer_table c WHERE custID = '1008'),
    (SELECT REF(a) FROM account_table a WHERE accNum = '9827942041')
);

INSERT INTO customer_account (custID, accNum) VALUES (
    (SELECT REF(c) FROM customer_table c WHERE custID = '1009'),
    (SELECT REF(a) FROM account_table a WHERE accNum = '3094880340')
);

INSERT INTO customer_account (custID, accNum) VALUES (
    (SELECT REF(c) FROM customer_table c WHERE custID = '1010'),
    (SELECT REF(a) FROM account_table a WHERE accNum = '3024890243')
);

INSERT INTO customer_account (custID, accNum) VALUES (
    (SELECT REF(c) FROM customer_table c WHERE custID = '1011'),
    (SELECT REF(a) FROM account_table a WHERE accNum = '9248728703')
);

INSERT INTO customer_account (custID, accNum) VALUES (
    (SELECT REF(c) FROM customer_table c WHERE custID = '1012'),
    (SELECT REF(a) FROM account_table a WHERE accNum = '1028018304')
);

INSERT INTO customer_account (custID, accNum) VALUES (
    (SELECT REF(c) FROM customer_table c WHERE custID = '1013'),
    (SELECT REF(a) FROM account_table a WHERE accNum = '2038028411')
);

INSERT INTO customer_account (custID, accNum) VALUES (
    (SELECT REF(c) FROM customer_table c WHERE custID = '1014'),
    (SELECT REF(a) FROM account_table a WHERE accNum = '1067308412')
);

INSERT INTO customer_account (custID, accNum) VALUES (
    (SELECT REF(c) FROM customer_table c WHERE custID = '1015'),
    (SELECT REF(a) FROM account_table a WHERE accNum = '7066328412')
);

INSERT INTO customer_account (custID, accNum) VALUES (
    (SELECT REF(c) FROM customer_table c WHERE custID = '1015'),
    (SELECT REF(a) FROM account_table a WHERE accNum = '3476023803')
);

INSERT INTO customer_account (custID, accNum) VALUES (
    (SELECT REF(c) FROM customer_table c WHERE custID = '1016'),
    (SELECT REF(a) FROM account_table a WHERE accNum = '9827093787')
);

INSERT INTO customer_account (custID, accNum) VALUES (
    (SELECT REF(c) FROM customer_table c WHERE custID = '1017'),
    (SELECT REF(a) FROM account_table a WHERE accNum = '7351068691')
);

INSERT INTO customer_account (custID, accNum) VALUES (
    (SELECT REF(c) FROM customer_table c WHERE custID = '1018'),
    (SELECT REF(a) FROM account_table a WHERE accNum = '2673873200')
);

INSERT INTO customer_account (custID, accNum) VALUES (
    (SELECT REF(c) FROM customer_table c WHERE custID = '1019'),
    (SELECT REF(a) FROM account_table a WHERE accNum = '3978379281')
);

INSERT INTO customer_account (custID, accNum) VALUES (
    (SELECT REF(c) FROM customer_table c WHERE custID = '1020'),
    (SELECT REF(a) FROM account_table a WHERE accNum = '7038347943')
);

INSERT INTO customer_account (custID, accNum) VALUES (
    (SELECT REF(c) FROM customer_table c WHERE custID = '1020'),
    (SELECT REF(a) FROM account_table a WHERE accNum = '5298373228')
);

INSERT INTO customer_account (custID, accNum) VALUES (
    (SELECT REF(c) FROM customer_table c WHERE custID = '1021'),
    (SELECT REF(a) FROM account_table a WHERE accNum = '2630923801')
);

INSERT INTO customer_account (custID, accNum) VALUES (
    (SELECT REF(c) FROM customer_table c WHERE custID = '1022'),
    (SELECT REF(a) FROM account_table a WHERE accNum = '6273098905')
);

INSERT INTO customer_account (custID, accNum) VALUES (
    (SELECT REF(c) FROM customer_table c WHERE custID = '1023'),
    (SELECT REF(a) FROM account_table a WHERE accNum = '6394872370')
);

INSERT INTO customer_account (custID, accNum) VALUES (
    (SELECT REF(c) FROM customer_table c WHERE custID = '1024'),
    (SELECT REF(a) FROM account_table a WHERE accNum = '0223873269')
);

INSERT INTO customer_account (custID, accNum) VALUES (
    (SELECT REF(c) FROM customer_table c WHERE custID = '1024'),
    (SELECT REF(a) FROM account_table a WHERE accNum = '4018238229')
);

INSERT INTO customer_account (custID, accNum) VALUES (
    (SELECT REF(c) FROM customer_table c WHERE custID = '1025'),
    (SELECT REF(a) FROM account_table a WHERE accNum = '16095573')
);

INSERT INTO customer_account (custID, accNum) VALUES (
    (SELECT REF(c) FROM customer_table c WHERE custID = '1026'),
    (SELECT REF(a) FROM account_table a WHERE accNum = '5567290123')
);

INSERT INTO customer_account (custID, accNum) VALUES (
    (SELECT REF(c) FROM customer_table c WHERE custID = '1027'),
    (SELECT REF(a) FROM account_table a WHERE accNum = '5592389371')
);

INSERT INTO customer_account (custID, accNum) VALUES (
    (SELECT REF(c) FROM customer_table c WHERE custID = '1028'),
    (SELECT REF(a) FROM account_table a WHERE accNum = '8828639102')
);

INSERT INTO customer_account (custID, accNum) VALUES (
    (SELECT REF(c) FROM customer_table c WHERE custID = '1029'),
    (SELECT REF(a) FROM account_table a WHERE accNum = '3383947119')
);

INSERT INTO customer_account (custID, accNum) VALUES (
    (SELECT REF(c) FROM customer_table c WHERE custID = '1030'),
    (SELECT REF(a) FROM account_table a WHERE accNum = '8862386704')
);


INSERT INTO customer_account (custID, accNum) VALUES (
    (SELECT REF(c) FROM customer_table c WHERE custID = '1032'),
    (SELECT REF(a) FROM account_table a WHERE accNum = '3389378301')
);

INSERT INTO customer_account (custID, accNum) VALUES (
    (SELECT REF(c) FROM customer_table c WHERE custID = '1033'),
    (SELECT REF(a) FROM account_table a WHERE accNum = '4089328410')
);

INSERT INTO customer_account (custID, accNum) VALUES (
    (SELECT REF(c) FROM customer_table c WHERE custID = '1034'),
    (SELECT REF(a) FROM account_table a WHERE accNum = '8032736312')
);
INSERT INTO customer_account (custID, accNum) VALUES (
    (SELECT REF(c) FROM customer_table c WHERE custID = '1036'),
    (SELECT REF(a) FROM account_table a WHERE accNum = '3897372095')
);
INSERT INTO customer_account (custID, accNum) VALUES (
    (SELECT REF(c) FROM customer_table c WHERE custID = '1037'),
    (SELECT REF(a) FROM account_table a WHERE accNum = '3897372095')
);
INSERT INTO customer_account (custID, accNum) VALUES (
    (SELECT REF(c) FROM customer_table c WHERE custID = '1038'),
    (SELECT REF(a) FROM account_table a WHERE accNum = '3897372095')
);
INSERT INTO customer_account (custID, accNum) VALUES (
    (SELECT REF(c) FROM customer_table c WHERE custID = '1039'),
    (SELECT REF(a) FROM account_table a WHERE accNum = '1010101010')
);
INSERT INTO customer_account (custID, accNum) VALUES (
    (SELECT REF(c) FROM customer_table c WHERE custID = '1040'),
    (SELECT REF(a) FROM account_table a WHERE accNum = '1010101010')
);
INSERT INTO customer_account (custID, accNum) VALUES (
    (SELECT REF(c) FROM customer_table c WHERE custID = '1041'),
    (SELECT REF(a) FROM account_table a WHERE accNum = '1010101010')
);

INSERT INTO customer_account (custID, accNum) VALUES (
    (SELECT REF(c) FROM customer_table c WHERE custID = '1042'),
    (SELECT REF(a) FROM account_table a WHERE accNum = '8913881013')
);

INSERT INTO customer_account (custID, accNum) VALUES (
    (SELECT REF(c) FROM customer_table c WHERE custID = '1045'),
    (SELECT REF(a) FROM account_table a WHERE accNum = '2900329102')
);

INSERT INTO customer_account (custID, accNum) VALUES (
    (SELECT REF(c) FROM customer_table c WHERE custID = '1042'),
    (SELECT REF(a) FROM account_table a WHERE accNum = '2293080309')
);

INSERT INTO customer_account (custID, accNum) VALUES (
    (SELECT REF(c) FROM customer_table c WHERE custID = '1028'),
    (SELECT REF(a) FROM account_table a WHERE accNum = '8832823981')
);

INSERT INTO customer_account (custID, accNum) VALUES (
    (SELECT REF(c) FROM customer_table c WHERE custID = '1028'),
    (SELECT REF(a) FROM account_table a WHERE accNum = '8392938923')
);
INSERT INTO customer_account (custID, accNum) VALUES (
    (SELECT REF(c) FROM customer_table c WHERE custID = '1026'),
    (SELECT REF(a) FROM account_table a WHERE accNum = '4493092311')
);

INSERT INTO customer_account (custID, accNum) VALUES (
    (SELECT REF(c) FROM customer_table c WHERE custID = '1033'),
    (SELECT REF(a) FROM account_table a WHERE accNum = '3893280023')
);

INSERT INTO customer_account (custID, accNum) VALUES (
    (SELECT REF(c) FROM customer_table c WHERE custID = '1005'),
    (SELECT REF(a) FROM account_table a WHERE accNum = '0505052311')
);

INSERT INTO customer_account (custID, accNum) VALUES (
    (SELECT REF(c) FROM customer_table c WHERE custID = '1025'),
    (SELECT REF(a) FROM account_table a WHERE accNum = '3902390932')
);

INSERT INTO customer_account (custID, accNum) VALUES (
    (SELECT REF(c) FROM customer_table c WHERE custID = '1043'),
    (SELECT REF(a) FROM account_table a WHERE accNum = '5528911371')
);

INSERT INTO customer_account (custID, accNum) VALUES (
    (SELECT REF(c) FROM customer_table c WHERE custID = '1043'),
    (SELECT REF(a) FROM account_table a WHERE accNum = '2388932983')
);

INSERT INTO customer_account (custID, accNum) VALUES (
    (SELECT REF(c) FROM customer_table c WHERE custID = '1044'),
    (SELECT REF(a) FROM account_table a WHERE accNum = '4183640184')
);

INSERT INTO customer_account (custID, accNum) VALUES (
    (SELECT REF(c) FROM customer_table c WHERE custID = '1045'),
    (SELECT REF(a) FROM account_table a WHERE accNum = '6073270442')
);

INSERT INTO customer_account (custID, accNum) VALUES (
    (SELECT REF(c) FROM customer_table c WHERE custID = '1044'),
    (SELECT REF(a) FROM account_table a WHERE accNum = '5502389730')
);


SHOW ERROR;
