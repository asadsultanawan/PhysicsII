\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{pieasthesis}
         [2011/10/30 v1.0 PIEAS Thesis class]
\RequirePackage{setspace}
\newcounter{subyear}
\setcounter{subyear}{\number\year}
\def\submitted#1{\gdef\@submitted{#1}}
\def\@submittedyear{2020}
\def\@submittedmonth{October}
\def\copyrightyear#1{\gdef\@copyrightyear{#1}}
\def\@copyrightyear{\number\year}
\def\adviser#1{\gdef\@adviser{#1}}
\long\def\@abstract{\@latex@error{No \noexpand\abstract given}\@ehc}
\newcommand*{\frontmatter}{
\setcounter{page}{1}
\pagenumbering{roman}
  }
\newcommand*{\mainmatter}{
\pagenumbering{arabic}
}
\newcommand*{\makelot}{}
\newcommand*{\makelof}{}
\newcommand*{\makelos}{}
\newcommand*{\maketoc}{
  % Add ToC to the pdfbookmarks as a section, but not to the ToC itself.
  % only if we have the hyperref command that is necessary
  \ifdefined\pdfbookmark
  
     \phantomsection
     \pdfbookmark[1]{\contentsname}{Contents}
  \else
  \fi

  \tableofcontents
  \clearpage
}
%% Setup a command to add extra space only if in singlespacing mode
\newcommand*{\extravspace}[1]{\vspace{0in}}
%% Setup a command to set spacing for body text; also used to restore spacing after long tables in document
\newcommand*{\bodyspacing}{
  \singlespacing
}
%% Setup a command to set spacing for long tables, to be used manually in document
\newcommand*{\tablespacing}{
  \singlespacing
}
%% Command inserted into the document immediately after \begin{document} to place all frontmatter
%%   This was formerly named 'begincmd' and called below in \AtBeginDocument{}
%%   However, that is not compatible with package 'hyperref'. \tableofcontents needs
%%   to be declared from within the document itself. 
\newcommand*{\makefrontmatter}{
\bodyspacing
\pagestyle{plain}
\frontmatter
\maketitlepage
%\makeayatpage
%\makedeclarationoforiginality
%\makeapprovalpage
%\makededication
%\makecopyrightpage
%\makeacknowledgements
\maketoc
   \cleardoublepage
    \phantomsection
    %\addcontentsline{toc}{chapter}{List of Figures}
%\listoffiguress
   \cleardoublepage
    \phantomsection
    %\addcontentsline{toc}{chapter}{List of Tables}
%\listoftabless
%\makeabstract
%\makenomenclature
%\makeabbreviations
%\makelot
%\clearpage
%\makelof
%\clearpage
%\makelos
%\clearpage
\mainmatter
}
\def\@submitted{\@submittedmonth~\@submittedyear}
\def\@publisher{Publisher Name Here}

\def\@degree{Systems Engineering}
\def\@degreepref{MS}
\def\degreeprefix#1{\gdef\@degreepref{#1}}
\def\degree#1{\gdef\@degree{#1}}

\long\def\acknowledgements#1{\gdef\@acknowledgements{#1}}
\def\dedication#1{\gdef\@dedication{#1}}
\newcommand{\maketitlepage}{{
  \thispagestyle{empty}
  \sc
  \begin{center}
    \LARGE \textbf{\sc\@title}
  \end{center}
  \vspace{.45in}
  \begin{center}
By
  \end{center}
  \vspace{.30in}
  \begin{center}
    \@author\\
  \vspace{.7in}
  
  \vspace{.7in}
  \end{center}
\begin{center}
	%\includegraphics[]{logo-01.png}
\end{center}
  \vspace{.7in}
  \begin{center}
	\@publisher
  \end{center}
  \begin{center}
    \@submitted
  \end{center}
  \clearpage
  }}
\newcommand*{\makecopyrightpage}{
  \vspace*{0in}
  \begin{center}
    \copyright\ Copyright by \@author, \@copyrightyear. \\
    All rights reserved.
  \end{center}
  \clearpage}

\newcommand*{\makedeclarationoforiginality}{
  \vspace*{0in}
  \begin{center}
\textbf{\LARGE \@deptpref\,\,\,\@dept\\
\normalsize  Pakistan Institute of Engineering and Applied Sciences (PIEAS)\\
Nilore, Islamabad 45650, Pakistan\\
\vspace{10 mm}
\LARGE Declaration of Originality\\}
\vspace{10 mm}
  \end{center}
I hereby declare that the work contained in this thesis and the intellectual content of this thesis are the product of my own research. This thesis has not been previously published in any form nor does it contain any verbatim of the published resources which could be treated as infringement of the international copyright law.
I also declare that I do understand the terms ‘copyright’ and ‘plagiarism,’ and that in case of any copyright violation or plagiarism found in this work, I will be held fully responsible of the consequences of any such violation. \\
\vspace{10 mm}
 \begin{flushleft}
\hspace{3.2in} Signature: \_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\\
\hspace{3.2in} Name: \@author \\
\hspace{3.2in} Date: \@submitted\\
\hspace{3.2in} Place: PIEAS\\
 \end{flushleft}
  \clearpage}

