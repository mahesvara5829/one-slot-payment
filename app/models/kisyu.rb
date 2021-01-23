class Kisyu < ActiveHash::Base
  self.data = [
    { id: 1, name: '--' },
    { id: 2, name: 'sバジ絆2' },
    { id: 3, name: 'sリゼロ' },
    { id: 4, name: 's吉宗' },
    { id: 5, name: 'sまどマギ2' },
    { id: 6, name: 'sまどマギ3' },
    { id: 7, name: 'sMyジャグ4' },
    { id: 8, name: 'sMyジャグ3' },
    { id: 9, name: 'sゴージャグ2' },
    { id: 10, name: 'sエウレカ7' },
    { id: 11, name: 's北斗天昇' },
  ]

  include ActiveHash::Associations
  has_many :payments
end