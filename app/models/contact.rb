class Contact < ApplicationRecord
  validates :nome, presence: true
  validates :email, presence: true
  validates :mensagem, presence: true
end
