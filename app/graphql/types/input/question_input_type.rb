module Types
    module Input
      class QuestionInputType < Types::BaseInputObject
        argument :content, String, required: true
        argument :input_type, String, required: true
        argument :options, [String], required: false
      end
    end
  end
  