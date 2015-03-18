# CTF Problem 2

### Problem Area

Web Exploitation

### Skill Level

Beginner/Intermediate

### Necessary Knowledge/Skills

File signatures, remote code injection

### Problem Setup

The premise of the site will be similar to Imgur allowing people to share images online by uploading them to the server. The main page will contain an upload form for uploading images, as well as a list of "popular" images that have already been uploaded. This list will include a image that contains the flag. However, all the images in the list are very low-resolution so it will be impossible to determine the flag from the thumbnail. Each image has a link that will open up the full resolution picture. But when attempting to open the flag image, there will be a permissions error. 

The upload form will accept a file and checks that it has a jpg/jpeg file extension as well as a file signature that matches the jpeg file signature. If the file passes the checks, it will then be uploaded to the server and a public link will be generated allowing the user to view their uploaded image.

### Walkthrough

In order to get a file to pass the checker, it will need to have a extension of .jpg or .jpeg. Also it will need `ÿØÿà` at the beginning of the file because of the file signature checker. Because of the way the server renderes the jpeg image, it will be possible to place PHP code within the file that gets executed when opening the file for viewing.

Once a file containing php has been created, the attacker will need to add PHP code to include the other image into the uploaded file. This will allow the attacker to view the image file.



