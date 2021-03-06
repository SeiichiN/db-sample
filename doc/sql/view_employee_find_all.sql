create view findAll_v as
select 
  id, 
  pass, 
  name, 
  e.gender_id, 
  g.gname, 
  TO_CHAR(e.birthday, 'yyyy/MM/dd') AS birthday, 
  state_id, 
  s.sname, 
  dept_id, 
  d.dname
from employee e
  inner join gender g
  on e.gender_id = g.gid
    inner join state s
    on e.state_id = s.sid
      left outer join department d
      on e.dept_id = d.did