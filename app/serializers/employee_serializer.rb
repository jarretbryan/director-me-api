class EmployeeSerializer < ActiveModel::Serializer
  attributes :id, :name, :title, :location, :office, :direct

  belongs_to :department
end
