angular.module 'Transorder'
.value 'ApiValue',
  'baseUrl': 'localhost'
  'apiVersion': 'v1'
  'protocol': 'http'
  'path': () ->
    "#{this.protocol}://#{this.baseUrl}/#{this.apiVersion}"
