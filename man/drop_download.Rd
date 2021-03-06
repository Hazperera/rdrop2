% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/drop_download.R
\name{drop_download}
\alias{drop_download}
\title{Download a file from Dropbox to disk.}
\usage{
drop_download(
  path,
  local_path = NULL,
  overwrite = FALSE,
  progress = interactive(),
  verbose = interactive(),
  dtoken = get_dropbox_token()
)
}
\arguments{
\item{path}{path to a file in Dropbox}

\item{local_path}{path to save file to. If NULL (the default), saves file to working directory with same name. If not null, but a valid folder, file will be saved in this folder with same basename as path. If not null and not a folder, file will be saved to this path exactly.}

\item{overwrite}{If TRUE, overwrite local file. Defaults to FALSE}

\item{progress}{If TRUE, show a progress bar for large file downloads. Defaults to TRUE in interactive sessions, otherwise FALSE.}

\item{verbose}{if TRUE, emit message giving location and size of the newly downloaded file. Defaults to TRUE in interactive sessions, otherwise FALSE.}

\item{dtoken}{The Dropbox token generated by \code{\link{drop_auth}}. rdrop2
will try to automatically locate your local credential cache and use them.
However, if the credentials are not found, the function will initiate a new
authentication request. You can override this in \code{\link{drop_auth}} by
pointing to a different location where your credentials are stored.}
}
\value{
TRUE if successful; error thrown otherwise.
}
\description{
Download a file from Dropbox to disk.
}
\examples{
\dontrun{

  # download a file to the current working directory
  drop_get("dataset.zip")

  # download again, overwriting previous result
  drop_get("dataset.zip", overwrite = TRUE)

  # download to a different path, keeping file name constant
  # will download to "some/other/place/dataset.zip"
  drop_get("dataset.zip", local_path = "some/other/place/")

  # download to to a different path, changing filename
  drop_get("dataset.zip", local_path = "some/other/place/not_a_dataset.zip")
}

}
\references{
\href{https://www.dropbox.com/developers/documentation/http/documentation#files-download}{API documentation}
}
