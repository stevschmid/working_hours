# Unreleased

[Compare master with v1.0.1](https://github.com/intrepidd/working_hours/compare/v1.0.1...master)

# v1.0.1

* Fix bug when calling ``1.working.hour.ago`` would return a time in your system zone instead of the configured time zone. This was due to a conversion to Time that loses the timezone information. We'll now return an ``ActiveSupport::TimeWithZone``.

_10/10/2014_

# v1.0.0

* Replace config freeze by hash based caching (config is recompiled when changed), this avoids freezing unwanted objects (nil, timezones, integers, etc..)

_15/09/2014_

# v0.9.0

* First beta release

_24/08/2014_
