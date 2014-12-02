\name{getDefaultRetCorCenterSample}
\alias{getDefaultRetCorCenterSample}
	
\title{
	Gets the index of the sample with most peaks in it.
}
\description{
	Gets the index of the sample with most peaks in it. This is used if no center sample
	for retention time correction has been defined by the user.
}
\usage{
getDefaultRetCorCenterSample(xset)
}
\arguments{
  \item{xset}{\code{xcmsSet} object}
}
\details{

}
\value{
	The file index of the sample with most peaks in it.
}
\references{
}
\author{
Gunnar Libiseller
}
\note{
}
\seealso{
}
\examples{


## The function is currently defined as
function (xset) 
{
    ret <- NULL
    for (i in 1:length(xset@filepaths)) {
        ret <- c(ret, sum(xset@peaks[, "sample"] == i))
    }
    return(which.max(ret))
  }
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{method}