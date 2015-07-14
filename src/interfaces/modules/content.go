package modules

// (c) Dmitriy Blokhin (sv.dblokhin@gmail.com)
// Модуль content. Базовый.

import (
    "github.com/dblokhin/webapp"
    "hash/crc32"
    "errors"
)

// ArticleById получить статью по ID
func ArticleById(id int) (map[string]string, error) {

    app := webapp.GetApplication()
    res, err := app.DB.Query("SELECT * FROM content_articles WHERE id = ?", id)
    if len(res) != 1 {
        err = errors.New("Not found in database")
        return nil, err
    }

    return res[0], err
}

// ArticleByUrl получить статью по alias (sef ссылка)
func ArticleByUrl(url string) (map[string]string, error) {

    app := webapp.GetApplication()
    url_crc32 := crc32.ChecksumIEEE([]byte(url))
    res, err := app.DB.Query("SELECT * FROM content_articles WHERE hash_url_crc32 = ? and url = ?", url_crc32, url)
    if len(res) != 1 {
        err = errors.New("Not found in database")
        return nil, err
    }

    return res[0], err
}

// CategoryById получить категорию по ID
func CategoryById(id int) (map[string]string, error) {

    app := webapp.GetApplication()
    res, err := app.DB.Query("SELECT * FROM content_categories WHERE id = ?", id)
    if len(res) != 1 {
        err = errors.New("Not found in database")
        return nil, err
    }

    return res[0], err
}

// CategoryByUrl получить категорию по alias (sef ссылка)
func CategoryByUrl(url string) (map[string]string, error) {

    app := webapp.GetApplication()
    url_crc32 := crc32.ChecksumIEEE([]byte(url))
    res, err := app.DB.Query("SELECT * FROM content_categories WHERE hash_url_crc32 = ? and url = ?", url_crc32, url)
    if len(res) != 1 {
        err = errors.New("Not found in database")
        return nil, err
    }

    return res[0], err
}