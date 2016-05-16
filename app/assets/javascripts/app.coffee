var md_test= angular.module('md_test',['ngRoute', 'ngResource']);

md_test.factory('Conditions', ['$resource', function($resource){
  return $resource('/conditions.json',{},{
    query: { method: 'GET', isArray: true },
    create: { method: 'POST'}
  })
}])

md_test.factory('Condition',['$resource', function($resource){
  return $resource('/condition/:id.json', {},{
    show: {method: 'GET'},
    update: { method: 'PUT', params: {id: '@id'}},
    delete: { method: 'DELETE', params: {id: '@id'}}
  })
}])