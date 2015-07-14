package modules

// (c) Dmitriy Blokhin (sv.dblokhin@gmail.com)

import (
    "github.com/dblokhin/webapp"
)

// TableRowById получить таблицу по ID
func TableRowById(tableName string, id int) ([]map[string]string, error) {

    res, err := webapp.GetApplication().DB.Query("SELECT * FROM ? WHERE id = ?", tableName, id)

    return res, err
}