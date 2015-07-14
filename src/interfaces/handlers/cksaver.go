package handlers

// (c) Dmitriy Blokhin (sv.dblokhin@gmail.com), fondoo.ru

import (
    "github.com/dblokhin/webapp"
    "github.com/dblokhin/typo"
    "net/http"
    "log"
)

type HandleCKSaver struct {
    webapp.HTTPController
}

func (h HandleCKSaver) POST(app *webapp.ContextApplication) {

    user := app.Ctx.User()
    if !user.IsAdmin() {
        app.Ctx.Output.Status = http.StatusForbidden
        app.Ctx.SendJSON(`{"Result": "Access denied"}`)
        return
    }

    vars := app.Ctx.RouteVars()

    switch vars["mod"] {
        case "article": article(app, vars["entity"], vars["id"])

        default: {
            app.Ctx.Output.Status = http.StatusNotFound
            app.Ctx.SendJSON(`{"Result": "Invalid entity"}`)
            return
        }
    }
}

func article(app *webapp.ContextApplication, entity, id string) {
    data := app.Ctx.Input.Query("data")

    sql := ""
    switch entity {
        case "title": sql = "UPDATE content_articles SET title = ? WHERE id = ?";
        case "content": sql = "UPDATE content_articles SET content = ? WHERE id = ?";

        default: {
            app.Ctx.Output.Status = http.StatusNotFound
            app.Ctx.SendJSON(`{"Result": "Invalid entity"}`)
            return
        }
    }

    _, err := app.DB.Exec(sql, typo.Typo(data), id)
    if err != nil {
        log.Println(err)
        app.Ctx.Output.Status = http.StatusNotFound
        app.Ctx.SendJSON(`{"Result": "`+ err.Error() +`"}`)
        return
    }

    app.Ctx.SendJSON(`{"Result": "Ok"}`)
}