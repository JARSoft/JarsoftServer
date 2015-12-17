class BarsController < ApplicationController
  def index
    bars = Bar.all
    j = Jbuilder.encode do |json|
      json.bars do

        bars.each do |b|
          json.child! do
            json.name b.nombre

          end

        end
      end
    end
    render :json => j.to_json
  end
end
