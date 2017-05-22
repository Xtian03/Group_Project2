class Booking < ApplicationRecord
  #belongs_to: owner, class_name: 'User', foreign_key: 'rater_id'
  #belongs_to: sitter, class_name: 'User', foreign_key: 'rater_id'

end


# class User < ApplicationRecord
# has_many :ratings
# end
#
# class Rating < ApplicationRecord
# belongs_to :rater, class_name: 'User', foreign_key: 'rater_id'
# belongs_to :rated, class_name: 'User', foreign_key: 'rated_id'
# end


# t.datetime :start_time
# t.datetime :end_time
# t.integer :service_id
# t.integer :owner_id
# t.integer :sitter_id
