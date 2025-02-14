Takeaway Challenge
==================
```
                            _________
              r==           |       |
           _  //            |  M.A. |   ))))
          |_)//(''''':      |       |
            //  \_____:_____.-------D     )))))
           //   | ===  |   /        \
       .:'//.   \ \=|   \ /  .:'':./    )))))
      :' // ':   \ \ ''..'--:'-.. ':
      '. '' .'    \:.....:--'.-'' .'
       ':..:'                ':..:'

 ```

Instructions
-------

* Feel free to use google, your notes, books, etc. but work on your own
* If you refer to the solution of another coach or student, please put a link to that in your README
* If you have a partial solution, **still check in a partial solution**
* You must submit a pull request to this repo with your code by 9am Monday morning

Task
-----

* Fork this repo
* Run the command 'bundle' in the project directory to ensure you have all the gems
* Write a Takeaway program with the following user stories:

```
As a customer
So that I can check if I want to order something
I would like to see a list of dishes with prices

As a customer
So that I can order the meal I want
I would like to be able to select some number of several available dishes

As a customer
So that I can verify that my order is correct
I would like to check that the total I have been given matches the sum of the various dishes in my order

As a customer
So that I am reassured that my order will be delivered on time
I would like to receive a text such as "Thank you! Your order was placed and will be delivered before 18:52" after I have ordered
```

* Hints on functionality to implement:
  * Ensure you have a list of dishes with prices
  * The text should state that the order was placed successfully and that it will be delivered 1 hour from now, e.g. "Thank you! Your order was placed and will be delivered before 18:52".
  * The text sending functionality should be implemented using Twilio API. You'll need to register for it. It’s free.
  * Use the twilio-ruby gem to access the API
  * Use the Gemfile to manage your gems
  * Make sure that your Takeaway is thoroughly tested and that you use mocks and/or stubs, as necessary to not to send texts when your tests are run
  * However, if your Takeaway is loaded into IRB and the order is placed, the text should actually be sent
  * Note that you can only send texts in the same country as you have your account. I.e. if you have a UK account you can only send to UK numbers.

