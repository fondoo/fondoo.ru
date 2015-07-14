CKEDITOR.plugins.add('inlinesave',
    {
        init: function (editor) {
            editor.addCommand('inlinesave',
                {
                    exec: function (editor) {

                        addData();

                        function addData() {
                            // Documentation: http://docs.ckeditor.com/#!/api/CKEDITOR.editable
                            var data = editor.getData();
                            var url = editor.container.data("url");

                            jQuery.ajax({

                                type: "POST",
                                url: url,
                                data: {data: data}

                            })
                                .done(function (data) {
                                    if (data.Result == 'Ok') {
                                        alert("Успешно сохранено на сервере.");
                                    } else {
                                        console.log(data)
                                        alert('Произошла ошибка на стороне сервера. Попробуйте подписаться позже.')
                                    }
                                })
                                .fail(function (data) {
                                    console.log(data)
                                    alert("Ошибка отправки запроса на сервер");
                                });
                        }

                    }
                });
            editor.ui.addButton('Inlinesave',
                {
                    label: 'Save',
                    command: 'inlinesave',
                    icon: this.path + 'images/inlinesave.png'
                });
        }
    });