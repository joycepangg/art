#' Creates beautiful abstract art
#' @export
#' @param input numeric variable
make_art <- function(input){
  if(missing(input)){
    x <- c(rnorm(300, 0, 1))
    y <- c(rnorm(300, 1, 4))
    z <- c(rep("x",200 ), rep("y", 200), rep("z", 200))
    df <- data.frame(x, y, z)
    ggplot(data = df, aes(x, y)) + geom_line(aes(color = z)) +
      theme_bw()+ scale_color_manual(values = c("#FFDB6D", "#C4961A", "#E7B800"))+
      theme(axis.title.x=element_blank(),axis.text.x=element_blank(),axis.ticks.x=element_blank())+
      theme(axis.title.y=element_blank(),axis.text.y=element_blank(),axis.ticks.y=element_blank())+
      theme(legend.position = "none")
  }else{
    set.seed(input)
    x <- c(rnorm(300, 0, 1))
    y <- c(rnorm(300, 1, 4))
    z <- c(rep("x",200 ), rep("y", 200), rep("z", 200))
    df <- data.frame(x, y, z)
    ggplot(data = df, aes(x, y)) + geom_line(aes(color = z)) +
      theme_bw()+ scale_color_manual(values = c("#FFDB6D", "#C4961A", "#E7B800"))+
      theme(axis.title.x=element_blank(),axis.text.x=element_blank(),axis.ticks.x=element_blank())+
      theme(axis.title.y=element_blank(),axis.text.y=element_blank(),axis.ticks.y=element_blank())+
      theme(legend.position = "none")
  }
}
