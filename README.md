# tubler

<!-- badges: start -->

<!-- badges: end -->

The goal of `tubler` is to provide some R functionality for solving the daily puzzle at <https://tuble.co.uk/>

## Installation

You can install the development version of `tubler` like so:

``` r
library(devtools)

install_github("bakenzua/tubler")
```

## Example


``` r
library(tubler)

# answer is "Kingsbury"
tt <- guess_tuble("Oxford Circus", 5)
tt
#  [1] "Barbican"          "Bayswater"         "Belsize Park"     
#  [4] "Blackfriars"       "Elephant & Castle" "Finsbury Park"    
#  [7] "Gloucester Road"   "Holloway Road"     "Kilburn"          
# [10] "Kingsbury"         "Liverpool Street"  "London Bridge"    
# [13] "Moorgate"          "Neasden"           "Notting Hill Gate"
# [16] "Old Street"        "Oval"              "Preston Road"     
# [19] "Royal Oak"         "Stockwell"         "Tufnell Park"     
# [22] "Warwick Avenue"   

guess_tuble("Neasden", 2, tt)
# [1] "Kingsbury"    "Preston Road"
```

![image](https://github.com/bakenzua/tubler/assets/17120936/8824e8e6-5137-4feb-bbc6-03fa0d728597){width="472"}
