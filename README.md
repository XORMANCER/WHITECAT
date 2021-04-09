| ![image](https://user-images.githubusercontent.com/63486672/114242072-e1852e80-994f-11eb-94b9-b4c4c3ad7f97.png) |
| :------: |
🔮 Crystal utility to automate the capture of an 802.11 PMKID

## 📝 Installation

After installing [crystal](https://crystal-lang.org/install/), build main.cr and run the setup file

```bash
sudo crystal build --release main.cr -o whitecat
sudo chmod +x setup.sh
./setup.sh
```

The compiled binary will be moved to `/usr/bin/whitecat`  
All configuration files are located within `/usr/share/WHITECAT`

## :octocat: Usage

```bash
sudo whitecat
```
## License
[MIT](https://choosealicense.com/licenses/mit/)
