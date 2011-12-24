require 'cane'
require 'cane/version'

module Cane
  class CLI < Struct.new(:args)
    def self.run(args)
      new(args).run
    end

    def default(message, default_value)
      "%s (default: %s)" % [message, default_value]
    end

    def run
      defaults = {
        abc:       { files: abc_glob_default = 'lib/**/*.rb', max: 15 },
        style:     { files: 'lib/**/*.rb' },
        threshold: []
      }
      options = defaults.dup

      OptionParser.new do |opts|
        opts.banner  = "Usage:   cane [options]"
        opts.separator "Example: cane --no-style --abc-glob 'lib/**/*.rb'"
        opts.separator ""

        opts.on("--abc-glob GLOB",
                default("Glob to run ABC metrics over", options[:abc][:files]),
               ) do |glob|

          options[:abc] ||= defaults[:abc]
          options[:abc][:files] = glob
        end

        opts.on("--abc-max MAX",
                default("Maximum allowed ABC complexity", options[:abc][:max]),
               ) do |max|

          options[:abc] ||= defaults[:abc]
          options[:abc][:max] = max.to_i
        end

        opts.on("--no-abc", "Disable ABC checking") do |style|
          options.delete(:abc)
        end

        opts.separator ""

        opts.on("--style-glob GLOB",
                default("Glob to run style metrics over", options[:style][:files]),
               ) do |glob|

          options[:style] ||= defaults[:style]
          options[:style][:files] = glob
        end

        opts.on("--no-style", "Disable style checking") do |style|
          options.delete(:style)
        end

        opts.separator ""

        opts.on("--gte FILE,THRESHOLD", Array,
                "If FILE contains a single number, verify it is >= to THRESHOLD."
               ) do |opts|

          options[:threshold] << opts.unshift(:>=)
        end

        opts.separator ""

        opts.on_tail("-h", "--help", "Show this message") do
          puts opts
          exit
        end

        # Another typical switch to print the version.
        opts.on_tail("--version", "Show version") do
          puts Cane::VERSION
          exit
        end
      end.parse!

      Cane.run(options)
    end
  end
end
