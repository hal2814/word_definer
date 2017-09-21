WordDefiner Definer
============

Author:
Nate McGregor

Description:
A website where children can see a list of words they might not know and click on a word to see the definition of the word.

Setup instructions:
clone file onto desktop and run 'ruby app.rb'

| Spec                                                       | input                                                                                             | input 2                                              | output     | output 2    |
|------------------------------------------------------------|---------------------------------------------------------------------------------------------------|------------------------------------------------------|------------|-------------|
| Will check if list of words is empty at first              | -                                                                                                 | n/a                                                  | empty      |             |
| Will save a word to word list                              | "Endemic","Native to a specific region or environment and not occurring naturally anywhere else." | n/a                                                  | has word   |             |
| Will save a word to word list then clear the list of words | "Endemic","Native to a specific region or environment and not occurring naturally anywhere else." | n/a                                                  | empty      |             |
| Will save number for each word                             | "Endemic","Native to a specific region or environment and not occurring naturally anywhere else." | "Innervate","To stimulate or supply nervous energy." | 1          | 2           |
| Will find the word in the word list                        | "Endemic","Native to a specific region or environment and not occurring naturally anywhere else." | "Innervate","To stimulate or supply nervous energy." | first word | second word |

![alt text](/public/img/screen.png)

Application page: https://nameless-garden-38169.herokuapp.com/

copyright Nate McGregor 2017
