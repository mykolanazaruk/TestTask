﻿select [Роки досвіду] from Пивовар
where Пивовар.[Роки досвіду]>6
order by Пивовар.[Роки досвіду] desc ;
select Кількість from[Список замовлень]
group by [Список замовлень].Кількість
having [Список замовлень].Кількість>800;
select distinct Ціна,Кількість
from [Список замовлень]
where (Ціна*Кількість) >10000
select Покупець from [Список замовлень] 
where (Ціна*Кількість) >10000 