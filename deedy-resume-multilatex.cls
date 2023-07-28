% Intro Options
\ProvidesClass{deedy-resume-multilatex}[2023/07/29 CV class]
\NeedsTeXFormat{LaTeX2e}
\DeclareOption{print}{\def\@cv@print{}}
\DeclareOption*{%
  \PassOptionsToClass{\CurrentOption}{article}
}
\ProcessOptions\relax
\LoadClass{article}

% Package Imports
\usepackage[hmargin=1.25cm, vmargin=0.75cm]{geometry}
\usepackage[hidelinks]{hyperref}

% Color definitions
\usepackage[usenames,dvipsnames]{xcolor}
\definecolor{date}{HTML}{666666}
\definecolor{primary}{HTML}{2b2b2b}
\definecolor{headings}{HTML}{6A6A6A}
\definecolor{subheadings}{HTML}{333333}

% Set main fonts MultiLatex
\newcommand{\setfontspec}{
  \usepackage{fontspec}
  \setmainfont[Color=primary, Path = fonts/lato/,BoldItalicFont=Lato-BolIta,BoldFont=Lato-Bol,ItalicFont=Lato-RegIta]{Lato-Reg}
  \setsansfont[Scale=MatchLowercase,Mapping=tex-text, Path = fonts/raleway/]{Raleway-ExtraLight}

  \newcommand{\lastupdatedFont}{ \fontspec[Path = fonts/raleway/]{Raleway-ExtraLight} }
  \newcommand{\namesectionFontOne}{ \fontspec[Path = fonts/lato/]{Lato-Lig} }
  \newcommand{\namesectionFontTwo}{ \fontspec[Path = fonts/raleway/]{Raleway-Medium} }
  \newcommand{\sectionFont}{ \fontspec[Path = fonts/lato/]{Lato-Reg} }
  \newcommand{\subsectionFont}{ \fontspec[Path = fonts/lato/]{Lato-Bol} }
  \newcommand{\descriptFont}{ \fontspec[Path = fonts/raleway/]{Raleway-Medium} }
  \newcommand{\locationFont}{ \fontspec[Path = fonts/raleway/]{Raleway-Medium} }
}
\newcommand{\setfontenc}{
  \usepackage{fontenc}
  \usepackage[lining,oldstyle]{raleway}
  \usepackage[default]{lato}

  \newcommand{\lastupdatedFont}{ \sffamily\fontseries{el} }
  \newcommand{\namesectionFontOne}{ \fontfamily{\latofamily}\fontseries{l}\selectfont }
  \newcommand{\namesectionFontTwo}{ \sffamily\fontseries{m} }
  \newcommand{\sectionFont}{ \fontfamily{\latofamily}\selectfont }
  \newcommand{\subsectionFont}{ \fontfamily{\latofamily}\fontseries{l}\selectfont }
  \newcommand{\descriptFont}{ \sffamily\fontseries{m} }
  \newcommand{\locationFont}{ \sffamily\fontseries{m} }

  \newcommand{\fontspec}{}
}
\usepackage{ifxetex,ifluatex}
\ifxetex
  \setfontspec
\else
  \ifluatex
    \setfontspec
  \else % pdflatex
    \setfontenc
  \fi
\fi

% Date command
\usepackage[absolute]{textpos}
\usepackage[UKenglish]{isodate}
\setlength{\TPHorizModule}{1mm}
\setlength{\TPVertModule}{1mm}
\newcommand{\lastupdated}{\begin{textblock}{60}(155,5)
\color{date}\lastupdatedFont\fontsize{8pt}{10pt}\selectfont
Last Updated on \today
\end{textblock}}

% Name command
\newcommand{\namesection}[2]{
\centering{
\color{primary}
\fontsize{40pt}{60pt}
\namesectionFontOne\selectfont #1
} \\[5pt]
\centering{
\color{headings}
\namesectionFontTwo\fontsize{11pt}{14pt}\selectfont #2}
\noindent\makebox[\linewidth]{\color{headings}\rule{\paperwidth}{0.4pt}}
\vspace{-15pt}
}

% Section seperators
\usepackage{titlesec}
\titlespacing{\section}{0pt}{0pt}{0pt}
\titlespacing{\subsection}{0pt}{0pt}{0pt}
\newcommand{\sectionsep}{\vspace{8pt}}

% Headings command
\titleformat{\section}{\color{headings}
\scshape\sectionFont\fontsize{16pt}{24pt}\selectfont \raggedright\uppercase}{}{0em}{}

% Subeadings command
\titleformat{\subsection}{
\color{subheadings}\subsectionFont\fontsize{12pt}{12pt}\selectfont\bfseries\uppercase}{}{0em}{}

\newcommand{\runsubsection}[1]{
\color{subheadings}\subsectionFont\fontsize{12pt}{12pt}\selectfont\bfseries\uppercase {#1} \normalfont}

% Descriptors command
\newcommand{\descript}[1]{
\color{subheadings}\raggedright\scshape\descriptFont\fontsize{11pt}{13pt}\selectfont {#1 \\} \normalfont}

% Location command
\newcommand{\location}[1]{
\color{subheadings}\raggedright\locationFont\fontsize{10pt}{12pt}\selectfont {#1\\} \normalfont}

% Bullet Lists with fewer gaps command
\newenvironment{tightemize}{
\vspace{-\topsep}\begin{itemize}\itemsep1pt \parskip0pt \parsep0pt}
{\end{itemize}\vspace{-\topsep}}

