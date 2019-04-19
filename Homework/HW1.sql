select sum(throughput) as trips,
extract(hour from datetime) as hour
from hw1.rides2017
group by hour;
    
select origin, destination 
from hw1.rides2017
where extract(dow from datetime) between 1 and 5
group by origin, destination
order by sum(throughput) desc
limit 1;

select destination, avg(throughput)
from hw1.rides2017
where extract(dow from datetime) = 1 and extract(hour from datetime) between 7 and 9
group by destination
order by avg(throughput) DESC
limit 5;


