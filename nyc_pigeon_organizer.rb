require = 'pp'
data = pigeon_data = {
  :color => {
    :purple => ["Theo", "Peter Jr.", "Lucky"],
    :grey => ["Theo", "Peter Jr.", "Ms. K"],
    :white => ["Queenie", "Andrew", "Ms. K", "Alex"],
    :brown => ["Queenie", "Alex"]
  },
  :gender => {
    :male => ["Alex", "Theo", "Peter Jr.", "Andrew", "Lucky"],
    :female => ["Queenie", "Ms. K"]
  },
  :lives => {
    "Subway" => ["Theo", "Queenie"],
    "Central Park" => ["Alex", "Ms. K", "Lucky"],
    "Library" => ["Peter Jr."],
    "City Hall" => ["Andrew"]
  }
}


def nyc_pigeon_organizer(data)
  hash = {}
  pigeon_data.each do |k,v|
  
    v.each do |key,names|      # color, gender, lives
  
      names.each.with_index do |name,idx|
        if !hash.has_key?(name)
          hash[name] = {}
        end
        if !hash[name].has_key?(k)
          hash[name][k] = []
        end 
        hash[name][k] <<  key.to_s     
      end
   end
  hash
end

