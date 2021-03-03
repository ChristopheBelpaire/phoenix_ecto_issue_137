defmodule Issue137.LineOrder do
    use Ecto.Schema
    alias Issue137.Order
    schema "orders" do
        belongs_to :order, Order
        field :product, :string
        field :quantity, :integer
    end
end
