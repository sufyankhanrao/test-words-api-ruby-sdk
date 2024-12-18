# words_api
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module WordsApi
  # This custom type contains response for definitions endpoint.
  class DefinitionsResponse < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # The word that is searched.
    # @return [String]
    attr_accessor :word

    # The definitions of the searched word.
    # @return [Array[String]]
    attr_accessor :definition

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['word'] = 'word'
      @_hash['definition'] = 'definition'
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

    def initialize(word = nil, definition = nil)
      @word = word
      @definition = definition
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      word = hash.key?('word') ? hash['word'] : nil
      definition = hash.key?('definition') ? hash['definition'] : nil

      # Create object from extracted values.
      DefinitionsResponse.new(word,
                              definition)
    end
  end
end
