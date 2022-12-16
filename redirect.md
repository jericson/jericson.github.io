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


(function(){
     var dest = getParameterByName("dest");
     var url = "https://"+dest;
     window.location = url;
}());
</script>
