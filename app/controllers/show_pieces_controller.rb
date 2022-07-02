class ShowPiecesController < ApplicationController

    get "/show_pieces" do 
        serialize(ShowPiece.all)
    end



    private

    def serialize(objects)
      objects.to_json
    end
end
