# dotfiles 🧰

---

- [Description](#description)
- [Folder Structure](#folder-structure)
  - [Main Folders and Files](#main-folders-and-files)
  - [Application-Specific Files](#application-specific-files)
  - [Cheatsheet with Locations of Interest](#cheatsheet-with-locations-of-interest)
- [Guides](#guides)
  - [Installation](#installation)
  - [Aliases Regeneration](#aliases-regeneration)

---

## Description

The repository contains **dotfiles** I used on my **Ubuntu 22.04 LTS** box:

- Scripts for installing and configuring utility programs, drivers, and applications
- Operating system customization, namely:
    - Dock customization
    - Desktop customization
    - Nautilus customization
    - Romanian language pack
    - Fonts
    - Papirus icon theme
    - Background image
    - Profile image
- Alias, MIME types, and environment variables management.

## Folder Structure

### Main Folders and Files

```text
.
├── applications                    Scripts for installing and customizing
|   └ ...                           installed applications
├── drivers                         Scripts for installing and customizing
|   └ ...                           drivers
├── filesystem                      Scripts for setting up the filesystem
├── helpers                         Scripts defining helper functions, imported
|   └ ...                           and used in other scripts
├── ubuntu-customization            Scripts for customizing the operating
|   └ ...                           system
├── utilities                       Scripts for installing and customizing
|   └ ...                           utility programs
├── environment_variables.sh        Environment variables to be already set
|                                   when spawining
├── install.sh                      Script installing the whole environment
├── README.md                       This file
├── regenerate_aliases.sh           Script for regenerating the aliases based on
|                                   the distributed aliases.txt files
├── shell_spawning.sh               Script executed when spawning a new shell
└── sudoers.sh                      Script for manipulating sudoers
```

### Application-Specific Files

As the repository is feature-/application-centric, the majority of folders contains an `install.sh` that is automatically called when running the main `install.sh` script, from the repository root.

The applications and drivers folder can contain others, such as:

- Custom aliases in `aliases.sh`
- MIME types, that are handled by the current application, in `mimes.txt`
- Other configuration files that are symlinked into their correct location.

### Cheatsheet with Locations of Interest

- `ubuntu-customization/fonts/fonts` for custom fonts
- `ubuntu-customization/ssh-keys` for SSH keys
- `*/aliases.sh` for aliases
- `*/mime.txt` for MIME types

## Guides

### Installation

1. Clone the repository on user's desktop.
2. Edit `utilities/git/.gitconfig`.
3. Add the user to sudoers with `sudo TARGET_USER=<target_user> ./sudoers.sh add`.
4. Run the installation script with `TARGET_USER=<target_user> PROFILE_IMAGE=<profile_image_link> ./install.sh`.
5. Remove the user from sudoers with `sudo TARGET_USER=<target_user> ./sudoers.sh remove`.

### Aliases Regeneration

1. Run the regeneration script with:
    - `regenerate-aliases` if you are the target user, or
    - `sudo TARGET_USER=<target_user> ./regenerate_aliases.sh` if you regenerate the aliases for other user.
