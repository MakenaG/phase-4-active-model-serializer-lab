class AuthorSerializer < ActiveModel::Serializer
    attributes :name
    has_one :profile
    has_many :posts
  
    class ProfileSerializer < ActiveModel::Serializer
      attributes :username, :email, :bio, :avatar_url
    end
  
    class PostSerializer < ActiveModel::Serializer
      attributes :title, :short_content
      has_many :tags
  
      def short_content
        object.content[0..39] + "..."
      end
  
      class TagSerializer < ActiveModel::Serializer
        attribute :name
      end
    end
  end