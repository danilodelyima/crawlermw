lib = File.expand_path('lib', __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'mwcrawler/version'

Gem::Specification.new do |spec|
  spec.name          = 'mwcrawler'
  spec.version       = Mwcrawler::VERSION
  spec.authors       = ['Danilo de Lima', 'vitor pontes']
  spec.email         = ['vitormax2005@hotmail.com']

  spec.summary       = 'Gema para webscrapping do sistemas de matriculas da unb Matricula Web.'
  spec.description   = 'Essa gema provê uma api ruby para se fazer o scrapping de páginas html do sistema matricula web e retornar um conteudo que pode ser mais facilmente processado pelo programa'
  spec.homepage      = 'https://github.com/danilodelyima/mwcrawler'
  spec.license       = 'MIT'

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  if spec.respond_to?(:metadata)
    spec.metadata['allowed_push_host'] = "TODO: Set to 'http://mygemserver.com'"
  else
    raise 'RubyGems 2.0 or newer is required to protect against ' \
      'public gem pushes.'
  end

  spec.files = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler', '~> 1.16'
  spec.add_development_dependency 'coveralls'
  spec.add_development_dependency 'pry', '~> 0.11'
  spec.add_development_dependency 'rake', '~> 13.0'
  spec.add_development_dependency 'rspec', '~> 3.0'
  spec.add_development_dependency 'vcr', '~> 4.0'
  spec.add_development_dependency 'webmock', '~>  3.4'
  spec.add_development_dependency 'rubocop', '~> 0.59.2'
  spec.add_dependency 'nokogiri', '~> 1.8'
end
