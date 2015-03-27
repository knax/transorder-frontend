angular.module 'Transorder'
.value 'Navigation',
  loggedin:
    user: [
      {name: 'Product', state: 'product'}
      {name: 'Order', state: 'order'}
      {name: 'Contact', state: 'contact'}
    ]
    admin: [
      {name: 'Product Admin', 'admin.product'}
      {name: 'User List', 'admin.user'}
    ]


