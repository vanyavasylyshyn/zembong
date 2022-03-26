# frozen_string_literal: true

class Post
  include Mongoid::Document

  field :title, type: String
  field :body, type: String

  has_many :comments, dependent: :destroy

  belongs_to :user
end
