# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Book.destroy_all
books = [
    {
        title: "Clean Code",
        author: "Robert C. Martin",
        description: %{
            Even bad code can function.
            But if code isn’t clean, it can bring a development organization to its knees. Every year, countless hours and significant resources are lost because of poorly written code. But it doesn’t have to be that way. Noted software expert Robert C. Martin presents a revolutionary paradigm with Clean Code: A Handbook of Agile Software Craftsmanship . Martin has teamed up with his colleagues from Object Mentor to distill their best agile practice of cleaning code “on the fly” into a book that will instill within you the values of a software craftsman and make you a better programmer—but only if you work at it. What kind of work will you be doing? You’ll be reading code—lots of code. And you will be challenged to think about what’s right about that code, and what’s wrong with it. More importantly, you will be challenged to reassess your professional values and your commitment to your craft. Clean Code is divided into three parts. The first describes the principles, patterns, and practices of writing clean code. The second part consists of several case studies of increasing complexity. Each case study is an exercise in cleaning up code—of transforming a code base that has some problems into one that is sound and efficient. The third part is the payoff: a single chapter containing a list of heuristics and “smells” gathered while creating the case studies. The result is a knowledge base that describes the way we think when we write, read, and clean code. Readers will come away from this book understanding How to tell the difference between good and bad code How to write good code and how to transform bad code into good code How to create good names, good functions, good objects, and good classes How to format code for maximum readability How to implement complete error handling without obscuring code logic How to unit test and practice test-driven development.},
        image_url: "https://images-na.ssl-images-amazon.com/images/I/515iEcDr1GL._SX385_BO1,204,203,200_.jpg",
        price: 29.50
    },
    {
        title: 'Practical Object-Oriented Design in Ruby: An Agile Primer',
        author: 'Sandi Metz',
        description: %{ The Complete Guide to Writing More Maintainable, Manageable, Pleasing, and Powerful Ruby Applications Ruby’s widely admired ease of use has a downside: Too many Ruby and Rails applications have been created without concern for their long-term maintenance or evolution. The Web is awash in Ruby code that is now virtually impossible to change or extend. This text helps you solve that problem by using powerful real-world object-oriented design techniques, which it thoroughly explains using simple and practical Ruby examples. Sandi Metz has distilled a lifetime of conversations and presentations about object-oriented design into a set of Ruby-focused practices for crafting manageable, extensible, and pleasing code. She shows you how to build new applications that can survive success and repair existing applications that have become impossible to change. Each technique is illustrated with extended examples, all downloadable from the companion Web site, poodr.info. The first title to focus squarely on object-oriented Ruby application design, Practical Object-Oriented Design in Ruby will guide you to superior outcomes, whatever your previous Ruby experience. Novice Ruby programmers will find specific rules to live by; intermediate Ruby programmers will find valuable principles they can flexibly interpret and apply; and advanced Ruby programmers will find a common language they can use to lead development and guide their colleagues. This guide will help you Understand how object-oriented programming can help you craft Ruby code that is easier to maintain and upgrade Decide what belongs in a single Ruby class Avoid entangling objects that should be kept separate Define flexible interfaces among objects Reduce programming overhead costs with duck typing Successfully apply inheritance Build objects via composition Design cost-effective tests Solve common problems associated with poorly designed Ruby code.},
        image_url: "https://images-na.ssl-images-amazon.com/images/I/51wEP6kgANL._SX385_BO1,204,203,200_.jpg",
        price: 17.99
    },
    {
        title: "Effective Testing with RSpec 3",
        author: "Myron Marston",
        description: %{Our tests are broken again!" "Why does the suite take so long to run?" "What value are we getting from these tests anyway?" Solve your testing problems by building and maintaining quality software with RSpec - the popular BDD-flavored Ruby testing framework. This definitive guide from RSpec's lead developer shows you how to use RSpec to drive more maintainable designs, specify and document expected behavior, and prevent regressions during refactoring. Build a project using RSpec to design, describe, and test the behavior of your code. Whether you're new to automated tests or have been using them for years, this book will help you write more effective tests. RSpec has been downloaded more than 100 million times and has inspired countless test frameworks in other languages. Use this influential Ruby testing framework to iteratively develop a project with the confidence that comes from well-tested code. This book guides you through creating a Ruby project with RSpec, and explores the individual components in detail. Start by learning the basics of installing and using RSpec. Then build a real-world JSON API, using RSpec throughout the process to drive a BDD-style outside-in workflow. Apply an effective test strategy to write fast, robust tests that support evolutionary design through refactoring.},
        image_url: "https://images-na.ssl-images-amazon.com/images/I/51a3MtzIKvL._SX415_BO1,204,203,200_.jpg",
        price: 15.70
    },
    {
        title:"Agile Web Development with Rails 5.1" ,
        author: "Sam Ruby, David Copeland, Dave Thomas",
        description: %{Learn Rails the way the Rails core team recommends it, along with the tens of thousands of developers who have used this broad, far-reaching tutorial and reference. If you're new to Rails, you'll get step-by-step guidance. If you're an experienced developer, get the comprehensive, insider information you need for the latest version of Ruby on Rails. The new edition of this award-winning classic is completely updated for Rails 5.1 and Ruby 2.4, with information on system testing, Webpack, and advanced JavaScript. Ruby on Rails helps you produce high-quality, beautiful-looking web applications quickly---you concentrate on creating the application, and Rails takes care of the details. Rails 5.1 brings many improvements, and this edition is updated to cover the new features and changes in best practices. We start with a step-by-step walkthrough of building a real application, and in-depth chapters look at the built-in Rails features. Follow along with an extended tutorial as you write a web-based store application. Eliminate tedious configuration and housekeeping; seamlessly incorporate Ajax and JavaScript; send emails and manage background jobs with ActiveJob; build real-time features using WebSockets and ActionCable. Test your applications as you write them using the built-in unit, integration, and system testing frameworks; internationalize your applications; and deploy your applications easily and securely. New in this edition is support for Webpack and advanced JavaScript, as well as Rails' new browser-based system testing. Rails 1.0 was released in December 2005.},
        image_url: "https://images-na.ssl-images-amazon.com/images/I/51DyiYr4-lL._SX415_BO1,204,203,200_.jpg",
        price: 30.43
    },
    {
        title:"The Road to learn React: Your journey to master plain yet pragmatic React.js" ,
        author: "The Road to learn React: Your journey to master plain yet pragmatic React.js",
        description: %{The Road to learn React teaches you the fundamentals of React. You will build a real world application along the way in plain React without complicated tooling. Everything from project setup to deployment on a server will be explained. The book comes with additional referenced reading material and exercises with each chapter. After reading the book, you will be able to build your own applications in React. The material is kept up to date by me and the community.

        In the Road to learn React, I want to offer a foundation before you start to dive into the broader React ecosystem. It has less tooling and less external state management, but a lot of information around React. It explains general concepts, patterns and best practices in a real world React application.
        
        You will learn to build your own React application. It covers real world features like pagination, client-side caching and interactions like searching and sorting. Additionally you will transition from JavaScript ES5 to JavaScript ES6 along the way. I hope this book captures my enthusiasm for React and JavaScript and helps you to get started.},
        image_url: "https://images-na.ssl-images-amazon.com/images/I/41JvDSREHWL._SX384_BO1,204,203,200_.jpg",
        price: 18.55
    },
    {
        title:"Cracking the Coding Interview, 6th Edition: 189 Programming Questions and Solutions, 2015" ,
        author: "Gayle Laakmann McDowell",
        description: %{Cracking the Coding Interview, 6th Edition is here to help you through this process, teaching you what you need to know and enabling you to perform at your very best. I've coached and interviewed hundreds of software engineers. The result is this book. Learn how to uncover the hints and hidden details in a question, discover how to break down a problem into manageable chunks, develop techniques to unstick yourself when stuck, learn core computer science concepts, and practice on 189 interview questions and solutions. A walk-through of how to derive each solution, so that you can learn how to get there yourself.
        Hints on how to solve each of the 189 questions, just like what you would get in a real interview.
        Five proven strategies to tackle algorithm questions, so that you can solve questions you haven’t seen.
        Extensive coverage of essential topics, such as big O time, data structures, and core algorithms.
        A “behind the scenes” look at how top companies, like Google and Facebook, hire developers.
        Techniques to prepare for and ace the “soft” side of the interview: behavioral questions.
        For interviewers and companies: details on what makes a good interview question and hiring process.},
        image_url: "https://images-na.ssl-images-amazon.com/images/I/51l5XzLln%2BL._SX348_BO1,204,203,200_.jpg",
        price: 25.11
    },
    {
        title:"Clean Architecture: A Craftsman Guide to Software Structure and Design " ,
        author: "Robert C. Martin",
        description: %{As with his other books, Martin's Clean Architecture doesn't merely present multiple choices and options, and say "use your best judgment": it tells you what choices to make, and why those choices are critical to your success. Martin offers direct, no-nonsense answers to key architecture and design questions like:

        What are the best high level structures for different kinds of applications, including web, database thick-client, console, and embedded apps?
        What are the core principles of software architecture?
        What is the role of the architect, and what is he/she really trying to achieve?
        What are the core principles of software design?
        How do designs and architectures go wrong, and what can you do about it?
        What are the disciplines and practices of professional architects and designers?
        Clean Architecture is essential reading for every software architect, systems analyst, system designer, and software manager -- and for any programmer who aspires to these roles or is impacted by their work.},
        image_url: "https://images-na.ssl-images-amazon.com/images/I/41BjtnvIUQL._SX382_BO1,204,203,200_.jpg",
        price: 19.89
    },
    {
        title:"Domain-Driven Design: Tackling Complexity in the Heart of Software" ,
        author: "Eric Evans",
        description: %{The software development community widely acknowledges that domain modeling is central to software design. Through domain models, software developers are able to express rich functionality and translate it into a software implementation that truly serves the needs of its users. But despite its obvious importance, there are few practical resources that explain how to incorporate effective domain modeling into the software development process.

 

        Domain-Driven Design fills that need. This is not a book about specific technologies. It offers readers a systematic approach to domain-driven design, presenting an extensive set of design best practices, experience-based techniques, and fundamental principles that facilitate the development of software projects facing complex domains. Intertwining design and development practice, this book incorporates numerous examples based on actual projects to illustrate the application of domain-driven design to real-world software development.},
        image_url: "https://images-na.ssl-images-amazon.com/images/I/51sZW87slRL._SX375_BO1,204,203,200_.jpg",
        price: 39.99
    },
    {
        title:"Building Microservices Second Edition" ,
        author: "Sam Newman",
        description: %{Distributed systems have become more fine-grained in the past 10 years, shifting from code-heavy monolithic applications to smaller, self-contained microservices. But developing these systems brings its own set of headaches. With lots of examples and practical advice, the second edition of this practical book takes a holistic view of the topics that system architects and administrators must consider when building, managing, and evolving microservice architectures. Microservice technologies are moving quickly, and this revised edition gets you up to date with a new chapter on serverless and cloud-native applications, expanded coverage of user interfaces, more hands-on code examples, and other additions throughout the book. Author Sam Newman provides you with a firm grounding in the concepts while diving into current solutions for modeling, integrating, testing, deploying, and monitoring your own autonomous services. You'll follow a fictional company throughout the book to learn how building a microservice architecture affects a single domain.},
        image_url: "https://images-na.ssl-images-amazon.com/images/I/513CEhKoGYL._SX379_BO1,204,203,200_.jpg",
        price: 31.19
    }
]

   books.each{|book_data| Book.create(book_data)}