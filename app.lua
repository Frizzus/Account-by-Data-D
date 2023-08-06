local lapis = require("lapis")
local accueil = require("actions.accueil")
local recherche = require("actions.recherche")
local app = lapis.Application()
app:enable("etlua")

app:match("accueil", "/", accueil.fr_get)
app:match("recherche", "/recherche", recherche.fr_get)

return app