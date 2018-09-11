#require 'pry'

def get_first_name_of_season_winner(data, season)
  data[season].each do |contestant_hash| # {'name'=>'Tessa H'..,}
    if contestant_hash['status'] == 'Winner'
      return contestant_hash['name'].split.first
      #split name into 2 strings, return first name
    end
  end
end


def get_contestant_name(data, occupation)
  data.each do |season, contestant_array| # 'season ', [{..},{..},..]
    contestant_array.each do |contestant_hash| #{'name'=>'Ashley..',}
      if contestant_hash['occupation'] == occupation
        return contestant_hash['name']
      end
    end
  end
end


def count_contestants_by_hometown(data, hometown)
  count = 0
  data.each do |season, contestant_array|
    contestant_array.each do |contestant_hash|
      if contestant_hash['hometown'] == hometown #if hometown matches parameter
        count += 1 #count it
      end
    end
  end
  count
end


def get_occupation(data, hometown)
  data.each do |season, contestant_array|
    contestant_array.each do |contestant_hash|
      if contestant_hash['hometown'] == hometown
        return contestant_hash['occupation']
      end
    end
  end
end


def get_average_age_for_season(data, season)
  contestant_count = 0
  total_ages = 0
  data[season].each do |contestant_hash|
    total_ages += contestant_hash['age'].to_f #float number => perform average w/ decimals
    contestant_count += 1

  end
  (total_ages/contestant_count).round #from decimal can accurately round average
end
