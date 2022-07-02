class FeedbacksController < ApplicationController

    get "/feedbacks" do
        serialize(Feedback.all)
    end

    # post feedback
    post "/feedbacks" do
        serialize(Feedback.create(feedback_params))
    end

    # patch feedback
    patch "/feedbacks/:id" do
        fback = Feedback.find(params[:id])
        fback.update(feedback_params)
        serialize(fback)
    end

    private

    # method defines the params
    def feedback_params 
        allowed_params = ["score","what_did_you_enjoy","what_needs_improvement","would_you_watch_again","comment","how_did_you_hear_about_the_show","created_at", "show_piece_id", "audience_member_id"]
        params.filter do |key,val|
            allowed_params.include?(key)
        end
    end

    def serialize(objects)
        objects.to_json
    end

end