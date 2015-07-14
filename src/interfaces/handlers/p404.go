package handlers

// 26.04.15 13:41
// (c) Dmitriy Blokhin (sv.dblokhin@gmail.com), www.webjinn.ru

import (
    app "github.com/dblokhin/webapp"
    "net/http"
)

type HandleP404 struct {
    app.HTTPController
}

func (h HandleP404) GET(app *app.ContextApplication) {

    doc := app.Doc.Clone("404")
    app.Ctx.Output.Status = http.StatusNotFound;
    app.Ctx.SendHTML(doc.Compile())
}