* Advanced! (have a go if you're feeling adventurous):
  * Implement the ability to place orders via text message.

* A free account on Twilio will only allow you to send texts to "verified" numbers. Use your mobile phone number, don't worry about the customer's mobile phone.

> :warning: **WARNING:** think twice before you push your **mobile number** or **Twilio API Key** to a public space like GitHub :eyes:
>
> :key: Now is a great time to think about security and how you can keep your private information secret. You might want to explore environment variables.

* Finally submit a pull request before Monday at 9am with your solution or partial solution.  However much or little amount of code you wrote please please please submit a pull request before Monday at 9am


In code review we'll be hoping to see:

* All tests passing
* High [Test coverage](https://github.com/makersacademy/course/blob/main/pills/test_coverage.md) (>95% is good)
* The code is elegant: every class has a clear responsibility, methods are short etc.

Reviewers will potentially be using this [code review rubric](docs/review.md).  Referring to this rubric in advance will make the challenge somewhat easier.  You should be the judge of how much challenge you want this at this moment.

Notes on Test Coverage
------------------

You can see your [test coverage](https://github.com/makersacademy/course/blob/main/pills/test_coverage.md) when you run your tests.
------------------

*Thoughts & Notes*
------------------
#Friday 26th of november '21
I create a interactive menu based on the student directory we created a few weeks ago.
this should implement basic funtions for the user story 1 and 2
the user can 
check the menu (list of prices and dishes)
can order a meal (add to basket several dishes)

here is the diagram for the application I am trying to build : https://wireframe.cc/7hfxO2

based on the following user stories
```
As a customer
So that I can check if I want to order something
I would like to see a list of dishes with prices

As a customer
So that I can order the meal I want
I would like to be able to select some number of several available dishes

As a customer
So that I can verify that my order is correct
I would like to check that the total I have been given matches the sum of the various dishes in my order

As a customer
So that I am reassured that my order will be delivered on time
I would like to receive a text such as "Thank you! Your order was placed and will be delivered before 18:52" after I have ordered
```

#Feature test in irb
works well until I want to check out:

```
Swa@Swas-MacBook-Pro takeaway-challenge % irb -r ./lib/menu.rb
3.0.2 :001 > menu = Menu.new
       Welcome, this is our menu        
Please enter the number of the meal you would like to add to the basket
___________________________________________________________

        1 to select Kimbab : £8         
          2 to select KFC : £6          
   3 to select Bibimbab_beef : £12.5    
   4 to select Bibimba_chicken : £10    
     5 to select Pork_bulgogi : £10     
        6 to select Kimchi : £4         
     7 to select Patato_salad : £5      
    8 to select Kimchi_pancake : £5     
         9 to select Rice : £3          
       11 to select Checkout : £        
Swa@Swas-MacBook-Pro takeaway-challenge % irb -r ./lib/menu.rb
3.0.2 :001 > menu = Menu.new
       Welcome, this is our menu        
Please enter the number of the meal you would like to add to the basket
___________________________________________________________

        1 to select Kimbab : £8         
          2 to select KFC : £6          
   3 to select Bibimbab_beef : £12.5    
   4 to select Bibimba_chicken : £10    
     5 to select Pork_bulgogi : £10     
        6 to select Kimchi : £4         
     7 to select Patato_salad : £5      
    8 to select Kimchi_pancake : £5     
         9 to select Rice : £3          
       10 to select Exit menu : £       
       11 to select Checkout : £        
__________________________________________________________
1
["Kimbab"]
["Kimbab"]
       Welcome, this is our menu        
Please enter the number of the meal you would like to add to the basket
___________________________________________________________

        1 to select Kimbab : £8         
          2 to select KFC : £6          
   3 to select Bibimbab_beef : £12.5    
   4 to select Bibimba_chicken : £10    
     5 to select Pork_bulgogi : £10     
        6 to select Kimchi : £4         
     7 to select Patato_salad : £5      
    8 to select Kimchi_pancake : £5     
         9 to select Rice : £3          
       10 to select Exit menu : £       
       11 to select Checkout : £        
__________________________________________________________
exit
       Welcome, this is our menu        
Please enter the number of the meal you would like to add to the basket
___________________________________________________________

        1 to select Kimbab : £8         
          2 to select KFC : £6          
   3 to select Bibimbab_beef : £12.5    
   4 to select Bibimba_chicken : £10    
     5 to select Pork_bulgogi : £10     
        6 to select Kimchi : £4         
     7 to select Patato_salad : £5      
    8 to select Kimchi_pancake : £5     
         9 to select Rice : £3          
Swa@Swas-MacBook-Pro takeaway-challenge % irb -r ./lib/menu.rb
3.0.2 :001 > menu = Menu.new
       Welcome, this is our menu        
Please enter the number of the meal you would like to add to the basket
___________________________________________________________

        1 to select Kimbab : £8         
          2 to select KFC : £6          
   3 to select Bibimbab_beef : £12.5    
   4 to select Bibimba_chicken : £10    
     5 to select Pork_bulgogi : £10     
        6 to select Kimchi : £4         
     7 to select Patato_salad : £5      
    8 to select Kimchi_pancake : £5     
         9 to select Rice : £3          
       10 to select Exit menu : £       
       11 to select Checkout : £        
__________________________________________________________
1
["Kimbab"]
[8]
       Welcome, this is our menu        
Please enter the number of the meal you would like to add to the basket
___________________________________________________________

        1 to select Kimbab : £8         
          2 to select KFC : £6          
   3 to select Bibimbab_beef : £12.5    
   4 to select Bibimba_chicken : £10    
     5 to select Pork_bulgogi : £10     
        6 to select Kimchi : £4         
     7 to select Patato_salad : £5      
    8 to select Kimchi_pancake : £5     
         9 to select Rice : £3          
       10 to select Exit menu : £       
       11 to select Checkout : £        
__________________________________________________________
7
["Kimbab", "Patato_salad"]
[8, 5]
       Welcome, this is our menu        
Please enter the number of the meal you would like to add to the basket
___________________________________________________________

        1 to select Kimbab : £8         
          2 to select KFC : £6          
   3 to select Bibimbab_beef : £12.5    
   4 to select Bibimba_chicken : £10    
     5 to select Pork_bulgogi : £10     
        6 to select Kimchi : £4         
     7 to select Patato_salad : £5      
    8 to select Kimchi_pancake : £5     
         9 to select Rice : £3          
       10 to select Exit menu : £       
       11 to select Checkout : £        
__________________________________________________________
8
["Kimbab", "Patato_salad", "Kimchi_pancake"]
[8, 5, 5]
       Welcome, this is our menu        
Please enter the number of the meal you would like to add to the basket
___________________________________________________________
        1 to select Kimbab : £8         
          2 to select KFC : £6          
   3 to select Bibimbab_beef : £12.5    
   4 to select Bibimba_chicken : £10    
     5 to select Pork_bulgogi : £10     
        6 to select Kimchi : £4         
     7 to select Patato_salad : £5      
    8 to select Kimchi_pancake : £5     
         9 to select Rice : £3          
       10 to select Exit menu : £       
       11 to select Checkout : £        
__________________________________________________________
11
/Users/Swa/Desktop/Projects/solo-challenges/takeaway-challenge/lib/menu.rb:50:in `process': undefined local variable or method `checkout' for #<Menu:0x00007fcadb028a98 @basket=["Kimbab", "Patato_salad", "Kimchi_pancake"], @receipt=[8, 5, 5], @meal_number=11> (NameError)
```

we can see that the items are added to the @basket and the prices to the @receipt
I am planning to use theses element to build a check_out function

#Saturday 27th of November '21
I will now check everything passes in rspec and make sure I have edge cases where needed

! struggle with testing the user input (meal_number = gets.chomp) !
a) I try to test it by creating a fake / double of the user input
but it didn't work as the print method print the menu on the screen and then nothing would happend

b) I try to simulate 'gets' with a Inquisitor class like suggested on stack overflow : https://stackoverflow.com/questions/68838737/how-to-simulate-multiple-gets-user-input-with-rspec
this didn't work, I don't know why ... maybe because the user is prompted again and again until he chooses to checkout or exit
I didn't manage to set a specific test : user orders one meal, then another one, then checks out

c) I remove the user input. and passed the meal_number (which should be given by the user) as an argurment so I could create some specific tests.


straight forward testing for add_to_basket and add_to_receipt once I remove the user input


! struggle with the print method test!
in irb , I like to have the menu nicely formated but I try to set test to check print multiple "puts + string"

in the end I managed to have the print method to just print the MEAL_List
and the test can be written in a few lines (note, the .to_s to make it a string)
    it "prints the MEAL_LIST" do
      expect { menu.print_menu }.to output(Menu::MEALS_LIST.to_s).to_stdout
    end


TODO: my process(meal_number) method is too long.
I don't know what this message mean
rubocop = lib/menu.rb:6:17: C: [Correctable] Style/MutableConstant: Freeze mutable objects assigned to constants.
   MEALS_LIST = { ...
                ^

#Sunday 28th of november '21

I have created a checkout class which will be in charge of processing the order (place_order from menu)

I struggled to create proper mock and subs for the test...

#Feature test in irb for menu.rb
works well until I want to check out:
```
3.0.2 :001 > menu = Menu.new
 => #<Menu:0x00007fd940104ef8 @basket=[], @receipt_list=[]> 
3.0.2 :002 > menu.print_menu
{1=>["Kimbab", 8], 2=>["KFC", 6], 3=>["Bibimbab_beef", 12.5], 4=>["Bibimba_chicken", 10], 5=>["Pork_bulgogi", 10], 6=>["Kimchi", 4], 7=>["Patato_salad", 5], 8=>["Kimchi_pancake", 5], 9=>["Rice", 3], 10=>["Exit menu"], 11=>["Checkout"]} => nil 
3.0.2 :003 > menu.choose_meal(3)
 => [12.5] 
3.0.2 :004 > menu.choose_meal(6)
 => [12.5, 4] 
3.0.2 :005 > menu.choose_meal(7)
 => [12.5, 4, 5] 
3.0.2 :006 > menu.basket
 => [["Bibimbab_beef", 12.5], ["Kimchi", 4], ["Patato_salad", 5]] 
3.0.2 :007 > menu.receipt_list
 => [12.5, 4, 5] 
3.0.2 :008 > menu.choose_meal(11)
/Users/Swa/Desktop/Projects/solo-challenges/takeaway-challenge/lib/menu.rb:48:in `choose_meal': undefined local variable or method `place_order' for #<Menu:0x00007fd940104ef8 @basket=[["Bibimbab_beef", 12.5], ["Kimchi", 4], ["Patato_salad", 5]], @receipt_list=[12.5, 4, 5], @meal_number=11> (NameError)
```


in Menu.rb I added "Checkout" to be instantiated with @basket and @receipt list as argument to be passed to the Checkout.rb
this makes its easier to test as I can create custorm argument to behave like @basket and @receipt_list
(unsuccessful Mocking of @basket @receipt_list)


following step by step to test twilio:
https://www.twilio.com/blog/2016/09/how-to-send-an-sms-with-ruby-using-twilio.html

I also watched this set up video :
https://www.youtube.com/watch?v=8SLdV8dn7_I

how to set up the environment variable first: hhttps://medium.com/@soni.dumitru/keeping-your-api-keys-secret-with-dotenv-b66aa05fdf71

no result get error message back : [HTTP 400] 21604 : Unable to create record (Twilio::REST::RestError)
A 'To' phone number is required.
https://www.twilio.com/docs/errors/21604

I must have stored my phone number (to which I want to sent the sms to) in the wrong way...

- added an edge case on menu_spec.rb in case a user checks out with an empty basket
- I am very suprised I managed to match the sms String in rspec. I thought I would have to mock the Time class but apparently not...


#COVERAGE:  95.76% -- 113/118 lines in 4 files
I am a bit stuck, I have all the methods but I struggle to make them work together properly
there are those methods calling other methods that I struggle to test.
and the irb test failed too...

## Feature test
```
3.0.2 :001 > menu = Menu.new
 => #<Menu:0x00007f82aa263a48 @basket=[], @checkout_class=Checkout, @receipt_list=[]> 
3.0.2 :002 > menu.choose_meal(1)
 => [8] 
3.0.2 :003 > menu.choose_meal(8)
 => [8, 5] 
3.0.2 :004 > menu.basket
 => [["Kimbab", 8], ["Kimchi_pancake", 5]] 
3.0.2 :005 > menu.receipt_list
 => [8, 5] 
3.0.2 :006 > menu.choose_meal(11)
 => #<Checkout:0x00007f82aa343ad0 @basket=[["Kimbab", 8], ["Kimchi_pancake", 5]], @receipt_list=[8, 5]> 
3.0.2 :007 > menu.calculate_total
(irb):7:in `<main>': undefined method `calculate_total' for #<Menu:0x00007f82aa263a48 @checkout_class=Checkout, @basket=[["Kimbab", 8], ["Kimchi_pancake", 5]], @receipt_list=[8, 5], @meal_number=11, @checkout=#<Checkout:0x00007f82aa343ad0 @basket=[["Kimbab", 8], ["Kimchi_pancake", 5]], @receipt_list=[8, 5]>> (NoMethodError)
        from /Users/Swa/.rvm/rubies/ruby-3.0.2/lib/ruby/gems/3.0.0/gems/irb-1.3.5/exe/irb:11:in `<top (required)>'
        from /Users/Swa/.rvm/rubies/ruby-3.0.2/bin/irb:23:in `load'
        from /Users/Swa/.rvm/rubies/ruby-3.0.2/bin/irb:23:in `<main>'
```
