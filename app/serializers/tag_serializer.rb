class TagSerializer < ActiveModel::Serializer
    attributes :name
    has_many :posts
  
    class PostWithAuthorSerializer < ActiveModel::Serializer # use a different class name
      attributes :title, :content
      belongs_to :author
  
      class AuthorSerializer < ActiveModel::Serializer
        attribute :name
      end
    end
  end