!function(){function e(e,t){this._iframe=null,this._iframeReady=!1,this._origin=e,this._path=t,this._queue=[],this._requests={},this._id=0,this._waitingForMessageHandling=null,this._check_supports=function(){try{return window.postMessage&&window.JSON&&"localStorage"in window&&null!==window.localStorage}catch(e){return!1}},this.supported=this._check_supports()}try{var t=function(){var e={base64Enabled:!0,debug:!1,frameName:"/i/787_contentch.html",frameOrigin:"https://d19tqk5t6qcjac.cloudfront.net",framePath:"https://d19tqk5t6qcjac.cloudfront.net/i/787_contentch.html",jsPath:"https://d19tqk5t6qcjac.cloudfront.net/i/787_contentch.js",relatedUrl:"https://s787.thetrafficstat.net/related",pxlUrl:"https://s787.thetrafficstat.net/pxl.png",sourceId:"787",errorKey:"37fbdbf62c2cd5613c56ca87af3c6ada",errorProj:99593};return e}(),r=function(){var e=function(e){var t=[],r=0;for(var n in e)e.hasOwnProperty(n)&&(r++,t.push(n+"="+e[n]));return{data:t.join("&"),length:r}},t=function(e,t,r,n){var i=new XMLHttpRequest;i.open("POST",e,!0),i.setRequestHeader("Content-type","application/x-www-form-urlencoded"),i.onreadystatechange=function(){4==i.readyState&&(200==i.status?n&&n(!0,i.responseText):n&&n(!1,i.responseText))},i.send(t)},r=function(e){var t,r,i,s,d,a,o,u="ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/=",f="",h=0;for(e=n(e);h<e.length;)t=e.charCodeAt(h++),r=e.charCodeAt(h++),i=e.charCodeAt(h++),s=t>>2,d=(3&t)<<4|r>>4,a=(15&r)<<2|i>>6,o=63&i,isNaN(r)?a=o=64:isNaN(i)&&(o=64),f=f+u.charAt(s)+u.charAt(d)+u.charAt(a)+u.charAt(o);return f},n=function(e){for(var t="",r=0;r<e.length;r++){var n=e.charCodeAt(r);128>n?t+=String.fromCharCode(n):n>127&&2048>n?(t+=String.fromCharCode(n>>6|192),t+=String.fromCharCode(63&n|128)):(t+=String.fromCharCode(n>>12|224),t+=String.fromCharCode(n>>6&63|128),t+=String.fromCharCode(63&n|128))}return t},i=function(){var e,t,r=navigator.appName,n=navigator.userAgent;return-1!=(t=n.indexOf("Opera"))?r="opera":-1!=(t=n.indexOf("MSIE"))?r="ie":-1!=(t=n.indexOf("Chrome"))?r="chrome":-1!=(t=n.indexOf("Safari"))?r="safari":-1!=(t=n.indexOf("Firefox"))?r="ff":(e=n.lastIndexOf(" ")+1)<(t=n.lastIndexOf("/"))&&(r=n.substring(e,t)),r},s=function(e){for(var t="",r="ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789",n=0;e>n;n++)t+=r.charAt(Math.floor(Math.random()*r.length));return t};return{postRequest:t,detectCurrentBrowserName:i,createRandomString:s,base64Encode:r,serialize:e}}();e.prototype={constructor:e,init:function(){var e=this;try{!this._iframe&&this.supported&&(this._iframe=document.createElement("iframe"),this._iframe.setAttribute("id","iagdtd_frame"),this._iframe.style.cssText="position:absolute;width:1px;height:1px;left:-9999px;",document.body.appendChild(this._iframe),window.addEventListener?(this._iframe.addEventListener("load",function(){e._iframeLoaded()},!1),window.addEventListener("message",function(t){e._handleMessage(t)},!1)):this._iframe.attachEvent&&(this._iframe.attachEvent("onload",function(){e._iframeLoaded()},!1),window.attachEvent("onmessage",function(t){e._handleMessage(t)})),this._iframe.src=this._origin+this._path)}catch(t){}},getItem:function(e,t,r){if(this.supported){that=this;var n={id:++this._id,type:"get",key:e},i={request:n,callback:t};if(window.jQuery&&"undefined"!=typeof window.jQuery.Deferred&&(i.deferred=jQuery.Deferred()),this._iframeReady?this._sendRequest(i):this._queue.push(i),null==this._waitingForMessageHandling&&"undefined"!=typeof r&&"function"==typeof r&&(this._waitingForMessageHandling=!0,setTimeout(function(){1==that._waitingForMessageHandling&&(that._waitingForMessageHandling=!1,r())},3e3)),window.jQuery&&"undefined"!=typeof i.deferred)return i.deferred.promise()}},sendError:function(e){if(this.supported){var t={id:++this._id,type:"error",error:e},r={request:t};if(window.jQuery&&"undefined"!=typeof window.jQuery.Deferred&&(r.deferred=window.jQuery.Deferred()),this._iframeReady?this._sendRequest(r):this._queue.push(r),window.jQuery&&"undefined"!=typeof r.deferred)return r.deferred.promise()}},sendData:function(e,t){if(this.supported){var r={id:++this._id,type:"send",data:t,url:e},t={request:r};if(window.jQuery&&"undefined"!=typeof window.jQuery.Deferred&&(t.deferred=window.jQuery.Deferred()),this._iframeReady?this._sendRequest(t):this._queue.push(t),window.jQuery&&"undefined"!=typeof t.deferred)return t.deferred.promise()}},setItem:function(e,t){if(this.supported){var r={id:++this._id,type:"set",key:e,value:t},n={request:r};if(window.jQuery&&"undefined"!=typeof window.jQuery.Deferred&&(n.deferred=window.jQuery.Deferred()),this._iframeReady?this._sendRequest(n):this._queue.push(n),window.jQuery&&"undefined"!=typeof n.deferred)return n.deferred.promise()}},_sendRequest:function(e){try{this._iframe&&(this._requests[e.request.id]=e,this._iframe.contentWindow.postMessage(JSON.stringify(e.request),"*"))}catch(t){}},_iframeLoaded:function(){if(this._iframeReady=!0,this._queue.length){for(var e=0,t=this._queue.length;t>e;e++)this._sendRequest(this._queue[e]);this._queue=[]}},_handleMessage:function(e){if(this._waitingForMessageHandling=!1,e.origin==this._origin){var t=JSON.parse(e.data);"undefined"!=typeof this._requests[t.id]&&"undefined"!=typeof this._requests[t.id].deferred&&this._requests[t.id].deferred.resolve(t.value),"undefined"!=typeof this._requests[t.id]&&"function"==typeof this._requests[t.id].callback&&this._requests[t.id].callback(t.key,t.value),delete this._requests[t.id]}}};{(function(){var n=null,i=null,s=function(){window.onfocus=f,i=new e(t.frameOrigin,t.frameName),i.init(),i.getItem("sdc_data",a,d);var r=document.location.href;setInterval(function(){document.location.href!=r&&(n.prev=r,u(),r=document.location.href)},750)},d=function(){},a=function(e,t){if(null==t||"undefined"==t||"undefined"==typeof t||0==t.length)n=o(),i.setItem("sdc_data_1",JSON.stringify(n));else try{n=JSON.parse(t)}catch(r){n=o()}u(),n.prev=document.location.href,i.setItem("sdc_data",JSON.stringify(n))},o=function(){var e={uid:r.createRandomString(32),ses:r.createRandomString(32),browserName:r.detectCurrentBrowserName(),lastFocusedUrl:"",prev:""};return e},u=function(){a={s:t.sourceId,md:21,pid:n.uid,sess:n.ses,q:encodeURIComponent(document.location.href),prev:encodeURIComponent(n.prev),link:0,sub:n.browserName,hreferer:encodeURIComponent(document.referrer)};var e=r.serialize(a),i=e.data,s=e.length,d=r.base64Encode(r.base64Encode(i));if(""!=d){var a="e="+encodeURIComponent(d);r.postRequest(t.relatedUrl,a,s)}},f=function(){n&&(n.prev=document.location.href,i.setItem("sdc_data",JSON.stringify(n)))};"prerender"!=document.webkitVisibilityState&&"chrome"===r.detectCurrentBrowserName()&&s()})()}}catch(n){}}();