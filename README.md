| ![image](https://user-images.githubusercontent.com/63486672/114242139-05487480-9950-11eb-9fa5-f91d6ab18943.png) |
| :------: |
🔮 Crystal utility to automate the capture of an 802.11 PMKID

## 📝 Installation

Install the [crystal](https://crystal-lang.org/install/) programming language.

For kali linux (debian) users, the following command will install crystal.
```bash
curl -fsSL https://crystal-lang.org/install.sh | sudo bash
```
Next, run the following commands to build main.cr and execute the setup file.
```bash
sudo crystal build --release main.cr -o whitecat
sudo chmod +x setup.sh
sudo ./setup.sh
```

The compiled binary will be moved to `/usr/bin/whitecat`  
All configuration files are located within `/usr/share/WHITECAT`

## :octocat: Usage

```bash
sudo whitecat
```

If a target AP supports PMKID authentication, attempting to connect with an improper password will force a PMKID frame to populate.
This can theoretically allow clientless WPA2 authentication, as only an attempted connection is required.

For more information, please visit the original forum explaining the attack [HERE](https://hashcat.net/forum/thread-7717.html)

## License
[MIT](https://choosealicense.com/licenses/mit/)
