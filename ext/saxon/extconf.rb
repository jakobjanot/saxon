require 'mkmf-rice'
require 'pathname'

LIBDIR      = RbConfig::CONFIG['libdir']
INCLUDEDIR  = RbConfig::CONFIG['includedir']

java_home = Pathname.new(ENV['JAVA_HOME'] || '/usr/libexec/java_home')

HEADER_DIRS = [
  '/opt/local/include',
  '/usr/local/include',
  INCLUDEDIR,
  File.expand_path("saxon-api", __dir__),
  File.join("rt", __dir__),
  '/usr/include',
  java_home.join("include").to_s,
  java_home.join("include/darwin").to_s
].reject { |path| !Dir.exist?(path)}

LIB_DIRS = [
  '/opt/local/lib',
  '/usr/local/lib',
  File.expand_path("lib", __dir__),
  LIBDIR, '/usr/lib'
].reject { |path| !Dir.exist?(path)}

# array of all libraries that the C extension should be compiled against
$LOCAL_LIBS << "-lc -ldl" #-lsaxonhec

#have_library 'libsaxonhec'
dir_config('saxon', HEADER_DIRS, LIB_DIRS)

create_makefile('saxon_processor')
