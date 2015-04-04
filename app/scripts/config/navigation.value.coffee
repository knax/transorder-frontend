angular.module 'Transorder'
.value 'NavigationValue',
  loggedin:
    user: [
      {
        name: 'Pemesanan'
        state: 'app.content.product.list'
        child: false
      }
      {
        name: 'Pengiriman'
        child: [
          {
            name: 'Pengiriman'
            state: 'app.content.shipment.select'
          }
          {
            name: 'Status Pengiriman'
            state: 'app.content.shipment.status'
          }
        ]
      }
      {
        name: 'Pembayaran'
        child: [
          {
            name: 'Pembayaran'
            state: 'app.content.payment.form'
          }
          {
            name: 'Status Pembayaran'
            state: 'app.content.payment.status'
          }
        ]
      }
      {
        name: 'Kontak'
        state: 'app.content.contact.list'
        child: false
      }
    ]
    admin: [
      {name: 'Product Admin', state: 'admin.product'}
      {name: 'User List', state: 'admin.user'}
    ]
    right: [
      {name: 'Pemberitahuan', state: 'app.content.notification.list'}
      {name: 'Pengaturan', state: 'app.content.setting.form'}
      {name: 'Keluar', state: 'app.content.default'}
    ]


