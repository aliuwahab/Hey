defmodule Hey.Accounts.User do
  use Ecto.Schema
  import Ecto.Changeset

  alias Hey.Accounts.{Credential, User}

  schema "users" do
    field :name, :string
    field :username, :string

    has_one :crendetial, Credential

    timestamps()
  end

  @doc false
  def changeset(user, attrs) do
    user
    |> cast(attrs, [:name, :username])
    |> validate_required([:name, :username])
    |> unique_constraint(:username)
  end
end
