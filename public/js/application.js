$( "h1" ).ready(function(){
    $( "#p" ).animate({
    	marginLeft: '4.3in'
    }, 2000 );
    $( "#p" ).animate({
    	marginLeft: '9in'
    }, 200 );
    $( "#p" ).animate({
    	marginLeft: '4.3in'
    }, 2000 )
});

$('#a').mouseenter(function(){
    $('h3').append("<div id='hoveringTooltip';'></div>");
    $('#hoveringTooltip').html("Type in your link with 'http://www.' please ð_ð");
    $('#hoveringTooltip').css({
    });
});

$('#a').mouseleave(function(){
    $('#hoveringTooltip').remove();
});

$( "#p" ).mouseenter(function() {
  $( "#p" ).animate({
  	height: '50%',
    width: "50%",
    // opacity: 0.4,
    marginLeft: "0.6in",
    fontSize: "3em",
    borderWidth: "10px"
  }, 1500 );
});

$( "#p" ).mouseleave(function() {
  $( "#p" ).animate({
  	height: '7%',
    width: "7%",
    // opacity: 0.4,
    marginLeft: "4.3in",
    fontSize: "3em",
    borderWidth: "10px"
  }, 1500 );
});