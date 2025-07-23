require "rqrcode"
require "active_support/all"



pp "Please enter 1, 2, 3, or 4."

command = gets.chomp

if command == "1" 
pp "Provide the URL that you would like to transform into a QR code."
  url = gets.chomp
end


# Use the RQRCode::QRCode class to encode some text
qrcode = RQRCode::QRCode.new(url)

# code for joining a wifi network
#qrcode = RQRCode::QRCode.new("WIFI:T:WPA;S:My wifi network;P:supersecretpassword;;")

# Use the .as_png method to create a 500 pixels by 500 pixels image
png = qrcode.as_png({ :size => 500 })

# Write the image data to a file
IO.binwrite("sometext.png", png.to_s)


