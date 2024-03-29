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
%% This is file `jsaiart.cls',
%% 
\NeedsTeXFormat{pLaTeX2e}
\ProvidesClass{jsaiart}[1999/09/20]

\DeclareOption*{\PassOptionsToClass{\CurrentOption}{jsai2e}}

%% Article Style
\newif\if@jsaiart
\@jsaiartfalse
\DeclareOption{jsaiart}{\@jsaiarttrue}
\newif\if@final
\@finalfalse
\DeclareOption{final}{\@finaltrue}

\ProcessOptions

\LoadClass{jsai2e}
%% 
%%HEADER STYLE
\def\Fbox#1{\setlength{\unitlength}{1mm}
    \begin{picture}(16,4)%
    \put(8,2){\oval(16,3.5)}%
    \put(0,0){\makebox(16,4){\hss{\bf #1}\hss}}%
    \end{picture}%
}
\def\DFbox#1{\setlength{\unitlength}{1mm}
    \begin{picture}(20,4)%
    \put(10,2){\oval(20,3.5)}%
    \put(0,0){\makebox(20,4){\hss{\bf #1}\hss}}%
    \end{picture}%
}
\def\WDFbox#1{\setlength{\unitlength}{1mm}
    \begin{picture}(32,4)%
    \put(16,2){\oval(32,3.5)}%
    \put(0,0){\makebox(32,4){\hss{\bf #1}\hss}}%
    \end{picture}%
}
%% 2008.08.13-begin by morita
\def\WWDFbox#1{\setlength{\unitlength}{1mm}
    \begin{picture}(36,4)%
    \put(18,2){\oval(36,3.5)}%
    \put(0,0){\makebox(36,4){\hss{\bf #1}\hss}}%
    \end{picture}%
}
%% 2008.08.13-end by morita
%%
\def\GIbox#1{\fbox{\rule[-.5mm]{0mm}{5mm}{\hbox to 5mm{%
\kern.4ex
\hss {\reset@font\LARGE\bfseries #1}\hss }}}}
%%
\def\type@technicalpaper{%
  \fboxsep=.5mm
  \vbox to 12mm{%
  \Fbox{$BO@(B\hskip1zw $BJ8(B}
  \hfill
  \vtop{\hbox to 33.5mm{\hss\smash{%
   \reset@font\slarge\sffamily\slshape Technical Papers}\hss}%
   \nointerlineskip\vskip1mm
   \hbox to 33.5mm{\leaders\hrule height.1mm\hfil}}%
  \unitlength=.3mm
  \begin{picture}(5.5,12.5)
   \put(0,-3){\line(2,5){6}}%
  \end{picture}\par
  \vss}
\nointerlineskip%%\vskip3mm
}

\def\type@researchnote{%
   \fboxsep=.5mm
   \vbox to 12mm{%
   \WDFbox{$B%7%g!<%H%N!<%H(B}\hfill
   \vtop{\hbox to 31.5mm{\hss %
       {\reset@font\slarge\sffamily\slshape Research Notes}\hss}%
   \nointerlineskip\vskip1mm
   \hbox to 31.5mm{\leaders\hrule height.1mm\hfil}}%
   \unitlength=.3mm
   \begin{picture}(5.5,12.5)
   \put(0,-3){\line(2,5){6}}%
   \end{picture}\par
   \vss}
   \nointerlineskip%%\vskip5mm
}

\def\type@technicalreport{%
  \vbox to 12mm{%
  \GIbox{$B5;(B}\hskip1mm\GIbox{$B=Q(B}\hskip1mm\GIbox{$B;q(B}\hskip1mm\GIbox{$BNA(B}%
  \hfill
  \vtop{\hbox to 33.5mm{\hss\smash{%
        \reset@font\slarge\sffamily\slshape Technical Reports}\hss}%
   \nointerlineskip\vskip1mm
  \hbox to 33.5mm{\leaders\hrule height.1mm\hfil}}%
  \unitlength=.3mm
  \begin{picture}(5.5,12.5)
  \put(0,-3){\line(2,5){6}}%
  \end{picture}\par
  \vss}
  \nointerlineskip%%\vskip5mm
}

\def\type@Specialissue{%
  \vbox to 12mm{\Fbox{$BFC(B\hskip1zw $B=8(B}
  \hskip3mm\@issueon
  \vss}%
\nointerlineskip
}

\def\type@specialissue{%
  \vbox to 12mm{\DFbox{$B>.(B\hskip1zw $BFC(B\hskip1zw $B=8(B}
  \hskip3mm\@issueon
  \vss}%
\nointerlineskip
}

\def\type@specialpaper{%
  \vbox to 12mm{\DFbox{$BFC=8O@J8(B}
  \hskip3mm\@issueon
  \vss}%
\nointerlineskip
}
\def\type@interimreport{%
  \vbox to 12mm{\Fbox{$BJs(B\hskip1zw $B9p(B}
  \hskip3mm\@issueon
  \vss}%
\nointerlineskip
}

\def\type@surveypaper{%
  \vbox to 12mm{\Fbox{$B2r(B\hskip1zw $B@b(B}
  \hskip3mm\@issueon
  \vss}%
\nointerlineskip
}

\def\type@aimap{%
%%\if@final
%%\includegraphics[height=8mm]{../logo-eps/aimap.eps}\par
%%\else
  \vbox to 12mm{\makebox{{\Huge\sl A\kern-.25ex I}$B%^%C%W(B}
  \hskip3mm\@issueon
  \vss}%
\nointerlineskip
%%\fi
}
%%
%% 2008.08.13-begin by morita
\def\type@originalpaper{%
  \fboxsep=.5mm
  \vbox to 12mm{%
  \Fbox{$B86CxO@J8(B}
  \hfill
  \vtop{\hbox to 33.5mm{\hss\smash{%
   \reset@font\slarge\sffamily\slshape Original Paper}\hss}%
   \nointerlineskip\vskip1mm
   \hbox to 33.5mm{\leaders\hrule height.1mm\hfil}}%
  \unitlength=.3mm
  \begin{picture}(5.5,12.5)
   \put(0,-3){\line(2,5){6}}%
  \end{picture}\par
  \vss}
\nointerlineskip%%\vskip3mm
}

%% 2010.08.30 remove AIFP by morita

\def\type@shortpaper{%
  \fboxsep=.5mm
  \vbox to 12mm{%
  \Fbox{$BB.JsO@J8(B}
  \hfill
  \vtop{\hbox to 33.5mm{\hss\smash{%
   \reset@font\slarge\sffamily\slshape Short Paper}\hss}%
   \nointerlineskip\vskip1mm
   \hbox to 33.5mm{\leaders\hrule height.1mm\hfil}}%
  \unitlength=.3mm
  \begin{picture}(5.5,12.5)
   \put(0,-3){\line(2,5){6}}%
  \end{picture}\par
  \vss}
\nointerlineskip%%\vskip3mm
}
%% 2008.08.13-end by morita

%% 2008.10.14-begin by morita
\def\type@exploratorypaper{%
  \fboxsep=.5mm
  \vbox to 12mm{%
  \Fbox{$BK(2jO@J8(B}
  \hfill
  \vtop{\hbox to 57.0mm{\hss\smash{%
   \reset@font\slarge\sffamily\slshape Exploratory Research Paper}\hss}%
   \nointerlineskip\vskip1mm
   \hbox to 57.0mm{\leaders\hrule height.1mm\hfil}}%
  \unitlength=.3mm
  \begin{picture}(5.5,12.5)
   \put(0,-3){\line(2,5){6}}%
  \end{picture}\par
  \vss}
\nointerlineskip%%\vskip3mm
}
%% 2008.10.14-end by morita

%% 2008.11.06-begin by morita
\def\type@invitedpaper{%
  \fboxsep=.5mm
  \vbox to 12mm{%
  \Fbox{$B>7BTO@J8(B}
  \hfill
  \vtop{\hbox to 33.5mm{\hss\smash{%
   \reset@font\slarge\sffamily\slshape Invited Paper}\hss}%
   \nointerlineskip\vskip1mm
   \hbox to 33.5mm{\leaders\hrule height.1mm\hfil}}%
  \unitlength=.3mm
  \begin{picture}(5.5,12.5)
   \put(0,-3){\line(2,5){6}}%
  \end{picture}\par
  \vss}
\nointerlineskip%%\vskip3mm
}
%% 2008.10.06-end by morita

%%% 2002.10.14-begin by kamisima
\if@interimreport
 \@ShowCommentatorfalse
\else
 \if@surveypaper 
  \@ShowCommentatorfalse
 \else
  \if@aimap
   \@ShowCommentatorfalse
  \else
   \@ShowCommentatortrue
  \fi
 \fi
\fi
%%% 2002.10.14-end by kamisima
\if@english
 \let\@english\@technicalpaper
\fi
%%
%% 2008.10.15-begin by morita
%% 2008.11.06 modified by morita
\def\@maketitle{%
  \if@originalpaper          {\reset@font\large\bfseries \type@originalpaper}
%% 2010.08.30 remove AIFP by morita
  \else \if@shortpaper       {\reset@font\large\bfseries \type@shortpaper}
  \else \if@exploratorypaper {\reset@font\large\bfseries \type@exploratorypaper}
  \else \if@Specialissue     {\reset@font\large\bfseries \type@Specialissue}
  \else \if@specialissue     {\reset@font\large\bfseries \type@specialissue}
  \else \if@specialpaper     {\reset@font\large\bfseries \type@specialpaper}
  \else \if@interimreport    {\reset@font\large\bfseries \type@interimreport}
  \else \if@surveypaper      {\reset@font\large\bfseries \type@surveypaper}
  \else \if@aimap            {\reset@font\large\bfseries \type@aimap}
  \else \if@invitedpaper     {\reset@font\large\bfseries \type@invitedpaper}
  \else {\reset@font\large\bfseries \type@originalpaper}
  \fi
  \fi
  \fi
  \fi
  \fi
  \fi
  \fi
  \fi
  \fi
  \fi
%% 2008.10.15-end by morita
  
\if@english
%% NEW ADD 2000.11.20
  {\Huge\bfseries \@etitle \par} %% 2008.10.10 T.Kamishima
  \vskip1mm
  {\Eslarge \@esubtitle\par}
\else
\font\TMPfont=min10 at 33Q
\let\TMPfont\HUGE
  {\TMPfont\kanjiskip=-1H plus 1H minus 1H \@jtitle\par}
 \ifx\@jsubtitle\empty\else
 \nointerlineskip
 \vskip2mm
 {\LARGE \@jsubtitle\par}
 \fi
  \vskip2mm
  {\LARGE\bfseries \@etitle \par}
 \ifx\@esubtitle\empty
 \else
 \nointerlineskip
 \vskip2mm
%% {\Large \@esubtitle\par}
%% {\Eslarge\bfseries \@esubtitle\par}
 {\Eslarge \@esubtitle\par}
 \fi
%%  {\LARGE\bfseries \@etitle \par}
%%\else
%%  {\HUGE \@jtitle\par}
%%  \vskip2mm
%%  {\LARGE\bfseries \@etitle \par}
%% NEW ADD 2000.11.20
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
%% End of file `jsaiart.cls'.
%%
