// Place your application-specific JavaScript functions and classes here
// This file is automatically included by javascript_include_tag :defaults
function externalLinks() {
 if (!document.getElementsByTagName) return;
 var anchors = document.getElementsByTagName("a");
 for (var i=0; i<anchors.length; i++) {
   var anchor = anchors[i];
   if (anchor.getAttribute("href") &&
       anchor.getAttribute("rel") == "external")
     anchor.target = "_blank";
 }
}
window.onload = externalLinks;

$(function() {

   $("#like, #dislike, #noauth_dislike, #noauth_like").hover(
      function () {
        $(this).css("opacity", 1);
      },
      function () {
        $(this).css("opacity", .2);
      }
    );

    $("#response_count").hover(
        function () {
            $("#response_count_message").html("Response Count is Total Count of Both <br />Likes & Dislikes").fadeIn("slow");
        },
        function () {
            $("#response_count_message").html("");
        }
    );

    $("#noauth_like a, #noauth_dislike a").click(function(event) {
        if(!confirm("Login to like or dislike this video?")){
            event.preventDefault();
        }
    });
});