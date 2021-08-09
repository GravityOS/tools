[![Build Status](https://jenkins.odex.be/buildStatus/icon?job=tos-iso&style=flat-square&subject=iso+build)](https://jenkins.odex.be/job/tos-iso/)
[![Contributors][contributors-shield]][contributors-url]
[![Forks][forks-shield]][forks-url]
[![Stargazers][stars-shield]][stars-url]
[![Issues][issues-shield]][issues-url]
[![GPL License][license-shield]][license-url]
[![FOSSA Status](https://app.fossa.io/api/projects/git%2Bgithub.com%2FODEX-TOS%2Ftools.svg?type=shield)](https://app.fossa.io/projects/git%2Bgithub.com%2FODEX-TOS%2Ftools?ref=badge_shield)

<!-- PROJECT LOGO -->
<br />
<p align="center">
  <a href="https://github.com/ODEX-TOS/tools">
    <img src="https://tos.odex.be/images/logo.svg" alt="Logo" width="150" height="200">
  </a>

  <h3 align="center">TOS scripts</h3>

  <p align="center">
    This repo contains helper scripts for the TOS project
    <br />
    <a href="https://github.com/ODEX-TOS/tools"><strong>Explore the docs »</strong></a>
    <br />
    <br />
    <a href="https://tos.odex.be/download">View Demo</a>
    ·
    <a href="https://github.com/ODEX-TOS/tools/issues">Report Bug</a>
    ·
    <a href="https://github.com/ODEX-TOS/tools/issues">Request Feature</a>
    ·
    <a href="https://github.com/ODEX-TOS/tos-live">TOS</a>
  </p>
</p>

<p align="center">
   <a href="https://www.paypal.com/donate?hosted_button_id=X892LWMTDU6D6">
     <img src="https://raw.githubusercontent.com/stefan-niedermann/paypal-donate-button/master/paypal-donate-button.png" alt="Donate with PayPal" width="300" height="100"/>
   </a>
</p>

<!-- TABLE OF CONTENTS -->

## Table of Contents

- [About the Project](#about-the-project)
  - [Built With](#built-with)
- [Getting Started](#getting-started)
  - [Prerequisites](#prerequisites)
  - [Installation](#installation)
- [Usage](#usage)
- [Roadmap](#roadmap)
- [Contributing](#contributing)
- [License](#license)
- [Contact](#contact)
- [Acknowledgements](#acknowledgements)

<!-- ABOUT THE PROJECT -->

## About The Project

<!-- GETTING STARTED -->

## Getting Started

To get a local copy up and running follow these simple steps.

### Prerequisites

You need the following packages

- git
- bash
- python
- rofi
- feh
- bluez-utils
- gnupg
- networkmanager
- python-pywal
- pacman-contrib
- checkupdates-aur-tos
- imagemagick

### Installation

1. Clone the helper-scripts

```sh
git clone https://github.com/ODEX-TOS/tools.git ~/bin
```

2. Install packages

```sh
pacman -Syu bash polybar-git rofi xorg-xrandr
```

3. Get emoji file

```sh
curl https://raw.githubusercontent.com/ODEX-TOS/dotfiles/master/emoji -o ~/.config/emoji
```

Make sure this repo is inside your path environment variable
eg

```bash
export PATH=$HOME/bin:$PATH
```

<!-- USAGE EXAMPLES -->

## Usage

We have a few usefull script in this repo

#### open

A small wrapper around xdg-open to launch applications for you.

```bash
open . # open current directory in vscode
open index.html # opens html pages in the browser
open blabla.pdf # opens pdf in zatura (or other pdf viewers)
open README.md # opens in typora a readme editor
```

#### rankmirror

A simple utility that will scan the arch repo servers and will reorder them based on speed. This way your updates will happen faster

```
rankmirror
```

#### tos

This is a very large tool that is not going to be explained here.
See below for more information

### Commit hooks

Before creating commits you need to setup commit hooks.
These commit hooks perform a series of checks to make sure you didn't forget something important

This ranges from linting, license checks, correct usage of branching etc

It is not mandatory to use this feature, however it will make it more likely to be allowed.

Setting the commit hooks is as easy as executing the following commands from the project root:

```bash
ln -s "$PWD"/hooks/pre-commit .git/hooks/pre-commit
ln -s "$PWD"/hooks/commit-msg .git/hooks/commit-msg
ln -s "$PWD"/hooks/pre-push .git/hooks/pre-push

```

_For more examples, please refer to the [Documentation](https://github.com/ODEX-TOS/tools/wiki)_

<!-- ROADMAP -->

## Roadmap

See the [open issues](https://github.com/ODEX-TOS/tools/issues) for a list of proposed features (and known issues).

<!-- CONTRIBUTING -->

## Contributing

Contributions are what make the open source community such an amazing place to be learn, inspire, and create. Any contributions you make are **greatly appreciated**.

1. Fork the Project
2. Create your Feature Branch (`git checkout -b feature/AmazingFeature`)
3. Commit your Changes (`git commit -m 'Add some AmazingFeature'`)
4. Push to the Branch (`git push origin feature/AmazingFeature`)
5. Open a Pull Request

<!-- LICENSE -->

## License

Distributed under the MIT License. See `LICENSE` for more information.

<!-- CONTACT -->

[![FOSSA Status](https://app.fossa.io/api/projects/git%2Bgithub.com%2FF0xedb%2Fhelper-scripts.svg?type=large)](https://app.fossa.io/projects/git%2Bgithub.com%2FODEX-TOS%2Ftools?ref=badge_large)

## Contact

Tom Meyers - tom@odex.be

Project Link: [https://github.com/ODEX-TOS/tools](https://github.com/ODEX-TOS/tools)

<!-- ACKNOWLEDGEMENTS -->

## Acknowledgements

- [F0xedb](https://github.com/ODEX-TOS/tools)

<!-- MARKDOWN LINKS & IMAGES -->
<!-- https://www.markdownguide.org/basic-syntax/#reference-style-links -->

[contributors-shield]: https://img.shields.io/github/contributors/F0xedb/helper-scripts.svg?style=flat-square
[contributors-url]: https://github.com/F0xedb/helper-scripts/graphs/contributors
[forks-shield]: https://img.shields.io/github/forks/F0xedb/helper-scripts.svg?style=flat-square
[forks-url]: https://github.com/F0xedb/helper-scripts/network/members
[stars-shield]: https://img.shields.io/github/stars/F0xedb/helper-scripts.svg?style=flat-square
[stars-url]: https://github.com/F0xedb/helper-scripts/stargazers
[issues-shield]: https://img.shields.io/github/issues/F0xedb/helper-scripts.svg?style=flat-square
[issues-url]: https://github.com/F0xedb/helper-scripts/issues
[license-shield]: https://img.shields.io/github/license/F0xedb/helper-scripts.svg?style=flat-square
[license-url]: https://github.com/F0xedb/helper-scripts/blob/master/LICENSE.txt
[product-screenshot]: https://tos.odex.be/images/logo.svg
