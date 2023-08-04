local lapis = require("lapis")
local accueil = require("actions.accueil")
local app = lapis.Application()
app:enable("etlua")

app:match("accueil", "/", accueil.fr_get)

return app