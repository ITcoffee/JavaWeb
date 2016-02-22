// <reference path="../jQuery/jquery-2.2.0.min.js"/>

var xmlHttp = null;

function proChange(province) {
	createXMLHttpRequest();
	document.getElementById("city").length = 1;
	xmlHttp.onreadystatechange = cityList;
	var url = $("#baseName").val() + "/CityServlet";
	xmlHttp.open("POST", url, true);
	xmlHttp.setRequestHeader('Content-type', 'application/x-www-form-urlencoded');
	xmlHttp.send("province=" + province);
}

function proChange2(province) {
	var url = $("#baseName").val() + "/CityServlet";
	$.ajax({
		url: url,
		type: "POST",
		data: "province=" + province,
		async: true,
		dataType: "xml",
		success: function(xml) {
			parseXML(xml);
		}
	});
}

function createXMLHttpRequest() {
	if (window.ActiveXObject) {	// IE浏览器	
		try {
			xmlHttp = new ActiveXObject("Msxml2.XMLHTTP");	// IE新版本
		} catch (e) {
			try {
				xmlHttp = new ActiveXObject("Microsoft.XMLHTTP");	// IE旧版本
			} catch (e) {
				window.alert("创建XMLHttpRequest对象错误！" + e);
			}
		}
	} else if (window.XMLHttpRequest) {	// firefox
		xmlHttp = new XMLHttpRequest();
	}
	
	if (xmlHttp == null) {	// 未成功创建XMLHttpRequest对象
		window.alert("创建XMLHttpRequest对象错误！");
	}
}

function cityList() {
	if (xmlHttp.readyState == 4) {
		if (xmlHttp.status == 200) {
			parseXML(xmlHttp.responseXML);
		}
	}
}

function parseXML(xmlDoc) {
	var len = xmlDoc.getElementsByTagName("city");	// 获取XML数据中所有的"city"元素对象集合
	var _citySelect = document.getElementById("city");	// 根据ID获取页面中的select元素
	for (var i=0; i<len.length; i++) {
		var option = document.createElement("OPTION"); 	// 创建option对象
		option.text = xmlDoc.getElementsByTagName("city")[i].firstChild.data;
		option.value = xmlDoc.getElementsByTagName("city")[i].firstChild.data;
		_citySelect.add(option);
	}
}