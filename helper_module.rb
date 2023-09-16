module Helper
    def self.show_help(custom_message)
      if ARGV.include?('--help')
        puts
        puts custom_message
        puts
        exit
      end
    end
  end