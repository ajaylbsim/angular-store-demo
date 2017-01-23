var express = require('express')
var bodyParser = require('body-parser');
var app = express()
app.use(bodyParser.urlencoded({ extended: false }));
app.use(bodyParser.json())
app.use(express.static('./static'))

var list = [
{
	name:"Brinjal",
	price:"$34",
	imgPath:"http://lorempixel.com/61/61/",
	calorie:90,
	fibre:78,
	folates:56,
	vitaminc:80,
	detail:"Brinjal is good for health.........",
	id:1
},
{
	name:"Potato",
	imgPath:"http://lorempixel.com/60/60/",
	price:"$98",
	calorie:90,
	fibre:78,
	folates:56,
	vitaminc:80,
	detail:"Potato is good for health........... ",
	id:2
},
{
	name:"Onion",
	price:"$434",
	imgPath:"http://lorempixel.com/59/59/",
	calorie:90,
	fibre:78,
	folates:56,
	vitaminc:80,
	detail:"Onion is good for health........ ",
	id:3
},
{
	name:"Cauliflawer",
	price:"$434",
	imgPath:"http://lorempixel.com/58/58/",
	calorie:90,
	fibre:78,
	folates:56,
	vitaminc:80,
	detail:"Cauliflawer is good for health......... ",
	id:4
}
]


app.get('/', function (req, res) {
	res.end("/index.html");
})

app.get('/item/cart', function (req, res) {
	var cartItem = [];
	for (var i = list.length - 1; i >= 0; i--) {
		if(list[i].inCart){
			cartItem.push(list[i]);
		}
	};

	res.send(cartItem);
})

app.get('/item/list', function (req, res) {
	res.send(list);
})


app.post('/item', function (req, res) {
	for (var i = list.length - 1; i >= 0; i--) {
		if(list[i].id == req.body.id){
			list[i].inCart =true;
		}
	};

	res.send(true);
})

app.post('/item/is-present', function (req, res) {

	var status = false;
	for (var i = list.length - 1; i >= 0; i--) {
		if((list[i].id == req.body.id)&&(list[i].inCart)){
			status =true; 
		}
	};

	res.send(status);
})


app.post('/item/remove', function (req, res) {
	for (var i = list.length - 1; i >= 0; i--) {
		if(list[i].id == req.body.id){
			list[i].inCart =false;
		}
	};

	res.send(true);
})


app.post('/item/detail', function (req, res) {
	var item = null;
	for (var i = list.length - 1; i >= 0; i--) {
		if(list[i].id == req.body.id){
			item = list[i];
		}
	};


	res.send( item);

})

app.listen(3003, function () {
	console.log('Example app listening on port 3003!')
})
