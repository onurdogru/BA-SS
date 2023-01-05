select * from Hamburgers

--Enes'in sipariþini getirin.Hamburger Adý,Boyutu ve Extralarý olsun, toplam fiyatta olsun.

select o.ORderID,CustomerName,HamburgerName,Dimension,ExtraName,h.Price,d.Price,e.Price,Quantity,sum(h.Price+d.Price+(4*e.Price)) as 'Toplam Fiyat' from Orders o join [Order Details] od on od.OrderID=o.ORderID join Hamburgers h on od.HamburgerID=h.HamburgerID join Dimensions d on d.DimensionID=od.DimensionsID join Extras e on e.ExtraID = od.ExtraID Where CustomerName ='Enes' group by o.ORderID,CustomerName,HamburgerName,Dimension,ExtraName,h.Price,d.Price,e.Price,Quantity

--1 numaralý sipariþin extralarý nelerdir ? 
select OrderID,(select ExtraName from Extras e Where e.ExtraID=od.ExtraID) from [Order Details] od where OrderID =1
