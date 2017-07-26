defmodule Teacher.Post do
  use Teacher.Web, :model

  schema "posts" do
    field :title, :string
    field :content, :string
    field :author, :string
    has_many :comments, Teacher.Comment

    timestamps()
  end

  @doc """
  Builds a changeset based on the `struct` and `params`.
  """
  def changeset(struct, params \\ %{}) do
    struct
    |> cast(params, [:title, :content, :author])
    |> validate_required([:title, :content, :author])
  end
end
