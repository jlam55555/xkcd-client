# xkcd-client
A simple, fun, terminal-based viewer for xkcd images.

![Sample installation and usage](http://imgur.com/XsH0X7ql.png)

## Installation
- To install:
    ```
    sudo chmod +x install
    sudo ./install
    ```
####     Necessary dependencies:
    Make sure to have the `recode` and `wmctrl` packages installed:
    ```
    sudo apt-get install recode wmctrl
    ```

- To uninstall:
    ```
    sudo chmod +x uninstall
    sudo ./uninstall
    ```

## Usage
 - Random image: `xkcd` (default)
 - Current image: `xkcd current`
 - Comic with certain ID: `xkcd [ID]`

The title, caption, and URL should show up in the terminal, as well as an ImageMagick window. Just type any letter to close the image.

## Sources
 - Inspired by [pmxkcd](https://github.com/hakerdefo/pmxkcd).
 - Code to prevent losing focus from [StackOverflow](http://stackoverflow.com/questions/25585625/)
