user_first_names = [  'First User', 
                'Second User', 
                'Third User', 
                'Fourth User' ]

user_first_names.each do |first_name|
  User.create(name: first_name)
end
