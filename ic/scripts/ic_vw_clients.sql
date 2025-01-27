create view ic.ic_vw_clients as select
	c._id as _id,
	c._company as _company,
	c._url as _url,
	u._fullname as _user
from ic.ic_tb_clients c
join ic.ic_vw_users u on u._id = c._user;
