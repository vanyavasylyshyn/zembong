# frozen_string_literal: true

class Comment
  include Mongoid::Document
  include Mongoid::Ancestry

  has_ancestry

  field :name, type: String
  field :message, type: String

  belongs_to :post, optional: true
  belongs_to :user
end
