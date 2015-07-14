package handlers

// 18.02.15 0:44
// (c) Dmitriy Blokhin (sv.dblokhin@gmail.com), www.webjinn.ru

import (
	app "github.com/dblokhin/webapp"
	"net/http"
)

type HandleDisabled struct {
	app.HTTPController
}

func (h HandleDisabled) GET(app *app.ContextApplication) {
	doc := app.Doc.Clone("disabled")
	page := doc.Compile()

	app.Ctx.Output.Header("Retry-After", "3600")
	app.Ctx.Output.SetStatus(http.StatusServiceUnavailable)
	app.Ctx.SendHTML(page)
}
