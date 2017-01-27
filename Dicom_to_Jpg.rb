require 'dicom'
include DICOM

Dir.glob("./**/**/*.dcm") do |item|
	
	item1="\"".concat(item)
	item1=item1.concat("\"")
	#puts(item1)
	dcm = DObject.read(item)
	dcm_image = dcm.image
	dcm_image.normalize.write(item.concat(".jpg"))
end
