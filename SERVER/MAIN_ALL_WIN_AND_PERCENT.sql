SET SERVEROUTPUT ON;

DECLARE
RES INTEGER;

BEGIN



all_win;
RES:=win_percentage('PLAYER 1');
DBMS_OUTPUT.PUT_LINE('WINING PERCENTAGE : ' ||RES||'%');



END;
/
