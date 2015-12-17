class TapasController < ApplicationController
  def index
    tapas = Tapa.all
    j = Jbuilder.encode do |json|
      json.tapas do

        tapas.each do |b|
          json.child! do
            json.name b.nombre
            json.desc b.descripcion
          end
        end

      end
    end
    render :json => j.to_json
  end
end
