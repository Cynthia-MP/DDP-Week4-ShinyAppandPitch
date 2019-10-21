## PROJECT FILE LOCATIONS

- The app developed for the first part of the assignment is avalilable at: https://cdmcgowanpoole.shinyapps.io/DDPWk4ShinyApp/

- The presentation is available at: https://cdmcgowanpoole.shinyapps.io/DDP-Week4-ShinyAppandPitch/_w_c5504237/_w_3c365a78/#(5

- Files for the presentation are avalilable on the GitHub: https://github.com/Cynthia-MP/DDP-Week4-ShinyAppandPitch

## OVERVIEW AND INSTRUCTIONS
The Auto Analysis App, created for Week 4 Course Project in the Developing Data Products course from Johns Hopkins on Coursera, allows the user to maniplate an interactive plot of Auto data to better understand the corralations between 6 automotive variables including mpg,cylinders,horsepower,weight,year,and acceleration. The output for this application is a multifaceted analysis based on the user's selected inputs. 

This application will initially display default inputs, however, the user may change any of the variables by selecting the drop-down arrow next to each input choices. The user may also change the sample size and the height of the plot by moving the slider buttons. Please note that some input choices may take longer to render updates to the resulting plot. 

The application was developed using the plotly package which also allows the you use the Plotly controls, located at the top of the plot, to zoom in on certain points on the plot as well as being able to see the details when hovering over specific points on the plot. 

The user should scroll down to be able to see all of the application controls and inputs. 

## DATA SOURCE
This dataset was taken from the StatLib library which is maintained at Carnegie Mellon University. The dataset was used in the 1983 American Statistical Association Exposition and included in the book "An Introduction to Statistical Learning" (James, Witten, Hastie and Tibshirani, 2013).  

The Auto Data Set is a data frame from the ISLR package with 392 observations on the following 9 variables. *For simplicity, only 6 of the 9 factors were used for this current application including mpg,cylinders,horsepower,weight,year,and acceleration.* 

 - mpg-miles per gallon
 - cylinders-Number of cylinders between 4 and 8
 - displacement-Engine displacement (cu. inches)
 - horsepower-Engine horsepower
 - weight-Vehicle weight (lbs.)
 - acceleration-Time to accelerate from 0 to 60 mph (sec.)
 - year -Model year (modulo 100)
 - origin-Origin of car (1. American, 2. European, 3. Japanese)
 - name-Vehicle name


 - *References*
James, G., Witten, D., Hastie, T., and Tibshirani, R. (2013) An Introduction to Statistical Learning with applications in R, www.StatLearning.com, Springer-Verlag, New York
