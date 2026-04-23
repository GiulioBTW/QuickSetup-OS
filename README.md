# QuickSetup-OS

# 🚀 QuickSetup-OS: Universal Post-Install Script

Automatizza la configurazione iniziale del tuo PC Windows o del tuo Mac dopo una formattazione. Risparmia ore di lavoro manuale con un unico script "set-and-forget".

---

## 🪟 Windows Setup (PowerShell)
Uno script all-in-one che gestisce tweak, software e aggiornamenti con riavvio automatico.

### ✨ Caratteristiche Windows:
- **Tweak**: Menu classico Win11, Dark Mode, Estensioni file visibili, UAC disabilitato.
- **Power**: Piano prestazioni elevate e timeout monitor disabilitati.
- **Software (Chocolatey)**: Chrome, Firefox, VLC, 7-Zip, Office 2024, Adobe Reader e altri.
- **Update Loop**: Installa tutti gli aggiornamenti Windows, riavvia e riprende automaticamente finché il sistema non è aggiornato.

### 🚀 Come usarlo:
1. Scarica `Setup.ps1`.
2. Fai tasto destro sul file e seleziona **Esegui con PowerShell**.
3. Il PC si riavvierà automaticamente per completare gli aggiornamenti.

---

## 🍎 macOS Setup (Zsh/Bash)
Configura il tuo Mac con Homebrew e i migliori software in un colpo solo.

### ✨ Caratteristiche macOS:
- **Gestore Pacchetti**: Installazione automatica di Homebrew.
- **App (Cask)**: Chrome, Firefox, VLC, VS Code, Stats, iTerm2.
- **System Tweaks**: Dark Mode, visualizzazione estensioni nel Finder, barra del percorso attiva.
- **Aggiornamenti**: Esegue `softwareupdate` per patchare il sistema.

### 🚀 Come usarlo:
Apri il Terminale e incolla il comando:
```bash
/bin/bash -c "$(curl -fsSL https://githubusercontent.com)"
```

---

## ⚠️ Requisiti
- **Windows**: Connessione Internet e permessi di Amministratore (richiesti automaticamente).
- **macOS**: Connessione Internet e password di sistema (Sudo).

## 🛠️ Manutenzione
Per aggiungere o rimuovere software, modifica semplicemente la lista `$apps` nel file `.ps1` (Windows) o `apps=(...)` nel file `.sh` (macOS).

## 📜 Licenza
Distribuito sotto licenza MIT. Libero di essere usato e modificato.
