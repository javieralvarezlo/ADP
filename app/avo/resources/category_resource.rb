class CategoryResource < Avo::BaseResource
  self.title = :name
  self.description = -> {
    if view == :index
      "Categorías de los platos a mostrar"
    else
      "Añade o modifica las categorías que necesites"
    end
  }
  self.includes = []
  # self.search_query = ->(params:) do
  #   scope.ransack(id_eq: params[:q], m: "or").result(distinct: false)
  # end

  field :id, as: :id, name: "Id"
  field :name, as: :text, required: true, placeholder: "Nombre de la categoría"
  # add fields here
end
