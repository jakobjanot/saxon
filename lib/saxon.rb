require "saxon/version"

require 'ffi'
require 'ffi-compiler/loader'

module Saxon
  extend FFI::Library
  ffi_lib FFI::Compiler::Loader.find('saxon')
end
