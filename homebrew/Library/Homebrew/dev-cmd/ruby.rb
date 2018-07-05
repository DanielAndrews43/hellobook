#:  * `ruby` [<ruby options>]:
#:    Run a Ruby instance with Homebrew's libraries loaded.
#:    For example:
#       brew ruby -e "puts :gcc.f.deps"
#       brew ruby script.rb

module Homebrew
  module_function

  def ruby
    exec ENV["HOMEBREW_RUBY_PATH"], "-I", HOMEBREW_LOAD_PATH, "-rglobal", "-rdev-cmd/irb", *ARGV
  end
end
