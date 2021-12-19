class EntrySerializer
  include JSONAPI::Serializer
  attributes :author, :body, :date

  has_many :tasks
end
