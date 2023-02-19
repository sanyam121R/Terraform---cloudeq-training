memebers = ["anuj.veerma", "sanyam.rathore"]

count = lenght(memebers)

common_tags = {
  Name    = "${memebers[count.index]}_trying_out_count"
  Owner   = "${memebers[count.index]}@cloudeq.com"
  Purpose = "training"
}

ami_region = "us-east-1"