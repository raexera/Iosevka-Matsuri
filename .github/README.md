<p align="center">
<img src="./assets/banner/dark.svg#gh-light-mode-only" title="Iosevka Matsuri Banner"/>
<img src="./assets/banner/light.svg#gh-dark-mode-only" title="Iosevka Matsuri Banner"/>
</p>

------------

**Iosevka Matsuri (祭り)** is a remarkable monospace font based on the **Iosevka Custom Build**,
offering a delightful and comfortable typography experience for programmers and terminal users.
With its unique rounded-like font design and visually pleasing rounded edges, it stands out as an
elegant choice for extended coding sessions. Meticulously crafted for smoothness, it ensures
optimal legibility even at small sizes commonly used in programming and terminal applications.
Iosevka Matsuri's emphasis on comfort and readability is evident through its well-defined characters,
consistent spacing, and clear representation of code. This versatile font combines aesthetics and
functionality, providing a delightful typographic experience.

# Preview

<table>
<thead>
<tr>
<th style="text-align: center" colspan="2">Regular<br></th>
</tr>
</thead>
<tbody>
<tr>
<td>
<p align="center">
<img src="./assets/preview/regular/dark.svg#gh-light-mode-only" title="Iosevka Matsuri Preview"/>
<img src="./assets/preview/regular/light.svg#gh-dark-mode-only" title="Iosevka Matsuri Preview"/>
</p>
</td>
<td >    
<p align="center">
<img src="./assets/preview/characters/regular/dark.svg#gh-light-mode-only" title="Iosevka Matsuri Preview"/>
<img src="./assets/preview/characters/regular/light.svg#gh-dark-mode-only" title="Iosevka Matsuri Preview"/>
</p>
</td>
</tr>
</tbody>
</table>

<br>

<table>
<thead>
<tr>
<th style="text-align: center" colspan="2">Italic<br></th>
</tr>
</thead>
<tbody>
<tr>
<td>
<p align="center">
<img src="./assets/preview/characters/italic/dark.svg#gh-light-mode-only" title="Iosevka Matsuri Preview (Italic)"/>
<img src="./assets/preview/characters/italic/light.svg#gh-dark-mode-only" title="Iosevka Matsuri Preview (Italic)"/>
</p>
</td>
<td >    
<p align="center">
<img src="./assets/preview/italic/dark.svg#gh-light-mode-only" title="Iosevka Matsuri Preview (Italic)"/>
<img src="./assets/preview/italic/light.svg#gh-dark-mode-only" title="Iosevka Matsuri Preview (Italic)"/>
</p>
</td>
</tr>
</tbody>
</table>

<br>

<table>
<thead>
<tr>
<th style="text-align: center">Ligatures<br></th>
</tr>
</thead>
<tbody>
<tr>
<td>
<p align="center">
<img src="./assets/preview/ligatures/dark.svg#gh-light-mode-only" title="Iosevka Matsuri Preview (Ligatures)"/>
<img src="./assets/preview/ligatures/light.svg#gh-dark-mode-only" title="Iosevka Matsuri Preview (Ligatures)"/>
</p>
</td>
</tr>
</tbody>
</table>

# Installation

<!-- Start Installation for linux -->
<details>
<summary>
Linux
</summary>

<h3>Install via package manager</h3>

<ul style="list-style-type: none;">
<li>
<details>
<summary>
NixOS
</summary>

You can use this repository as a flake of your NixOS configuration and then use the exposed package at `packages.default`, take the next code snippet as a sample of a nixos system which installs iosevka-matsuri.

```nix
{
  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs";
    iosevka-matsuri.url = "github:rxyhn/iosevka-matsuri";
  };

  outputs = { self, nixpkgs, ... } @ inputs: let
    system = "x86_64-linux";
  in {
    nixosConfigurations.sampleConfiguration = nixpkgs.lib.nixosSystem {
      inherit system;
      modules = [
        {
          fonts.packages = [
            inputs.iosevka-matsuri.packages."${system}".default
          ];
        }
      ];
    };
  };
}
```

Then one would have to use the `Iosevka Matsuri` or `Iosevka Matsuri Term` font family in your apps configuration in order to enable it

</details>
</li>
<li>
<details>
<summary>
AUR
</summary>

> ![WARNING]
> Upcoming

</details>
</li>
<li>
<details>
<summary>
APT
</summary>

> ![WARNING]
> Upcoming

</details>
</li>
<li>
<details>
<summary>
Portage
</summary>

> ![WARNING]
> Upcoming

</details>
</li>
<li>
<details>
<summary>
Manual
</summary>

In linux you can manually install the font by following the next instructions:

1. Clone the repository

```sh
git clone https://github.com/rxyhn/iosevka-matsuri.git --depth=1
cd iosevka-matsuri
```

2. Install the fonts files

```sh
mkdir -pv ~/.local/share/fonts
cp -rvf ./src/IosevkaMatsuri{,Term}/TTF/*.ttf ~/.local/share/fonts
```

> [!TIP]
> You can replace `~/.local/share/fonts` to `/usr/share/fonts` if you prefer installing them all system wide (for every user).

3. Refresh the fonts cache

```sh
fc-cache -vf
```

</details>
</li>
</ul>

<h3>
Manual Installation
</h3>

Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc at tristique eros, sagittis elementum mauris. Etiam vehicula tempor ipsum. Praesent quis nibh iaculis, accumsan est nec, eleifend lorem. Duis scelerisque leo sit amet ligula ornare convallis. In a convallis arcu, id mollis orci. Nam blandit, sapien eu suscipit feugiat, turpis lacus condimentum lectus, quis consectetur turpis massa vel lacus. Sed eget turpis volutpat, tempus nisl et, tristique elit. Integer pharetra, erat quis sodales pellentesque, massa sem sodales est, vitae cursus erat magna id risus. Sed vitae pellentesque ante, ut porttitor lorem.
</details>
<!-- End Installation for linux -->

<details>
<summary>
MacOS
</summary>

<h3>
Install via brew
</h3>

```sh
$ brew install iosevka-mayukai
```

<h3>
Manual Installation
</h3>

Download the font, clone the repo balblablablablabblablabl
then: <a href="http://support.apple.com/kb/HT2509"> Follow instructions here </a>

</details>

<details>
<summary>
Windows
</summary>

Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc at tristique eros, sagittis elementum mauris. Etiam vehicula tempor ipsum. Praesent quis nibh iaculis, accumsan est nec, eleifend lorem. Duis scelerisque leo sit amet ligula ornare convallis. In a convallis arcu, id mollis orci. Nam blandit, sapien eu suscipit feugiat, turpis lacus condimentum lectus, quis consectetur turpis massa vel lacus. Sed eget turpis volutpat, tempus nisl et, tristique elit. Integer pharetra, erat quis sodales pellentesque, massa sem sodales est, vitae cursus erat magna id risus. Sed vitae pellentesque ante, ut porttitor lorem.

</details>

# Usage

ToDo

# Humans

- [rxyhn](https://github.com/rxyhn)
- [AlphaTechnolog](https://github.com/AlphaTechnolog)
