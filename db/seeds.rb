Comment.delete_all
User.delete_all

# Create 3 users
%w(tom fran dan bill).each do |name|
  email = "#{name}@example.com"
  User.create!(email: email, password: 'pw',
               password_confirmation: 'pw')
end

tom = User.find_by_email('tom@example.com')
tom.comments.create!(content: "hello world")

fran = User.find_by_email('fran@example.com')
fran.comments.create!(content: "nice things")

dan = User.find_by_email('dan@example.com')
dan.comments.create!(content: "nice things")
