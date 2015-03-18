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



