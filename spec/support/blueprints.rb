require 'machinist/active_record'

User.blueprint do
	email {Faker::Internet.email}
	password {"Password"}
	name {Faker::Name.name}
	age {25}
	sex {"male"}

end

Party.blueprint do
	title {Faker::Company.catch_phrase}
	description {Faker::Lorem.words(50).join(" ")}
	address {Faker::Address.street_address}
	latitude {Faker::Address.latitude}
	longitude {Faker::Address.longitude}
	rating {4}
	state {Faker::Address.state}
	zipcode {Faker::Address.zip_code}
	main_image {"http://www.bobhope.com/graphics/radiolg.jpg"}
		
end


# Add your blueprints here.
#
# e.g.
#   Post.blueprint do
#     title { "Post #{sn}" }
#     body  { "Lorem ipsum..." }
#   end
