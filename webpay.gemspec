$:.unshift(File.join(File.dirname(__FILE__), 'lib'))

require 'webpay/version'

spec = Gem::Specification.new do |s|
  s.name = 'webpay'
  s.version = Webpay::VERSION
  s.summary = 'Ruby bindings for the Webpay API'
  s.description = 'WebPayは独自gemの開発を停止し、stripeのgemをそのまま利用できる形に最適化しました。WebPay does not maintain this gem anymore. Please use stripe gem instead.'
  s.authors = ['Ross Boucher', 'Greg Brockman', 'Kei Kubo']
  s.email = ['boucher@stripe.com', 'gdb@stripe.com', 'keikubo@fluxflex.com']
  s.homepage = 'https://webpay.jp/'
  s.executables = 'webpay-console'
  s.require_paths = %w{lib}

  s.add_dependency('rest-client', '~> 1.4')
  s.add_dependency('multi_json', '~> 1.1')

  s.add_development_dependency('mocha')
  s.add_development_dependency('shoulda')
  s.add_development_dependency('test-unit')
  s.add_development_dependency('rake')

  s.files = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- test/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ['lib']
end
