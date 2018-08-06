class EmployeeSerializer < ActiveModel::Serializer
  attributes :id, :name, :salary, :reviews, :date
end
