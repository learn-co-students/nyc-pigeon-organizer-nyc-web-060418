require 'pry'

# pigeon_data = {
#   :color => {
#     :purple => ["Theo", "Peter Jr.", "Lucky"],
#     :grey => ["Theo", "Peter Jr.", "Ms. K"],
#     :white => ["Queenie", "Andrew", "Ms. K", "Alex"],
#     :brown => ["Queenie", "Alex"]
#   },
#   :gender => {
#     :male => ["Alex", "Theo", "Peter Jr.", "Andrew", "Lucky"],
#     :female => ["Queenie", "Ms. K"]
#   },
#   :lives => {
#     "Subway" => ["Theo", "Queenie"],
#     "Central Park" => ["Alex", "Ms. K", "Lucky"],
#     "Library" => ["Peter Jr."],
#     "City Hall" => ["Andrew"]
#   }
# }

def nyc_pigeon_organizer(data)
  pigeons_organized = {}
  data.each do |ones, attributes|
    attributes.each do |attribute, names|
      names.each do |name|
        if pigeons_organized[name] == nil
          pigeons_organized[name]= {}
        end
        if pigeons_organized[name][ones] == nil
          pigeons_organized[name][ones] = []
          pigeons_organized[name][ones] << attribute.to_s
        else
          pigeons_organized[name][ones] << attribute.to_s
        end
      end
    end
  end
  pigeons_organized
end


# tried something I did not need at the end
# 
# def all_pigeons(data)
#   all_names = []
#   data.each do |cat, atbs|
#     atbs.each do |atb, names|
#       names.each do |name|
#         if all_names.include?(name) == false
#           all_names << name
#           all_names
#         end
#       end
#
#     end
#   end
#   all_names
# end
