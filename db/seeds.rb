User.delete_all

# Create 3 users
%w(tom fran dan bill).each do |name|
  email = "#{name}@example.com"
  User.create!(email: email, password: 'pw',
               password_confirmation: 'pw')
end
