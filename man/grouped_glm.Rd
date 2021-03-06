% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/grouped_glm.R
\name{grouped_glm}
\alias{grouped_glm}
\title{Function to run generalized linear model (glm) across multiple
grouping variables.}
\usage{
grouped_glm(
  data,
  grouping.vars,
  ...,
  output = "tidy",
  tidy.args = list(conf.int = TRUE, conf.level = 0.95),
  augment.args = list()
)
}
\arguments{
\item{data}{Dataframe (or tibble) from which variables are to be taken.}

\item{grouping.vars}{Grouping variables.}

\item{...}{Additional arguments to \code{broom::tidy}, \code{broom::glance}, or
\code{broom::augment} S3 method.}

\item{output}{A character describing what output is expected. Two possible
options: \code{"tidy"} (default), which will return the results, or \code{"glance"},
which will return model summaries.}

\item{tidy.args}{A list of arguments to be used in the relevant \code{S3} method.}

\item{augment.args}{A list of arguments to be used in the relevant \code{S3} method.}
}
\value{
A tibble dataframe with tidy results from linear model.
}
\description{
Function to run generalized linear model (glm) across multiple
grouping variables.
}
\examples{

# to get tidy output
groupedstats::grouped_glm(
  data = groupedstats::Titanic_full,
  formula = Survived ~ Sex,
  grouping.vars = Class,
  family = stats::binomial(link = "logit")
)

# to get glance output
groupedstats::grouped_glm(
  data = groupedstats::Titanic_full,
  formula = Survived ~ Sex,
  grouping.vars = Class,
  family = stats::binomial(link = "logit"),
  output = "glance"
)
}
\seealso{
\code{\link{grouped_lm}}, \code{\link{grouped_lmer}},
\code{\link{grouped_glmer}}
}
\author{
Indrajeet Patil
}
