


wagePerhr=100;
numOfhrs=0;
isFullTime=1;
isPartTime=2;
totalSalary=0;
numOfWorkingDays=21;
noOfDaysworked=0;
for ((day=1; day<= $numOfWorkingDays; day++ ))
do
isRandomCheck=$((RANDOM%3));
case $isRandomCheck in
   $isFullTime)
              numOfhrs=8;;
   $isPartTime)
              numOfhrs=4;;
   *)
              numOfhrs=0;;
esac
salary=$(($wagePerhr*$numOfhrs));
totalSalary=$(($salary+$totalSalary));
done
echo $totalSalary
