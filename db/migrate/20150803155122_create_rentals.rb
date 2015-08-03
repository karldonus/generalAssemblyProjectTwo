class CreateRentals < ActiveRecord::Migration
  def change
    create_table :rentals do |t|
      t.string    :agent
      t.string    :property_name
      t.string    :address
      t.string    :city
      t.string    :state
      t.integer   :zipcode
      t.string    :monthly_rent
      t.integer   :bed_num
      t.integer   :bath_num
      t.string    :availability_date
      t.datetime  :created_at
      t.string    :client_name
      t.string    :client_phone
      t.string    :client_email
      t.text      :listing_notes
      t.text      :admin_notes
    end
  end
end
