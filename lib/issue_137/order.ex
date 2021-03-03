defmodule Issue137.Order do
    use Ecto.Schema
    import Ecto.Changeset
    import Ecto.Query

    schema "orders" do
        field :number, :string
        has_many :line_orders, FabricationOrder
    end

    def changeset(order, attrs) do
        order
        |> cast(attrs, [:number])
    end
end
