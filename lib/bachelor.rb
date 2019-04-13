require 'pry'

def get_first_name_of_season_winner(data, season)
  winner = nil
  data[season].each do |contestant_info|
    if contestant_info["status"] == "Winner"
    winner = contestant_info["name"].split.first
    end
  end
  winner
end

def get_contestant_name(data, occupation)
  name = nil
  data.each do |season, array|
    array.each do |contestant_info|
      if contestant_info["occupation"] == occupation
        name = contestant_info["name"]
      end
    end
  end
  name
end

def count_contestants_by_hometown(data, hometown)
  counter = 0
  data.each do |season, array|
    array.each do |contestant_info|
      if contestant_info["hometown"] == hometown
        counter += 1
      end
    end
  end
  counter
end

def get_occupation(data, hometown)
  first_person = nil
  data.each do |season, array|
    array.each do |contestant_info|
      if contestant_info["hometown"] == hometown
        first_person = contestant_info["occupation"]
        break
      end
    end
  end
  first_person
end

def get_average_age_for_season(data, season)
  average_age = nil
  total_age = 0
  counter = 0
  data[season].each do |contestant_info|
        total_age += contestant_info["age"].to_i
        counter += 1
      end
  average_age = (total_age.to_f / counter).round
  average_age
end
