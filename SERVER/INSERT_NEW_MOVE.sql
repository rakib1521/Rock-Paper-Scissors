SET SERVEROUTPUT ON;

DECLARE

move VARCHAR2(2) := '&R_or_P_or_S';
converted INTEGER;
C INTEGER;


wrong_data EXCEPTION ;

BEGIN
IF move='R' or move='P' or move='S'   THEN
RAISE wrong_data;
END IF;
DBMS_OUTPUT.PUT_LINE('Please insert a valid move');



EXCEPTION 
 
   WHEN wrong_data THEN 
		IF move='R' THEN
		converted:=0;
		ELSIF move='P' THEN
		converted:=1;
		ELSIF move='S' THEN
		converted:=2;
		END IF;
		
		SELECT COUNT(ID) INTO C FROM P1;
		C:=C+1;
		insert into P1 (ID,MOVE) values (C,converted);
		DBMS_OUTPUT.PUT_LINE('move inserted');
	 



END;
/
select * from p1;
commit;