module Types
  module Queries
    module SurveyQuery
      def self.included(base)
        base.field :surveys, [Types::SurveyType], null: false, description: "all surveys"

        base.field :survey, Types::SurveyType, null: false do
          argument :id, GraphQL::Types::ID, required: true
        end
      end

      # Resolvers
      def surveys
        Survey.all
      end

      def survey(id:)
        Survey.find(id)
      end
    end
  end
end
