globalVariables("player")
#' Get 2024 Player Data from WNBA Statistics
#'
#' This function retrieves the statistics of a specified WNBA player from the dataset.
#' The player's name is case-insensitive and is converted to uppercase for matching.
#'
#' @param player_name A character string representing the name of the player whose data is to be retrieved.
#'
#' @return A [dplyr::tibble] containing the player's statistics if the player is found. 
#' If the player is not found, a message indicating that the player was not found is returned.
#'
#' @details The function checks for the presence of the player in the dataset. 
#' If exactly one match is found, it returns a summary of the player's statistics, 
#' including points, rebounds, assists, and more. Additionally, it provides a link to the player's stats page.
#'
#' @seealso [wnba_stats_24]
#' @examples
#' get_wnba_player_stats("Caitlin Clark")
#' get_wnba_player_stats("A'ja Wilson")
#' get_wnba_player_stats("Unknown Player")  # Should return a not found message
#'
#' @author Sophia Hillard
#'
#' @import dplyr
#' @export 



get_wnba_player_stats <- function(player_name) {
  # this function will get the necessary player data and vectorise it
  player_name <- toupper(player_name)
  # ensuring there isn't case sensitivity
  player_info <- wnba_stats_24 |> 
    filter(player_name == player)
  
  player_check <- nrow(player_info)
  
  if (player_check != 1) {
    
    return(paste("Player", player_name, "not found. Please check the spelling and remember that only players from the 2024 season will be represented here."))
    # using paste here instead of print because I want to just return the function at the end, but this part is to ensure that if the player isn't there the function won't break
  }
  
  else {
    player_site <- paste("https://stats.wnba.com/player/",player_info$lookup,"/", sep = "")
    player_site <- gsub(" ", "", player_site)
    player_additional <- (paste("For more information on", player_info$player, "visit", player_site))
    cat(player_additional)
    player_summary <- player_info[-30]
    player_summary_return <- as.data.frame(player_summary)
    message(player_additional)
    return(player_summary_return)
  }
}