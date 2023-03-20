class PostSerializer < ActiveModel::Serializer
  attributes :title, :content
  belongs_to :author
  has_many :tags

  class AuthorSerializer < ActiveModel::Serializer
    attribute :name
  end

  class TagSerializer < ActiveModel::Serializer
    attribute :name
  end
end