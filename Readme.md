Shitty Password Manager
===

There are a few bad schemes for setting and storing passwords

* The same password everywhere (worst)
* A few passwords, different ones based on context (bad)
* A different password everywhere based on some clever derived scheme (still kinda bad)

Then there are some good schemes

* Offline password managers like [KeePassX](https://www.keepassx.org/downloads)
* Online password managers like [LastPass](http://lastpass.com/) and [1Password](https://1password.com)

Both of these encourage creating random strings (like 'f24*Soi3^#dq>') as passwords and storing them in the password manager's encrypted database. They also provide convenient browser extensions that automatically fill your password in and warn you if any of your passwords are compromised. You should probably choose one of these.

And then there are the truly great schemes such as:

* Shitty Password Manager, packed with features like
  - Stores your password in an encrypted file. Backup the file to the cloud/external drive
  - No fancy GUIs (which are a fad anyway). Accessing your passwords via the terminal increases happiness, well-being and chance of rain.
  - Installation takes 10 seconds (adding one line to your `.bash_profile` file)

---

###Installing SPM

* Download the `.sh` relevant to your platform and copy it to a convenient location (like `~/`)
* Add a line to your `.bash_profile` - `source spm-osx.sh`
* Write your passwords down in a text (say `passwords.txt`) file. One login per line with the password at the end. Encrypt with `$ openssl aes-256-cbc -in passwords.txt -out cipher` and delete `passwords.txt`.
* Set the location of `cipher` in `spm-osx.sh`

###Using SPM

* `$ pass gmail` and enter your master password. That's it.
