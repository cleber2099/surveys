# frozen_string_literal: true

module Types
  class MutationType < Types::BaseObject
    field :create_survey, mutation: Mutations::CreateSurvey
  end
end
