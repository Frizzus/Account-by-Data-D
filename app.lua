local lapis = require("lapis")
local accueil = require("actions.accueil")
local connection= require("actions.connection")
local app = lapis.Application()
app:enable("etlua")
app.layout = false

app:match("accueil", "/", accueil.fr_get)
app:match("connection", "/connection", connection.fr_get)

return app