## Ruby HTTP GET Script

This Ruby script will repeat an HTTP GET request to the `base_url` based the amount set on the `repeatget` variable.

The current `base_url` will execute an HTTP GET to http://worldtimeapi.org/api/timezone/America/New_York resulting in the following output. 

`{"abbreviation":"EDT","client_ip":"YOUR LOCAL IP","datetime":"2021-07-29T20:08:36.070487-04:00","day_of_week":4,"day_of_year":210,"dst":true,"dst_from":"2021-03-14T07:00:00+00:00","dst_offset":3600,"dst_until":"2021-11-07T06:00:00+00:00","raw_offset":-18000,"timezone":"America/New_York","unixtime":1627603716,"utc_datetime":"2021-07-30T00:08:36.070487+00:00","utc_offset":"-04:00","week_number":30}`

`HTTP GET is Working!`

### How do I get started?

With Ruby installed run the following:

`sudo bash run.sh` 

This command will execute the `run.sh` bash script to install the needed dependencies and run the Ruby script. Note, super user is required due to the installation of the required dependency, HTTPX. 

### How do I install Ruby? 

Visit - https://www.ruby-lang.org/en/documentation/installation/

### Can I customize the script call another URL? 

Yes, change the `base_url` to run an HTTP GET request to the URL of your choice. Bonus: Visit https://www.worldtimeapi.org/pages/examples to learn more on how to change the `base_url` to reflect your timezone. 

### Can I change the amount the script runs an HTTP GET request?

Yes, change the amount on the `repeatget` variable to the amount of your choice. 
