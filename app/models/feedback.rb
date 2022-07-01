class Feedback < ActiveRecord::Base
    belongs_to :audience_member
    belongs_to :show_piece
end
