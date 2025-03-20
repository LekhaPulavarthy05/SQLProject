-- model with each availabity status along with variants
create view model_details as
select m.m_name, m_spec_score, v.ram, v.rom, a.qt, a.price, s.s_name
from model m
join variants v on m.m_id=v.m_id
join avl_table a on v.v_id=a.v_id
join store s on s.s_id=a.s_id
order by m_name;

drop view model_details;
select * from model_details;