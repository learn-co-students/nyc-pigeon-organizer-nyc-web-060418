require "pry"
def nyc_pigeon_organizer(data)
  new_hash = {}
  data.each do |p_data, attribute|
    attribute.each do |attribute, names|
      names.each do |name|
      if new_hash[name] == nil
        new_hash[name] = {p_data => [attribute.to_s]}
      elsif new_hash[name].has_key?(p_data)
        new_hash[name][p_data] << attribute.to_s
      else
        new_hash[name].merge!(p_data => [attribute.to_s])
        binding.pry
      end
    end
  end
end
new_hash
end
