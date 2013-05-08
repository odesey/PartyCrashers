    function initialize() {


      var map = new google.maps.Map(document.getElementById("map-canvas"), {
          mapTypeId: google.maps.MapTypeId.ROADMAP
      });

      var markerBounds = new google.maps.LatLngBounds();
      var markersArray = [];
      var infowindow = new google.maps.InfoWindow();

      <% @region.restaurants.each do |restaurant| %>
        
        var myLatlng = new google.maps.LatLng(<%=restaurant.lat%>, <%=restaurant.long%>);
        markerBounds.extend(myLatlng);
      
        var content_string = 
        '<h1><%=restaurant.name%></h1>'+
        '<p><%=restaurant.address%><p>';

        var marker = new google.maps.Marker({
          position: myLatlng,
          map: map,
          title:"<%=restaurant.name%>",
          content: content_string  // custom variable
        });

        markersArray.push(marker);
             
        google.maps.event.addListener(marker, 'click', function() {
          infowindow.setContent(this.content);
          infowindow.open(map, this);
        });

      <% end %>

      map.fitBounds(markerBounds);

    };