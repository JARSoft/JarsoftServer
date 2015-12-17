class UsuariosController < ApplicationController
  def index
    usuarios = Usuario.all
    j = Jbuilder.encode do |json|
      json.usuarios do

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
