# cronotab.rb — Crono configuration file
#

Crono.perform(AcquireEventsJob).every 10.seconds
