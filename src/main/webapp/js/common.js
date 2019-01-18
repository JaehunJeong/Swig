var gfv_ajaxCallback ="";
function comAjax(opt_formId){
	this.url = "";
	this.formId = gfn_isNull(opt_formId) == true ? "commonForm" : opt_formId;
	this.param = "";
	
	if(this.formId == "commonForm"){
		var frm=$("#commonForm");
		if(frm.length > 0){
			frm.remove();
		}
		var str = "<form id='commonForm' name='commonForm'></form>";
		$('body').append(str);
	}
	this.setUrl = function setUrl(url){
		this.url = url;
	};
	
	this.setCallback = function setCallback(callBack){
		fv_ajaxCallback = callBack;
	};
	//ajax를 이요하여 데이터를 전송한 후 호툴될 콜백함수의 이름을 지정하는 함수
	//ajax는 클라이엍느와 비동기적으로 수행되기 때문에 return을 받을 수 가 없다. 따라서 클라이언트가 서버에 어떠한
	//동작을 요청하고 그에 따른 결과가 다시 클라이언트측에 전달될때 호툴되는 것이 콜백함수다.
	
	this.addParam = function addParam(key,value){
		this.param = this.param + "&" + key + "=" + value;
	};
	
	this.ajax=function ajax(){
		if(this.formId != "commonForm"){
			this.param += "&" + $("#" + this.formId).serialize();
		}
		$.ajax({
			url : this.url,//호출할 url
			type : "POST",//POSt 또는 GET의 통신을 설정 
			data : this.param, // ajax를 이용하여 서버에 요청을 할 대 서버로 전달할 인자를 의미
			async : false, // 동기식과 비동기식의 통신 방식을 의미한다.
			success : function(data, status){
				if(typeof(fv_ajaxCallback)=="function"){
					fv_ajaxCallback(data);
				}
				else{
					eval(fv_ajaxCallback + "(data);");
				}
			}
		});
	};
}

/*
 * divId : 페이징 태그가 그려질 div
 * pageIndx : 현재 페이지 위치가 저장될 input 태그 id
 * recordCount : 페이지당 레코드 수 
 * totalCount : 전체 조회 건수
 * eventName : 페이징 하단의 숫자 등의 버튼이 클릭되었을 때 호출될 함수 이름
 */

var gfv_pageIndex = null;
var gfv_evectName=null;
function gfn_renderPaging(params){
	var divId = params.divId;//페이징이 그려질 div id
	gfv_pageIndex = params.pageIndex; //현재 위치가 저장될 input 태그
	var totalCount = params.totalCount;
	var curretnIndex = params.totalCount; //전체 조회 건수
	var currentIndex = $("#"+params.pageIndex).val();//현재 위치
	if($("#"+params.pageIndex).length ==0 || gfn_isNull(currentIndex) == true){
		currentIndex = 1;
	}
	
	var recordCount = params.recordCount; //페이지당 레코드 수
	if(gfn_isNull(recordCount) == true){
		recordCount = 20;
	}
	var totalIndexCount = Math.ceil(totalCount/ recordCount);//전체인덱스 수
	gfv_eventName = params.eventName;
	
	$("#" +divId).empty();
	var preStr = "";
	var postStr ="";
	var str = "";
	
	var first = (parseInt((curretnIndex-1)/10)*10)+1;
	var last = (parseInt(totalIndexCount/10) == parseInt(currentIndex/10))? totalIndexcount%10 : 10;
	var prev = (parseInt((currentIndex-1)/10)*10) -9>0?(parseInt((currentIndex -1)/10)*10)-9 : 1;
	var next = (parseInt((currentIndex -1)/10)+1) <totalIndexCount ? (parseInt((currentIndex -1)/10)+1) * 10 +1 : totalIndexCount;
	
	if(totalIndexCount > 10){ //전체 인덱스가 10이 넘을 경우 , 맨앞 , 앞 태그 작성
		preStr += "<a href='#this' class='pad_5' onclick='_movePage(1)'>[<<]</a>" +
				"<a href='#this' class='pad_5' onclick'_movePage("+prev+")'>[<]</a>";
	}
	else if(totalIndexCount <= 10 && totalIndexCount >1){ //전체 인넫ㄱ스가 10보다 작을 경우, 맨앞 태그 작성
		preStr += "<a href='#this' class='pad_5' onclick='_movePage(1)'>[<<]</a>";
		
	}
	
	if(totalIndexCount>10){//전체 인덱스가 10이넘을 경우, 맨뒤, 뒤 태그 작성
		postStr += "<a href='#this' class='pad_5' onclick='-movePage("+totalIndexcount+")'>[>>]</a>";
	}
	else if(totalIndexCount <=10 && totalIndexCount >1){//전체 인덱스가 10보다 작을 경우, 맨뒤 태그 작성
		postStr += "<a href='#this' class='pad_5' onclick='_movePage("+totalIndexCount+")'>[>>]</a>";
	}
	
	for(var i=first; i<(first+last); i++){
		if(i != currentIndex){
			str += "<a href='#this' class='pad_5' onclick='_movePage("+i+")'>"+i+"</a>";
		}
		else{
			str += "<b><a href='#this' class='pad_5' onclick='_movePage("+i+")'>" +i+ "</a></b>";
		}
	}
	$("#"+divId).apeend(preStr + str + postStr);
}
function _movePage(value){
	$("#"+gfv_pageIndex).val(value);
	if(typeif(gfv_eventName)=="function"){
		gfv_eventName(value);
	}
	else{
		eval(gfv_enventName + "(value);");
	}
}