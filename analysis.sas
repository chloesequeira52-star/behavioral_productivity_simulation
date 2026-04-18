proc import datafile="/home/u64136090/sasuser.v94/future_you_sample.csv"
    out=future_you
    dbms=csv
    replace;
    guessingrows=max;
run;
proc contents data=future_you;
run;

proc print data=future_you (obs=20);
run;
proc means data=future_you mean;
    class person_id;
    var energy_score focus_score scrolling_minutes study_work_minutes mood_score stress_score sleep_hours;
run;
proc means data=future_you mean noprint;
    class person_id hour_of_day;
    var energy_score focus_score scrolling_minutes study_work_minutes;
    output out=hourly_summary mean=;
run;

proc print data=hourly_summary (obs=30);
run;
proc sgplot data=hourly_summary;
    where person_id ne . and hour_of_day ne .;
    series x=hour_of_day y=energy_score / group=person_id markers;
    xaxis label="Hour of Day";
    yaxis label="Average Energy Score";
    title "Average Energy by Hour for Each Person";
run;
proc sgplot data=hourly_summary;
    where person_id ne . and hour_of_day ne .;
    series x=hour_of_day y=scrolling_minutes / group=person_id markers;
    xaxis label="Hour of Day";
    yaxis label="Average Scrolling Minutes";
    title "Scrolling Minutes by Hour for Each Person";
run;
proc means data=future_you mean;
    class person_id hour_of_day;
    var study_work_minutes;
run;
proc sgplot data=hourly_summary;
    where person_id ne .;
    series x=hour_of_day y=study_work_minutes / group=person_id markers;
    xaxis label="Hour of Day";
    yaxis label="Productivity (Study/Work Minutes)";
    title "Productivity by Hour for Each Person";
run;
proc means data=future_you sum;
    class person_id;
    var study_work_minutes;
    output out=daily_total sum=total_productivity;
run;

proc print data=daily_total;
run;
proc sgplot data=daily_total;
    where person_id ne .;
    vbar person_id / response=total_productivity datalabel;
    xaxis label="Person";
    yaxis label="Total Daily Productivity";
    title "Total Daily Productivity by Person";
run;
proc means data=future_you sum;
    class person_id;
    var scrolling_minutes;
    output out=scrolling_total sum=total_scrolling;
run;

proc print data=scrolling_total;
run;
