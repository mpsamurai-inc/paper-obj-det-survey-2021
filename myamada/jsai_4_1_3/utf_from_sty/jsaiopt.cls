%%
%% $B$3$N%9%?%$%k%U%!%$%k$O!$?M9)CNG=3X2qH/9T$N?M9)CNG=3X2q;o$N$?$a$N%9%?%$%k%U(B
%% $B%!%$%k$G$9!%(B
%%
%% jsai.bst$B$OEENOCf1{8&5f=j$N>>0f@50l;a$,@=:n$7$?(Bjalpha.bst $B$r$b$H$K!$$=$NB>(B
%% $B$N%9%?%$%k%U%!%$%k$O!J3t!K%&%k%9$N:4F#4p><;a$,@=:n$7$?%P!<%8%g%s(B1.1$B$r$b$H(B
%% $B$K!J3t!K(BZoo.COM$B$H?M9)CNG=3X2q$,2~JQ$7$?$b$N$G$9!%>>0f;aJB$S$K:4F#;a$K$O(B
%% $BK\%9%?%$%k%U%!%$%k$N;HMQ$K$h$j@8$8$?LdBj$KBP$9$k@UG$$O0l@Z$"$j$^$;$s!%(B
%%
%% $B$3$N%9%?%$%k%U%!%$%k$NCx:n8"$O!$(Bjsai.bst $B$r=|$-!$?M9)CNG=3X2q$K$"$j$^$9!%(B
%% jsai.bst $B$NCx:n8"$O!$%*%j%8%J%kItJ,$K$D$$$F$O>>0f;a$K!$2~JQItJ,$K$D$$$F$O(B
%% $B?M9)CNG=3X2q$K!$$=$l$>$l$"$j$^$9!%(B
%%
%% 
%% This is file `jsaiopt.cls',
%% 
\NeedsTeXFormat{pLaTeX2e}
\ProvidesClass{jsaiopt}[1999/09/20]

\DeclareOption*{\PassOptionsToClass{\CurrentOption}{jsai2e}}

%% Article Style
\newif\if@jsaiopt
\@jsaioptfalse
\DeclareOption{jsaiopt}{\@jsaiopttrue}
\newif\if@final
\@finalfalse
\DeclareOption{final}{\@finaltrue}

\ProcessOptions

\LoadClass{jsai2e}
%% 
%%
\newdimen\@bs \@bs=14.25pt
 \def\Tosubsection{0mm}
 \def\section{\@startsection{section}{1}{0zw}
  {1\@bs plus .25mm minus .25mm}
  {.00001pt plus .25mm minus .25mm}
  {\large\baselineskip4.025mm\bfseries}}
 \def\Tosubsubsection{0mm}
 \def\subsection{\@startsection{subsection}{2}{0zw}
  {1\@bs plus .25mm minus .25mm}
  {.00001pt plus .25mm minus .25mm}
  {\normalsize\bfseries}}
 \def\subsubsection{\@startsection{subsubsection}{3}{0zw}
  {\z@}{\z@}{\normalsize\bfseries}}
 \def\paragraph{\@startsection{paragraph}{4}{\z@}
  {\z@}{\z@}{\normalsize\rmfamily}}
 \def\subparagraph{\@startsection{subparagraph}{5}{\z@}
  {\z@}{\z@}{\normalsize\rmfamily}}
 \setcounter{secnumdepth}{2}

 \def\thesection{\arabic{section}}
 \def\thesubsection{\hskip-.5zw $B!J(B\,\arabic{subsection}\,$B!K(B\hskip-.5zw}
 \def\thesubsubsection{\arabic{subsubsection}}
 \def\theparagraph{\roman{paragraph}}
 \def\thesubparagraph{\arabic{subparagraph}}
%%
%%
\def\thebibliography#1{%
\section*{\centering\bibname}
 \footnotesize
 \global\raggedbottom
  \list{}
  {%
   \leftmargin 1.5zw
   \labelsep 1zw
   \itemindent 0zw
   \listparindent 1zw
   \topsep\z@\parsep\z@\itemsep\z@\partopsep\z@
   \usecounter{enumi}
  }
  \sloppy\clubpenalty-100\widowpenalty-100
  \sfcode`\.=1000\relax}

\def\endthebibliography{\endlist\par}
%%
\def\maketitle{\par
 \begingroup
 \def\thefootnote{\arabic{footnote}}%
 \def\@makefnmark{{\scriptsize \hbox to\z@{$\m@th^{\dagger\@thefnmark}$\hss}}}
%%   \if@twocolumn
%%     \twocolumn[\@maketitle]%
%%     \else \newpage
%%     \global\@topnum\z@
%%     \@maketitle \fi
   \if@commentary
     \@makeCOMtitle 
     \thispagestyle{TOPheadings}\@thanks
     \else
   \if@foreword
     \@makeFORtitle 
     \thispagestyle{TOPheadings}\@thanks
     \else
   \if@essay
     \@makeESStitle
     \thispagestyle{TOPheadings}\@thanks
     \else
   \if@mybookmark
     \@makeBOOKtitle
     \thispagestyle{BOTHheadings}\@thanks
     \else
   \if@societynews
     \@makeSNtitle
     \thispagestyle{BOTHheadings}\@thanks
     \else
     \@makeNPtitle 
     \thispagestyle{BOTHheadings}\@thanks
\fi\fi\fi\fi\fi
%% \thispagestyle{TOPheadings}\@thanks
 \endgroup
 \normalsize
 \setcounter{footnote}{0}%
 \setcounter{mpfootnote}{0}%
 \let\maketitle\relax
 \let\@maketitle\relax
 \gdef\@thanks{}
 \gdef\@author{}
  \let\jtitle\relax\let\jsubtitle\relax
  \let\etitle\relax\let\esubtitle\relax
 \let\thanks\relax}

\def\@makeCOMtitle{%
 \onecolumn\null
 \global\@topnum\z@
 \boxmaxdepth\z@
 \lineskiplimit\z@
 \lineskip\z@
\vbox to 8\normalbaselineskip{%\@Headheight{%
  \leavevmode
  \smash{\rlap{%
   \begin{picture}(60,30)(0,27)
    \put(0,0){\line(0,1){30}}
    \put(0,30){\line(1,0){60}}
    \put(0,0){\line(2,1){60}}
    \put(6,18){{\Large\bf $B4,(B\hskip1zw $BF,(B\hskip1zw $B8@(B}}
   \end{picture}
  }}%
  \vss\vss
  \begin{center}
  {\reset@font\huge\bfseries \@jtitle}
  \end{center}
  \ifx\@jsubtitle\empty\else
   \nointerlineskip
   \vskip2mm
   \begin{center}
   {\reset@font\LARGE\bfseries \@jsubtitle}\par
   \end{center}
  \fi
\vss\vss
\@ifundefined{@author}{}{%
\begin{center}
    \@author
\end{center}
\par}
  \vss
 }%
}

\def\@makeFORtitle{%
 \twocolumn[%
 \boxmaxdepth\z@
 \lineskiplimit\z@
 \lineskip\z@
 \vbox to 10\normalbaselineskip{%\@Headheight{%
  \vss
   \begin{center}
  {\reset@font\huge\bfseries \@jtitle}
   \end{center}
  \ifx\@jsubtitle\empty\else
   \nointerlineskip
   \vskip2mm
    \begin{center}
   {\reset@font\LARGE\bfseries \@jsubtitle}\par
    \end{center}
  \fi
  \vss\vss
\@ifundefined{@author}{}{%
\begin{center}
   \@author
\end{center}
\par}
  \vskip23H
 }]%
}

\font\ESSfont=min10 at 18Q
\def\@makeESStitle{%
 \onecolumn\null
 \global\@topnum\z@
 \boxmaxdepth\z@
 \lineskiplimit\z@
 \lineskip\z@
 \vbox to 11\normalbaselineskip{%\@Headheight{
  \hsize=170.5mm
  \vskip.5\baselineskip
  \leavevmode
  \hspace*{-1zw}%noindent
  \hbox to \hsize{%
   {\ESSfont 
    \hbox to 1zw{\leaders\hbox to .5mm{\vrule height 1mm width .1mm\hss}\hfil}%
    \ $B?o(B\ 
    \hbox to 1zw{\leaders\hbox to .5mm{\vrule height 1mm width .1mm\hss}\hfil}%
    \ $BA[(B}\ 
   \leaders\hbox to .5mm{\vrule height 1mm width .1mm\hss}\hfil
  }%
  \vss\vss
   \begin{center}
    {\reset@font\huge\bfseries \@jtitle}
   \end{center}
  \ifx\@jsubtitle\empty\else
   \nointerlineskip
   \vskip2mm
    \begin{center}
    {\reset@font\LARGE\bfseries \@jsubtitle}\par
    \end{center}
  \fi
  \vss\vss
\@ifundefined{@author}{}{%
\begin{center}
    \@author
\end{center}
\par}
  \vss
 }%
}

\if@mybookmark\pagestyle{BOTHheadings}\else\fi
\font\BOOKfont=goth10 at 18Q
\def\@makeBOOKtitle{%
 \onecolumn\null
 \global\@topnum\z@
 \boxmaxdepth\z@
 \lineskiplimit\z@
 \lineskip\z@
 \vbox to 11\normalbaselineskip{%
 \vskip1\baselineskip
  {\reset@font\BOOKfont 
   \hskip15mm\@titlejiwari{$B;d$N%V%C%/%^!<%/(B}}\par
   \nointerlineskip
   \vskip.25mm
   \hskip15mm\hbox to 140.5mm
     {\leaders\hrule height .1mm\hfil}\par
\vss
\@ifundefined{@jtitle}{}{%
\noindent
    {\reset@font\Large\bfseries \@jtitle}
}\vss}
}

\def\bookinfo#1{\gdef\@bookinfo{#1}}
\def\@bookinfo{}
\def\bookinfoheight#1{\gdef\@bookinfoheight{#1\baselineskip}}
\bookinfoheight{5}
%%1999.08.15 %\def\FromTo#1#2{\gdef\@FromTo{#1$B!A(B#2}}
\def\FromTo#1#2{\gdef\@FromTo{#1$\sim$#2}}
\def\@FromTo{}

\def\Calendar#1{\par
 \parindent\z@
 \sloppy
 {\bf #1}\par
}
\def\endCalendar{\par\vskip\baselineskip}

\def\Date#1{\@hangfrom{\hskip1zw Date:\ }#1\par}
\def\Location#1{\@hangfrom{\hskip1zw Location:\ }#1\par}
\def\Contact#1{\@hangfrom{\hskip1zw Contact:\ }#1\par}
\def\Note#1{\@hangfrom{\hskip1zw Note:\ }#1\par}


\def\@Headheight#1{#1\normalbaselineskip}

\if@laboratoryreport
  \def\@Headheight{5\normalbaselineskip}
  \def\type@head{$B8&5f<<>R2p(B}
  %%\@sameheadtrue\@Commentatortrue
  \pagestyle{BOTHheadings}
\else
\if@conferencereport
  %%\gdef\np@type{NP}
  \def\@Headheight{5\normalbaselineskip}
  \def\type@head{$B2q5DJs9p(B}
  %%\@sameheadtrue\@Commentatortrue
  \pagestyle{BOTHheadings}
\else
%% BEGIN: 2008.10.10 by T.Kamishima modified by morita
\if@eventreport
  %%\gdef\np@type{NP}
  \def\@Headheight{5\normalbaselineskip}
  \def\type@head{$B%$%Y%s%H$@$h$j(B}
  %%\@sameheadtrue\@Commentatortrue
  \pagestyle{BOTHheadings}
\else
%% BEGIN: 2008.10.10 by T.Kamishima modified by morita
\if@glossary
  %%\gdef\np@type{NP}
  \def\@Headheight{5\normalbaselineskip}
  \def\type@head{$BMQ8l2r@b(B}
  %%\@sameheadtrue\@Commentatortrue
  \pagestyle{BOTHheadings}
\else
\if@bookreview
  %%\gdef\np@type{NP}
  \def\@Headheight{8\normalbaselineskip}
  \def\type@head{$B=qI>(B}
  %%\@sameheadtrue\@Commentatortrue
  \pagestyle{BOTHheadings}
\else
\if@paperview
  %%\gdef\np@type{NP}
  \def\@Headheight{8\normalbaselineskip}
  \def\type@head{$BJ88%>R2p(B}
  %%\@sameheadtrue\@Commentatortrue
  \pagestyle{BOTHheadings}
\else
\if@studentmail
  %%\gdef\np@type{NP}
  \def\@Headheight{5\normalbaselineskip}
  \def\type@head{$B3X@8%a(B\hskip\kanjiskip $B!<(B\hskip\kanjiskip $B%k(B}
  %%\@sameheadtrue
  \pagestyle{BOTHheadings}
\else
\if@calendar
  %%\gdef\np@type{NP}\gdef\@type{CAL}%
  \def\@Headheight{5\normalbaselineskip}
  \def\type@head{$B%+%l%s%@(B\hskip\kanjiskip $B!<(B}
  %%\@sameheadtrue\@Commentatortrue
  \pagestyle{BOTHheadings}
\else
\if@societynews
  %%\gdef\np@type{SN}
  \def\@Headheight{6\normalbaselineskip}
  %%\@sameheadtrue
  %%\@Commentatortrue
  \input bezier.sty
  \pagestyle{BOTHheadings}
\else
  \def\@Headheight{5\normalbaselineskip}
  \def\type@head{$B!!!!!!(B}
  %%\@sameheadtrue\@Commentatortrue
  \pagestyle{BOTHheadings}
\fi\fi\fi\fi\fi\fi\fi\fi\fi %% 2008.10.10 by Kamishima

\def\@makeNPtitle{%
 %\def\temp@type{CAL}%
 %\ifx\@type\temp@type
  \global\baselineskip16H
  \global\raggedbottom
 %\fi
 \twocolumn[%
 \boxmaxdepth\z@
 \lineskiplimit\z@
 \lineskip\z@
 \vbox to \@Headheight{%
  \vss
  {\reset@font\LARGE\bfseries 
   \hskip15mm\@titlejiwari{\type@head}}\par
   \nointerlineskip
   \vskip.25mm
   \hskip15mm\hbox to 140.5mm
     {\leaders\hrule height .1mm\hfil}\par
   \ifx\@FromTo\empty\else
    \nointerlineskip
    \vskip.25mm
    \hskip15mm\hbox to 140.5mm
     {\hss\hbox{\@FromTo}}\par
   \fi 
  \vss
  \ifx\@bookinfo\empty\else
   \vbox to \@bookinfoheight{%
    \vss
     \hfill\parbox{170.5mm}{\slarge\bf\@bookinfo}%
    \vss
   }%
  \fi
  \ifx\@jtitle\empty\else
  \noindent
    {\reset@font\Large\bfseries \@jtitle}\par
  \fi
\vss%%  \vskip23H
 }]%
}

\def\societynewssize#1#2{\gdef\@societynewssize{#1\baselineskip#2}}
\societynewssize{\small}{17H}% depend on an issue

\font\SNfont=goth10 at 18Q
\def\@makeSNtitle{%
  \global\baselineskip17H
  \global\raggedbottom
 %%\@societynewssize
 \twocolumn[%
 \boxmaxdepth\z@
 \lineskiplimit\z@
 \lineskip\z@
 \vbox to \@Headheight{%
  \vss\vss\vss
   {
   \hskip15mm
   \unitlength1mm
   \@wholewidth.2mm
   \@halfwidth.2mm
   \@tfor\@getwd:=$B3X2q$@$h$j(B\do{%
    \begin{picture}(9.75,8)
     \put(1.5,2){{\SNfont \@getwd}}
     \bezier{200}(0.5,6)(-1.25,2)(2,0)
     \bezier{200}(0.5,6)(3.4,9.7)(7,6.4)
     \thicklines
     \put(2,0){\line(4,1){4}}
    \end{picture}%
   }
  }\par
   \nointerlineskip
   \vskip2.5mm
   \hbox to \hsize{%
    \leaders\hbox to .5mm{\vrule height 1.5mm width .2mm\hss}\hfil
   }
  \vss
  \ifx\@jtitle\empty\else
  \noindent
    {\reset@font\Large\bfseries \@jtitle}\par
  \fi
  \vss
 }]%
}

\def\@makeTEMPtitle{%
\vbox to 9mm{{\null\vss}\nointerlineskip}
\if@english
  {\LARGE\bfseries \@etitle \par}
\else
  {\HUGE \@jtitle\par}
  \vskip2mm
  {\LARGE\bfseries \@etitle \par}
\fi
\vskip20H
%% \@ifundefined{@author}{}{\@author}
\@ifundefined{@author}{}{%
      \noindent
      \begin{tabular}[t]{l}%
      \@author
      \end{tabular}\par}
\vskip20H
%%
 \ifvoid\@keywordbox
 \else
  \nointerlineskip
  \leavevmode\box\@keywordbox\par
 \fi
%%\vskip\baselineskip
 \ifvoid\@summarybox
 \else
  \vskip\baselineskip
  \leavevmode\box\@summarybox\par
 \fi
  \nointerlineskip
  \vskip12mm
  \vspace*{0mm}
}

\endinput
%% 
%% End of file `jsaiopt.cls'.
%%


