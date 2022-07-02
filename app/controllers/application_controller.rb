class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  get "/" do
    { message: "INSTANT Feedback app!" }.to_json
  end


 


   # the create for   feedback
   







end
