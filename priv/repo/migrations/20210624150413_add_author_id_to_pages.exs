defmodule Hello.Repo.Migrations.AddAuthorIdToPages do
  use Ecto.Migration

  def change do
    alter table(:pages) do
      add :author_id, references(:authors, on_delete: :delete_all), null: false
    end
  end
end
