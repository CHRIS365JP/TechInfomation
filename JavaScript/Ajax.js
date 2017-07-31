//AJAX

jQuery.ajax({}); = $.ajax({});

jQuery.ajax({
	type : "POST",
	url : url,
	data : data,	//eg: {key : "value"} or form.serialize(),
	dataType : "json",	//eg "json" or "html"
	async : true,
	success : function(response) {
		any handle;
	},
	complete : function(response) {
		any handle;
	}
});

$.ajax({
	url : url,
	type : "POST",
	cashe : false,
	data : from.serialize(),
	dataType : "html",
	success : function(data){
		var obj = JSON.parse(data);
	}
});


new Ajax.Request("url", {
	requestHeaders : header,
	parameters : {
		key : value
	},
	method : "POST",
	evalScript : true,
	onSuccess : function() {
		any handle;
	}
});
		
new Ajax.Updater("elementName", "url", {
	method : "POST",
	parameters : {
		key : value
	},
	evalScript :true,
	async : true,
	onComplete : function(){
		any handle;
	}
});
