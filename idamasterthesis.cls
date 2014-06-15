\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{idamasterthesis}
              [2011/04/19
               LaTeX idamasterthesis class]


\DeclareOption*{\PassOptionsToClass{\CurrentOption}{idathesis}}

\ProcessOptions

\LoadClass{idathesis}

%   REMOVED DIVISIONSHORT-PAGE A LA MARCUS -----------------------
%\AtEndDocument{\cleardoublepage\librarypage}

\isbn{-}

\newcommand{\issn}{-}

\renewcommand{\idathesistype}{master}
\renewcommand{\ismaster}[1]{#1}





%   FRONT PAGE -------------------------------------------------
\newcommand{\makefront}{
  \renewcommand{\plainheadrulewidth}{0pt}
  \setcounter{page}{-1}       %% Front page starts at page -1
   \enlargethispage{8mm}
   \begin{center}
   \vspace*{-0mm}
   \center
    \faculty{%
      {\Large \swedishenglish{Examensarbete}{Bachelor thesis}}\\[15mm]}
    {%
      {\footnotesize \swedishenglish{Filosofiska fakulteten FiF-avhandling}{Faculty of Arts and Science FiF-thesis} \@thesisnumber}\\[8mm]
    }
    {\LARGE\textbf{\swedishenglish{\@titleswedish}{\@titleenglish}}}\\[8mm]
    \swedishenglish{av}{by}
    \\[10mm]
    {\Large\textbf{\@author}}\\[15mm]
    \@dateofpublication
   \end{center}
}

%   TITLE PAGE -------------------------------------------------
\renewcommand{\maketitle}{
  \renewcommand{\plainheadrulewidth}{0pt}
   \enlargethispage{8mm}
   \begin{center}
   \vspace*{-0mm}
   \center
    \faculty{%
      {\Large \swedishenglish{Examensarbete}{Bachelor thesis}}\\[15mm]}
    {%
      {\footnotesize \swedishenglish{Filosofiska fakulteten FiF-avhandling}{Faculty of Arts and Science FiF-thesis} \@thesisnumber}\\[8mm]
    }
    {\LARGE\textbf{\swedishenglish{\@titleswedish}{\@titleenglish}}}\\[8mm]
    \swedishenglish{av}{by}
    \\[10mm]
    {\Large\textbf{\@author}}\\[15mm]
    %\Large LITH-IDA-EX-\@publicationyear/\@thesisnumber\\[4mm]
    \@dateofpublication
   \end{center}
   \vfill
   {\setlength{\parindent}{0mm}
   \makebox[20mm][l]{\swedishenglish{Handledare}{Supervisor}:}
    \begin{minipage}[t]{70mm}
      \@supervisor
    \end{minipage}\\[3mm]
    \makebox[20mm][l]{\swedishenglish{Examinator}{Examiner}:}
    \begin{minipage}[t]{70mm}
      \@examiner
    \end{minipage}} \\ \vspace*{4mm}

}

\newcommand{\maketitleold}{
  \pagenumbering{roman}
  \pagestyle{empty}
  \setcounter{page}{-1}       %% Front page starts at page -1

  %% Front page. Should not be edited.
  \hfil\hspace*{-4mm}
  \begin{minipage}{100mm}
    \center
    \textbf{\swedishenglish{Examensarbete}{Final thesis}} \\
    {\vbox to 28mm{\vfil\Large\textbf\makeatother\swedishenglish{\@titleswedish}{\@titleenglish}\makeatletter}}
    \vspace*{5mm}
    %Performed for \textbf{COMPANY A}\\
    %in cooperation with \textbf{COMPANY C} \\
    \vspace*{2mm}
    \swedishenglish{av}{by} \\
    \textbf{\@author} \\ \vspace*{4mm}
    LITH-IDA-EX-{}-\@publicationyear/\@thesisnumber-{}-SE \\ \vspace*{4mm}
    \@dateofpublication

  \end{minipage}
  
  \clearpage

%\lhead[Link�pings universitet\\
%         Institutionen f�r datavetenskap]{}
  \renewcommand{\plainheadrulewidth}{0pt}
  \pagestyle{empty}

%% Title page. This page can be edited.
  \hfil\hspace*{-4mm}
  
  \begin{minipage}{110mm}
    \center
    \textbf{\swedishenglish{Examensarbete}{Final thesis}} \\
    {\vbox to 18mm{\vfil\Large\textbf\makeatother\swedishenglish{\@titleswedish}{\@titleenglish}\makeatletter}}
    \vspace*{3mm}
    \vspace*{2mm}
    \swedishenglish{av}{by} 
    \vspace*{2mm}
    \textbf{\@author} \\ \vspace*{4mm}
    LITH-IDA-EX-{}-\@publicationyear/\@thesisnumber-{}-SE
    \vspace*{70mm}
    \flushleft
    \swedishenglish{Handledare}{Supervisor}:
    \begin{minipage}[t]{70mm}
      \@supervisor
    \end{minipage} \\ \vspace*{4mm}
    \swedishenglish{Examinator}{Examiner}:\hspace*{5.5pt}
    \begin{minipage}[t]{70mm}
      \@examiner
    \end{minipage} \\ \vspace*{4mm}
    
  \end{minipage}\hfil
  \newpage
%  \lhead[]{}
  \pagestyle{empty}
  \phantom{Empty page}
  \newpage
  \normalsize
}


\newcommand{\makeintropages}{

%  \newcommand{\abstractparii}{\csname par\endcsname}
  %% pdfgraphics defines the standard file extension for includegraphics
  %%\pdfgraphics
  \changetext{}{}{}{5mm}{}
%  \changepage{40mm}{14mm}{-7mm}{-7mm}{0mm}{-25mm}{}{}{}
  \pagestyle{empty}
  \pagenumbering{roman}
  %\makefront   REMOVED---------------------------------
  \thispagestyle{empty}
  \cleardoublepage          
  %\maketitle   REMOVED---------------------------------
  \thispagestyle{empty}
  \cleardoublepage
  
%   NEW     MARCUS TEXT----------------------------------
\vspace*{\fill}
\noindent\makebox[\linewidth]{\rule{\textwidth}{0.4pt}}
\noindent Students in the 5 year Information Technology program complete a semester-long software development project during their sixth semester (third year). The project is completed in mid-sized groups, and the students implement a mobile application intended to be used in a multi-actor setting, currently a search and rescue scenario. In parallel they study several topics relevant to the technical and ethical considerations in the project. The project culminates by demonstrating a working product and a written report documenting the results of the practical development process including requirements elicitation. During the final stage of the semester, students create small groups and specialise in one topic, resulting in a bachelor thesis. The current report represents the results obtained during this specialization work. Hence, the thesis should be viewed as part of a larger body of work required to pass the semester, including the conditions and requirements for a bachelor thesis.
\noindent\makebox[\linewidth]{\rule{\textwidth}{0.4pt}}
\vspace*{\fill}

  \newpage
  \changetext{}{}{}{-5mm}{}
%  \thispagestyle{empty}
   \chapter*{\swedishenglish{Sammanfattning}{Abstract}}
   \@abstract
%  \abstractpage
  \cleardoublepage
  
%----- NYTT -----------------------------
%  \changetext{}{}{}{-5mm}{}
%  \thispagestyle{empty}
%   \chapter*{\swedishenglish{Förtydling}{Clarification}}
%   \@clarification
%  \abstractpage
%  \cleardoublepage
%----------------------------------

%  \changepage{-40mm}{-14mm}{7mm}{7mm}{0mm}{25mm}{}{}{}
  \thispagestyle{empty}
  \cleardoublepage
%  \input{acknowledgement.tex}
%  \cleardoublepage

  \pagestyle{fancy}
  \thispagestyle{fancy}
  \tableofcontents
  \addtocontents{toc}{\vskip-40pt} % this is to reduce the gap for the first table of contents entry
  \changetext{}{}{-15pt}{15pt}{}
  %\cleardoublepage
  \pagenumbering{arabic}
}

%%REMOVE CHAPTERHEAD------------------------------------------------------
\makeatletter
\renewcommand{\@makechapterhead}[1]{%
\vspace*{0 pt}%
{\setlength{\parindent}{0pt} \raggedright \normalfont
\bfseries\LARGE\thechapter.\ #1
\par\nobreak\vspace{20 pt}}}
\makeatother

\makeatletter
%   SECTION
\renewcommand\section{\@startsection{section}{1}{\z@}%
                                   {-3.5ex \@plus -1ex \@minus -.2ex}%
                                   {2.3ex \@plus.2ex}%
                                   {\normalfont\large\bfseries}}
                                   \makeatother
\makeatletter
%   SUBSECTION
\renewcommand\subsection{\@startsection{subsection}{2}{\z@}%
                                     {-3.25ex\@plus -1ex \@minus -.2ex}%
                                     {1.5ex \@plus .2ex}%
                                     {\normalfont\normalsize\bfseries}}
\makeatother
%\makeatletter
%   SUBSUBSECTION
%\renewcommand\subsubsection{\@startsection{subsubsection}{3}{\z@}%
%                                     {-3.25ex\@plus -1ex \@minus -.2ex}%
%                                     {1.5ex \@plus .2ex}%
%                                     {\normalfont\normalsize\mdseries}}
%\makeatother

%   ORIGINAL SUBSUBSECTION
%{\normalfont\normalsize\bfseries}}

