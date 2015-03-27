angular.module 'Transorder'
.value 'Navigation',
  left: [
    {name: 'Product', url: '#', child: {name: 'Buy', url: '#'}}
    {name: 'About', url: '#'}
  ]
  right: [
    {name: 'Login', url: '#/login'}
    {name: 'Register', url: '#'}
  ]
