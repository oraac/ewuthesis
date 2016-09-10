%%      Maintainer:  David McInnis <davidm@eagles.ewu.edu>
%%      Used clsguide.pdf as reference -> http://mirrors.rit.edu/CTAN/macros/latex/doc/clsguide.pdf
%%      This class was origionally a fork of jfhbrook/uafthesis, but has since been completely re-written
%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{ewuthesis}[2016/04/28 Eastern Washington University Thesis]

\LoadClass[letterpaper, oneside, 12pt]{book}        % My class is built upon the book class
                                                    % EWU Thesis documents are always one-sided
                                                    
                                                    
\RequirePackage{import}
\normalsfcodes
                                 
\newtoks\degreeyear 
\newtoks\degreeterm
\newtoks\degree
\newtoks\department

\renewcommand{\maketitle}{      %TODO: Make the formatting better
    \begin{titlepage}
        \begin{center}
        \vspace*{\fill}         %Puts text in the middle of the page
            \MakeUppercase{\@title}\\
            \rule{\textwidth}{.4pt}
            A Thesis\\
            Presented To\\
            Eastern Washington University\\
            Cheney, Washington\\
            \rule{\textwidth}{.4pt}
            In Partial Fulfillment of the Requirements\\
            for the Degree\\
            \the\degree\ in \the\department\\
            \rule{\textwidth}{1pt}
            by\\
            \@author\\
            \the\degreeterm\ \the\degreeyear
        \vspace*{\fill}
        \end{center}
    \end{titlepage}
    \newpage
}

\newcommand{\makesigline}[1]{
    \par\noindent\makebox[2.5in]{\hrulefill} \hfill\makebox[2.0in]{\hrulefill}%
    \par\noindent\makebox[2.5in][l]{#1, GRADUATE STUDY COMMITTE}      \hfill\makebox[2.0in][l]{Date}%
}

\newcommand{\makesigpage}{
    \begin{center}
        THESIS OF \@author\ APPROVED BY\\
    \end{center}
    \makesigline{....}\\
    \makesigline{....}\\
    \makesigline{....}
    \newpage
}

\newcommand{\makevita}{         %TODO: Fix formatting, probably use tabular style to make things look better
    \begin{center}
        VITA
    \end{center}
    
    \begin{itemize}
        \item Author: \@author
        \item Place of Birth: 
        \item Degrees Awarded:
        \item Professional Experience:
    \end{itemize}


}
