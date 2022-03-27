class AllergenResource < Avo::BaseResource
  self.title = :name
  self.description = -> {
    if view == :index
      "Categorías de los alergenos a mostrar"
    else
      "Añade o modifica los alergenos que necesites"
    end
  }
  self.includes = []
  # self.search_query = ->(params:) do
  #   scope.ransack(id_eq: params[:q], m: "or").result(distinct: false)
  # end

  field :id, as: :id, name: "Id"
  field :name, as: :text, required: true, placeholder: "Nombre de la categoría"
  field :icon, as: :file, is_image: true, required: true
  # add fields here

  self.default_view_type = :grid
  grid do
    cover :icon, as: :file, link_to_resource: true
    title :name, as: :text, link_to_resource: true
  end
end
