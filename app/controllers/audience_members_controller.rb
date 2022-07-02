class AudienceMembersController < ApplicationController


    # set :default_content_type, 'application/json'
    # get route
    # get "/audience_members" do
    #     AudienceMember.all.to_json
    #   end
    get "/audience_members" do
        serialize(AudienceMember.all)
      end
    #   post/create route
    post "/audience_members/new" do
        serialize(AudienceMember.create(audience_params))
    end
    
    
    
       private
    
    def audience_params 
          allowed_params = ["name","age","household_income","city","first_time"]
          params.filter do |key,val|
            allowed_params.include?(key)
        end
    end
    
    def serialize(objects)
        objects.to_json
      end

end