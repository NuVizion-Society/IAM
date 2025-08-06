#!/usr/bin/env ruby
# Script to generate new Research Cast episodes

require 'date'

puts "🎙️ Research Cast Episode Generator"
puts "=================================="

print "Episode title: "
title = gets.chomp

print "Season number: "
season = gets.chomp

print "Episode number: "
episode_number = gets.chomp

print "Episode type (full/micro/chronicle): "
episode_type = gets.chomp

print "Duration (MM:SS): "
duration = gets.chomp

print "Audio URL: "
audio_url = gets.chomp

date = Date.today
filename = "_episodes/#{date}-season-#{season}-episode-#{episode_number}.md"

content = <<~EPISODE
---
layout: episode
title: "#{title}"
date: #{date}
season: #{season}
episode_number: #{episode_number}
episode_type: "#{episode_type}"
duration: "#{duration}"
audio_url: "#{audio_url}"
subtitle: ""
tags: []
resources: []
---

## Episode Overview

[Add episode description here]

## Key Points

- Point 1
- Point 2
- Point 3

## Chronicle Annals Connection

[If applicable, describe connection to Chronicle Annals]

## Next Episode Preview

[Tease next episode]

---

*Research Cast operates under NuVizion Universal Trust 508(c)(1)(A) ecclesiastical authority.*
EPISODE

File.write(filename, content)
puts "✅ Episode created: #{filename}"
puts "🔗 RSS will auto-update on next Jekyll build"
