%%%%%%%%%%%%%%%%%
% This is an sample CV template created using altacv.cls
% (v1.1.2, 1 February 2017) written by LianTze Lim (liantze@gmail.com). Now compiles with pdfLaTeX, XeLaTeX and LuaLaTeX.
% 
%% It may be distributed and/or modified under the
%% conditions of the LaTeX Project Public License, either version 1.3
%% of this license or (at your option) any later version.
%% The latest version of this license is in
%%    http://www.latex-project.org/lppl.txt
%% and version 1.3 or later is part of all distributions of LaTeX
%% version 2003/12/01 or later.
%%%%%%%%%%%%%%%%

%% If you need to pass whatever options to xcolor
\PassOptionsToPackage{dvipsnames}{xcolor}

%% If you are using \orcid or academicons
%% icons, make sure you have the academicons 
%% option here, and compile with XeLaTeX
%% or LuaLaTeX.
% \documentclass[10pt,a4paper,academicons]{altacv}
\documentclass[10pt,a4paper]{altacv}

%% AltaCV uses the fontawesome and academicon fonts
%% and packages. 
%% See texdoc.net/pkg/fontawecome and http://texdoc.net/pkg/academicons for full list of symbols.
%% 
%% Compile with LuaLaTeX for best results. If you
%% want to use XeLaTeX, you may need to install
%% Academicons.ttf in your operating system's font 
%% folder.


% Change the page layout if you need to
\geometry{left=1cm,right=9cm,marginparwidth=6.8cm,marginparsep=1.2cm,top=1.25cm,bottom=1.25cm}

% Change the font if you want to.

% If using pdflatex:
\usepackage[utf8]{inputenc}
\usepackage[T1]{fontenc}
\usepackage[default]{lato}

% If using xelatex or lualatex:
% \setmainfont{Lato}

% Change the colours if you want to
\definecolor{Mulberry}{HTML}{72243D}
\definecolor{SlateGrey}{HTML}{2E2E2E}
\definecolor{LightGrey}{HTML}{666666}
\colorlet{heading}{Sepia}
\colorlet{accent}{Mulberry}
\colorlet{emphasis}{SlateGrey}
\colorlet{body}{LightGrey}

% Change the bullets for itemize and rating marker
% for \cvskill if you want to
\renewcommand{\itemmarker}{{\small\textbullet}}
\renewcommand{\ratingmarker}{\faCircle}

%% sample.bib contains your publications
\addbibresource{sample.bib}

\begin{document}
\name{Your Name Here}
\tagline{Your Position or Tagline Here}
\photo{2.8cm}{Globe_High}
\personalinfo{%
  % Not all of these are required!
  % You can add your own with \printinfo{symbol}{detail}
  \email{your@email.com}
  \phone{000-00-0000}
  \mailaddress{Address, Street, 00000 County}
  \location{Location, COUNTRY}
  \homepage{www.homepage.com/}
  \twitter{@twitterhandle}
  \linkedin{linkedin.com/in/yourid}
  \github{github.com/yourid}
  %% You MUST add the academicons option to \documentclass, then compile with LuaLaTeX or XeLaTeX, if you want to use \orcid or other academicons commands.
%   \orcid{orcid.org/0000-0000-0000-0000}
}

%% Make the header extend all the way to the right, if you want. Extend the right margin by 8cm (=6.8cm marginparwidth + 1.2cm marginparsep)
\begin{adjustwidth}{}{-8cm}
\makecvheader
\end{adjustwidth}

%% Provide the file name containing the sidebar contents as an optional parameter to \cvsection.
%% You can always just use \marginpar{...} if you do
%% not need to align the top of the contents to any
%% \cvsection title in the "main" bar.
\cvsection[page1sidebar]{Experience}

\cvevent{Job Title 1}{Company 1}{Month 20XX -- Ongoing}{Location}
\begin{itemize}
\item Job description 1
\item Job description 2
\end{itemize}

\divider

\cvevent{Job Title 2}{Company 2}{Month 20XX -- Ongoing}{Location}
\begin{itemize}
\item Job description 1
\item Job description 2
\end{itemize}

\cvsection{Projects}

\cvevent{Project 1}{Funding agency/institution}{}{}
\begin{itemize}
\item Details
\end{itemize}

\divider

\cvevent{Project 2}{Funding agency/institution}{Project duration}{}
A short abstract would also work.

\medskip

\cvsection{A Day of My Life}

% Adapted from @Jake's answer from http://tex.stackexchange.com/a/82729/226
% \wheelchart{outer radius}{inner radius}{
% comma-separated list of value/text width/color/detail}
\wheelchart{1.5cm}{0.5cm}{%
  6/8em/accent!30/{Sleep,\\beautiful sleep}, 
  3/8em/accent!40/Hopeful novelist by night,
  8/8em/accent!60/Daytime job,
  2/10em/accent/Sports and relaxation,
  5/6em/accent!20/Spending time with family
}

\clearpage
\cvsection[page2sidebar]{Publications}

\nocite{*}

\printbibliography[heading=pubtype,title={\printinfo{\faBook}{Books}},type=book]

\divider

\printbibliography[heading=pubtype,title={\printinfo{\faFileTextO}{Journal Articles}},type=article]

\divider

\printbibliography[heading=pubtype,title={\printinfo{\faGroup}{Conference Proceedings}},type=inproceedings]

%% If the NEXT page doesn't start with a \cvsection but you'd
%% still like to add a sidebar, then use this command on THIS
%% page to add it. The optional argument lets you pull up the 
%% sidebar a bit so that it looks aligned with the top of the
%% main column.
% \addnextpagesidebar[-1ex]{page3sidebar}


\end{document}
