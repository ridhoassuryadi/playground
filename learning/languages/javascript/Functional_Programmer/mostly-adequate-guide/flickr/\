requirejs.config({
    paths : {
	ramda : 'https://cdnjs.cloudflare.com/ajax/libs/ramda/0.13.0/ramda.min',
	jquery: 'https://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min'
    }
})


require([
 'ramda',
 'jquery'
], function(_, $){
    // _ is ramda , and $ sign is jquery
    var trace = _.curry(function(tag, x) {
	console.log('tracer',tag,x);
	return x;
    })
    

    var Impure = {
	getJSON : _.curry(function(callback, url) {
	    console.log(callback);
	    $.getJSON(url,callback)
	}),

	setHtml : _.curry(function(sel, html) {
	    $(sel).html(html)
	})
    }

    var url = function(term) {
	console.log('jalan')
	return 'https://api.flickr.com/services/feeds/photos_public.gne?tags=' +
    term + '&format=json&jsoncallback=?';
    }

        var img = function(url) {
      return $('<img />', {
        src: url,
      });
    };

    var prop = _.curry(function(property,object){
	return object[property]
    })

    var mediaUrl = _.compose(_.prop('m'), _.prop('media'))

    var srcs = _.compose(_.map(mediaUrl), _.prop('items'))

    var images = _.compose(_.map(img), srcs)

    var renderImages = _.compose(Impure.setHtml('body'), images)

    var app = _.compose(Impure.getJSON(renderImages), url)

    app('cats')

})



