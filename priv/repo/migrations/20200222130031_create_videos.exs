defmodule Synq.Repo.Migrations.CreateVideos do
  use Ecto.Migration

  def change do
    create table(:videos) do
      add :title, :string
      add :video_file, :bytea, virtual: true
      add :filename, :string
      add :content_type, :string
      add :path, :string
      add :user_id, references(:users)
    end
  end
end
