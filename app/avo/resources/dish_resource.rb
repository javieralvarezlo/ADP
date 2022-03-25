class DishResource < Avo::BaseResource
  self.title = :name
  self.description = -> {
    if view == :index
      "Listado de todos los platos"
    else
      "Añade o modifica los platos que necesites"
    end
  }
  self.includes = []
  # self.search_query = ->(params:) do
  #   scope.ransack(id_eq: params[:q], m: "or").result(distinct: false)
  # end

  field :id, as: :id, name: "Id"
  field :name, as: :text, required: true, placeholder: "Nombre del plato"
  field :description, as: :text, placeholder: "Descripción del plato"
  field :category, as: :belongs_to, required: true, placeholder: "Categoría"
  field :price, as: :number, min: 0, required: true, placeholder: "Precio"
  field :price_type, as: :select, required: true, enum: ::Dish.price_types, display_with_value: true, placeholder: "Elige el tipo de precio."
  field :cover, as: :file, is_image: true
  # add fields here

  self.default_view_type = :grid
  grid do
    cover :cover, as: :file, link_to_resource: true
    title :name, as: :text, link_to_resource: true
    body :description, as: :text
  end
end
