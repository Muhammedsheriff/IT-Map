

(function($){
  

  var svg = $('#circlelinesvg');
  var circles = $('circle',svg);

  var lines = $('line');
  fixCircles();
  moveLines();
  moveText();
  
  
  function fixCircles(){
    circles.each(function(){
      var circle = $(this);
      var x = circle.attr('cx');
      var y = circle.attr('cy');
      circle.css('transform-origin', ''+ x +' '+ y);
    });
  }

  function moveLines(){
    lines.each(function(){
      var line = $(this);
      var point1 = $("#" +line.attr('point1'));
      var point2 = $("#" + line.attr('point2'));
      line.attr('x1', point1.attr("cx"));
      line.attr('y1', point1.attr("cy"));
      line.attr('x2', point2.attr("cx"));
      line.attr('y2', point2.attr("cy"));
    });
  }
  function moveText(){
    var texts = $('text',svg);
    texts.each(function(){
      var text = $(this);
            
      var point1 = $("#" +text.attr('point'));

      text.attr('x', point1.attr("cx"));
      text.attr('y', point1.attr("cy"));
      
      var subtexts = $('tspan', text); 
      subtexts.attr('x', point1.attr('cx')).attr('dy','1.1em');
      var bbox = text[0].getBBox();
      
      
      // subtexts.attr('dx',-bbox.width/2); // move all at once,  ie left aligned
      // this block allows center justified.
      subtexts.each(function(i,el) {
        var width = this.getComputedTextLength();
        $(this).attr('dx',-width/2);

      });      
      text.attr('dx',-bbox.width/2);
      text.css('transform', "translate(0,-"+bbox.height/2 + "px)" );
    });
  }

  
  
  
})(jQuery);

