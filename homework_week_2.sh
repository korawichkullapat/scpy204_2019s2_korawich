#!/bin/bash
echo -e "This is a programe for checking "Did you infict COVID19?" \nplease following these step and type correct information"
read -p "What is your name? : "
name=$REPLY 
read -p "How olds are you? : "
age=$REPLY
if [ $REPLY -ge 70 ] ; then 
	a=1
fi

read -p "what is your gender? : "
gender=$REPLY

echo -e "\nfor these question if it's right type 1 and if it's wrong type 0\n"


echo -e "Chinese      Korea    Japan         Australia             Malaysia     Philippines     Italy\n"
echo -e "Spain       Germany   France    The United Kingdom      Switzerlands   Netherlands    Beigium\n"
echo -e "Turkey      Austria   Portugal      Israel     Norway      Sweden       Czechia    Ireland     Denmark\n"
echo -e "Luxembourg   Poland   Iran     United State Of America     Romania   Russuan Federation\n "
read -p "Did you early come back from these countries? : "
yes1=$REPLY
if [ $yes1 -eq 0 ] ; then
	read -p "Do you contract people around who has been COVID19? : "
	yes2=$REPLY
fi

read -p "Do you have underlying disease about respiratory system? : "
dis=$REPLY

read -p "Do you have high fever?(more than 37 degree) : "
fever=$REPLY
read -p "DO you have any cough? : "
cough=$REPLY
read -p "Do you have symtom of sore throat? : "
sore=$REPLY
read -p "Do you have runny nose? : "
runny=$REPLY
read -p "Do you tried or hurt in chest while breath? : "
tried=$REPLY


if [ $yes1 -eq 1 ] ; then
	if [ $fever -eq 1 ] ; then
		if [ $cough -eq 1 -a $sore -eq 1 -a $runny -eq 1 ] ; then
			echo "Please go to see a doctor right away!! You are at risk of Covid-19"
		else 
			if [ $tried -eq 1 ] ; then
				if [ $dis -eq 1 ] ; then
					echo "Maybe your underlying disease gone bad. Please go to see doctor for checking"
				else
					echo "Maybe you should see a doctor to check Covid-19"
				fi
			else 
				echo "Maybe you should check your-self for a while if you have other symptoms. You should go to see a doctor" 
			fi
		fi
	else
		echo "Please check your-self for a while if you have fever. Please check this again. If not you are free from Covid-19"
	fi
else 
	if [ $yes2 -eq 1 ] ; then
		if [ $fever -eq 1 ] ; then 
			if [ $cough -eq 1 -a $sore -eq 1 -a $runny -eq 1 ] ; then
				echo "Please go to see a doctor right away!! You are at risk of Covid-19"
			else
				if [ $tried -eq 1 ] ; then 
					if [ $dis -eq 1 ] ; then
						echo "Maybe your underlying disease gone bad. Please go to see doctor for checking"
					else
						echo "Maybe you should see a doctor to check Covid-19"
					fi
				else
					echo"Maybe you should check your-self for a while if you have other symptoms. You should go to see a doctor"
				fi
			fi
		else
			echo "Please check your-self for a while if you have fever. Please check this again. If not you are free from Covid-19"
		fi
	else
		if [ $fever -eq 1 ] ; then
			if [ $cough -eq 1 -a $sore -eq 1 -a $runny -eq 1 ] ; then
				echo "Maybe you are flu"
			else
				if [ $tried -eq 1 ] ; then
					if [ $dis -eq 1 ] ; then
						echo "Maybe your underlying disease gone bad. Please go to see doctor for checking"
					else
						echo"You aren't Covid-19 but other illness. Please go to see a doctor"
					fi
				else
					echo "You just ill"
				fi
			fi
		else
			echo "Congratulation! You are free from Covid-19"
		fi
	fi
fi


exit 0

