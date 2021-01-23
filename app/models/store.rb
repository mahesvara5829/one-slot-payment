class Store < ActiveHash::Base
  self.data = [
    { id: 1, name: '--' },
    { id: 2, name: '123N' },
    { id: 3, name: 'マルハン梅田' },
    { id: 4, name: '梅田CLUB-D' },
    { id: 5, name: '大東洋梅田店' },
    { id: 6, name: '大東洋本店' },
    { id: 7, name: '123難波' },
    { id: 8, name: '楽園なんば' },
    { id: 9, name: 'テキサス門真' }
  ]

  include ActiveHash::Associations
  has_many :payments
end