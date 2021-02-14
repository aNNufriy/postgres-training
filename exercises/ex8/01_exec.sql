select 
  count(*) visits_count,
  v1.entry_time when_happened
from visits v1
join visits v2
on v1.entry_time <@ tsrange(v2.entry_time, v2.exit_time, '[)')
group by v1.id, when_happened
order by visits_count DESC, when_happened
limit 1;
