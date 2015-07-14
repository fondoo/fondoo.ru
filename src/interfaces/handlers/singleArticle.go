package handlers

// 11.07.15 13:34
// (c) Dmitriy Blokhin (sv.dblokhin@gmail.com)

import (
    "github.com/dblokhin/webapp"
    "interfaces/modules"
)

type HandleSingleArticle struct {
    webapp.HTTPController
}

func (h HandleSingleArticle) GET(app *webapp.ContextApplication) {

    vars := app.Ctx.RouteVars()
    article, err := modules.ArticleByUrl(vars["url"])
    if err != nil {
        HandleP404{}.GET(app)
        return
    }

    doc := app.Doc.Clone("base")
    doc["MetaTitle"] = article["title"]
    doc["Article"] = article
    doc.Into("Content", "singleArticle")
    app.Ctx.SendHTML(doc.Compile())
}