create view ic.ic_vw_downloads as select
	d._id as _id,
	p._name as _name,
	p._description as _description,
	d._url as _url
from ic.ic_tb_downloads d
join ic.ic_tb_products p on p._id = d._product;
