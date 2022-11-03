SET SERVEROUTPUT ON

--Pola 1
CREATE OR REPLACE PROCEDURE pola1 AS
    i NUMBER;
    j NUMBER;
BEGIN
    FOR i IN 1..10 LOOP
        FOR j IN 1..10 LOOP
            IF ((i = j) OR (i = 11 - j)) THEN
                -- if 'X' appears in its diagonal
                DBMS_OUTPUT.PUT ('X' || ' ');
            ELSE
                DBMS_OUTPUT.PUT ('*' || ' ');
            END IF;
        END LOOP;
        DBMS_OUTPUT.NEW_LINE;
        END LOOP;
    DBMS_OUTPUT.NEW_LINE;
END;

--Pola 2
CREATE OR REPLACE pola2 AS
-- Pola disini mengkalikan angka yang sesuai dengan barisnya lalu 
-- kolomnya akan diincreamentkan oleh 1 sampai maksimal sebanyak 10 kolom
CREATE OR REPLACE PROCEDURE pola2 AS
    i NUMBER;
    j NUMBER;
    k NUMBER := 10;
    x NUMBER;
    y NUMBER;
BEGIN
    FOR i IN 1..10
    LOOP
        x:=i;
        FOR j IN 1..k
        LOOP
            IF( i*x < 10) THEN
                DBMS_OUTPUT.PUT(TO_CHAR((i*x),'FM00'));
                DBMS_OUTPUT.PUT(' ');
                ELSE
                    DBMS_OUTPUT.PUT((i*x));
                    DBMS_OUTPUT.PUT(' ');
            END IF;
            x:=x+1;
        END LOOP;
        k := k - 1;
        DBMS_OUTPUT.PUT_LINE(' ');
    END LOOP;
    DBMS_OUTPUT.PUT_LINE(' ');
END;
/
--Pola 3
CREATE OR REPLACE pola3 AS
DECLARE
    i INTEGER(10);
    j INTEGER(10);
BEGIN       
    FOR i IN 1..10
    LOOP
        FOR j IN 1..10
        LOOP
            IF(j <= i) THEN
                IF(MOD(i,2)=1) THEN
                    IF(MOD(j,2)=1) THEN
                        DBMS_OUTPUT.PUT('1');
                    ELSE
                        DBMS_OUTPUT.PUT('0');
                    END IF;
                ELSE
                    DBMS_OUTPUT.PUT('0');
                END IF;
            END IF;
        END LOOP; 
        DBMS_OUTPUT.PUT_LINE('');
    END LOOP;
EN   
