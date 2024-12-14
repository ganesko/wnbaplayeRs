globalVariables(c("year_id"))
#' This function graphs a statistic for one or more WNBA players selected from the data
#'
#' @param player_names A character string; the name of the player(s) whose statistic will be graphed
#' @param stat_type A character string; the name of the basketball statistic that will be graphed
#'
#' @return A ggplot object: a graph showing the player's statistic over the time they've been in the league
#' (only if the player is in the data).
#' If the player isn't found, a message will appear to say that.
#'
#'
#' @details This function checks to see if the statistic type and player are in the data
#' if matches are found for both, it returns a graph of the player(s)' statistic over time.
#' This graph can be a comparison for multiple players or just show one player
#' 
#' @seealso [wnba]
#' @examples
#' wnba_stat_grapher("Sue Bird", "f_tr")
#' wnba_stat_grapher(c("Sue Bird", "Candace Parker"), "f_tr")
#' wnba_stat_grapher("A'ja Wilson", "mp_pct") 
#'
#' @import dplyr
#' @import ggplot2
#' @author Callie Showalter
#' @export
wnba_stat_grapher <- function(player_names, stat_type) {
  # check if chosen stat_type exists and write message if not
  if (!(stat_type %in% colnames(ourpackage::wnba))) {
    message("Stat type", stat_type, "isn't available in this dataset, please check spelling.")
  }
  
  # Filter data for the chosen player(s) and statistic
  player_data <- ourpackage::wnba |>
    dplyr::filter(player %in% player_names) |>
    dplyr::select(player, year_id, all_of(stat_type))
  
  if (nrow(player_data) == 0) {
    message("Player not found in dataset, please check case and spelling.")
  }
  
  # adding labels to graph
  ggplot(player_data, aes(
    x = year_id,
    y = .data[[stat_type]],
    color = player
  )) +
    geom_line(size = 1) +
    geom_point(size = 2) +
    labs(
      title = paste(stat_type, "Over Time"),
      x = "Year",
      y = stat_type,
      color = "Player"
    ) +
    theme_minimal()
}
