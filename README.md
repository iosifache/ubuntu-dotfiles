# dotfiles 🧰

## Description

The repository contains **dotfiles** I use on my **Ubuntu 22.04 LTS** box:
- Scripts for installing and configuring utility programs, drivers, and applications
- Operating system customization, namely:
    - Dock customization
    - Desktop customization
    - Nautilus customization
    - Romanian language pack
    - Papirus icon theme
    - Background image
    - Profile image
- Alias, MIME types, and environment variables management.

## Folder Structure

### Main Folders and Files

```
.
├── applications                    Scripts for installing and customizing
|   └ ...                           installed applications
├── drivers                         Scripts for installing and customizing
|   └ ...                           drivers
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