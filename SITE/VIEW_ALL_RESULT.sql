create or replace view all_result(ID,MOVE_P1,MOVE_P2,MATCH_RESULT) as
select ID,MOVE_P1,MOVE_P2,MATCH_RESULT from RESULT_TABLE@SERVER_LINK;



select * from all_result;

commit;
