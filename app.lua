local lapis = require("lapis")
local accueil = require("actions.accueil")
local connection= require("actions.connection")
local profile = require("actions.profile")
local admin_connection = require("actions.admin_connection")
local profile_admin    = require("actions.profile_admin")
local app = lapis.Application()
app:enable("etlua")
app.layout = false

app:match("accueil", "/", accueil.fr_get)
app:match("connection", "/connection", connection.fr_get)
app:match("profile", "/profile", profile.fr_get)
app:get("/abricot", admin_connection.fr_get)
app:post("/abricot", profile_admin.fr_post)

return app