\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{man_cv}[2020/12/20 Custom class for Manfred Awesomic CV]

\LoadClass{article}

\RequirePackage[headheight=32pt]{geometry}
\RequirePackage{lastpage}
\RequirePackage{hyperref}
\RequirePackage{fancyhdr}
\RequirePackage[dvipsnames]{xcolor}

% Manfred colors
\definecolor{manblue}{RGB}{24, 67, 130}
\definecolor{mangreen}{RGB}{13, 161, 164}
\definecolor{manbg}{RGB}{248, 247, 243}

% Link color configuration
\hypersetup{
  colorlinks=true,
  linkcolor=mangreen,
  urlcolor=manblue
}

\def\cvname#1{\def\@cvname{#1}}
\def\cvage#1{\def\@cvage{#1}}
\def\cvrole#1{\def\@cvrole{#1}}
\def\cvyearsexp#1{\def\@cvyearsexp{#1}}

% Define headers and footers
\fancypagestyle{title}{
  % Pagestyle for first page
  \renewcommand{\headrulewidth}{0pt}
  \fancyhead[L]{\textbf{\@cvname}\\\@cvage~años} % TODO: pluralize with locale
  \fancyhead[C]{}
  \fancyhead[R]{\textbf{\@cvrole}\\\@cvyearsexp~años de experiencia} % TODO: pluralize with locale
  \fancyfoot[C]{\thepage~/~\pageref{LastPage}}
}

\fancypagestyle{body}{
  % Pagestyle for the rest of the document
  \renewcommand{\headrulewidth}{0pt}
  \fancyhead{}
  \fancyfoot[C]{\thepage~/~\pageref{LastPage} \\ \ \\ {\footnotesize Este documento contiene datos personales protegidos por el Reglamento Europeo de Protección de Datos, el titular de los mismos prohíbe su difusión sin su consentimiento previo.}}
}

\newcommand{\CVIntro}{
  \section*{Intro}
}

\newcommand{\CVObjetivosProfesionales}{
  \section*{Objetivos profesionales}
}

\newcommand{\CVHabilidadesTransversales}{
  \section*{Habilidades transversales}
}

\newcommand{\CVExperienciasSignificativas}{
  \section*{Experiencias significativas}
}

\newcommand{\CVRelacionesSignificativas}{
  \section*{Relaciones significativas}
}

\newcommand{\CVExperiencia}{
  \section*{Experiencia}
}

\newcommand{\CVExperienciaEntrada}[2]{
  \subsection*{#1 / \textit{#2}}
}

\newcommand{\CVFormacion}[1]{
  \section*{Formación}
  \begin{description}
    #1
  \end{description}
}

\newcommand{\CVFormacionItem}[3]{
  \item[#1] \emph{#2}, #3.
}

\newcommand{\CVIdiomas}{
  \section*{Idiomas}
}

\newcommand{\CVMiscelanea}{
  \section*{Miscelánea}
}
