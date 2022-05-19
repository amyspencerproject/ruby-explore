my_hash = {
    "thing1" => "wordle",
    "thing2" => "podcasts",
    "thing3" => "weather",
    "thing4" => "messages",
    "thing5" => "calls"
}

phone_hash = {
    :key1 => "wordle",
    :key2 => "podcasts",
    :key3 => "weather"
}

more_hash = {
    key1: "messages",
    key2: "calss",
    key3: "photos"
}

# p my_hash
# p phone_hash
# p more_hash

class Dev 
    attr_accessor :name, :language
    def initialize(hash)
      self.name = hash[:name]
      self.language = hash[:language]
    end
end
p matz = Dev.new(name: 'Matz', language: 'Ruby')
