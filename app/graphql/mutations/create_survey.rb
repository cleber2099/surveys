module Mutations
    class CreateSurvey < BaseMutation
      argument :title, String, required: true
      argument :questions, [Types::Input::QuestionInputType], required: true
  
      field :survey, Types::SurveyType, null: false
      field :errors, [String], null: true
  
      def resolve(title:, questions:)
        survey = Survey.new(title: title)
        
        questions.each do |question_input|
          survey.questions.build(
            content: question_input[:content],
            input_type: question_input[:input_type],
            options: question_input[:options]
          )
        end
        
        if survey.save
          { survey: survey }
        else
          { errors: survey.errors.full_messages }
        end
      end
    end
  end
  