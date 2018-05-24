
require 'pry'

def nyc_pigeon_organizer(data)
  # write your code here!
  result = {}
  
  data.each do |subject, info|
    info.each do |adj, names|
      names.each do |name|
        result[name] ||= {}
        result[name][subject] ||= []
        result[name][subject] << adj.to_s
      end
    end
  end
  
  result
end

# Note to self about ||=   (**Will definitely come in handy!)
# Example use x ||= y
#     if x is undefined, nil, false, assign y to x