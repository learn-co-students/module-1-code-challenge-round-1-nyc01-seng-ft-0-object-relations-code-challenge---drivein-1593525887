require 'pry'

class DriveIn
    attr_reader :name

    def initialize(name)
        @name = name
    end

    def screens
        MovieScreen.all_screens.select do |screen_instance|
            screen_instance.drive_in == self
        end
    end
end
