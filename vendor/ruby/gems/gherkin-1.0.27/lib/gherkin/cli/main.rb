begin
  require 'trollop'
rescue LoadError
  require 'rubygems'
  require 'trollop'
end
require 'gherkin/tools'

module Gherkin
  module Cli
    class Main
      def self.run(args)
        Trollop::options(args) do
          banner "Super fast gherkin parser"
          stop_on Tools::SUB_COMMANDS
        end

        cmd_name = args.shift
        die("Missing command") if cmd_name.nil?
        cmd = Tools.const_get(cmd_name.capitalize.to_sym).new(args) rescue die("Unknown command #{cmd_name}")
        begin
          cmd.run
        rescue => e
          Trollop::die(e.message)
        end
      end

      def self.die(msg)
        Trollop::die("#{msg}\nusage: gherkin COMMAND [ARGS]\nAvailable commands: #{Tools::SUB_COMMANDS.join(' ')}")
      end
    end
  end
end
