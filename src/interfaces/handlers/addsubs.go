package handlers

// 02.07.15 13:41
// (c) Dmitriy Blokhin (sv.dblokhin@gmail.com)

import (
    app "github.com/dblokhin/webapp"
    "errors"
)

type HandleAddSubs struct {
    app.HTTPController
}

func (h HandleAddSubs) POST(app *app.ContextApplication) {

    email := app.Ctx.Input.Query("email")
    err := errors.New("Пустой Email")

    if len(email) != 0 {
        _, err = app.DB.Exec("INSERT INTO subscribes(email) VALUES(?)", email)
        if err == nil {
            app.Ctx.SendJSON(`{"Result": "Ok"}`)
            return
        }
    }

    app.Ctx.SendJSON(`{"Result": "`+ err.Error() +`"}`)
}


