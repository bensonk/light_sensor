handle_file <- function(end_time, fname, title) {
  with(read.csv(fname, header=FALSE), { 
    start_ts = end_time - length(V1)
    timestamps <- 1:length(V1) + start_ts
    png(paste("graphs/", title, ".png", sep=""), width=1800, height=1000)
    plot(timestamps, V1, type='l', col='darkgreen', xlab="Time",
         ylab="Light Intensity", yaxt="n", main=title) 
    dev.off()
  })
}


handle_file(strptime("2011-08-18 20:18", "%Y-%m-%d %H:%M"), "data/light_sensor_aug_18.csv", "Light vs Time August 18")
handle_file(strptime("2011-08-20 21:10", "%Y-%m-%d %H:%M"), "data/light_sensor_aug_20.csv", "Light vs Time August 20")
handle_file(strptime("2011-08-22 21:11", "%Y-%m-%d %H:%M"), "data/light_sensor_aug_22.csv", "Light vs Time August 22")
