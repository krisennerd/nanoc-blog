def rss_feed(params={}) 
	require 'builder' 
	require 'time' 
	prepare_feed params 
	# Create builder 
	buffer = '' 
	xml = Builder::XmlMarkup.new(:target => buffer, :indent => 2) 
	# Build feed 
	xml.instruct! 
	xml.rss(:version => '2.0') do 
		xml.channel do 
			xml.title @item[:title] 
			xml.language 'en-us' 
			xml.lastBuildDate @item[:last][:date].rfc822 
			xml.ttl '40' 
			xml.link @site.config[:base_url] 
			xml.description 
			@item[:articles].each do |a| 
				xml.item do 
					xml.title a[:title] 
					xml.description @item[:content_proc].call(a) 
					xml.pubDate a[:created_at].rfc822 
					xml.guid url_for(a) 
					xml.link url_for(a) 
					xml.author @site.config[:author] 
					xml.comments url_for(a)+'#comments' 
					a[:tags].each do |t| 
						xml.category t 
					end 
				end 
			end
		end 
		buffer 
	end 
end