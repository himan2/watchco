   <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<c:import url="head-meta.jsp"/>

<style>
body {
   background: url(resources/images/about.jpg) ;
}
.box{
	width: 100%;
	height: 100%;
    position: relative;
    text-align: center;
}
.box .title{
    width: 100%;
    padding: 12px 10px;
    margin: 0;
    position: absolute;
    top: 35%;
    left: 0;
    font-size: 24px;
    color: #fff;
    background-color: rgba(0, 0, 0, 0.7);
    z-index: 5;
    transition: all 0.5s ease 0s;
}
 .box .box-content{
    width: 100%;
    padding: 100px 10px;
    margin: 0;
    position: absolute;
    top: 65%;
    left: 0;
    font-size: 20px;
    color: #fff;
    background-color: rgba(0, 0, 0, 0.7);
    z-index: 1;
    transition: all 0.5s ease 0s;
}
.box .box-content:hover{
    box-shadow: 0 0 20px #fff;
    background-color : rgba(132, 1, 1, 1);
}
</style>
</head>
<body>

<c:import url="head.jsp"/>
<br><br><br><br>

<div class="container">
    <div class="box">
        <div class="col-md-12 col-sm-6">
            <div class="axe">
                
                <h2 class="title"><b>ABOUT US</b></h2>
                <div class="box-content">
                    <p class="description">
                      Chrono Watch Company brings you an exclusive collection of the finest Swiss and 
                      international brands of elegant and sporty accessible and aspirational luxury lifestyle 
                      timepieces for men and women. Choose from classic Swiss, stylish dress, chic fashion, 
                      retro-style, oversized or the huge range of trend setting sports inspired selections which 
                      include aviation, motor racing, diving, sailing, extreme sports, military and fitness themes. 
                      We are an official authorized dealer and retailer for most of our featured brands and all our 
                      timepieces come in original manufacturer supplied cases with full international warranty and 
                      service support. Our boutique brands have been hand-picked for their high quality and superb 
                      craftsmanship, innovative watch making heritage, appealing design, cutting edge materials and 
                      value for money prices.  <br><br>
                      We are one of the leading online retailers of affordable luxury, sports and sports fashion 
                      timepieces with a selection of over 55 premium international brands. Thru our world class 
                      e-commerce website, consumers have the freedom and convenience to browse thru our unique 
                      collections online, choose an accessory that expresses their individuality and underscores 
                      their sense of style and have it delivered with complimentary shipping to their doorstep. 
                      We have registered offices and warehouses in Hong Kong and Bangalore, and ship worldwide from 
                      both locations.<br><br>
                      
                  Chrono Watch Company is a Hong Kong based serial entrepreneur and 
                  innovator in the retail and consumer branding sectors in India. Chrono will become a leading 
                  lifestyle accessory brand in India thru its unique value proposition: enabling a new generation of 
                  Indian consumers to display their personality by accessing a much wider choice of timeless Swiss 
                  luxury, fashion forward designer, and sporty instrument watches at attractive prices for the first 
                  time. Prior to conceiving Chrono, Arjun revolutionized the premium bakery sector in India by pioneering and promoting India’s first world class, multi-city boutique bakery and confectionary brand, Daily Bread Gourmet Foods, (www.dailybread.co.in). Arjun founded Daily Bread in 2003 and built it into India’s pre-eminent gourmet bakery brand which set the defining standards as the country's first purveyor of European quality bakery and confectionary products for wholesale & retail clients. Daily Bread was acquired by Britannia Industries in 2009.
                      </p>  
                </div>
                
            </div>
        </div>
        
    </div>  
</div><br><br><br><br><br><br>

</body>
</html>