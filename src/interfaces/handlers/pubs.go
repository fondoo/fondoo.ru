package handlers

// (c) Dmitriy Blokhin (sv.dblokhin@gmail.com)
// project fondoo.ru

import (
    app "github.com/dblokhin/webapp"
    "encoding/json"
)

type HandlePubs struct {
    app.HTTPController
}

func (h HandlePubs) GET(app *app.ContextApplication) {

    const  LIMIT = 5

    items, err := app.DB.Query("SELECT title, link, DATE_FORMAT(pubdate, '%d-%m-%Y') as pubdate FROM pubs ORDER BY id DESC LIMIT ?", LIMIT)
    if err == nil {
        data, errl := json.Marshal(items)
        if err == nil {
            app.Ctx.SendHTML(string(data))
            return
        }

        err = errl
    }

    app.Ctx.SendHTML(err.Error())
}