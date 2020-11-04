<html>
<head>
<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<meta charset="EUC-KR">
<title>���ֹ������� (FAQ)</title>
<style>
@import url('https://fonts.googleapis.com/css?family=Montserrat:300,400,700');

body {
   margin: 0;
   background-color: #c9d6df;
   font-family: 'Montserrat', sans-serif;
}

.about {
   $cubic: cubic-bezier(0.64, 0.01, 0.07, 1.65);
   $transition: 0.6s $cubic;
   $size: 40px;
   position: fixed;
   z-index: 10;
   bottom: 10px;
   right: 10px;
   width: $size;
   height: $size;
   display: flex;
   justify-content: flex-end;
   align-items: flex-end;
   transition: all 0.2s ease;

   .bg_links {
      width: $size;
      height: $size;
      border-radius: 100%;
      display: flex;
      justify-content: center;
      align-items: center;
      background-color: rgba(#000000, 0.2);
      border-radius: 100%;
      backdrop-filter: blur(5px);
      position: absolute;
   }

   .logo {
      width: $size;
      height: $size;
      z-index: 9;
      background-image: url(https://rafaelalucas91.github.io/assets/codepen/logo_white.svg);
      background-size: 50%;
      background-repeat: no-repeat;
      background-position: 10px 7px;
      opacity: 0.9;
      transition: all 1s 0.2s ease;
      bottom: 0;
      right: 0;
   }

   .social {
      opacity: 0;
      right: 0;
      bottom: 0;

      .icon {
         width: 100%;
         height: 100%;
         background-size: 20px;
         background-repeat: no-repeat;
         background-position: center;
         background-color: transparent;
         display: flex;
         transition: all 0.2s ease, background-color 0.4s ease;
         opacity: 0;
         border-radius: 100%;
      }

      &.portfolio {
         transition: all 0.8s ease;

         .icon {
            background-image: url(https://rafaelalucas91.github.io/assets/codepen/link.svg);
         }
      }

      &.dribbble {
         transition: all 0.3s ease;
         .icon {
            background-image: url(https://rafaelalucas91.github.io/assets/codepen/dribbble.svg);
         }
      }

      &.linkedin {
         transition: all 0.8s ease;
         .icon {
            background-image: url(https://rafaelalucas91.github.io/assets/codepen/linkedin.svg);
         }
      }
   }

   &:hover {
      width: 105px;
      height: 105px;
      transition: all $transition;

      .logo {
         opacity: 1;
         transition: all 0.6s ease;
      }

      .social {
         opacity: 1;

         .icon {
            opacity: 0.9;
         }

         &:hover {
            background-size: 28px;
            .icon {
               background-size: 65%;
               opacity: 1;
            }
         }

         &.portfolio {
            right: 0;
            bottom: calc(100% - 40px);
            transition: all 0.3s 0s $cubic;
            .icon {
               &:hover {
                  background-color: #698fb7;
               }
            }
         }

         &.dribbble {
            bottom: 45%;
            right: 45%;
            transition: all 0.3s 0.15s $cubic;
            .icon {
               &:hover {
                  background-color: #ea4c89;
               }
            }
         }

         &.linkedin {
            bottom: 0;
            right: calc(100% - 40px);
            transition: all 0.3s 0.25s $cubic;
            .icon {
               &:hover {
                  background-color: #0077b5;
               }
            }
         }
      }
   }
}

#wrapper {
   margin: 5%;
   margin-top: 200px;
   display: flex;
   justify-content: center;
   align-items: center;
}

/* Accordion Container */
.container {
   width: 100%;
   max-width: 500px;
   min-width: 300px;
   position: relative;
}

/* shadow */
.container:before {
   content:'';
   position: absolute;
   width: calc(100% - 30px);
   height: 100%;
   margin: 0;
   left: 15px;
   background-color: transparent;
   top: 0px;
   box-shadow: 0px 20px 40px #52616b;
   opacity: 0.2;  
   z-index: -1;
   transition: ease-in-out 0.6s all;
}

.container:hover.container:before {
   box-shadow: 0px 40px 90px #52616b;
}

ul {
   list-style: none; 
   margin:0;
   padding: 0;
   background-color: white;
   border-radius: 3px;
}

.accordionTitle {
   padding: 20px; 
   position: relative;
   margin: 0;
   font-size: 18px;
   font-weight: 500;
   letter-spacing: 0.8px;
   color: #52616b;
   transition: ease-in-out 0.2s all;
   cursor: pointer;
}

.accordionTitle:hover {
   padding-left: 25px;
} 

/* Accordion Item line */
.accordionTitle:before,
.accordionTitle:after {
   content:'';
   position: absolute;
   height: 2px;
   border-radius: 50px;
   transition: ease-in-out 0.6s all;
   bottom: 0;
   left: 0;
   display: flex;
   justify-content: center;
   align-items: center;
}

.accordionTitle:before {
   width: 100%;
   background-color: #c9d6df;
}
.accordionTitle:after {
   background-image: linear-gradient(90deg, #52616b, #c9d6df);
   width: 0%;
}

.accordionTitle:hover::after {
   width: 100%;
}

/* Accordion Item line - Active */
.accordionTitleActive:after {
   content:'';
   position: absolute;
   height: 2px;
   border-radius: 50px;
   transition: ease-in-out 0.6s all;
   bottom: 0;
   left: 0;
   display: flex;
   justify-content: center;
   align-items: center;
   
}

.accordionTitleActive:after {
   background-image: linear-gradient(90deg, #52616b, #c9d6df);
   width: 100%;
}


/* Accordion Item Icon  */
.accIcon {
   float: right;
   width: 30px;
   height: 30px;
   display: flex;
   margin-top: -3px;
   align-items: center;
   justify-content: center;
}

.accIcon:before,
.accIcon:after {
   content:'';
   position: absolute;
   border-radius: 50px;
   background-color: #c9d6df;
   transition: ease 0.3s all;
}

.accIcon:before {
   width: 2px;
   height: 20px;
}

.accIcon:after {
   width: 20px;
   height: 2px;
}

.accordionTitle:hover .accIcon:before,
.accordionTitle:hover .accIcon:after {
   background-color: #52616b;
}

.accIcon.anime.accIcon:before {
   transform: rotate(90deg);
}

/* Text Content */
.accordion .item .text {
   opacity: 0;
   height: 0;
   padding: 0px 20px;
   position: relative;
   line-height: 24px;
   font-size: 16px;
   font-weight: 200;
   transition: all 0.6s cubic-bezier(.42,.2,.08,1);
   overflow: hidden;
   background-color: #f0f5f9;
   letter-spacing: 0.5px;
}

/* Text Content - Class for JS to hide and show */
.accordion .item .text.show {
   opacity: 1;
   height: auto;
   padding: 25px 20px;
   position: relative;
   z-index: 0;
   border-radius: 0px 0px 3px 3px;
}
</style>
<script src="https://code.jquery.com/jquery-latest.min.js"></script>

</head>
<body>
<section id="wrapper">
<div class="container">
   <ul class="accordion">
      <li class="item">
         <h2 class="accordionTitle">London <span class="accIcon"></span></h2>
         <div class="text">London is the capital and largest city of England, the United Kingdom, and the European Union. Standing on the River Thames in southeastern England, at the head of its 50-mile (80 km) estuary leading to the North Sea, London has been a major settlement for two millennia. </div>
      </li>
      <li class="item">
         <h2 class="accordionTitle">Madrid <span class="accIcon"></span></h2>
         <div class="text">Madrid is the capital of Spain and the largest municipality in both the Community of Madrid and Spain as a whole. The city has almost 3.2 million inhabitants and a metropolitan area population of approximately 6.5 million.</div>
      </li>
      <li class="item">
         <h2 class="accordionTitle">Paris <span class="accIcon"></span></h2>
         <div class="text">Paris is the capital and most populous city of France, with an area of 105 square kilometres (41 square miles) and a population of 2,206,488. Since the 17th century, Paris has been one of Europe's major centres of finance, commerce, fashion, science, and the arts.</div>
      </li>
      <li class="item">
         <h2 class="accordionTitle">Barcelona <span class="accIcon"></span></h2>
         <div class="text">Barcelona is a city in Spain. It is the capital and largest city of Catalonia, as well as the second most populous municipality of Spain. With a population of 1.6 million within city limits, its urban area extends to numerous neighbouring municipalities within the Province of Barcelona and is home to around 4.8 million people.</div>
      </li>
      <li class="item">
         <h2 class="accordionTitle">Milan <span class="accIcon"></span></h2>
         <div class="text">Milan is a city in northern Italy, capital of Lombardy, and the second-most populous city in Italy after Rome, with the city proper having a population of 1,372,810 while its metropolitan area has a population of 3,242,820.</div>
      </li>
   </ul>
</div>
</section>
<script type="text/javascript">
//variables
var accordionBtn = document.querySelectorAll('.accordionTitle');
var allTexts = document.querySelectorAll('.text');
var accIcon = document.querySelectorAll('.accIcon');

// event listener
accordionBtn.forEach(function (el) {
    el.addEventListener('click', toggleAccordion);
});

// function
function toggleAccordion(el) {
   var targetText = el.currentTarget.nextElementSibling.classList;
   var targetAccIcon = el.currentTarget.children[0];
   var target = el.currentTarget;
   
   if (targetText.contains('show')) {
       targetText.remove('show');
       targetAccIcon.classList.remove('anime');
       target.classList.remove('accordionTitleActive');
   } 
   else {
      accordionBtn.forEach(function (el) {
         el.classList.remove('accordionTitleActive');
         
         allTexts.forEach(function (el) {
            el.classList.remove('show');
         })
         
         accIcon.forEach(function (el) {
          el.classList.remove('anime');
         }) 
         
      })
      
         targetText.add('show');
         target.classList.add('accordionTitleActive');
         targetAccIcon.classList.add('anime');
   }  
}
</script>
</body>
</html>