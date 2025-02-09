% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/GEX_projecTILS.R
\name{GEX_projecTILS}
\alias{GEX_projecTILS}
\title{ProjectTILs tool utility}
\usage{
GEX_projecTILS(
  ref_path,
  GEX,
  split_by,
  filtering = c(TRUE, FALSE),
  NA_cells = c(TRUE, FALSE)
)
}
\arguments{
\item{ref_path}{Path to reference TIL atlas file (ex: c:/Users/.../ref_TILAtlas_mouse_v1.rds). The atlas can be downloaded from the GitHub of ProjecTILs.}

\item{GEX}{GEX output of the VDJ_GEX_matrix function (VDJ_GEX_matrix[[2]])).}

\item{split_by}{Optional character vector to specify how the GEX should be split for analysis. This parameter can refer to any column in the GEX. If none is given by the user the analysis will take the whole GEX.}

\item{filtering}{Logical, if TRUE a filtering is apply which eliminates unwanted cells. By default it is set to FALSE.}

\item{NA_cells}{Logical, if TRUE the cells not assigned by projecTILs are kept in the bar plot, if FALSE, not assigned cells are filtered out. By default it is set to TRUE.}
}
\value{
Return a list. Element[[1]] is the GEX data frame containing two new columns containing ProjecTILs cell type assignment. Element[[2]] is the output of make.projection function from projecTILs based on the given GEX. Element[[3]] contains a UMAP plot per each groups based on projecTILs assignment. Element[[4]] plots of the fraction of cells with predicted state per cluster.
}
\description{
Projection of scRNA-seq data into reference single-cell atlas, enabling their celltype annotation based on the single-cell atlas.
}
\examples{
\dontrun{
#Without splitting argument, considering the whole VGM
output_projecTILS_wohle_VGM<-GEX_projecTILS(
ref_path = "c:/Users/.../ref_TILAtlas_mouse_v1.rds", GEX = VGM$GEX,
filtering =TRUE)
output_projecTILS_wohle_VGM[[3]] #Umap
output_projecTILS_wohle_VGM[[4]] #Barplots

#With splitting argument by groups_id
output_projecTILS_split_by_group<-GEX_projecTILS(
ref_path = "c:/Users/.../ref_TILAtlas_mouse_v1.rds", GEX = VGM$GEX,
filtering =  TRUE, split_by = "group_id", NA_cells = FALSE)
output_projecTILS_split_by_group[[3]] #Umap
output_projecTILS_split_by_group[[4]] #Barplots
}
}
