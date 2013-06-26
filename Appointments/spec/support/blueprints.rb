require 'machinist/active_record'

# Add your blueprints here.
#
# e.g.
#   Post.blueprint do
#     title { "Post #{sn}" }
#     body  { "Lorem ipsum..." }
#   end

Team.blueprint do
  name {Faker::Company.name}
end

Person.blueprint do
  name {Faker::Name.first_name}
  email {Faker::Internet.email} 
end
