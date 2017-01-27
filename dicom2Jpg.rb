require 'dicom'
include DICOM

dcm = DObject.read("1.3.12.2.1107.5.1.4.51914.30000006121806122618700000704.dcm")
dcm_image = dcm.image
dcm_image.normalize.write("1.3.12.2.1107.5.1.4.51914.30000006121806122618700000704.jpg")

exit
