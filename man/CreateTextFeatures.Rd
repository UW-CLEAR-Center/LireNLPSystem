% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/CreateTextFeatures.R
\name{CreateTextFeatures}
\alias{CreateTextFeatures}
\title{Creates text-based features from a radiology report corpus}
\usage{
CreateTextFeatures(segmented.reports, id_col = "imageid",
  text.cols = c("body", "impression"),
  all.stop.words = setdiff(stopwords(), c("no", "not", "nor")),
  finding.dictionary = NULL, docfreq = "prop", min_doc_prop = 0,
  max_doc_prop = 1, termfreq = "count", min_term_freq = 1,
  max_term_freq = NULL, tf_type = "boolean", df_type = "unary",
  n_gram_length = 1)
}
\arguments{
\item{segmented.reports}{Input data frame with}

\item{id_col}{The ID column in segmented.reports, defaults to imageid}

\item{text.cols}{Vector of findings text column names in segmented.reports, defaults to  c("body","impression")}

\item{all.stop.words}{List of stop words, defaults to English stopword list excluding negation}

\item{finding.dictionary}{Dictionary object to map findings, defaults to NULL}

\item{docfreq}{See quanteda::dfm_trim; One of "count", "inverse", "inversemax", "inverseprob", "unary"}

\item{min_doc_prop}{minimum/maximum values of a feature's document frequency, below/above which features will be removed}

\item{termfreq}{See quanteda::dfm_trim; One of "count", "prop", "propmax", "logcount", "boolean", "augmented", "logave"}

\item{min_term_freq}{minimum/maximum values of feature frequencies across all documents, below/above which features will be removed}

\item{max_term_freq}{Above}

\item{tf_type}{See quanteda::dfm_weight; One of "count", "prop", "propmax", "logcount", "boolean", "augmented", "logave"}

\item{df_type}{See quanteda::docfreq; One of "count", "inverse", "inversemax", "inverseprob", "unary"}

\item{n_gram_length}{Unigram, bigram, or trigram features; defaults to 3 (trigrams)}
}
\value{
A document frequency matrix with each row as a unique report,
each column is a feature, and the cells are the counts in the document.
}
\description{
This function creates N-gram features from a radiology report corpus, where N-gram
}
\examples{
CreateTextFeatures(segmented.reports)
}
\keyword{CreateTextFeatures}
