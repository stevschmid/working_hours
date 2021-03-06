require 'active_support/time_with_zone'
require 'working_hours/module'

module WorkingHours
  module CoreExt
    module DateAndTime

      def +(other)
        if (other.is_a?(WorkingHours::Duration))
          other.since(self)
        else
          super(other)
        end
      end

      def -(other)
        if (other.is_a?(WorkingHours::Duration))
          other.until(self)
        else
          super(other)
        end
      end

      def working_days_until(other)
        WorkingHours.working_days_between(self, other)
      end

      def working_time_until(other)
        WorkingHours.working_time_between(self, other)
      end

      def working_day?
        WorkingHours.working_day?(self)
      end

      def in_working_hours?
        WorkingHours.in_working_hours?(self)
      end
    end
  end
end

class Date
  prepend WorkingHours::CoreExt::DateAndTime
end

class DateTime
  prepend WorkingHours::CoreExt::DateAndTime
end

class Time
  prepend WorkingHours::CoreExt::DateAndTime
end

class ActiveSupport::TimeWithZone
  prepend WorkingHours::CoreExt::DateAndTime
end