\newcommand*{\makeapprovalpage}{
  \vspace*{0in}
  \begin{center}
 \Huge \textbf{Certificate of Approval}\\
\vspace{10 mm}
 \normalsize\textit {\textbf{This is to certify that the work contained in this thesis entitled}}\\
\textbf{``\@title''}\\
 \textit {\textbf{was carried out by}}\\
\textbf{\@author}\\
  \textit {\textbf{ under my supervision and that in my opinion, it is fully adequate, in scope and quality, for the degree of {\@degreepref} {\@degree} from Pakistan Institute of Engineering and Applied Sciences (PIEAS).}}  \\\vspace{10 mm}
 \Large \textit{\textbf{Approved By}}:\\\vspace{10 mm}
\normalsize 
  \end{center}
 \begin{flushleft}
\hspace{1.3in} Signature: \_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\\
\hspace{1.3in} Supervisor: \@adviser \\\vspace{10 mm}
 \end{flushleft}
\begin{center}
\Large \textit{\textbf{Verified By:}}\\\vspace{10 mm}
\end{center}
\begin{flushleft}
\hspace{1.3in} Signature: \_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\\
\hspace{1.3in} Head, \@deptpref\,\,\@dept\\
\hspace{1.3in} Stamp:
\end{flushleft}
  \clearpage}
  
\newcommand*{\makeayatpage}{
\thispagestyle{empty}
  \begin{center}
  \Huge \textbf{}\\
\vspace{2.6in}
\includegraphics[width=5in]{front/ayat.jpg}
  \end{center}
  \clearpage
  }
\newcommand*{\makeabstract}{
  \@abstract
  %\addcontentsline{toc}{section}{Abstract}
  \clearpage
  }
\newcommand*{\makenomenclature}{

\include{front/Nomenclaturex}
  \clearpage
  }
\newcommand*{\makeabbreviations}{  

\include{front/abbreviationsex}
  \clearpage
  }
  \newcommand*{\listoffiguress}{
  \pagebreak
  \newpage
  \listoffigures
  \clearpage
  }
  
  
  
  \newcommand*{\listoftabless}{
  \listoftables
  \clearpage
  }
  
\def\makeacknowledgements{
  \ifx\@acknowledgements\undefined
  \else
    \ifdefined\phantomsection
     % makes hyperref recognize this section properly for pdf links
     \phantomsection
    \else
    \fi
    \@acknowledgements
    \clearpage
  \fi
  }
\def\makededication{
  \ifx\@dedication\undefined
  \else
    \vspace*{1.5in}
    \begin{flushright}
      \@dedication
    \end{flushright}
    \clearpage
  \fi
  }
\DeclareOption{lot}{\renewcommand*{\makelot}{
  \ifdefined\phantomsection
    % makes hyperref recognize this section properly for pdf links
    \phantomsection
  \else
  \fi
  
  \addcontentsline{toc}{section}{List of Tables}\listoftables}}
\DeclareOption{lof}{\renewcommand*{\makelof}{
  \ifdefined\phantomsection
    % makes hyperref recognize this section properly for pdf links
    \phantomsection
  \else
  \fi
  \addcontentsline{toc}{section}{List of Figures}\listoffigures}}
\DeclareOption{los}{
  \renewcommand*{\makelos}{
    \RequirePackage{losymbol}
    \section*{List of Symbols\@mkboth {LIST OF SYMBOLS}{LIST OF SYMBOLS}}
    \@starttoc{los}
  \ifdefined\phantomsection
    % makes hyperref recognize this section properly for pdf links
    \phantomsection
  \else
  \fi
    \addcontentsline{toc}{section}{List of Symbols}
  }
}
\DeclareOption{singlespace}{
  \renewcommand*{\bodyspacing}{
  \singlespacing
  }
  %% Add extra space only if in singlespacing mode
  \renewcommand*{\extravspace}[1]{\vspace{#1}}
}
%% Doublespacing is the default for the thesis -- need not be declared.
\DeclareOption{doublespacing}{
  \renewcommand*{\bodyspacing}{
  \doublespacing
  }
}
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{report}}
\ProcessOptions
%% Not necessary to specify the point size - we inherit it from above
%% \LoadClass[12pt]{report}
\LoadClass{report}
\setlength{\oddsidemargin}{.5in}   %{.4375in}
\setlength{\evensidemargin}{.5in} %{.4375in}
\setlength{\topmargin}{-.5in}  %{-.5625in}
\setlength{\footskip}{.25in} % to put page number 3/4" from the bottom of the page (1/4" from bottom of body text)
\setlength{\textheight}{9in}
\setlength{\textwidth}{6in}

%%% Alter LaTeX defaults to try to eliminate all widows and orphans
\clubpenalty=10000
\widowpenalty=10000

%%% try to avoid overfull lines by limiting how far it is okay to exceed the margins
%%% http://www.tex.ac.uk/cgi-bin/texfaq2html?label=overfull
\setlength{\emergencystretch}{2em}

\long\def\abstract#1{\gdef\@abstract{#1}}
%% 'begincmd' no longer used -- insert \makefrontmatter in the document instead. See above. 
%\AtBeginDocument{\begincmd}

\endinput
%% 
%% End of file `pieasthesis.cls'.