%------------------------------------------------

% \newcommand{\exhibitpagebeforeabstract}{%
% \changetext{}{}{}{5mm}{}
% \thispagestyle{empty}
% \setlength{\parindent}{0mm}
% \faculty{\centerline{\footnotesize Link�ping Studies in Science and Technology}
% \vspace{2mm}
% \centerline{\footnotesize Thesis No. \@thesisnumber}}{
% \centerline{\footnotesize \swedishenglish{Filosofiska fakulteten FiF-avhandling}{Faculty of Arts and Science FiF-thesis} \@thesisnumber}
% }
% \vspace{3mm}
% {\centering\Large\textbf{\swedishenglish{\@titleswedish}{\@titleenglish}}\\[2mm]}
% \centerline{\swedishenglish{av}{by}}
% \vspace{2mm}
% \centerline{\large\textbf{\@author}}
% \vspace{5mm}
% \footnotesize
% \centerline{\textbf{Licentiatavhandling}}
% \vspace{3mm}
% som f�r avl�ggande av \@degreetype\ licentiatexamen vid Link�pings universitet
% kommer att offentligt presenteras i \@presentationplace, hus \@presentationhouse, 
% Link�pings universitet, \@presentationtime.\\[7mm]
% \setlength\parskip{8pt}\centerline{\textbf{\swedishenglish{Sammanfattning}{Abstract}}}
% \vspace{3mm}\\[-\baselineskip]
% }
% 
% \newcommand{\exhibitpageafterabstract}{%
% 
% \textit{\swedishenglish{Studien har finansierats av}{This work has been supported} \@supportedby.}
% \vfill
% \centerline{\swedishenglish{Institutionen f�r datavetenskap}{Department of Computer and Information Science}}
% \centerline{Link�pings universitet}
% \centerline{\swedishenglish{581\,83 Link�ping}{SE-581\,83 Link�ping, Sweden}}
% \vspace{7mm}
% \hspace*{\fill}ISBN \@isbn\hspace*{\fill}\hspace*{\fill}ISSN \issn\hspace*{\fill}
% }
% 
