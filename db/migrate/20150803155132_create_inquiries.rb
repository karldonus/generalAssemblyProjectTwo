class CreateInquiries < ActiveRecord::Migration
  def change
    create_table :inquiries do |t|
      t.string      :first_name
      t.string      :last_name
      t.integer     :credit_score
      t.integer     :num_pets
      t.string      :explain_pets
      t.string      :phone
      t.integer     :num_tenants
      t.string      :relation_tenants
      t.string      :qualification
      t.text        :inquiry_notes
      t.text        :admin_notes
      t.datetime    :created_at
      t.references  :rental, index: true, foreign_key: true
    end
  end
end
