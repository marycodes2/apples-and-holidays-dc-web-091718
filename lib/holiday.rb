require 'pry'

 holiday_hash = {
  :winter => {
      :christmas => ["Lights", "Wreath"],
      :new_years => ["Party Hats"]
   },
   :summer => {
     :fourth_of_july => ["Fireworks", "BBQ"]
   },
   :fall => {
     :thanksgiving => ["Turkey"]
   },
   :spring => {
     :memorial_day => ["BBQ"]
   }
 }

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
  
  holiday_hash[:summer][:fourth_of_july][1]
end

def add_supply_to_winter_holidays(holiday_hash, supply)
  holiday_hash.each do |season, data|
    data.each do |holiday, item_list|
      if holiday == :christmas || holiday == :new_years
        item_list << supply
      end 
  end
end
  holiday_hash
end 

def add_supply_to_memorial_day(holiday_hash, supply)
    holiday_hash.each do |season, data|
    data.each do |holiday, item_list|
      if holiday == :memorial_day
        item_list << supply
      end 
  end
end
  holiday_hash
end 

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  holiday_hash[season][holiday_name] = supply_array
  holiday_hash
end

def all_winter_holiday_supplies(holiday_hash)
  winter_supplies = []
  holiday_hash.each do |season, data|
    if season == :winter
      data.each do |holiday, item_list|
        item_list.each do |item|
          winter_supplies << item
      end 
    end
  end
end 
  winter_supplies
end

def all_supplies_in_holidays(holiday_hash)
  holiday_hash.each do |season, data|
    puts "#{season.to_s.capitalize}:"
    data.each do |holiday, item_list|
      items_array = []
      item_list.each do |item|
        items_array << item
      end 
      holiday = holiday.to_s.gsub("_", " ").capitalize
      holiday = holiday.split.map(&:capitalize).join(' ')
      items_array = items_array.join(", ")
      puts "  #{holiday}: #{items_array}"
      end
    end
end
all_supplies_in_holidays(holiday_hash)

def all_holidays_with_bbq(holiday_hash)
  # return an array of holiday names (as symbols) where supply lists
  # include the string "BBQ"
  array = []
   holiday_hash.each do |season, data|
      data.each do |holiday, item_list|
        item_list.each do |item|
          if item == 'BBQ'
            array << holiday
          end 
        end 
      end
    end
    array
end

puts all_holidays_with_bbq(holiday_hash)







