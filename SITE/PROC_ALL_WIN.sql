set serveroutput on;
create or replace procedure all_win
		IS
		

	ID INTEGER;
	MOVE_P1 VARCHAR2(8);
	MOVE_P2 VARCHAR2(8);



	
begin
DBMS_OUTPUT.PUT_LINE('ALL WIN BY PLAYER 2');
DBMS_OUTPUT.PUT_LINE('______________________________');
FOR R IN (select * from RESULT_TABLE@SERVER_LINK  WHERE MATCH_RESULT='PLAYER 2' order by ID) LOOP
DBMS_OUTPUT.PUT_LINE('MATCH ID : ' ||R.ID);
DBMS_OUTPUT.PUT_LINE('MOVE BY PLAYER : ' || R.MOVE_P1);
DBMS_OUTPUT.PUT_LINE('MOVE BY OPPONENTT : ' || R.MOVE_P2);
DBMS_OUTPUT.PUT_LINE('______________________________');


END LOOP;


end all_win;
/
