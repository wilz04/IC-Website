create view ic.ic_vw_news as select
	n._id as _id,
	n._title as _title,
	concat('/news.php#', n._id) as _link,
	n._description as _description,
	u._fullname as _author,
	n._pubdate as _pubdate
from ic.ic_tb_news n
join ic.ic_vw_users u on u._id = n._author;
