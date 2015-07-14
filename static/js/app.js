// (c) 2015, Dmitriy Blokhin (sv.dblokhin@gmail.com)

'use strict'

var app = angular.module('fond', ['ngCookies']).
    controller('pageCtrl', [function(){
        var page = this

    }]).
    controller('pubsCtrl', ['$http', function($http) {
        var pubs = this

        $http.get('/ajax/pubs').success(function(data) {
            pubs.pubs = data
        })
    }]).
    controller('subsCtrl', ['$cookies', '$http', function ($cookies, $http) {
        var subs = this

        subs.addSubs = function () {
            var request = $http({
                method: "post",
                url: "/ajax/addsubs",
                data: $.param({email: subs.email}),
                headers: {'Content-Type': 'application/x-www-form-urlencoded'}
            })

            request.success(function (data, status, headers, config) {
                if (data.Result == 'Ok') {
                    $cookies.subscribed = 1
                } else {
                    console.log(data)
                    alert('Произошла ошибка на стороне сервера. Попробуйте подписаться позже.')
                }
            }).error(function (data, status, headers, config) {
                console.log('Error: ', data, status, headers, config)
                alert('Произошла ошибка при отправке запроса на сервер. Попробуйте подписаться позже.')
            })
        }

        subs.noSubs = function () {
            return !($cookies.subscribed || false)
        }

    }])



