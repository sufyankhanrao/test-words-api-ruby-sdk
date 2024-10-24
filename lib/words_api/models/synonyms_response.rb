# words_api
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module WordsApi
  # This custom type contains response for synonyms endpoint.
  class SynonymsResponse < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # The word that is searched.
    # @return [String]
    attr_accessor :word

    # The synonyms of the searched word.
    # @return [Array[String]]
    attr_accessor :synonyms

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['word'] = 'word'
      @_hash['synonyms'] = 'synonyms'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      []
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(word = nil, synonyms = nil)
      @word = word
      @synonyms = synonyms
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      word = hash.key?('word') ? hash['word'] : nil
      synonyms = hash.key?('synonyms') ? hash['synonyms'] : nil

      # Create object from extracted values.
      SynonymsResponse.new(word,
                           synonyms)
    end
  end
end
