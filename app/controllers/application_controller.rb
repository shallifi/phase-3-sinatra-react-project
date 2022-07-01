class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  get "/" do
    { message: "Good luck with your project!" }.to_json
  end

  # the get routes 
  get "/show_pieces" do 
    ShowPiece.all.to_json
  end

  get "/audience_members" do
    AudienceMember.all.to_json
  end

  get "/feedback" do
    Feedback.all.to_json
  end

    


end
