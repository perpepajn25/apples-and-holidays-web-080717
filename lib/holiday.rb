require 'pry'

def second_supply_for_fourth_of_july(holiday_hash)
  # given that holiday_hash looks like this:
  # {
  #   :winter => {
  #     :christmas => ["Lights", "Wreath"],
  #     :new_years => ["Party Hats"]
  #   },
  #   :summer => {
  #     :fourth_of_july => ["Fireworks", "BBQ"]
  #   },
  #   :fall => {
  #     :thanksgiving => ["Turkey"]
  #   },
  #   :spring => {
  #     :memorial_day => ["BBQ"]
  #   }
  # }
  # return the second element in the 4th of July array
  holiday_hash[:summer][:fourth_of_july][1]
end

def add_supply_to_winter_holidays(holiday_hash, supply)
  holiday_hash.each do |season,data|
      if season == :winter
          data.each {|holiday,array| array.push(supply)}
          end
  end
end


def add_supply_to_memorial_day(holiday_hash, supply)
    holiday_hash[:spring][:memorial_day].push(supply)
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
    holiday_hash[season][holiday_name] = supply_array

end

def all_winter_holiday_supplies(holiday_hash)
    winter_values = holiday_hash[:winter].values
    winter_values.flatten
end

def all_supplies_in_holidays(holiday_hash)
  # iterate through holiday_hash and print items such that your readout resembles:
  # Winter:
  #   Christmas: Lights, Wreath
  #   New Years: Party Hats
  # Summer:
  #   Fourth Of July: Fireworks, BBQ
  # etc.
  holiday_hash.each do |season,data|
      puts "#{season.capitalize}:"
      data.each do |holiday,supplies|
          holiday_string = holiday.to_s
          split_holiday_string = holiday_string.split("_")
          cap_holiday_string = split_holiday_string.collect {|word| word.capitalize}
          joined_holiday_string = cap_holiday_string.join(" ")
          puts "  #{joined_holiday_string}: #{supplies.join(", ")}"
      end
      end
end

def all_holidays_with_bbq(holiday_hash)
  # return an array of holiday names (as symbols) where supply lists
  # include the string "BBQ"
holiday_with_BBQ = []
holiday_hash.each do |season,data|
      data.each do |holiday,supply|
          if supply.include?("BBQ") == true
              holiday_with_BBQ.push(holiday)
            end
          end
    end
holiday_with_BBQ
end







