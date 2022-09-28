# dotfiles 🧰

## Description

The repository contains **dotfiles** I use on my **Ubuntu 22.04 LTS** box.

## How It Works

1. Setting up the file system
2. Updating the packages
3. Installing utilities packages (for example, `curl` and `git`)
4. Installing the drivers specific to the current host (identified by hostname)
5. Customizing the operating system by:
    - Gathering all aliases specific to the installed software, from `aliases.sh` files
    - Customizing Dock
    - Customizing Desktop
    - Customizing Nautilus
    - Adding a profile image
    - Adding custom fonts
    - Installing the Romanian language pack
    - Gathering all MIME types specific to the installed software, from `mimes.txt` files
    - Installing the Papirus icon theme
6. Optimizing some aspects of the operating system
7. Installing Desktop applications

## Folder Structure

### Main Folders and Files

```
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
├── dotfiles.conf                   Variables used when executing operations
|                                   from this repository (for example,
|                                   installation)
├── environment_variables.sh        Environment variables to be already set
|                                   when spawining
├── install.sh                      Script installing the whole environment
├── README.md                       This file
├── regenerate_aliases.sh           Script for regenerating the aliases based on
|                                   the distributed aliases.txt files
└── shell_spawning.sh               Script executed when spawning a new shell
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
2. Run the installation script with `sudo TARGET_USER=<target_user> PROFILE_IMAGE=<profile_image_link> ./install.sh`.

### Aliases Regeneration

1. Run the regeneration script with:
    - `regenerate-aliases` if you are the target user, or
    - `sudo TARGET_USER=<target_user> ./regenerate_aliases.sh` if you regenerate the aliases for other user.
