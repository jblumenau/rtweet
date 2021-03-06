% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/rate.limit.R
\name{rate_limit}
\alias{rate_limit}
\title{rate_limit}
\usage{
rate_limit(token, query = NULL, rest = TRUE)
}
\arguments{
\item{token}{OAuth token. By default \code{token = NULL} fetches a
non-exhausted token from an environment variable. Find instructions
on how to create tokens and setup an environment variable in the
tokens vignette (in r, send \code{?tokens} to console).}

\item{query}{If null, returns entire rate limit request object as
data frame. otherwise, query returns specific values matching
the query of interest; e.g., \code{query = "lookup/users"} returns
remaining limit for user lookup requests;
\code{type = "followers/ids"} returns remaining limit for
follower id requests; \code{type = "friends/ids"} returns
remaining limit for friend id requests.}

\item{rest}{Logical indicating whether to send request to REST
API. At this time, this should always be TRUE.}
}
\value{
Data frame with rate limit respones details. If query
  is specified, only relevant rows are returned.
}
\description{
Returns rate limit information for Twitter
  access tokens.
}
\seealso{
\url{https://dev.twitter.com/overview/documentation}
}

