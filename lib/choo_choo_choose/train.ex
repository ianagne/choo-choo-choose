defmodule ChooChooChoose.Train do
  use Ecto.Schema
  import Ecto.Changeset
  alias ChooChooChoose.Train


  schema "trains" do
    field :name, :string

    timestamps()
  end

  @doc false
  def changeset(%Train{} = train, attrs) do
    train
    |> cast(attrs, [:name])
    |> validate_required([:name])
    |> unique_constraint(:name)
  end
end
