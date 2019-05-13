def nyc_pigeon_organizer(data)
  # write your code here!
  new_hash = {}
  #go through properties |property, values|
  data.each do |key, values|
    #go through attributes |attribute, names|
    values.each do |value, names|
      #go through names |key|
      names.each do |name|

        if !new_hash.has_key?(name)
          new_hash[name] = {}
        end

        if !new_hash[name].has_key?(key)
          new_hash[name][key] = []
        end

        if !new_hash[name][key].include?(value)
          new_hash[name][key] << value.to_s
        end


      end

    end

  end
  new_hash
end




#if name is nil or false set name to be the value of the empty array (new_hash). sets the variable if the variable is false or Nil
#new_hash[name] ||= {}                      #new_hash[name] ||= {} means new_hash[name] || new_hash[name] = {}
#new_hash[name][key] || = {}
#new_hash[name][key] << value.to_s
#if key == name
#  new_hash[key] ={
#    :color
#  }
