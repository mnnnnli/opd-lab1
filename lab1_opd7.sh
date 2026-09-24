#lab0 script

cd ~
chmod -R u+rwx lab0 2>/dev/null
rm -rf lab0 2>/dev/null

mkdir lab0
cd lab0

#1 задание
mkdir lab0
cd lab0
mkdir bellsprout
cd bellsprout
mkdir armaldo
touch banette
mkdir lillipup
touch metagross
cd ..
touch exeggutor
mkdir grimer
cd grimer
mkdir aggron
touch manectric
mkdir yanmega
touch primeape
cd ..
mkdir lanturn
cd lanturn
mkdir whiscash
touch dewott
mkdir timburr
touch medicham
mkdir politoed
touch marowak
cd ..
touch rhyhorn
touch whismur

echo 'Тип диеты = Nullivore' > bellsprout/banette
echo 'weight=1212.5 height=63.0 atk=14 def=13' > bellsprout/metagross
echo 'Тип диеты = Phototroph' > exeggutor
echo 'Ходы = Body Slam Double-Edge Fire Fang' > grimer/manectric
echo 'Iron Tail Magnet Rise Mud-Slap Shock' >> grimer/manectric
echo 'Wave Signal Beam Sleep Talk Snore Swift' >> grimer/manectric
echo 'Uproar' >> grimer/manectric
echo 'Способности = Fury Swipes Karate Chop' > grimer/primeape
echo 'Seismic Toss Screech Assurance Rage' >> grimer/primeape
echo 'Swagger Cross Chop Thrash Punishment' >> grimer/primeape
echo 'Close Combat Final Gambit' >> grimer/primeape
echo 'Ходы = Aqua Tail Covet Helping Hand Icy' > lanturn/dewott
echo 'Wind Iron Tail Sleep Talk Snore Water' >> lanturn/dewott
echo 'Pledge' >> lanturn/dewott
echo 'Возможности = Overland=7 Surface=7 Sky=3' > lanturn/medicham
echo 'Jump=5 Power4=0 Intelligence=4 Aura=0' >> lanturn/medicham
echo 'Развитые способности = Battle Armor' > lanturn/marowak
echo 'Живет = Cave Grassland Mountain' > rhyhorn
echo 'Тип покемона = NORMAL NONE' > whismur


#2 задание
chmod u=wx,g=wx,o=rwx bellsprout
chmod u=rx,g=rx,o=rx bellsprout/armaldo
chmod 664 bellsprout/banette
chmod u=rx,g=rx,o= bellsprout/lillipup
chmod u=,g=rx,o=r bellsprout/metagross
chmod 044 exeggutor
chmod u=rx,g=rx,o=rx grimer
chmod u=wx,g=wx,o=rwx grimer/aggron
chmod u=rw,g=rw,o= grimer/manectric
chmod 700 grimer/yanmega
chmod u=r,g=r,o= grimer/primeape
chmod 770 lanturn
chmod u=rwx,g=rwx,o= lanturn/whiscash
chmod 004 lanturn/dewott
chmod 751 lanturn/timburr
chmod u=r,g=r,o= lanturn/medicham
chmod u=rx,g=,o= lanturn/politoed
chmod 004 lanturn/marowak
chmod 404 rhyhorn
chmod 660 whismur

#задание 3

#меняем права для выполнения 3 задания
chmod 704 lanturn/marowak
chmod 764 bellsprout/banette
chmod 744 exeggutor
chmod 704 rhyhorn
chmod u=rwx,g=wx,o=rwx bellsprout
chmod u=rwx,g=rx,o=rx bellsprout/armaldo
chmod u=rwx,g=rw,o=r bellsprout/metagross
chmod u=rwx,g=rx,o=rx grimer

cat lanturn/marowak bellsprout/banette > whismur_25
cat exeggutor > lanturn/marowakexeggutor
cp rhyhorn grimer/yanmega
cp -R bellsprout bellsprout/armaldo
ln -s ../rhyhorn grimer/primeaperhyhorn
ln rhyhorn lanturn/dewottrhyhorn
ln -s grimer Copy_45

#возвращаем права
chmod 004 lanturn/marowak
chmod 664 bellsprout/banette
chmod 044 exeggutor
chmod 404 rhyhorn
chmod u=wx,g=wx,o=rwx bellsprout
chmod u=rx,g=rx,o=rx bellsprout/armaldo
chmod u=,g=rw,o=r bellsprout/metagross
chmod u=rx,g=rx,o=rx grimer

#задание 4
#4.1
wc -m b* */b* */*/b* 2>/dev/null | sort -nrk1 | tail -n +2
#команда не вывела строк: подходящие доступные файлы при ракскрытии указанных шаблонов отсутствовали.

#4.2
ls -l $(ls -dp1 w* */w* */*/w* 2>> /tmp/errors558455 | grep -v "/$") 2>> /tmp/errors558455 | sort -k 2n | tail -n 3
#4.3
cat -n $(ls -dp1 p* */p* */*/p* 2>/dev/null | grep -v "/$") 2>/dev/null | sort -k 2
#4.4
cat -n whismur 2>/dev/null | grep -vi "r$"
#4.5
ls -l $(ls -dp1 **/*t 2>&1 | grep -v "/$") 2>&1 | sort -k 2nr
#4.6
cat b* */b* */*/b* 2>/dev/null | sort -r
#команда ничего не вывела

#задание 5
rm -f rhyhorn
rm -f bellsprout/banette
#даем необходимые права grimer, чтобы получилось удалить эту директорию
chmod -R u+rwx grimer
rm -f grimer/primeaperhyho*
rm -f lanturn/dewottrhyho*
rm -rf grimer
#даем необходимые права bellsprout/armaldo, чтобы получилось удалить эту директорию
chmod -R u+rwx bellsprout/armaldo
rm -rf bellsprout/armaldo