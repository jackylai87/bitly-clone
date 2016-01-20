# # @values = File.open("db/urls.txt")
# b = Array.new
# values = File.open("db/urls.txt")

# values.each do |url|
# 	a = url.chomp.split(//)
# 	a.delete("(")
# 	a.delete(")")
# 	a.delete(",")
# 	b << a.join
# 	# b.each do |url|
# 	# 	Url.create(long_url: url)
# 	# end
# end


# Url.transaction do
# 	b.each do |x|
# 		c = SecureRandom.hex(3)
#   	Url.connection.execute "INSERT INTO urls (long_url, short_url, created_at, updated_at) VALUES ('#{x}','#{c}','#{Time.now}','#{Time.now}')"
# 	end
# end