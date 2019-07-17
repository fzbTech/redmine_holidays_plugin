# Redmine Holidays Plugin
# Copyright (C) 2019 Peter Du& Toshio Takiguchi
#
# This program is free software; you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation; either version 2 of the License, or
# (at your option) any later version.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License along
# with this program; if not, write to the Free Software Foundation, Inc.,
# 51 Franklin Street, Fifth Floor, Boston, MA 02110-1301 USA.

Redmine::Plugin.register :redmine_holidays_plugin do
  name 'Dare Auto Redmine Holidays Plugin'
  author 'Peter Du'
  description 'This is a holiday calendar plugin for Redmine 3.4.x'
  version '0.1.1'
  url 'https://github.com/fzbTech/redmine_holidays_plugin'

  settings :default => {
    'region' => :us
  }, :partial => 'settings/holidays_settings'
end

require 'holidays/core_extensions/date'
class Date
  include Holidays::CoreExtensions::Date
end

Holidays.load_all
