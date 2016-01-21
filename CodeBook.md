# Variable Names

The variables in question can be found in the data file `tidy_dataset.csv`. There are a total of 48 observations in the resulting dataset. These can be split into two types of variables:

* **Time** variables (`time_`)

* **Frequency** variables (`freq_`)

These correspond to the prefix of each variable, and tells us that the variable is a time-based observation or a frequency based observation. Each of the `time` and `freq` observations can be further split into `Body` and `Gravity` measurements, corresponding body and gravity acceleration signals. In a similar fashion the `Acc` signal was further decomposed into body and gravitational accelaration signals. All of these were further decomposed to obtain the `Jerk` signal and finally, we report the mean (`mean`) and standard deviation (`std`) measurement for each, in all spatial directions denoted by `{x, y, z}`.

A full list of the 48 observations are found below:

1. `time_BodyAcc_mean_x`      

2. `time_BodyAcc_mean_y`

3. `time_BodyAcc_mean_z`

4. `time_BodyAcc_std_x`

5. `time_BodyAcc_std_y`

6. `time_BodyAcc_std_z`

7. `time_GravityAcc_mean_x`  

8. `time_GravityAcc_mean_y`  

9.`time_GravityAcc_mean_z`   

10. `time_GravityAcc_std_x`    

11. `time_GravityAcc_std_y`    

12. `time_GravityAcc_std_z`   

13. `time_BodyAccJerk_mean_x`  

14. `time_BodyAccJerk_mean_y`  

15. `time_BodyAccJerk_mean_z`  

16. `time_BodyAccJerk_std_x`  

17. `time_BodyAccJerk_std_y`   

18. `time_BodyAccJerk_std_z`   

19. `time_BodyGyro_mean_x`     

20. `time_BodyGyro_mean_y`    

21. `time_BodyGyro_mean_z`     

22. `time_BodyGyro_std_x`      

23. `time_BodyGyro_std_y`      

24. `time_BodyGyro_std_z`     

25. `time_BodyGyroJerk_mean_x` 

26. `time_BodyGyroJerk_mean_y` 

27. `time_BodyGyroJerk_mean_z` 

28. `time_BodyGyroJerk_std_x` 

29. `time_BodyGyroJerk_std_y`  

30. `time_BodyGyroJerk_std_z`  

31. `freq_BodyAcc_mean_x`      

32. `freq_BodyAcc_mean_y`     

33. `freq_BodyAcc_mean_z`      

34. `freq_BodyAcc_std_x`

35. `freq_BodyAcc_std_y`

36. `freq_BodyAcc_std_z`      

37. `freq_BodyAccJerk_mean_x`  

38. `freq_BodyAccJerk_mean_y`  

39. `freq_BodyAccJerk_mean_z`  

40. `freq_BodyAccJerk_std_x`  

41. `freq_BodyAccJerk_std_y`   

42. `freq_BodyAccJerk_std_z`   

43. `freq_BodyGyro_mean_x`     

44. `freq_BodyGyro_mean_y`    

45. `freq_BodyGyro_mean_z`     

46. `freq_BodyGyro_std_x`      

47. `freq_BodyGyro_std_y`      

48. `freq_BodyGyro_std_z`  