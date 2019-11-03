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

# pp data

def nyc_pigeon_organizer(data)
  hash = {}
  hash["Theo"] = {}
  hash["Theo"][:color] = []
  hash["Theo"][:gender] = []
  hash["Theo"][:lives] = []
   
  hash["Peter Jr."] = {}
  hash["Peter Jr."][:color] = []
  hash["Peter Jr."][:gender] = []
  hash["Peter Jr."][:lives] = []
   
  hash["Lucky"] = {}
  hash["Lucky"][:color] = []
  hash["Lucky"][:gender] = []
  hash["Lucky"][:lives] = []
   
  hash["Ms. K"] = {}
  hash["Ms. K"][:color] = []
  hash["Ms. K"][:gender] = []
  hash["Ms. K"][:lives] = []
   
  hash["Queenie"] = {}
  hash["Queenie"][:color] = []
  hash["Queenie"][:gender] = []
  hash["Queenie"][:lives] = []
   
  hash["Andrew"] = {}
  hash["Andrew"][:color] = []
  hash["Andrew"][:gender] = []
  hash["Andrew"][:lives] = []
   
  hash["Alex"] = {}
  hash["Alex"][:color] = []
  hash["Alex"][:gender] = []
  hash["Alex"][:lives] = []
   
  pigeon_data.each do |k0,v0|
   pigeon_data[k0].each do |k1,v1|
     pigeon_data[k0][k1].each.with_index do |name,idx|
       # p "[#{k0}][#{k1}] = #{pigeon_data[k0][k1][idx]}"
       hash[name][k0] <<  "#{k1}"
       # p "#{k0} - #{k1}"
     end
   end
  end
  hash
end
