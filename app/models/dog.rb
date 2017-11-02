class Dog < ApplicationRecord
    has_attached_file :image, styles: { :thumb => "100x100", :small  => "150x150", :medium => "200x200" }, presence: true
    validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/

    scope :adopted, -> {where.not(adoptor_id: nil)}
    scope :not_adopted, -> {where(adoptor_id: nil)}

    belongs_to :user
    belongs_to :adoptor, class_name: 'User', optional: true
end
