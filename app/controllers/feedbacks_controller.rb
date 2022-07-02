class FeedbacksController < ApplicationController

    get "/feedbacks" do
        serialize(Feedback.all)
    end


    private

    def serialize(objects)
        objects.to_json
    end

end