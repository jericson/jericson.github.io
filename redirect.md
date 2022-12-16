---
layout: page
comments: no
permalink: /redirect
---

<!-- Lifted from https://stackoverflow.com/questions/901115/how-can-i-get-query-string-values-in-javascript -->

<script>
function getParameterByName(name, url = window.location.href) {
    name = name.replace(/[\[\]]/g, '\\$&');
    var regex = new RegExp('[?&]' + name + '(=([^&#]*)|&|#|$)'),
        results = regex.exec(url);
    if (!results) return null;
    if (!results[2]) return '';
    return decodeURIComponent(results[2].replace(/\+/g, ' '));
}

<!-- Lifted from https://stackoverflow.com/questions/12460378/how-to-get-json-from-url-in-javascript -->

var getJSON = function(url, callback) {
    var xhr = new XMLHttpRequest();
    xhr.open('GET', url, true);
    xhr.responseType = 'json';
    xhr.onload = function() {
      var status = xhr.status;
      if (status === 200) {
        callback(null, xhr.response);
      } else {
        callback(status, xhr.response);
      }
    };
    xhr.send();
};


<!-- Basically I'm setting this up to work around Twitter's Mastodon ban. -->
(function(){
     var query = getParameterByName("msearch");
     var url = "https://mastodon.social/api/v2/search?q="+query+"&resolve=false&limit=5";
     getJSON(url, 
       function (err, data){
         if (err !== null) {
           alert('Something went wrong: ' + err);
        } else {
          if (data.accounts[0] == null) {
            alert('Could not find a Mastodon account associated with ' + query);
          } else {
            window.location.replace(data.accounts[0].url);
          }
        }
     });
}());
</script>
