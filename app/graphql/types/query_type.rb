module Types
  class QueryType < Types::BaseObject
    # Add `node(id: ID!) and `nodes(ids: [ID!]!)`
    include GraphQL::Types::Relay::HasNodeField
    include GraphQL::Types::Relay::HasNodesField

    # Add root-level fields here.
    # They will be entry points for queries on your schema.

    field :game, Types::Game::GameType, null: false, description: "Fetch a game by ID" do
      argument :id, ID, required: true
    end

    def game(id:)
      ::Game.find(id)
    end

    field :games, [Types::Game::GameType], null: false, description: "Fetch all games"

    def games
      ::Game.all
    end
  end
end
