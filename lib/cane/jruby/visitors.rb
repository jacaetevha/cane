Dir[File.join(File.dirname(__FILE__), '*.rb')].each do |ea|
  ea = File.basename ea, '.rb'
  unless ea == 'visitors'
    require "cane/jruby/#{ea}"
  end
end