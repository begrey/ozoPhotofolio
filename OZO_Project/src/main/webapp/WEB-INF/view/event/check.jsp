<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
<head>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/1.8.3/jquery.min.js"></script>
<script src="https://cdn.sobekrepository.org/includes/jquery-rotate/2.2/jquery-rotate.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-easing/1.4.1/jquery.easing.min.js"></script>
<style>
 body { text-align: center; /* Quirks Mode 를 위한 가운데 정렬 */ }</style>
<link href="<c:url value="/resources/css/login_style.css" />" rel="stylesheet" />
<link rel="shortcut icon" href=" <c:url value='/resources/ico/ozo_icon.ico'/> " />

<script>

var credit;
    (function($) {
    	  $.fn.extend({

    	    roulette: function(options) {

    	      var defaults = {
    	        angle: 0,
    	        angleOffset: -45,
    	        speed: 5000,
    	        easing: "easeInOutElastic",
    	      };

    	      var opt = $.extend(defaults, options);

    	      return this.each(function() {
    	        var o = opt;

    	        var data = [
    						{
    	            color: '#5454FF',
    	            text: '10'
    	          },
    	          {
    	            color: '#8B63E8',
    	            text: '100'
    	          },
    	          {
    	            color: '#CC80FF',
    	            text: '50'
    	          },
    	          {
    	            color: '#F9C7FF',
    	            text: '200'
    	          },
    	          {
    	            color: '#54C0FF',
    	            text: '0'
    	          },
    	          {
    	            color: '#FF8AD4',
    	            text: '300'
    	          },
    	          {
    	            color: '5454FF',
    	            text: '1000'
    	          },
    	          {
    	            color: '#8B63E8',
    	            text: '15'
    	          },
    	          {
    	            color: '#CC80FF',
    	            text: '500'
    	          },
    	          {
    	            color: '#F9C7FF',
    	            text: '2000'
    	          },
    	          {
    	            color: '#54C0FF',
    	            text: '30'
    	          },
    	          {
    	            color: '#FF8AD4',
    	            text: '1500'
    	          }
    	        ];

    	        var $wrap = $(this);
    	        var $btnStart = $wrap.find("#btn-start");
    	        var $roulette_dol = $wrap.find(".roulette_dol");
    	        var wrapW = $wrap.width();
    	        var angle = o.angle;
    	        var angleOffset = o.angleOffset;
    	        var speed = o.speed;
    	        var esing = o.easing;
    	        var itemSize = data.length;
    	        var itemSelector = "item";
    	        var labelSelector = "label";
    	        var d = 360 / itemSize;
    	        var borderTopWidth = wrapW;
    	        var borderRightWidth = tanDeg(d);
    	        

    	        for (i = 1; i <= itemSize; i += 1) {
    	          var idx = i - 1;
    	          var rt = i * d + angleOffset;
    	          var itemHTML = $('<div class="' + itemSelector + '">');
    	          var labelHTML = '';
    	              labelHTML += '<p class="' + labelSelector + '">';
    	              labelHTML += '	<span class="text">' + data[idx].text + '<\/span>';
    	              labelHTML += '<\/p>';

    	          $roulette_dol.append(itemHTML);
    	          $roulette_dol.children("." + itemSelector).eq(idx).append(labelHTML);
    	          $roulette_dol.children("." + itemSelector).eq(idx).css({
    	            "left": wrapW / 2,
    	            "top": -wrapW / 2,
    	            "border-top-width": borderTopWidth,
    	            "border-right-width": borderRightWidth,
    	            "border-top-color": data[idx].color,
    	            "transform": "rotate(" + rt + "deg)"
    	          });

    	          var textH = parseInt(((2 * Math.PI * wrapW) / d) * .5);

    	          $roulette_dol.children("." + itemSelector).eq(idx).children("." + labelSelector).css({
    	            "height": textH + 'px',
    	            "line-height": textH + 'px',
    	            "transform": 'translateX(' + (textH * 1.3) + 'px) translateY(' + (wrapW * -.3) + 'px) rotateZ(' + (90 + d * .5) + 'deg)'
    	          });

    	        }

    	        function tanDeg(deg) {
    	          var rad = deg * Math.PI / 180;
    	          return wrapW / (1 / Math.tan(rad));
    	        }


    	        $btnStart.on("click", function() {
    	          rotation();
    	         
    	        });

    	        function rotation() {

    	          var completeA = r(0, 360);

    	          $roulette_dol.rotate({
    	            angle: angle,
    	            animateTo: completeA,
    	            center: ["50%", "50%"],
    	            easing: $.easing.esing,
    	            callback: function() {
    	              var currentA = $(this).getRotateAngle();
    	              alert(data[Math.round((360-currentA)/30)].text + "크레딧을 획득하셨습니다~＼(ozo)／");
    	              credit = data[Math.round((360-currentA)/30)].text;     
    	              //
    	              var parameter = {"credit" : credit};
    	              $.ajax({
    	            	  type : "GET"
    	          		, url : '../event/credit'
    	          		, data : parameter
    	          		, success : function(data){
    	          				alert("메인 페이지로 돌아갑니다!(ozo)");
    	          				location.href = "<c:url value="/index" />";
    	          		}
    	          		, error : function(request,status,error){
    	          			alert("오류가 발생하였습니다.\n관리자에게 문의하여 주십시오.");
    	                  }
    	          	});
    	            },
    	            duration: speed   	      
    	          });

    	        }
				
    	        function r(min, max) {
    	          return Math.floor(Math.random() * (max - min + 1)) + min;
    	        }

    	      });
    	    }
    	  });
    	  
    	})(jQuery);

    	$(function() {

    	  $('.box-roulette_dol').roulette();   
          
    	});
</script>
<style>


button{border:0;margin:0;padding:0;}

.title{margin-top:50px;text-align:center;}

.box-roulette_dol{position:relative;margin:50px auto;width:500px;height:500px;border:10px solid #ccc;border-radius:50%;background:#ccc;overflow:hidden;}
.box-roulette_dol .markers_dol{position:absolute;left:50%;top:0;margin-left:-25px;width:0;height:0;border:25px solid #fff;border-left-color:transparent;border-right-color:transparent;border-bottom-color:transparent;z-index:9999;}
.box-roulette_dol .roulette_dol{position:relative;width:100%;height:100%;overflow:hidden;}
.box-roulette_dol .item{position:absolute;top:0;width:0;height:0;border:0 solid transparent;transform-origin:0 100%;}
.box-roulette_dol .label{position:absolute;left:0;top:0;color:#fff;white-space:nowrap;transform-origin:0 0;}
.box-roulette_dol .label .text{display:inline-block;font-size:20px;font-weight:bold;line-height:1;vertical-align:middle;}

#btn-start{display:block;position:absolute;left:50%;top:50%;margin:-50px 0 0 -50px;width:100px;height:100px;font-weight:bold;background:#fff;border-radius:50px;z-index:9999;cursor:pointer;}
</style>
</head>
<body>
    <h1>가입이벤트! 돌려돌려 돌림판~~</h1>
<div class="box-roulette_dol">
  <div class="markers_dol"></div>
  <button type="button" id="btn-start">
   START!
  </button>
  <div class="roulette_dol" id="roulette_dol"></div>
</div>
 <p class="message"><a href="<c:url value="/member/login" />">Go to Main</a></p>
</body>