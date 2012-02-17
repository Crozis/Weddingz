class AddColumnInformationToWedding < ActiveRecord::Migration
  def change
    add_column :weddings, :bride_first_name  , :string
    add_column :weddings, :bride_last_name   , :string
    add_column :weddings, :bride_phone_number, :string
    add_column :weddings, :bride_email       , :string

    add_column :weddings, :groom_first_name  , :string
    add_column :weddings, :groom_last_name   , :string
    add_column :weddings, :groom_phone_number, :string
    add_column :weddings, :groom_email       , :string
    
    add_column :weddings, :wedding_photo, :string
    add_column :weddings, :groom_photo  , :string
    add_column :weddings, :bride_photo  , :string

    add_column :weddings, :religion          , :integer
    add_column :weddings, :place_type        , :string
    add_column :weddings, :desired_atmosphere, :string
    add_column :weddings, :note              , :text

    remove_column :weddings, :name

  end
end
