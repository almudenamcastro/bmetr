% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/harmonics.R
\name{tmp_rectify}
\alias{tmp_rectify}
\alias{tmp_rectify_tsig}
\alias{tmp_smooth}
\alias{tmp_prevalent}
\title{Tempo Correction and Smoothing}
\usage{
tmp_rectify(x, ref, harmonics, rtol, rtol2 = rtol, cond = any)

tmp_rectify_tsig(x, ref, tsig, rtol = 0.15, rtol2 = rtol)

tmp_smooth(x, ref, tsig, rtol = 0.1, rtol2 = rtol, ref2 = 1, nref = 3)

tmp_prevalent(x, breaks = 30)
}
\arguments{
\item{x}{a sequence of tempi.}

\item{ref}{tempo reference(s) for the harmonics.}

\item{harmonics}{set of tempo harmonics to rectify.}

\item{rtol, rtol2}{ratios of tolerance to compute the bounds and determine
whether a given tempo is a harmonic of \code{ref}. \code{rtol2} can be
specified to implement asymmetric bounds; otherwise, they are symmetric.}

\item{cond}{condition to apply the correction.}

\item{tsig}{time signature. Notably, this function distinguishes between
binary time signatures (specified by \code{2}), time signatures with ternary
subdivision (specified by \code{0.3}).}

\item{ref2}{additional tempo harmonic to consider.}

\item{nref}{number of previous samples to take into account.}

\item{breaks}{number of breaks to compute the histogram.}
}
\value{
The rectified sequence, except for \code{tmp_prevalent}, which
returns a single value.
}
\description{
Functions for data cleaning. \code{tmp_rectify} is a general function to
rectify a set of tempo harmonics in a sequence given some reference.
\code{tmp_rectify_tsig} and \code{tmp_smooth} are wrappers around the latter
to rectify a specific set of tempo harmonics given a time signature and to
smooth a sequence of tempi respectively. The function \code{tmp_prevalent}
is intended to find the most prevalent tempo in a sequence of tempi.
}
