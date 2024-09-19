module Types
    class SurveyType < Types::BaseObject
      field :id, ID, null: false
      field :title, String, null: false
      field :questions, [Types::QuestionType], null: true
    end
  end
  