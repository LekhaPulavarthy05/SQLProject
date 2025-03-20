



-- Check if any model was launched in 2023
select * from model;
select m_id,m_name, m_launch_date 
from model 
where m_launch_date in (select m_launch_date from model where year(m_launch_date)=2023 );

-- Get the m_name and launch date of OP11 in one query
select * from (select m_name, m_launch_date from model where m_id='OP11') as sub;
