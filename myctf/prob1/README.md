# CTF Problem 1

### Problem Area

Web Exploitation

### Skill Level

Beginner / Intermediate?

### Necessary Knowledge/Skills

SQL injection, file signatures, file inclusion 

### Problem Setup

A web application will need to be hosted, which will represent a company web site. There is a flag located on the website server which will need to be retrieved.

#### Stage One

The main page for an unauthenticated user will be a login and registration form. 

Upon submitting the registration form, the application would first check if an existing user with the same username exists. If that is the case, a message will be returned alerting the user of this. Otherwise, a message will be returned that the website is closed for new registrations. 

### Stage Two

The user will now have successfully authenticated as the admin of the website and will be able to login. After logging in, he will have two additional pages available to him.

The first page will be a newsfeed which contains post from the administrator account for employees to read. Each news story would be represented by a text file, which unfortunately uses PHP to include on the page. The source code for the first page may need to be provided in order for the attacker to understand that the uploaded files are being included using PHP. 

The second page would allow the user to submit news story in ~~text format~~ (Actually a text file will not work because there is no file signature),  to be uploaded to the server. The application will check both the extension and the file signature to confirm that it is a ~~text file~~. If the file type does not match, it will be rejected.

If the user is able to get a PHP file to pass all the file type checks, they should be able to inject PHP code into the page allowing them to perform directory traversal and find the flag.

### Walkthrough

#### Stage One

The registration form will be vulnerable to a SQL injection attack when it checks whether a username has already been registered. 

`SELECT * FROM users WHERE username = '[username]'`

This will allow the user to figure out there is a username `admin` within the users database.

Since the registration form will give different messages depending on whether there are any results from a SQL query, this acts as a password oracle for the attacker. The attacker can first guess the length of the password using a SQL function. For example:

`SELECT * FROM users WHERE username = 'admin' AND char_length(password) = 16 AND 'a'='a'`

Finally, to get the password, the attacker will use the SQL LIKE operator to discover the actual password of the admin account. Since the LIKE operator allows for the wildcard character, the attacker can guess the password, one character at a time.

`SELECT * FROM users WHERE username = 'admin' AND password LIKE 'x3d%'`

#### Stage Two

The attacker will need to make a file which can bypass the checks that are implemented. Since the actual format has not beed decided yet, an example would be if the application only accepted .jpeg files. If this was the case the uploaded file would need to have the extension .jpeg as well as the following file signature at the top of the file:

`ÿØÿà` or in hex `FF D8 FF E0`

Finally, the attacker could make use of any PHP function which would allow him to find the directory where the flag is located. Then he would simply read the file and echo it out.

### Other possibilities

I would like to instead of having the SQL injection vulnerability to be one of the form's input field, rather it would be a vulnerability within one of the headers of the POST request.
