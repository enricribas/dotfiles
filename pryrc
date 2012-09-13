# # #!/usr/bin/env ruby
# # require 'irb/completion'
# # require 'irb/ext/save-history'

irb.conf[:prompt_mode] = :simple
irb.conf[:save_history] = 1000
irb.conf[:history_file] = "#{env['home']}/.irb_history"

# # # ActiveRecord::Base.logger.level = 1 if defined? ActiveRecord::Base

class Object
  def mate(method_name)
    file, line = method(method_name).source_location
    `mate '#{file}' -l #{line}`
  end
end

class Object
  def dev
    Apartment::Database.switch 'app'
  end
end

# # # Break out of the Bundler jail
# # # from https://github.com/ConradIrwin/pry-debundle/blob/master/lib/pry-debundle.rb
if defined? Bundler
  Gem.post_reset_hooks.reject! { |hook| hook.source_location.first =~ %r{/bundler/} }
  Gem::Specification.reset
  load 'rubygems/custom_require.rb'
end

# # # provides ap method that prints things..well..awesomely
if defined? Rails
  begin
    require 'awesome_print'
  rescue LoadError
  end
end


# # # Enables prettier output of SQL calls into tables
if defined? Rails
  begin
    require 'hirb'
    Hirb.enable
  rescue LoadError
  end
end

class Object

  include Rails::ConsoleMethods if defined?(Rails)

  def vim(method_name)
    file, line = method(method_name).source_location
    fork do
      exec("vim +#{line} '#{file}'")
    end
    Process.wait
    reload! if defined?(Rails)
  end

  alias :v :vim
end
