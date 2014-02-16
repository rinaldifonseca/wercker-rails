class Post < ActiveRecord::Base
  include IdentityCache
  attr_accessible :title
end
