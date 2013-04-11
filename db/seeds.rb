# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

=begin

# Seeds the Workout table.
Workout.create(:name => '', :kind => '', :duration => '', :workout_date =>'2013-03-01')
Workout.create(:name => '', :kind => '', :duration => '', :workout_date =>'2013-03-02')
Workout.create(:name => '', :kind => '', :duration => '', :workout_date =>'2013-03-03')
Workout.create(:name => '', :kind => '', :duration => '', :workout_date =>'2013-03-04')
Workout.create(:name => '', :kind => '', :duration => '', :workout_date =>'2013-03-05')
Workout.create(:name => '', :kind => '', :duration => '', :workout_date =>'2013-03-06')
Workout.create(:name => '', :kind => '', :duration => '', :workout_date =>'2013-03-07')
Workout.create(:name => '', :kind => '', :duration => '', :workout_date =>'2013-03-08')
Workout.create(:name => '', :kind => '', :duration => '', :workout_date =>'2013-03-09')
Workout.create(:name => '', :kind => '', :duration => '', :workout_date =>'2013-03-10')
Workout.create(:name => '', :kind => '', :duration => '', :workout_date =>'2013-03-11')
Workout.create(:name => '', :kind => '', :duration => '', :workout_date =>'2013-03-12')
Workout.create(:name => '', :kind => '', :duration => '', :workout_date =>'2013-03-13')
Workout.create(:name => '', :kind => '', :duration => '', :workout_date =>'2013-03-14')
Workout.create(:name => '', :kind => '', :duration => '', :workout_date =>'2013-03-15')
Workout.create(:name => '', :kind => '', :duration => '', :workout_date =>'2013-03-16')
Workout.create(:name => '', :kind => '', :duration => '', :workout_date =>'2013-03-17')
Workout.create(:name => '', :kind => '', :duration => '', :workout_date =>'2013-03-18')
Workout.create(:name => '', :kind => '', :duration => '', :workout_date =>'2013-03-19')
Workout.create(:name => '', :kind => '', :duration => '', :workout_date =>'2013-03-20')
Workout.create(:name => '', :kind => '', :duration => '', :workout_date =>'2013-03-21')
Workout.create(:name => '', :kind => '', :duration => '', :workout_date =>'2013-03-22')
Workout.create(:name => '', :kind => '', :duration => '', :workout_date =>'2013-03-23')
Workout.create(:name => '', :kind => '', :duration => '', :workout_date =>'2013-03-24')
Workout.create(:name => '', :kind => '', :duration => '', :workout_date =>'2013-03-25')
Workout.create(:name => '', :kind => '', :duration => '', :workout_date =>'2013-03-26')
Workout.create(:name => '', :kind => '', :duration => '', :workout_date =>'2013-03-27')
Workout.create(:name => '', :kind => '', :duration => '', :workout_date =>'2013-03-28')
Workout.create(:name => '', :kind => '', :duration => '', :workout_date =>'2013-03-29')
Workout.create(:name => '', :kind => '', :duration => '', :workout_date =>'2013-03-30')
Workout.create(:name => '', :kind => '', :duration => '', :workout_date =>'2013-03-31')

# Seeds the Day table.
Day.create(:exercises => '', :date =>'2013-03-01')
Day.create(:exercises => '', :date =>'2013-03-02')
Day.create(:exercises => '', :date =>'2013-03-03')
Day.create(:exercises => '', :date =>'2013-03-04')
Day.create(:exercises => '', :date =>'2013-03-05')
Day.create(:exercises => '', :date =>'2013-03-06')
Day.create(:exercises => '', :date =>'2013-03-07')
Day.create(:exercises => '', :date =>'2013-03-08')
Day.create(:exercises => '', :date =>'2013-03-09')
Day.create(:exercises => '', :date =>'2013-03-10')
Day.create(:exercises => '', :date =>'2013-03-11')
Day.create(:exercises => '', :date =>'2013-03-12')
Day.create(:exercises => '', :date =>'2013-03-13')
Day.create(:exercises => '', :date =>'2013-03-14')
Day.create(:exercises => '', :date =>'2013-03-15')
Day.create(:exercises => '', :date =>'2013-03-16')
Day.create(:exercises => '', :date =>'2013-03-17')
Day.create(:exercises => '', :date =>'2013-03-18')
Day.create(:exercises => '', :date =>'2013-03-19')
Day.create(:exercises => '', :date =>'2013-03-20')
Day.create(:exercises => '', :date =>'2013-03-21')
Day.create(:exercises => '', :date =>'2013-03-22')
Day.create(:exercises => '', :date =>'2013-03-23')
Day.create(:exercises => '', :date =>'2013-03-24')
Day.create(:exercises => '', :date =>'2013-03-25')
Day.create(:exercises => '', :date =>'2013-03-26')
Day.create(:exercises => '', :date =>'2013-03-27')
Day.create(:exercises => '', :date =>'2013-03-28')
Day.create(:exercises => '', :date =>'2013-03-29')
Day.create(:exercises => '', :date =>'2013-03-30')
Day.create(:exercises => '', :date =>'2013-03-31')

=end

# Seeds the Def table.
Def.create(ecto:"The typical ectomorph is a person who exhibits low levels of strength and size prior to training. They are usually tall and thin, with relatively low levels of body fat and small, narrow bones. Although their smaller joint structure often serves as an impediment in strength and power sports, they do tend to excel in endurance activities due to what is typically a higher-than-average proportion of slow twitch muscle fibers. Their fast metabolisms often make it difficult to gain weight of any type when following a more conventional dietary approach.",
           meso:"These are the oft-referred-to genetically gifted individuals. They tend to exhibit low levels of body fat and impressive muscular development even prior to training. Their thick, wide bone structure is more conducive to building muscle, giving them a decided advantage in strength and power sports such as football, wrestling, and Olympic lifting.",
           endo:"An Endomorph is basically someone who has trouble losing fat but gains fat and muscle easily. They are characterized by flabby and rounded muscles and have a mushy look to them. Basically Endomorph's biggest challenge is dropping the weight. Once that has been accomplished with a careful diet the fat can be kept off and the muscle will come at a steady pace.")
		   
# Seeds the User table.
puts 'ROLES'
YAML.load(ENV['ROLES']).each do |role|
Role.find_or_create_by_name({ :name => role }, :without_protection => true)
puts 'role: ' << role
end
puts 'DEFAULT USERS'
user = User.find_or_create_by_email :name => ENV['ADMIN_NAME'].dup, :email => ENV['ADMIN_EMAIL'].dup,
:password => ENV['ADMIN_PASSWORD'].dup, :password_confirmation => ENV['ADMIN_PASSWORD'].dup
puts 'user: ' << user.name
user.add_role :admin
user2 = User.find_or_create_by_email :name => 'Second User', :email => 'user2@example.com', :password => 'changeme', :password_confirmation => 'changeme'
puts 'user: ' << user2.name
user2.add_role :VIP

=begin

# Seeds the Quote table used to store for motivational quotes and sayings.
Quote.create(:content => 'Pain is temporary, pride is forever.', :author => 'Unknown')
Quote.create(:content => 'How am I to know what I can achieve if I quit?', :author => 'Jason Bishop, About Bodybuilding Reader')
Quote.create(:content => 'Make the most of yourself, for that is all there is of you.', :author => 'Ralph Waldo Emerson, Philosopher & Writer')

=end