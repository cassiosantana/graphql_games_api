# frozen_string_literal: true

module Types
  class Game::GameType < Types::BaseObject
    field :id, ID, null: false
    field :name, String
    field :description, String
    field :launch_year, String
    field :created_at, GraphQL::Types::ISO8601DateTime, null: false
    field :updated_at, GraphQL::Types::ISO8601DateTime, null: false
  end
end
