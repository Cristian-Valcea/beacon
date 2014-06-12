namespace :db do
	desc "Fill database with admin data" 
	task populate: :environment do
		make_users
		make_ibeacons
	end
end

def make_users
    admin = User.create!(name: "Cristian Valcea",
    		email: "c.valcea@bionex.ro",
    		password: "cygnusx1",
			password_confirmation: "cygnusx1")
			admin.toggle!(:admin)
			
	5.times do |n|
		name = Faker::Name.name
		email = "example-#{n+1}@bionex.ro"
		password = "password"
		User.create!(name: name,
			email: email,
			password: password,
			password_confirmation: password)
	end 
end


def make_ibeacons
	users = User.all(limit: 6) 
	5.times do |n|
		users.each { |user|
    		beacon_id = "BEACON-#{n+1}-" + user.name
			user.ibeacons.create!(beacon_id: beacon_id)
		} 
	end
end

