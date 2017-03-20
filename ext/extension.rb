require 'pathname'
require 'rbplusplus'
include RbPlusPlus

def self.java_home
  Pathname.new(ENV["JAVA_HOME"] || "/usr/libexec/java_home")
end

Extension.new "extension" do |e|
  e.sources File.join(__dir__, "saxon", "saxon-api", "*.h"),
    include_paths: [java_home.join("include").to_s, java_home.join("include", "darwin").to_s]
  e.working_dir = __dir__
end
