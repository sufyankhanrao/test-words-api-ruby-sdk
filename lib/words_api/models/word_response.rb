# words_api
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module WordsApi
  # This custom type contains the response for word API.
  class WordResponse < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # The word that is searched.
    # @return [String]
    attr_accessor :word

    # This field contains detailed information of the word.
    # @return [Array[WordDetails]]
    attr_accessor :results

    # This model contains pronunciation details of a specific word.
    # @return [Object]
    attr_accessor :pronunciation

    # The frequency of the word usage.
    # @return [Float]
    attr_accessor :frequency

    # This custom type contains the syllable details for word API.
    # @return [SyllableDetails]
    attr_accessor :syllables

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['word'] = 'word'
      @_hash['results'] = 'results'
      @_hash['pronunciation'] = 'pronunciation'
      @_hash['frequency'] = 'frequency'
      @_hash['syllables'] = 'syllables'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        pronunciation
        frequency
        syllables
      ]
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(word = nil, results = nil, pronunciation = SKIP,
                   frequency = SKIP, syllables = SKIP)
      @word = word
      @results = results
      @pronunciation = pronunciation unless pronunciation == SKIP
      @frequency = frequency unless frequency == SKIP
      @syllables = syllables unless syllables == SKIP
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      word = hash.key?('word') ? hash['word'] : nil
      # Parameter is an array, so we need to iterate through it
      results = nil
      unless hash['results'].nil?
        results = []
        hash['results'].each do |structure|
          results << (WordDetails.from_hash(structure) if structure)
        end
      end

      results = nil unless hash.key?('results')
      pronunciation = hash.key?('pronunciation') ? hash['pronunciation'] : SKIP
      frequency = hash.key?('frequency') ? hash['frequency'] : SKIP
      syllables = SyllableDetails.from_hash(hash['syllables']) if hash['syllables']

      # Create object from extracted values.
      WordResponse.new(word,
                       results,
                       pronunciation,
                       frequency,
                       syllables)
    end
  end
end
