# Script for populating the database. You can run it as:
#
#     mix run priv/repo/seeds.exs
#
# Inside the script, you can read and write to any of your
# repositories directly:
#
#     ChooChooChoose.Repo.insert!(%ChooChooChoose.SomeSchema{})
#
# We recommend using the bang functions (`insert!`, `update!`
# and so on) as they will fail if something goes wrong.

alias ChooChooChoose.Repo
alias ChooChooChoose.Train

trains = File.stream!("trains.csv") |>
  CSV.decode

for train <- trains do
  {_, [name]} = train
  changeset = Train.changeset(%Train{}, %{name: name})
  Repo.insert!(changeset)
end

