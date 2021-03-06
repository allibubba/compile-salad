#!/usr/bin/env ruby
items = [
  "==> fault: Processing triggers for libc-bin ...",
  "==> default: ldconfig deferred processing now taking place",
  "==> default: Reading package lists...",
  "==> default: Building dependency tree...",
  "==> default: Reading state information...",
  "==> default: The following NEW packages will be installed",
  "==> default:   php5-mysql",
  "==> default: 0 upgraded, 1 newly installed, 0 to remove and 183 not upgraded.",
  "==> default: Need to get 80.8 kB of archives.",
  "==> default: After this operation, 264 kB of additional disk space will be used.",
  "==> default: Get:1 http://ppa.launchpad.net/ondrej/php5/ubuntu/ precise/main php5-mysql i386 5.5.30+dfsg-1+deb.sury.org~precise+1 [80.8 kB]"
]
colors = [ 31, 32, 33, 34, 35, 36 ]
class String
  def colorize(color_code)
    "\e[#{color_code}m#{self}\e[0m"
  end
end

(0..10000).each do |i|
  puts "#{items.sample}".send(:colorize, colors.sample)
  sleep( rand(0.3..0.8) )
end

