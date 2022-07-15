#!/bin/env ruby
# frozen_string_literal: true

require 'every_politician_scraper/scraper_data'
require 'pry'

class MemberList
  class Member
    def name
      noko.css('.views-field-title a').text.tidy
    end

    def position
      noko.css('.views-field-field-portfolio .field-content').text.tidy
    end
  end

  class Members
    def member_container
      noko.css('.view-content .views-row')
    end
  end
end

# TODO: make this a bit less repetitive

file1 = Pathname.new 'mirror/ministers-1.html'
puts EveryPoliticianScraper::FileData.new(file1).csv

file2 = Pathname.new 'mirror/ministers-2.html'
puts EveryPoliticianScraper::FileData.new(file2).csv.lines.drop(1).join

file3 = Pathname.new 'mirror/ministers-3.html'
puts EveryPoliticianScraper::FileData.new(file3).csv.lines.drop(1).join
