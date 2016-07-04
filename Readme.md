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

---

###Installing SPM

1. `$ brew install moreutils` (for the `vipe` command)
2. Download the `.sh` relevant to your platform and copy it to a convenient location (like `~/`)
3. Add a line to your `.bash_profile` - `source spm-osx.sh`
4. (Optional) Customize `spm-osx.sh` by changing the encrypted file location or whether spm should clear the clipboard.
5. Open a new terminal and invoke `$ passedit`. Enter one login per line with the password at the end.

###Using SPM

* `$ pass gmail` and enter your master password. That's it, your password will be copied to your clipboard.
