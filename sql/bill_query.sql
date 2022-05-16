select * from account_t WHERE account_no='TestPS0'; --734131
select * from bal_grp_t WHERE account_obj_id0='734131'; --735859
select * from bal_grp_sub_bals_t WHERE obj_id0='735859';  --735859
select rec_id2, valid_from, valid_to, current_bal from bal_grp_sub_bals_t WHERE obj_id0='735859';

select sub.rec_id2, sub.valid_from, sub.valid_to, sub.current_bal
from
bal_grp_t bal, bal_grp_sub_bals_t sub
where bal.poid_id0 = sub.obj_id0
and bal.account_obj_id0=734131;

--billable items
select item_total, poid_id0, poid_type , status, due, transfered, recvd from item_t where account_obj_id0=734131
and bill_obj_id0 <> 0 and item_total <> 0;

select * from event_t where item_obj_id0='736755';
select * from event_bal_impacts_t where obj_id0='336327412797879283';

select poid_id0,invoice_obj_id0, to_date('01-JAN-1970','dd-mon-yyyy')+(end_t /60/60/24) Bill_date,current_total, subords_total, due, total_due , adjusted, recvd , writeoff
from bill_t where account_obj_id0=734131 and bill_no is not null --738129

select * from invoice_formats_buf_t where obj_id0='738129';