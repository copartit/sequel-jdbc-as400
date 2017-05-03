require File.expand_path('../lib/sequel/jdbc/as400/version', __FILE__)

Gem::Specification.new do |s|
  s.name = 'sequel-jdbc-as400'
  s.version = Sequel::JDBC::AS400::VERSION
  s.platform = Gem::Platform::RUBY
  s.summary = 'The Database Toolkit for Ruby: JDBC AS400 driver'
  s.description = s.summary
  s.author = 'Jeremy Evans and contributors'
  s.homepage = 'https://github.com/ecraft/sequel-jdbc-as400'
  s.license = 'MIT'
  s.required_ruby_version = '>= 1.8.7'
  s.files = %w[MIT-LICENSE CHANGELOG README.rdoc Rakefile] + Dir['doc/**/*.{rdoc,txt}'] + Dir['{spec,lib}/**/*.{rb,RB}']
  s.require_path = 'lib'
  s.bindir = 'bin'

  s.add_runtime_dependency 'jdbc-jt400'
  s.add_runtime_dependency 'sequel', '~> 4.45'
  s.add_development_dependency 'activemodel'
  s.add_development_dependency 'nokogiri'
  s.add_development_dependency 'rspec'
  s.add_development_dependency 'rubocop'
  s.add_development_dependency 'tzinfo'
  s.add_development_dependency 'rake'
end