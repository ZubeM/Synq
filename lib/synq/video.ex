defmodule Synq.Video do
    use Ecto.Schema
    import Ecto.Changeset

    schema "videos" do
      field :title, :string
      field :video_file, :any, virtual: true
      field :filename, :string
      field :content_type, :string
      field :path, :string
      belongs_to :user, Synq.User

      timestamps()
    end

    @doc false
    def changeset(video, attrs) do
      video
      |> cast(attrs, [:title, :video_file, :filename, :content_type, :path])
      |> validate_required([:title, :video_file, :filename, :content_type, :path])
    end
end