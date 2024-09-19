module Types
  class QuestionType < Types::BaseObject
    field :id, ID, null: false
    field :content, String, null: false
    field :input_type, String, null: false
    field :options, [String], null: true
    field :survey_id, ID, null: false
  end
end
