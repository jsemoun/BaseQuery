<h1 align="center">
  BaseQuery V1.5
</h1>

<p align="center">
  <a href="https://github.com/g666gle/BaseQuery/blob/master/LICENSE.md">
    <img src="https://img.shields.io/github/license/g666gle/BaseQuery.svg">
  </a>
  <a href="https://github.com/g666gle/BaseQuery/graphs/contributors">
      <img src="https://img.shields.io/github/contributors/g666gle/BaseQuery.svg">
  </a>
  <a href="https://github.com/g666gle/BaseQuery/issues">
    <img src="https://img.shields.io/github/issues-raw/g666gle/BaseQuery.svg">
  </a>
  <a href="https://github.com/g666gle/BaseQuery/issues?utf8=%E2%9C%93&q=is%3Aissue+is%3Aclosed+">
      <img src="https://img.shields.io/github/issues-closed-raw/g666gle/BaseQuery.svg">
  </a>
</p>

Your private data is being traded and sold all over the internet as we speak. Tons of leaks come out on a daily basis which can make you feel powerless. Almost everyone's passwords and other sensitive information have been posted somewhere on the internet/darknet for others to see, whether you like it or not. [Haveibeenpwned](https://haveibeenpwned.com/) is a resource for you to narrow down which breaches your information has been exposed in. This is a great start but what if you want to know exactly what information of yours other people have access to? BaseQuery is an all in one program that makes importing and searching through thousands of data-breaches easy. You can find all of the breaches you were exposed in, in places such as [RaidForums.com](https://www.RAIDFORUMS.com) or [Databases.today](https://www.Databases.today), import them into BaseQuery and instantaneously search for any information relating to you.


![basequery_banner](https://user-images.githubusercontent.com/47184892/53661764-272e8380-3c2f-11e9-8303-763cf00c27ab.png)
### Features Included:
 * A 4x nested storage structure
 * Average import speeds of 12,000+ entries per second (Intel Core i7-7700HQ CPU @ 2.8GHz)
 * Instantaneous querying system
 * Facebook's zstd lossless compression algorithm to reduce the size of the data (On average reduces the data to less than 10% of the original size)
 * Calculating the time all your files will take to import based on your specific hardware
 * Duplicate data protection
 * Email harvesting program built in
 
## Installing

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

### Import Times Based on Hardware Specifics

<a href="url"><img src="https://user-images.githubusercontent.com/47184892/53662625-5fcf5c80-3c31-11e9-8be3-a43b01106a7c.PNG" height="183" width="535" ></a>


### Query Options

![basequery_query](https://user-images.githubusercontent.com/47184892/53662460-f0596d00-3c30-11e9-8ac6-f0b154ad22b7.PNG)

***
## Prerequisites
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

* **G666gle** -  [Github](https://github.com/G666gle), [Twitter](https://twitter.com/g666gle1)


## License

This project is licensed under the MIT License - see the [LICENSE.md](LICENSE.md) file for details

## Disclaimer

**READ UP ON YOUR LOCAL LAWS FIRST BEFORE USING THIS PROGRAM. I TAKE NO RESPONSIBILITY FOR ANYTHING YOU DO WITH BASEQUERY**


