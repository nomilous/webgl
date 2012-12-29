express    = require 'express'
http       = require 'http'
path       = require 'path'
app        = express()

app.configure ->
    app.set 'port', process.env.PORT || 3000
    app.set 'views', __dirname + '/../views'
    app.set 'view engine', 'jade'
    app.use require('connect-assets')()
    app.use require('stylus').middleware(__dirname + '/../public')
    app.use express.static( path.join( __dirname, '/../public' ))
    app.use app.router
    app.use express.errorHandler()

app.get '/', (req, res) -> 
    res.render 'index', title: 'play'

http.createServer(app).listen app.get('port'), ->
    console.log 'Express server listening on port ' + app.get('port')

