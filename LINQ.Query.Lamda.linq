<Query Kind="Expression">
  <Connection>
    <ID>f6a8b420-9b86-419e-ab2a-4477e7fe7085</ID>
    <Persist>true</Persist>
    <Server>DESKTOP-HM2PB1S\MSSQLSERVER01</Server>
    <Database>KraftBrewery</Database>
    <ShowServer>true</ShowServer>
  </Connection>
</Query>

Пивоварs
			.Where (с => с.Рокидосвіду>3)			.Dump("Пивовари в яких досвіду більше 3-х років")
			.OrderByDescending(c=>c.Датанародження)	.Dump("Посортовані по Даті народження")
			.Take(2)								.Dump("Не більше 2")
			.Sum(c=>c.Рокидосвіду)					.Dump("Сума років досвіду 2-х всіх пивоварів")
			

			
			
				