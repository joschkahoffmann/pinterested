class Pin < ActiveRecord::Base
    belongs_to :user
    has_attached_file :image, :styles => {:medium => "300x300>", :thumb => "100x100>" }
    validates :description, presence: { message: "must be entered." }
    validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/

    def validation_invalid_type_error_method
        errors.add(:content_type, "You have selected an invalid content type. Please try again.")
    end
end

#validation_presence_error_method
#validation_invalid_type_error_method
#pin.errors[:presence]
#pin.errors[:content_type]
