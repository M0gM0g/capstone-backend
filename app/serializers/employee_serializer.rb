class EmployeeSerializer < ActiveModel::Serializer
  attributes :id, :name, :goals, :salary, :reviews, :date
end
