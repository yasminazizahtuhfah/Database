SET SERVEROUTPUT ON;

CREATE OR REPLACE SUHU AS
    Celcius INTEGER(5);
    Fahrenheit INTEGER(5);
    Reamur INTEGER(5);
    Kelvin INTEGER(5);
BEGIN
    DBMS_OUTPUT.PUT_LINE('Program menampilkan konversi suhu');
    Celcius := 10;
    Fahrenheit := (9/5) * Celcius + 32;
    Reamur := (4/5) * Celcius;
    Kelvin := Celcius + 273;
    
    DBMS_OUTPUT.PUT_LINE('Celcius = ' || Celcius);
    DBMS_OUTPUT.PUT_LINE('Fahrenheit = ' || Fahrenheit);
    DBMS_OUTPUT.PUT_LINE('Reamur = ' || Reamur);
    DBMS_OUTPUT.PUT_LINE('Kelvin = ' || Kelvin);
END;