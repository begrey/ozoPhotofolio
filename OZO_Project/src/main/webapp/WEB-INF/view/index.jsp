<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<style>
.floating { background-color:#f9f9f9; z-index: 7; border:4px solid #81BEF7; position: fixed; right: 50%; top: 180px; margin-right: -615px; text-align:center; width:70px; border-radius: 8px; -webkit-border-radius: 8px; } 
.floating div:nth-child(1){ border:4px solid #81BEF7; } 
.floating div:nth-child(2){ border:4px solid #81BEF7; }
.floating div:nth-child(3){ border:4px solid #81BEF7; }

</style>
<script>
$(document).ready(function() {
	$(function () {
		$('#homeup').click(function () {
			$('body,html').animate({
				scrollTop: 0
			}, 800);
			return false;
		});
var scrollHeight = $(document).height();
		$('#homedown').click(function () {
			$('body,html').animate({
				scrollTop: scrollHeight
			}, 800);
			return false;
		});
	});
});
var url_default_ks = "https://story.kakao.com/share?url="; var url_default_fb = "https://www.facebook.com/sharer/sharer.php?u="; var url_default_tw_txt = "https://twitter.com/intent/tweet?text="; var url_default_tw_url = "&url="; var url_default_band = "http://band.us/plugin/share?body="; var url_route_band = "&route="; var url_default_naver = "http://share.naver.com/web/shareView.nhn?url="; var title_default_naver = "&title="; var url_this_page = location.href; var title_this_page = document.title; var url_combine_ks = url_default_ks + url_this_page; var url_combine_fb = url_default_fb + url_this_page; var url_combine_tw = url_default_tw_txt + document.title + url_default_tw_url + url_this_page; var url_combine_band = url_default_band + encodeURI(url_this_page)+ '%0A' + encodeURI(title_this_page)+'%0A' + '&route=tistory.com'; var url_combine_naver = url_default_naver + encodeURI(url_this_page) + title_default_naver + encodeURI(title_this_page);


</script>
<div class="floating"> <div><a href="#homeup" id="homeup">맨 위로</a></div> <div><a href="" onclick="window.open(url_combine_fb, '', 'scrollbars=no, width=600, height=600'); return false;">
<img src="<c:url value='/resources/img/facebook.jpg'/>" title="페이스북으로 공유하기" class="sharebtn_custom" style="width: 32px;">
</a><a href="" onclick="window.open(url_combine_tw, '', 'scrollbars=no, width=600, height=600'); return false;">
<img src="<c:url value='/resources/img/twitter.jpg'/>" title="트위터로 공유하기" class="sharebtn_custom" style="width: 32px;"></a>
<a href="" onclick="window.open(url_combine_naver, '', 'scrollbars=no, width=600, height=600'); return false;">
<img src="<c:url value='/resources/img/naver.jpg'/>" title="네이버로 공유하기" class="sharebtn_custom" style="width: 32px;"></a>
</div> <div><a href="#homedown" id="homedown">맨 아래로</a></div> </div>

  <div id="wrapper">
    <!-- toggle top area -->
    
    <!-- end toggle top area -->
    <!-- start header -->
    
    <!-- end header -->
    
    
    <section id="featured">
      <!-- start slider -->
      <!-- Slider -->
      <div id="nivo-slider">
        <div class="nivo-slider">
          <!-- Slide #1 image -->
          <img src="img/slides/nivo/a.png" alt="" title="#caption-1" />
          <!-- Slide #2 image -->
          <img src="img/slides/nivo/b.png" alt="" title="#caption-2" />
          <!-- Slide #3 image -->
          <img src="img/slides/nivo/c.png" alt="" title="#caption-3" />
          <!-- Slide #4 image -->
          <img src="img/slides/nivo/d.png" alt="" title="#caption-4" />
          <!-- Slide #5 image -->
          <img src="img/slides/nivo/e.png" alt="" title="#caption-5" />
        </div>
        <div class="container">
          <div class="row">
            <div class="span12">
              <!-- Slide #1 caption -->
              <div class="nivo-caption" id="caption-1">
                <div>
                  &nbsp;&nbsp;&nbsp;<strong>공유 주방</strong>
                  <p>
                  	<h2 style="padding-left: 10px;">"가족 모임, 데이트, 생일파티 등 <br> 공유 주방에서 함께 요리해요!"</h2>
                  </p>
                  <a href="#" class="btn btn-theme">Read More</a>
                </div>
              </div>
              <!-- Slide #2 caption -->
              <div class="nivo-caption" id="caption-2">
                <div>
                  &nbsp;&nbsp;&nbsp;<strong>카페 & 공간</strong>
                  <p>
                  	<h2 style="padding-left: 10px;">"친구들과의 추억을 쌓아보세요"</h2>
                  </p>
                  <a href="#" class="btn btn-theme">Read More</a>
                </div>
              </div>
              <!-- Slide #3 caption -->
              <div class="nivo-caption" id="caption-3">
                <div>
                  &nbsp;&nbsp;&nbsp;<strong>파티룸</strong>
                  <p>
                   	<h2 style="padding-left: 30px;">"감성을 담은 우리만의 공간"</h2>
                  </p>
                  <a href="#" class="btn btn-theme">Read More</a>
                </div>
              </div>
              <!-- Slide #4 caption -->
              <div class="nivo-caption" id="caption-4">
                <div>
                  &nbsp;&nbsp;&nbsp;카페 & <strong>코워킹</strong>
                  <p>
                    <h2 style="padding-left: 50px;">"영감이 필요하다면, <br>오늘은 노마드 데이"</h2>
                  </p>
                  <a href="#" class="btn btn-theme">Read More</a>
                </div>
              </div>
              <!-- Slide #5 caption -->
              <div class="nivo-caption" id="caption-5">
                <div>
                  &nbsp;&nbsp;&nbsp;<strong>강연 & 세미나를 위한 공간</strong>
                  <p>
                  	<h2 style="padding-left: 50px;">"기획자들을 위한, <br>행사하기 좋은 통대형 공간"</h2>
                  </p>
                  <a href="#" class="btn btn-theme">Read More</a>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
      <!-- end slider -->
    </section>
    
    <section id="content">
      <div class="container">
        
        <!-- divider -->
        <div class="row">
          <div class="span12">
            
          </div>
        </div>
        <!-- end divider -->
        
        
        <div class="row">
          <div class="span12">
            <h4 class="heading"> <blue>평점 </blue> TOP4</h4>
            <div class="row">
              <section id="projects">
                <ul id="thumbs" class="portfolio">
                  <!-- Item Project and Filter Name -->
                  <c:forEach var="space" items="${rateList}">
				
					<li class="item-thumbs span3 design" data-id="id-0" data-type="${space.type}">
                    
                    	<a class="hover-wrap fancybox" data-fancybox-group="gallery" title="${space.title}" href="<c:url value='/space/viewspace?space_id=${space.space_id}'/>">
							<span class="overlay-img"></span>
							<span class="overlay-img-thumb">
								${space.title} 
								<p class="spacedetail">${space.type}<br> 
								<i class="icon-map-marker"></i> ${space.area}
                        		<i class="icon-smile"></i>${space.jjim_cnt}</p>
							</span>
						</a>
                    
                    	<img src="<c:url value='/resources/img/${space.image_list[0]}'/>" alt="${space.type}, ${space.area}" >
                  	</li>
				
				</c:forEach>
                  <!-- End Item Project -->
                </ul>
              </section>
            </div>
          </div>
        </div>
        <!-- divider -->
        <div class="row">
          <div class="span12">
            <div class="solidline">
            </div>
          </div>
        </div>
        <!-- end divider -->
        <div class="row">
          <div class="span12">
            <h4 class="heading"><blue>찜 횟수  </blue> TOP4 </h4>
            <div class="row">
              <section id="projects">
                <ul id="thumbs" class="portfolio">
                  <!-- Item Project and Filter Name -->
                  <c:forEach var="space" items="${jjimList}">
				
					<li class="item-thumbs span3 design" data-id="id-0" data-type="${space.type}">
                    
                    	<a class="hover-wrap fancybox" data-fancybox-group="gallery" title="${space.title}" href="<c:url value='/space/viewspace?space_id=${space.space_id}'/>">
							<span class="overlay-img"></span>
							<span class="overlay-img-thumb">
								${space.title} 
								<p class="spacedetail">${space.type}<br> 
								<i class="icon-map-marker"></i> ${space.area}
                        		<i class="icon-smile"></i>${space.jjim_cnt}</p>
							</span>
						</a>
                    
                    	<img src="<c:url value='/resources/img/${space.image_list[0]}'/>" alt="${space.type}, ${space.area}" >
                  	</li>
				
				</c:forEach>
                  <!-- End Item Project -->
                </ul>
              </section>
            </div>
          </div>
        </div>
        <!-- divider -->
        <div class="row">
          <div class="span12">
            <div class="solidline">
            </div>
          </div>
        </div>
        <!-- end divider -->
        <!-- Portfolio Projects -->
        <div class="row">
          <div class="span12">
            <h4 class="heading"> <blue>최근</blue>에 등록된 공간</strong></h4>
            <div class="row">
              <section id="projects">
                <ul id="thumbs" class="portfolio">
                  <!-- Item Project and Filter Name -->
                  <c:forEach var="space" items="${spaceList}">
				
					<li class="item-thumbs span3 design" data-id="id-0" data-type="${space.type}">
                    
                    	<a class="hover-wrap fancybox" data-fancybox-group="gallery" title="${space.title}" href="<c:url value='/space/viewspace?space_id=${space.space_id}'/>">
							<span class="overlay-img"></span>
							<span class="overlay-img-thumb">
								${space.title} 
								<p class="spacedetail">${space.type}<br> 
								<i class="icon-map-marker"></i> ${space.area}
                        		<i class="icon-smile"></i>${space.jjim_cnt}</p>
							</span>
						</a>
                    
                    	<img src="<c:url value='/resources/img/${space.image_list[0]}'/>" alt="${space.type}, ${space.area}" >
                  	</li>
				
				</c:forEach>
                  <!-- End Item Project -->
                </ul>
              </section>
            </div>
          </div>
        </div>
        
        
      </div>
    </section>
    
    
      
    
    
    
  </div>

