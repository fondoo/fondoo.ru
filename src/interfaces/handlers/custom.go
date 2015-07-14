package handlers

// (c) Dmitriy Blokhin (sv.dblokhin@gmail.com)
// project fondoo.ru

import (
    app "github.com/dblokhin/webapp"
)

type HandleCustom struct {
    app.HTTPController
}

func (h HandleCustom) GET(app *app.ContextApplication) {

    doc := app.Doc.Clone("custom") // like child
    doc["TitlePage"] = "Some text value (string)"

    result := doc.Compile()
    app.Ctx.SendHTML(result)
}

func (h HandleCustom) POST(app *app.ContextApplication) {
	// and so on...
}