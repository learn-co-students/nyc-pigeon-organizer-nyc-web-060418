def nyc_pigeon_organizer(data)
  result = {}
  data.each do |label, classes|
    classes.each do |character, names|
      names.each do |name|
        if result[name] == nil
          result[name]= {}
        end 
        if result[name][label] == nil
          result[name][label] = []
          result[name][label].push(character.to_s) 
        else
          result[name][label].push(character.to_s)
        end
      end
    end
  end
  result
end
