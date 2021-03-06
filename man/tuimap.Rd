% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/tuimaps.R
\name{tuimap}
\alias{tuimap}
\title{Create a \code{tuimap} htmlwidget}
\usage{
tuimap(shape = NULL, code = NULL, label = NULL, data = NULL,
  options = NULL, width = NULL, height = NULL, elementId = NULL)
}
\arguments{
\item{shape}{An \code{sf} object.}

\item{code}{Variable to use as unique identifier for the polygons.}

\item{label}{Variable to use as label for the polygons.}

\item{data}{A \code{list} of parameters for the data used in the chart.}

\item{options}{A \code{list} of options for the chart.}

\item{width}{A numeric input in pixels.}

\item{height}{A numeric input in pixels.}

\item{elementId}{Use an explicit element ID for the widget.}
}
\value{
A \code{tuichart} \code{htmlwidget} object.
}
\description{
Create a \code{tuimap} htmlwidget
}
\examples{

library(rnaturalearth)

# Retrieve polygons
sa <- ne_countries(continent = "south america", returnclass = "sf")
# add a random numeric variable
sa$random <- sample(1:100, nrow(sa), TRUE)

# draw map
tuimap() \%>\%
  add_map_data(sa, aes(code = adm0_a3, label = name, value = random)) \%>\%
  tui_chart(title = "A map")

}
