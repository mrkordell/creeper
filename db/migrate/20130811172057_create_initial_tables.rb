class CreateInitialTables < ActiveRecord::Migration
	def change
		create_table :sites do |t|
			t.references :owner, null: false
			t.string :api_key, null: false
			t.timestamps
		end

		create_table :visitors do |t|
			t.references :site, null: false
			t.string :uid, null: false
			t.boolean :is_paid_source, null: false, default: false
			t.timestamps
		end

		create_table :visits do |t|
			t.references :visit, null: false
			t.string :referrer
			t.string :gclid
			t.string :utm_source
			t.string :initial_url
			t.timestamps
		end

		create_table :events do |t|
			t.references :visitor
			t.string :referrer
			t.string :current_url
			t.timestamps
		end
	end
end
