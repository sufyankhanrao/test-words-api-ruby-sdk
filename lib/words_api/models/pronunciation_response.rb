# words_api
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module WordsApi
  # This custom type contains response for pronunciation endpoint.
  class PronunciationResponse < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # The word that is searched.
    # @return [String]
    attr_accessor :word

    # This model contains pronunciation details of a specific word.
    # @return [PronunciationDetails]
    attr_accessor :pronunciation

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['word'] = 'word'
      @_hash['pronunciation'] = 'pronunciation'
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

    def initialize(word = nil, pronunciation = nil)
      @word = word
      @pronunciation = pronunciation
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      word = hash.key?('word') ? hash['word'] : nil
      pronunciation = PronunciationDetails.from_hash(hash['pronunciation']) if
        hash['pronunciation']

      # Create object from extracted values.
      PronunciationResponse.new(word,
                                pronunciation)
    end
  end
end
