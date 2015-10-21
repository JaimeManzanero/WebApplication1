

var app = angular.module("app", []);

function getParameterByName( name ){
    var regexS = "[\\?&]"+name+"=([^&#]*)", 
    regex = new RegExp( regexS ),
    results = regex.exec( window.location.search );
    if( results == null ){
        return "";
    } else{
        return decodeURIComponent(results[1].replace(/\+/g, " "));
    }
}
var idEntidadBancaria = getParameterByName('idEntidadBancaria');

app.controller("IndexController", ['$scope', '$log', '$http', function ($scope, $log, $http) {

    $http({
        method: "GET",
        params:{
            idEntidadBancaria: idEntidadBancaria
        },
        url: "get.json.jsp"
    }).success(function (data, status, headers, config) {
        $scope.entidadBancaria = data;
    });

}]);