class AllMealSerializer < ActiveModel::Serializer
  attributes :id, :meal, :breakfast, :lunch, :dinner
  has_one :user_id
end
