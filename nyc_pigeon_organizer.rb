# Iterates over the pigeon hash, collecting each pigeon by name and inserting it
# as the key of a new hash where each name holds the attributes for that bird.
def nyc_pigeon_organizer(data)
  pigeon_list = {}
  data.each do |attribute, category|
    category.each do |descriptor, name_array|
      name_array.each do |name|
        if !pigeon_list[name]
          pigeon_list[name] = {}
        end
          if !pigeon_list[name][attribute]
            pigeon_list[name][attribute] = []
          end
          pigeon_list[name][attribute].push descriptor.to_s
      end
    end
  end
return pigeon_list
end
