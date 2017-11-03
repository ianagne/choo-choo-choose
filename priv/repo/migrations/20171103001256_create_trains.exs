defmodule ChooChooChoose.Repo.Migrations.CreateTrains do
  use Ecto.Migration

  def change do
    create table(:trains) do
      add :name, :string

      timestamps()
    end

    create unique_index(:trains, [:name])
  end
end
