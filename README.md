Deedy-Resume-Reversed
=========================

A **one-page**, **two asymmetric column** resume template in **XeTeX** that caters particularly to an **undergraduate Computer Science** student.
As of **v1.3**, a single template is offered that uses free, clean fonts - *Lato* (and its various variants) and *Raleway*.

It is licensed under the Apache License 2.0.

## Motivation

This fork of the [Deedy-Resume-Reversed](https://github.com/ZDTaylor/Deedy-Resume-Reversed) aimed at:
 - ability to compile the source with different latex compilers 

## Preview

### xelatex

[download pdf](./out/xelatex/deedy-resume-multilatex.pdf) <br/>

![alt tag](./out/xelatex/deedy-resume-multilatex.png)

### lualatex

<details>
   <summary>LuaLaTeX</summary>

   [download pdf](./out/lualatex/deedy-resume-multilatex.pdf) <br/>

   ![alt tag](./out/lualatex/deedy-resume-multilatex.png)

</details>

### pdflatex

<details>
   <summary>pdfLaTeX</summary>

   [download pdf](./out/pdflatex/deedy-resume-multilatex.pdf) <br/>

   ![alt tag](./out/pdflatex/deedy-resume-multilatex.png)

</details>

## Dependencies

1. Compiles with **XeLaTeX**, **LuaLaTeX** using provided fonts
   and with **pdfLaTeX** using the respective CTAN font packages.

## Availability

1. Just clone this repo or download the fonts folder and the .xtx and .cls.
<!--
2. **Overleaf**.com (formerly **WriteLatex**.com) (v1 fonts/colors changed) - [compilable online](https://www.writelatex.com/templates/deedy-resume/sqdbztjjghvz#.U2H9Kq1dV18)
-->

## Changelog
### vNext
 - Isolated fontspec for using only with XeLaTeX and LuaLaTeX compilers
 - Used fontenc for pdfLaTeX compiler
 - Extracted commands to isolate fontspec/fontenc calls
 - Unhid last updated
 - Minor adjustments and cleanup some unused (cite, bib)
 - Files and class renamed to match repo name
 - Replaced resume data with generated content for a fictional character
 - Removed unused commented out sections
### v1.3
 1. Removed MacFonts version as I have no desire to maintain it nor access to macOS
 2. Switched column ordering
 3. Changed font styles/colors for easier human readability
 4. Added, removed, and rearranged sections to reflect my own experience
 5. Hid last updated

### v1.2
 1. Added publications in place of societies.
 2. Collapsed a portion of education.
 3. Fixed a bug with alignment of overflowing long last updated dates on the top right.

### v1.1
 1. Fixed several compilation bugs with \renewcommand
 2. Got Open-source fonts (Windows/Linux support)
 3. Added Last Updated
 4. Moved Title styling into .sty
 5. Commented .sty file.

## Known Issues:
1. Overflows onto second page if any column's contents are more than the vertical limit
2. Hacky space on the first bullet point on the second column.

## License
    Original Work Copyright 2014 Debarghya Das
    Modified Work Copyright 2018 Zachary Taylor

    Licensed under the Apache License, Version 2.0 (the "License");
    you may not use this file except in compliance with the License.
    You may obtain a copy of the License at

       http://www.apache.org/licenses/LICENSE-2.0

    Unless required by applicable law or agreed to in writing, software
    distributed under the License is distributed on an "AS IS" BASIS,
    WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
    See the License for the specific language governing permissions and
    limitations under the License.
