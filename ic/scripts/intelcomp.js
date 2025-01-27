var intelcomp = {
	
	List: function (id) {
		
		var datagrid;
		
		(function () {
			datagrid = document.getElementById(id);
		})
		();
		
		this.setDataSource = function (source) {
			var row;
			var cel;
			var rad;
			for (var y=0; y<source.length; y++) {
				row = document.createElement("tr");
				for (var x in source[y]) {
					cel = document.createElement("td");
					if (x == "_id") {
						rad = document.createElement("input");
						rad.setAttribute("type", "radio");
						rad.setAttribute("name", x);
						rad.setAttribute("checked", "checked");
						rad.setAttribute("value", source[y][x]);
						cel.appendChild(rad);
					} else if (x == "_url") {
						rad = document.createElement("a");
						rad.setAttribute("href", source[y][x]);
						rad.setAttribute("target", "_blank");
						rad.innerHTML = source[y][x];
						cel.appendChild(rad);
					} else if (x == "_link") {
						rad = document.createElement("a");
						rad.setAttribute("href", source[y][x]);
						rad.setAttribute("target", "_blank");
						rad.innerHTML = "+";
						cel.appendChild(rad);
					} else if (x == "_enabled") {
						rad = document.createElement("input");
						rad.setAttribute("type", "checkbox");
						rad.setAttribute("value", source[y][x]);
						if (source[y][x]) {
							rad.setAttribute("checked", "checked");
						}
						cel.appendChild(rad);
					} else {
						cel.innerHTML = source[y][x];
					}
					row.appendChild(cel);
				}
				datagrid.tBodies[0].appendChild(row);
			}
		};
		
	},
	
	Workgroup: {
		
		list: null,
		datasource: null,
		
		init: function (sender, e) {
			intelcomp.Workgroup.list = new intelcomp.List("datagrid");
			intelcomp.Workgroup.list.setDataSource(intelcomp.Workgroup.datasource);
		},
		
		onDeleteClick: function (sender, e) {
			return window.confirm("Realmente desea eliminar el elemento?");
		}
		
	},
	
	Roles: {
		
		list: null,
		datasource: null,
		
		init: function (sender, e) {
			intelcomp.Workgroup.list = new intelcomp.List("roles");
			intelcomp.Workgroup.list.setDataSource(intelcomp.Roles.datasource);
		},
		
		onDeleteClick: function (sender, e) {
			return window.confirm("Realmente desea eliminar el elemento?");
		},
		
		onAddClick: function (sender, e) {
			window.prompt("Nuevo Rol");
		},
		
		onEditClick: function (sender, e) {
			window.prompt("Edici\xf3n de Rol");
		}
		
	},
	
	Clients: {
		
		list: null,
		datasource: null,
		
		init: function (sender, e) {
			intelcomp.Clients.list = new intelcomp.List("clients");
			intelcomp.Clients.list.setDataSource(intelcomp.Clients.datasource);
		},
		
		onSaveClick: function (sender, e) {
			return window.alert("Elemento guardado exitosamente!");
		},
		
		onDeleteClick: function (sender, e) {
			return window.confirm("Realmente desea eliminar el elemento?");
		}
		
	},
	
	News: {
		
		list: null,
		datasource: null,
		
		init: function (sender, e) {
			intelcomp.Clients.list = new intelcomp.List("newsletter");
			intelcomp.Clients.list.setDataSource(intelcomp.News.datasource);
		},
		
		onSaveClick: function (sender, e) {
			return window.alert("Elemento guardado exitosamente!");
		},
		
		onDeleteClick: function (sender, e) {
			return window.confirm("Realmente desea eliminar el elemento?");
		}
		
	},
	
	Products: {
		
		list: null,
		datasource: null,
		
		init: function (sender, e) {
			intelcomp.Clients.list = new intelcomp.List("products");
			intelcomp.Clients.list.setDataSource(intelcomp.Products.datasource);
		},
		
		onSaveClick: function (sender, e) {
			return window.alert("Elemento guardado exitosamente!");
		},
		
		onDeleteClick: function (sender, e) {
			return window.confirm("Realmente desea eliminar el elemento?");
		}
		
	},
	
	Downloads: {
		
		list: null,
		datasource: null,
		
		init: function (sender, e) {
			intelcomp.Clients.list = new intelcomp.List("downloads");
			intelcomp.Clients.list.setDataSource(intelcomp.Downloads.datasource);
		},
		
		onSaveClick: function (sender, e) {
			return window.alert("Elemento guardado exitosamente!");
		},
		
		onDeleteClick: function (sender, e) {
			return window.confirm("Realmente desea eliminar el elemento?");
		}
		
	}
	
};

intelcomp.List.onNewClick = function (sender, e) {
	window.location.href = e.goto;
};

