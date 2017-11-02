class User < ApplicationRecord
    has_attached_file :image, styles: { small: "250x250>", thumb: "250x250>" }, presence: true
    validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/
    has_secure_password
    validates :email, presence: true, uniqueness: true 

    has_one :dog
    has_many :dogs, class_name: 'Dog', foreign_key: :adoptor_id
end
