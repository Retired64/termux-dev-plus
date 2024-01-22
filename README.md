<h1 align="center">Termux-Dev!</h1>
<p align="center">Learning Web Development on Android with Termux</p>
<h2>Preview</h2>
<p align="center">
<img src="https://github.com/TermuxDev/TermuxDev/blob/main/img/cover.jpg">
</p>
<h2>Installation</h2>
Update termux repositories.

```bash
yes|pkg update && yes|pkg upgrade
```

Grant storage permissions.
```bash
termux-setup-storage
```

Install the git package.
```bash
yes|pkg install git
```

Clone the repository.
```bash
git clone https://github.com/TermuxDev/termux-dev.git
```

Run the installer.
```bash
cd termux-dev && bash install.sh
```

Continue with the installation.
```bash
bash next.sh
```

> Restart your Termux application to view the changes.
