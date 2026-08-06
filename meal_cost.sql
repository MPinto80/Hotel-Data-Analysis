with hotels as (
SELECT * FROM dbo.['2018$']
union
SELECT * FROM dbo.['2019$']
union
SELECT * FROM dbo.['2020$'])

select * from hotels
left join dbo.market_segment$
on hotels.market_segment = market_segment$.market_segment
left join dbo.meal_cost$ 
on meal_cost$.meal = hotels.meal