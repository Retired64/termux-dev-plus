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

> The "dev" command enables new features in your Termux.

For example:

```bash
dev new note
```
This command allows you to save a note.

<h2>New code editor (nvim)</h2>
<p align="center">
<img src="https://github.com/TermuxDev/termux-dev/blob/main/public/nvim-alt-h.jpg">
<img src="https://github.com/TermuxDev/termux-dev/blob/main/public/nvim-alt-i.jpg">
<img src="https://github.com/TermuxDev/termux-dev/blob/main/public/nvim-ctrl-n.jpg">
</p>

<h2>Syntax nvim</h2>

> It is advisable to install the syntax of the languages to be used, for example:

```bash
:TSInstall python bash
```

<h2>MasonInstall nvim</h2>

> You can install packages inside "nvim" using its "Mason" package installer, for example:

```bash
:MasonInstall tailwindcss-language-server eslint-lsp
```

<h2>Follow me</h2>

> If you want more information about Termux-Dev, we invite you to view the content on our social networks.

<p align="left">
  <a href="https://youtube.com/@TermuxDev00"><img alt="YouTube" src="https://img.shields.io/badge/YouTube-%23c4302b"></a>
  <a href="https://tiktok.com/@termuxdev00"><img alt="TikTok" src="https://img.shields.io/badge/TikTok-black"></a>
  <a href="https://t.me/termuxdev00"><img alt="Telegram" src="https://img.shields.io/badge/Telegram-%23229ED9"></a>
  <a href="https://www.facebook.com/termuxdev00"><img alt="Facebook" src="https://img.shields.io/badge/Facebook-%233b5998"></a>
</p>

