require('json')
json = JSON.parse(open('./_data/sessions.json').read)
lines = [['時間', 'トラック', 'タイトル', '名前']]
lines << ['---', '---', '---', '---']
json.each do |session|
  next if session['hidden'] == 'true'
  if session['id'] != ''
    speaker = session['name']
    if session['twitter'] != ""
      speaker = "[#{speaker}](https://twitter.com/#{session['twitter']})"
    end
    speaker += session['company'] == '' ? '' : "@#{session['company']}"
  else
    speaker = '後日アップデート' if session['speaker'] == 'false'
  end
  track = session['track'] == '3' ? '' : session['track']
  title = ['false', ''].include?(session['speaker'])  ? session['title'] : "[#{session['title']}](https://monacaug.mobi/conference-2019/speakers/#{session['id']}/)"
  lines << [session['time'], track, title, speaker]
end


puts lines.map{|p| "|#{p.join('|')}|"}.join("\n")

puts ""
puts "## 登壇者情報"
puts ""

json.each do |session|
  next if session['hidden'] == 'true'
  next if session['id'] == ''
  next if session['speaker'] == 'false' || session['speaker'] == ''
  puts "### #{session['name']} #{session['company'] == '' ? '' : ', ' + session['company']}"
  puts ""
  puts session['profile'].gsub(/\n/, '')
  puts ""
end
