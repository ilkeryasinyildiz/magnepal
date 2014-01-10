<%@ taglib prefix="s" uri="/struts-tags" %>

<script>
/*$('.search-result').load("./FriendFinder/getJSONResult");*/
</script>

<script>
  $.widget( "custom.catcomplete", $.ui.autocomplete, {
    _renderMenu: function( ul, items ) {
      var that = this,
        currentCategory = "";
      $.each( items, function( index, item ) {
        if ( item.category != currentCategory ) {
          ul.append( "<li class='ui-autocomplete-category'>" + item.category + "</li>" );
          currentCategory = item.category;
        }
        that._renderItemData( ul, item );
      });
    }
  });
  </script>
  <script>
  $(function() {
    var data = [
      { label: "anders", category: "" },
      { label: "andreas", category: "" },
      { label: "antal", category: "" },
      { label: "annhhx10", category: "Products" },
      { label: "annk K12", category: "Products" },
      { label: "annttop C13", category: "Products" },
      { label: "anders andersson", category: "People" },
      { label: "andreas andersson", category: "People" },
      { label: "andreas johnson", category: "People" }
    ];
 
    $( "#search" ).catcomplete({
      delay: 0,
      source: data
    });
  });
  </script>
  
  <div class="menu-search">
		<s:textfield id="search" label="Search"/>
</div>
<div class="search-result">
</div>


<script type="text/javascript">

$('#search').keyup(function(){

	var keyword = $('#search').val();
	if(keyword!="")
	$('.search-result').load('./FriendFinder/search?keyword='+keyword);
	
});

	
</script>
  
  