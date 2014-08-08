class EducationSerializer < ActiveModel::Serializer
  attributes :id, :title, :institution, :description, :started_at, :done_at
end