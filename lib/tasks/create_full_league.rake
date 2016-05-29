task :create_users do
  require File.expand_path('../../../config/environment', __FILE__)

  user_names = ["Kate D.", "Chris M.", "Scott T."]

  user_names.each do |name|
    User.create(name: name)
  end
end

task :create_contestants do
  require File.expand_path('../../../config/environment', __FILE__)

  contestant_info = [
    ["Alex", 25, "U.S. Marine"],
    ["Ali", 27, "Bartender"],
    ["Brandon", 28, "Hipster"],
    ["Chad", 28, "Luxury Real Estate Agent"],
    ["Chase", 27, "Medical Sales Rep"],
    ["Christian", 26, "Telecom Consultant"],
    ["Coley", 27, "Real Estate Contestant"],
    ["Derek", 29, "Commercial Banker"],
    ["Daniel", 31, "Male Model"],
    ["Evan", 33, "Erectile Dysfuntion Expert"],
    ["Grant", 27, "Firefighter"],
    ["Jake", 26, "Landscape Artist"],
    ["James F.", 34, "Boxing Club Owner"],
    ["James S.", 27, "Bachelor Superfan"],
    ["James Taylor", 29, "Singer-Songwriter"],
    ["Jonathan", 29, "Technical Sales Rep"],
    ["Jordan", 27, "Aaron Rogers' Brother"],
    ["Luke", 31, "War Veteran"],
    ["Nick B.", 33, "Electrical Engineer"],
    ["Nick S.", 26, "Software Salesman"],
    ["Peter", 26, "Staffing Agency Manager"],
    ["Robby", 27, "Former Competitive Swimmer"],
    ["Sal", 28, "Operations Manager"],
    ["Vinny", 28, "Barber"],
    ["Wells", 31, "Radio DJ"],
    ["Will", 26, "Civil Engineer"]
  ]

  contestant_info.each do |contestant|
    Contestant.create(name: contestant[0], age: contestant[1], occupation: contestant[2])
  end
end

task :create_league_and_teams do
  require File.expand_path('../../../config/environment', __FILE__)

  league = League.create(name: "Rocksbox & Friends")

  User.first(10).each do |user|
    user.join_league league
  end

  team_info = [
    ["Kate D.", ["Chase", "Jordan", "Grant", "Wells", "James S."]],
    ["Chris M.", ["Chase", "Jake", "Chad", "Wells", "Christian"]],
    ["Scott T.", ["Robby", "Jordan", "Evan", "Coley", "James S."]]
  ]

  team_info.each do |row|
    user = User.find_by_name(row[0])
    team = user.create_team(league)

    contestant_names = row[1]
    contestant_names.each do |name|
      contestant = Contestant.find_by_name(name)
      team.add_contestant contestant
    end
  end

end
