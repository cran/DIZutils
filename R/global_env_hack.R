# DIZutils - Utilities for 'DIZ' R Package Development
# Copyright (C) 2020-2021 Universitätsklinikum Erlangen, Germany
#
# This program is free software: you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation, either version 3 of the License, or
# (at your option) any later version.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with this program.  If not, see <http://www.gnu.org/licenses/>.

#' @title global_env_hack
#' @description Hack variable into global env (bypasses R CMD checks).
#'
#' @param key A character (!) string. The name of the assigned variable
#' @param val An object. The object that will be assigned to 'key'.
#' @param pos An integer. The position of the environment (default: 1).
#'
#' @seealso \url{http://adv-r.had.co.nz/Environments.html}
#' @return No return value, called for side effects (see description).
#' @examples
#' utils_path <- tempdir()
#' global_env_hack(
#'   key = "utils_path",
#'   val = utils_path,
#'   pos = 1L
#' )
#'
#' @export
#'
global_env_hack <- function(key,
                            val,
                            pos = 1) {
  assign(
    key,
    val,
    envir = as.environment(pos)
  )
}
