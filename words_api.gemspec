Gem::Specification.new do |s|
  s.name = 'test-words-api-client-sdk'
  s.version = '4.0.0'
  s.summary = 'Test Words API lets you retrieve information about English words, including definitions, synonyms, rhymes, pronunciation, syllables, and frequency of usage.'
  s.description = 'Words API lets you retrieve information about English words, including definitions, synonyms, rhymes, pronunciation, syllables, and frequency of usage. It also can tell you about relationships between words, for instance that “math” has categories like “algebra” and “geometry”, or that a “finger” is part of a “hand”.'
  s.authors = ['Sufyan']
  s.email = []
  s.homepage = 'https://apimatic.io'
  s.licenses = ['MIT']
  s.metadata  = {
}

  s.add_dependency('apimatic_core_interfaces', '~> 0.2.1')
  s.add_dependency('apimatic_core', '~> 0.3.9')
  s.add_dependency('apimatic_faraday_client_adapter', '~> 0.1.4')
  s.add_development_dependency('minitest', '~> 5.24.0')
  s.add_development_dependency('minitest-proveit', '~> 1.0')
  s.required_ruby_version = ['>= 2.6']
  s.files = Dir['{bin,lib,man,test,spec}/**/*', 'README*', 'LICENSE*']
  s.require_paths = ['lib']
end
