create or replace function win_percentage(name in varchar)
  return INTEGER
  is
  
TOTAL INTEGER;
WIN INTEGER;
DIV FLOAT;
begin
SELECT COUNT(ID) INTO TOTAL FROM RESULT_TABLE;
SELECT COUNT(ID) INTO WIN FROM RESULT_TABLE WHERE MATCH_RESULT=name;
DIV:= WIN/TOTAL;
RETURN FLOOR(DIV*100);


end win_percentage;
/