\ProvidesClass{utexas-dissertation}[2017/06/12 UTexas Dissertation]

\LoadClassWithOptions{memoir}

% Set Page Geometry
\usepackage[margin=1in,includefoot]{geometry}

% Set Ragged Right
\usepackage{ragged2e}
\RaggedRight
\setlength{\parindent}{3em}

% Set Pagination to bottom/center
\pagestyle{plain}

% Typography
\usepackage{utexas-dissertation-typography}

% Set Footnote Styles
\usepackage{utexas-dissertation-footnotes}

% Global typographic properties (not Font family)
% \DoubleSpacing % < This is what Memoir class suggests, but it's not enough
\renewcommand{\baselinestretch}{2}


% Frontmatter
\usepackage{utexas-dissertation-frontmatter}

% Table of Contents
\usepackage{utexas-dissertation-toc}

% Heading Styles
\usepackage{utexas-dissertation-headings}