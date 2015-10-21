
var app = angular.module("app", []);


function IndexController($scope, $http) {
    $scope.mensaje = "hola mundo";

    $scope.entidadesBancarias = [
        {
            idEntidadBancaria: 1,
            nombre: "ent1",
            codigoEntidad: "568",
            fechaCreacion: "Thu Sep 24 00:00:00 CEST 2015",
            direccion: "fghj",
            cif: "gtyu"
        },
        {
            idEntidadBancaria: 2,
            nombre: "ent2",
            codigoEntidad: "987",
            fechaCreacion: "Tue Apr 14 00:00:00 CEST 2015",
            direccion: "asdfgadsg",
            cif: "asdf54"
        }
    ];

    $scope.mensaje2 = "perfesto";

    app.controller("IndexController", IndexController);


    
}
app.controller("IndexController", ['$scope', '$log', '$http', function ($scope, $log, $http) {

    $http({
        method: "GET",
        url: "findall.json.jsp"
    }).success(function (data, status, headers, config) {
        $scope.entidadesBancarias = data;
    });

}]);



