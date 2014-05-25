namespace :db do
	desc "Fill database with admin data" 
	task populate: :environment do
    admin = User.create!(name: "Cristian Valcea",
    		email: "c.valcea@bionex.ro",
    		password: "cygnusx1",
			password_confirmation: "cygnusx1")
			admin.toggle!(:admin)
	end
end
