class CompanySerializer < ActiveModel::Serializer
  attributes :id, :name, :url, :avatar, :description

  has_many :questions
  
end
