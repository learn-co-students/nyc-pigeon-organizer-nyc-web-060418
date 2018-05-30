require 'pry'

def nyc_pigeon_organizer(data)
  # write your code here!
  return_hash = {}
  data.each do |descriptor,descriptor_value|
    descriptor_value.each do |descriptor_specific, name_array|
      name_array.each do |name|
        return_hash[name] = {}
      end
    end
  end

  data.each do |descriptor,descriptor_value|
    descriptor_value.each do |descriptor_specific, name_array|
      name_array.each do |name|
        return_hash[name][descriptor] = []
      end
    end
  end

  data.each do |descriptor,descriptor_value|
    descriptor_value.each do |descriptor_specific, name_array|
      name_array.each do |name|
        return_hash[name][descriptor].push(descriptor_specific.to_s)
      end
    end
  end


return_hash
end
