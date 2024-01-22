<h1 align="center">Termux-Dev!</h1>
<p align="center">A project focused on providing a development environment from our Termux terminal using Android.</p>
<h2>Preview</h2>
<p align="center">
<img src="https://github.com/TermuxDev/termux-dev/blob/main/public/logo.jpg">
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

<h2>New command (dev)</h2>
<p align="center">
<img src="https://github.com/TermuxDev/termux-dev/blob/main/public/dev-command.jpg">
</p>

