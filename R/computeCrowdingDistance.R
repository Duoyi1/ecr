#' Compute the crowding distance of a set of points.
#'
#' @param x [\code{matrix}]\cr
#'   Numeric matrix with each row represneting a points.
#' @return [\code{numeric}] Vector of crowding distance values.
#'
#' @references K. Deb, A. Pratap, S. Agarwal, T. Meyarivan, A fast and elitist
#' multiobjective genetic algorithm: NSGA-II, IEEE Transactions on Evolutionary
#' Computation In Evolutionary Computation, IEEE Transactions on, Vol. 6, No. 2.
#' (07 April 2002), pp. 182-197, doi:10.1109/4235.996017
#'
#' @export
computeCrowdingDistance = function(x) {
  n = nrow(x)
  d = ncol(x)
  cds = numeric(n)

  for (i in seq.int(d)) {
    # get the order of the points when sorted according to the i-th objective
    ord = order(x[, i])
    # set the extreme values to Inf
    cds[ord[1]] = Inf
    cds[ord[n]] = Inf
    # update the remaining crowding numbers
    for (j in 2:(n - 1L)) {
      cds[ord[j]] = cds[ord[j]] + (x[ord[j + 1L], i] - x[ord[j - 1L], i])
    }
  }
  return(cds)
}