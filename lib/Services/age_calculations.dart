

import 'package:age/age.dart';
import 'package:flutter/cupertino.dart';

//calculation part must hold on char in the app
class AgeCalculation{
      //Calculate Age of a person
   AgeDuration calculateAge(DateTime today,DateTime birthday ){
    AgeDuration age;
    age=Age.dateDifference(
        fromDate: birthday,
        toDate: today,
        includeToDate: false
    );
    return age;


  }
        //Calculate next birthdate
    AgeDuration nextBirthday(DateTime today,DateTime birthday){
      DateTime temp=DateTime(today.year,birthday.month,birthday.day);
      DateTime nextBirthdayDate=temp.isBefore(today)
          ?Age.add(date: temp, duration: AgeDuration(years: 1))
          :temp;
      AgeDuration nextBirthdayDuration=Age.dateDifference(fromDate: today, toDate: nextBirthdayDate) ;
      return nextBirthdayDuration;

    }
    //Calculate NextBirthday weekdays
      int nextbday(DateTime today,DateTime birthday){
        DateTime temp=DateTime(today.year,birthday.month,birthday.day);
        DateTime nextBirthdayDate=temp.isBefore(today)
            ?Age.add(date: temp, duration: AgeDuration(years: 1))
            :temp;
       return nextBirthdayDate.weekday;
      }


}