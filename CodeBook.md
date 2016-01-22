# Variable Names

The variables in question can be found in the data file `tidy_dataset.csv`. There are a total of 48 observations in the resulting dataset. These can be split into two types of variables:

* **Time** variables (`time_`)

* **Frequency** variables (`freq_`)

These correspond to the prefix of each variable, and tells us that the variable is a time-based observation or a frequency based observation. Each of the `time` and `freq` observations can be further split into `Body` and `Gravity` measurements, corresponding body and gravity acceleration signals. In a similar fashion the `Acc` signal was further decomposed into body and gravitational accelaration signals. All of these were further decomposed to obtain the `Jerk` signal and finally, we report the mean (`mean`) and standard deviation (`std`) measurement for each, in all spatial directions denoted by `{x, y, z}`.

A full list of the 48 observations are found below:

1. `time_BodyAcc_mean_X`      

2. `time_BodyAcc_mean_Y`

3. `time_BodyAcc_mean_Z`

4. `time_BodyAcc_std_X`

5. `time_BodyAcc_std_Y`

6. `time_BodyAcc_std_Z`

7. `time_GravityAcc_mean_X`  

8. `time_GravityAcc_mean_Y`  

9.`time_GravityAcc_mean_Z`   

10. `time_GravityAcc_std_X`    

11. `time_GravityAcc_std_Y`    

12. `time_GravityAcc_std_Z`   

13. `time_BodyAccJerk_mean_X`  

14. `time_BodyAccJerk_mean_Y`  

15. `time_BodyAccJerk_mean_Z`  

16. `time_BodyAccJerk_std_X`  

17. `time_BodyAccJerk_std_Y`   

18. `time_BodyAccJerk_std_Z`   

19. `time_BodyGyro_mean_X`     

20. `time_BodyGyro_mean_Y`    

21. `time_BodyGyro_mean_Z`     

22. `time_BodyGyro_std_X`      

23. `time_BodyGyro_std_Y`      

24. `time_BodyGyro_std_Z`     

25. `time_BodyGyroJerk_mean_X` 

26. `time_BodyGyroJerk_mean_Y` 

27. `time_BodyGyroJerk_mean_Z` 

28. `time_BodyGyroJerk_std_X` 

29. `time_BodyGyroJerk_std_Y`  

30. `time_BodyGyroJerk_std_Z`  

31. `freq_BodyAcc_mean_X`      

32. `freq_BodyAcc_mean_Y`     

33. `freq_BodyAcc_mean_Z`      

34. `freq_BodyAcc_std_X`

35. `freq_BodyAcc_std_Y`

36. `freq_BodyAcc_std_Z`      

37. `freq_BodyAccJerk_mean_X`  

38. `freq_BodyAccJerk_mean_Y`  

39. `freq_BodyAccJerk_mean_Z`  

40. `freq_BodyAccJerk_std_X`  

41. `freq_BodyAccJerk_std_Y`   

42. `freq_BodyAccJerk_std_Z`   

43. `freq_BodyGyro_mean_X`     

44. `freq_BodyGyro_mean_Y`    

45. `freq_BodyGyro_mean_Z`     

46. `freq_BodyGyro_std_X`      

47. `freq_BodyGyro_std_Y`      

48. `freq_BodyGyro_std_Z`  