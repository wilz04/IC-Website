create view ic.ic_vw_users as select
	u._id as _id,
	concat(u._firstname, ' ', u._lastname) as _fullname,
	u._email as _alias,
	u._email as _email,
	r._description as _role
from ic.ic_tb_users u
join ic.ic_tb_roles r on r._id = u._role;
