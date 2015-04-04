define ['../module/config/module'], (configs) ->
  configs.value 'ApiValue',
    'baseUrl': 'localhost'
    'apiVersion': 'v1'
    'protocol': 'http'
    'path': ->
      "#{@protocol}://#{@baseUrl}/#{@apiVersion}"
