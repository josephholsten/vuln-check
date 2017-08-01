lib     = File.expand_path("../lib/vuln_check.rb", __FILE__)
version = File.read(lib)[/^\s*VERSION\s*=\s*(['"])(\d\.\d\.\d)\1/, 2]

Gem::Specification.new do |spec|
  spec.name = "vuln_check"
  spec.author = "Joseph Anthony Pasquale Holsten"
  spec.email = "joseph@josephholsten.com"
  spec.version = version
  spec.summary = "Check for new vulnerabilities"

  spec.files = `git ls-files -z`.split("\x0")
  spec.executables = spec.files.grep(/^bin/) { |f| File.basename(f) }
  spec.test_files = spec.files.grep(/^test\/.*test_.*\.rb$/)
  spec.add_runtime_dependency 'nokogiri'
  spec.add_development_dependency 'nokogiri'
end
