package handlers

// 02.07.15 13:41
// (c) Dmitriy Blokhin (sv.dblokhin@gmail.com)

import (
    app "github.com/dblokhin/webapp"
)

type HandleHome struct {
    app.HTTPController
}

func (h HandleHome) GET(app *app.ContextApplication) {

    doc := app.Doc.Clone("base")
    doc["MetaTitle"] = "Общественное объединение"
    doc.Into("Content", "wellcome")

    app.Ctx.SendHTML(doc.Compile())
}


