# BaseQuery V1.5

Solving the problem of having thousands of different files from leaked databases and not an efficient way to store/query them. BaseQuery is an all in one program that 
takes the annoyance out of searching through data-breaches. You can find breaches in places such as [RaidForums.com](RAIDFORUMS.com) or [Databases.today](Databases.today).
### Features Included:
 * A 4x nested storage structure
 * Average import speeds of 12,000+ entries per second (Intel Core i7-7700HQ CPU @ 2.8GHz)
 * Instantaneous querying system
 * Facebook's zstd lossless compression algorithm to reduce the size of the data (On average reduces the data to less than 10% of the original size)
 * Calculating the time all your files will take to import based on your specific hardware
 * Duplicate data protection
 * Email harvesting program built in
 ***
### Installing

To Install BaseQuery type the following commands

```
git clone https://github.com/g666gle/BaseQuery.git
sudo chmod 755 -R BaseQuery/
cd BaseQuery
./dependencies.sh
./run.sh
```


## Getting Started
1. Place any databases that you have into the "PutYourDataBasesHere" folder
    - As of right now, BaseQuery can only accept files in the format where each line is either "test@example.com:password" or "password:test@example.com"
    - It doesn't matter if the line formats are mixed up within the same file. Ex) The first line may be "email:password" and the second line can be "password:email"
    - One entry per line!! 
    - If you need a better visual there is an example.txt file in the folder "PutYourDataBasesHere"
    - You should delete the example file before running the program.
1. Now that you have all of your files in the correct folder
    - Open up a terminal in the BaseQuery folder.
    - Type ./dependencies.sh to install all of the resources needed ( You only need to do this once )
    - Type ./run.sh to start the program
    - **Note that if you are using a laptop make sure it is plugged in. Importing databases uses A LOT of processing power and will make the import 4 times faster on average!**
1. Follow the instructions on the screen
    - That's it, enjoy!
    - Contact me with any issues.

***
### Prerequisites
**Note: All of these are automatically installed using the 'dependencies.sh' script**

```
Update packages:    (sudo apt-get update)

Python Version 3.6+ (sudo apt-get install python3.7)
Bash 4+
tar                 (sudo apt-get install tar)
zstd                (sudo apt-get install zstd)
xterm               (sudo apt-get install xterm)
```


## Built With

* Ubuntu 18.04 bionic

* Bash Version:
GNU bash, version 4.4.19(1)-release (x86_64-pc-linux-gnu)

* Python Version:
3.7.1

## Authors

* **G666gle** -  [Github](https://github.com/G666gle) [Twitter](https://twitter.com/g666gle1)


## License

This project is licensed under the MIT License - see the [LICENSE.md](LICENSE.md) file for details

## DISCLAIMER:

**READ UP ON YOUR LOCAL LAWS FIRST BEFORE USING THIS PROGRAM.**


