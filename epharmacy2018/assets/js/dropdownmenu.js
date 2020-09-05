(function(a){var c=function(){};a.extend(c.prototype,{name:"dropdownMenu",options:{mode:"default",itemSelector:"li",firstLevelSelector:"li.level1",dropdownSelector:"ul",duration:600,remainTime:800,remainClass:"remain",matchHeight:true,transition:"easeOutExpo",withopacity:true,centerDropdown:false,reverseAnimation:false,fixWidth:false,fancy:null},initialize:function(u,o){this.options=a.extend({},this.options,o);var v=this,t=null,d=false;this.menu=u;this.dropdowns=[];this.options.withopacity=a.browser.msie&&parseFloat(a.browser.version)<9?false:this.options.withopacity;if(this.options.fixWidth){var w=5;this.menu.children().each(function(){w+=a(this).width()});this.menu.css("width",w)}this.options.matchHeight&&this.matchHeight();this.menu.find(this.options.firstLevelSelector).each(function(l){var g=a(this),i=g.find(v.options.dropdownSelector).css({overflow:"hidden"});if(i.length){i.css("overflow","hidden");var m=a("<div>").data("dpwidth",parseFloat(i.width())).data("dpheight",parseFloat(i.height())).css({overflow:"hidden"}).append("<div></div>"),j=m.find("div:first").css({"min-width":m.data("dpwidth"),"min-height":m.data("dpheight")});i.children().appendTo(j);m.appendTo(i);v.options.centerDropdown&&i.css("margin-left",(parseFloat(i.css("width"))/2-g.width()/2)*-1);v.dropdowns.push({dropdown:i,div:m,innerdiv:j})}g.bind({mouseenter:function(){d=true;v.menu.trigger("menu:enter",[g,l]);if(t){if(t.index==l){return}t.item.removeClass(v.options.remainClass);t.div.hide()}if(i.length){g.addClass(v.options.remainClass);m.stop().show();var q=m.data("dpwidth"),e=m.data("dpheight");switch(v.options.mode){case"showhide":q={width:q,height:e};m.css(q);break;case"diagonal":var n={width:0,height:0},q={width:q,height:e};if(v.options.withopacity){n.opacity=0,q.opacity=1}m.css(n).animate(q,v.options.duration,v.options.transition);break;case"height":n={width:q,height:0};q={height:e};if(v.options.withopacity){n.opacity=0,q.opacity=1}m.css(n).animate(q,v.options.duration,v.options.transition);break;case"width":n={width:0,height:e};q={width:q};if(v.options.withopacity){n.opacity=0,q.opacity=1}m.css(n).animate(q,v.options.duration,v.options.transition);break;case"slide":i.css({width:q,height:e});m.css({width:q,height:e,"margin-top":e*-1}).animate({"margin-top":0},v.options.duration,v.options.transition);break;default:n={width:q,height:e};q={};if(v.options.withopacity){n.opacity=0,q.opacity=1}m.css(n).animate(q,v.options.duration,v.options.transition)}t={item:g,div:m,index:l}}else{t=active=null}},mouseleave:function(e){if(e.srcElement&&a(e.srcElement).hasClass("module")){return false}d=false;i.length?window.setTimeout(function(){if(!(d||m.css("display")=="none")){v.menu.trigger("menu:leave",[g,l]);var n=function(){g.removeClass(v.options.remainClass);t=null;m.hide()};if(v.options.reverseAnimation){switch(v.options.mode){case"showhide":n();break;case"diagonal":var q={width:0,height:0};if(v.options.withopacity){q.opacity=0}m.stop().animate(q,v.options.duration,v.options.transition,function(){n()});break;case"height":q={height:0};if(v.options.withopacity){q.opacity=0}m.stop().animate(q,v.options.duration,v.options.transition,function(){n()});break;case"width":q={width:0};if(v.options.withopacity){q.opacity=0}m.stop().animate(q,v.options.duration,v.options.transition,function(){n()});break;case"slide":m.stop().animate({"margin-top":parseFloat(m.data("dpheight"))*-1},v.options.duration,v.options.transition,function(){n()});break;default:q={};if(v.options.withopacity){q.opacity=0}m.stop().animate(q,v.options.duration,v.options.transition,function(){n()})}}else{n()}}},v.options.remainTime):v.menu.trigger("menu:leave")}})});if(this.options.fancy){var p=a.extend({mode:"move",transition:"easeOutExpo",duration:500,onEnter:null,onLeave:null},this.options.fancy),k=this.menu.append('<div class="fancy bg1"><div class="fancy-1"><div class="fancy-2"><div class="fancy-3"></div></div></div></div>').find(".fancy:first").hide(),f=this.menu.find(".active:first"),h=null,b=function(g,e){if(!e||!(h&&g.get(0)==h.get(0))){k.stop().show().css("visibility","visible"),p.mode=="move"?!f.length&&!e?k.hide():k.animate({left:g.position().left+"px",width:g.width()+"px"},p.duration,p.transition):e?k.css({opacity:f?0:1,left:g.position().left+"px",width:g.width()+"px"}).animate({opacity:1},p.duration):k.animate({opacity:0},p.duration),h=e?g:null}};this.menu.bind({"menu:enter":function(g,e,i){b(e,true);if(p.onEnter){p.onEnter(e,i,k)}},"menu:leave":function(g,e,i){b(f,false);if(p.onLeave){p.onLeave(e,i,k)}},"menu:fixfancy":function(){h&&k.stop().show().css({left:h.position().left+"px",width:h.width()+"px"})}});f.length&&p.mode=="move"&&b(f,true)}},matchHeight:function(){this.menu.find("li.level1.parent").each(function(){var b=0;a(this).find("ul.level2").each(function(){b=Math.max(a(this).height(),b)}).css("min-height",b)})}});a.fn[c.prototype.name]=function(){var d=arguments,b=d[0]?d[0]:null;return this.each(function(){var e=a(this);if(c.prototype[b]&&e.data(c.prototype.name)&&b!="initialize"){e.data(c.prototype.name)[b].apply(e.data(c.prototype.name),Array.prototype.slice.call(d,1))}else{if(!b||a.isPlainObject(b)){var f=new c;c.prototype.initialize&&f.initialize.apply(f,a.merge([e],d));e.data(c.prototype.name,f)}else{a.error("Method "+b+" does not exist on jQuery."+c.name)}}})}})(jQuery);