def nyc_pigeon_organizer(data)
  new_hash = {}
  data.each do |attribute, attribute_hash|
    attribute_hash.each do |aspect, names|
      names.each do |name|
        if !new_hash.key?(name)
          new_hash[name] = {}
        end
        if !new_hash[name][attribute].is_a?(Array)
          new_hash[name][attribute] = []
          new_hash[name][attribute] << aspect.to_s
        else
          new_hash[name][attribute] << aspect.to_s
        end
      end
    end
  end
  new_hash
end
