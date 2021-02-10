import 'package:personal_website/DataModels/ArticleModel.dart';
import 'package:personal_website/DataModels/Category.dart';
import 'package:personal_website/DataModels/ProjectModel.dart';

import 'DataModels/CardModel.dart';

class DataSet {
  static Map<String, ProjectModel> projectData = {
    //Key Projects
    "personal-website": ProjectModel(
        cardModel: CardModel(

            date: "February 2020",
            title: "Personal Website",
            body:
                "Chernobyl++ is a C++ library that provide an easy to use and high performant interface to test quantitive trading algorithms on current or historic stock market data."),
        ),
    "chernobyl++": ProjectModel(
        cardModel: CardModel(
            date: "February 2020",
            title: "Chernobyl Engine",
            body:
                "Chernobyl Engine is a C++ header library designed for quantitative analysis of stock market data. Chernobyl++ allows for easy implementation and testing of quantitative algorithms on real time or historic stock market data."),
        ),

    //Internships
    "autodesk": ProjectModel(
      cardModel: CardModel(
          date: "Fall 2020 - Spring 2021",
          title: "Autodesk",
          role: "Software Engineering Intern",
          body: "I was an intern on the Autodesk Forge (PSET) team.\n\n"
              "I worked on a team of 4 intern to build a web application using the Autodesk Forge API.\n\n"
              "I and my team also analzyed big data from the Forge API using python."),
    ),
    "microsoft": ProjectModel(
      cardModel: CardModel(
          date: "Summer 2021",
          title: "Microsoft",
          role: "Software Engineering Intern",
          body:
              "Chernobyl++ is a C++ library that provide an easy to use and high performant interface to test quantitive trading algorithms on current or historic stock market data."),
    ),
    "intuit": ProjectModel(
      cardModel: CardModel(
          date: "Summer 2020",
          title: "Intuit Inc.",
          role: "Software Engineering Intern",
          body: "I was an Intern on the Information and Security team.\n\n"
              "I built a web application intended for developing machine learning model using React.\n\n"
              "I developed a Rest API for the web application using Spring  Boot, Java and A Postgres database.\n"),
    ),

    //Legacy Projects
    "connect-4": ProjectModel(
        cardModel: CardModel(
            goTo: "connect-4",
            date: "February 2020",
            title: "Connect 4",
            body:
                "Chernobyl++ is a C++ library that provide an easy to use and high performant interface to test quantitive trading algorithms on current or historic stock market data."),
        articleModel: ArticleModel(content: [
          Category(type: "heading", content: "DESIGN PHILOSOPHY"),
          Category(
              type: "paragraph",
              content:
                  "WebSocket++'s goal is to provide a flexible set of tools for building a wide variety of WebSocket based applications wrapped by low or zero overhead abstractions. It is not opinionated. If something can be practically replacable (with low overhead) based on the user's preference then it is. It accomplishes this via a policy based design built using C++ template metaprogramming. Bundled config packages provide sane defaults so most users can get started quickly. As they understand their solution better and want to optimize, the default components can be reconfigured or replaced entirely and transparently."),
          Category(
              type: "paragraph",
              content:
                  "WebSocket++'s goal is to provide a flexible set of tools for building a wide variety of WebSocket based applications wrapped by low or zero overhead abstractions. It is not opinionated. If something can be practically replacable (with low overhead) based on the user's preference then it is. It accomplishes this via a policy based design built using C++ template metaprogramming. Bundled config packages provide sane defaults so most users can get started quickly. As they understand their solution better and want to optimize, the default components can be reconfigured or replaced entirely and transparently."),
          Category(type: "heading", content: "USE CASES"),
          Category(
              type: "paragraph",
              content:
                  "WebSocket++'s goal is to provide a flexible set of tools for building a wide variety of WebSocket based applications wrapped by low or zero overhead abstractions. It is not opinionated. If something can be practically replacable (with low overhead) based on the user's preference then it is. It accomplishes this via a policy based design built using C++ template metaprogramming. Bundled config packages provide sane defaults so most users can get started quickly. As they understand their solution better and want to optimize, the default components can be reconfigured or replaced entirely and transparently."),
          Category(type: "heading", content: "KEY FEATURES"),
          Category(
              type: "paragraph",
              content:
                  "WebSocket++'s goal is to provide a flexible set of tools for building a wide variety of WebSocket based applications wrapped by low or zero overhead abstractions. It is not opinionated. If something can be practically replacable (with low overhead) based on the user's preference then it is. It accomplishes this via a policy based design built using C++ template metaprogramming. Bundled config packages provide sane defaults so most users can get started quickly. As they understand their solution better and want to optimize, the default components can be reconfigured or replaced entirely and transparently."),
        ])),
    "shopping-app": ProjectModel(
        cardModel: CardModel(
            goTo: "shopping-app",
            date: "February 2020",
            title: "Shopping App",
            body:
                "Chernobyl++ is a C++ library that provide an easy to use and high performant interface to test quantitive trading algorithms on current or historic stock market data."),
        articleModel: ArticleModel(content: [
          Category(type: "heading", content: "DESIGN PHILOSOPHY"),
          Category(
              type: "paragraph",
              content:
                  "WebSocket++'s goal is to provide a flexible set of tools for building a wide variety of WebSocket based applications wrapped by low or zero overhead abstractions. It is not opinionated. If something can be practically replacable (with low overhead) based on the user's preference then it is. It accomplishes this via a policy based design built using C++ template metaprogramming. Bundled config packages provide sane defaults so most users can get started quickly. As they understand their solution better and want to optimize, the default components can be reconfigured or replaced entirely and transparently."),
          Category(
              type: "paragraph",
              content:
                  "WebSocket++'s goal is to provide a flexible set of tools for building a wide variety of WebSocket based applications wrapped by low or zero overhead abstractions. It is not opinionated. If something can be practically replacable (with low overhead) based on the user's preference then it is. It accomplishes this via a policy based design built using C++ template metaprogramming. Bundled config packages provide sane defaults so most users can get started quickly. As they understand their solution better and want to optimize, the default components can be reconfigured or replaced entirely and transparently."),
          Category(type: "heading", content: "USE CASES"),
          Category(
              type: "paragraph",
              content:
                  "WebSocket++'s goal is to provide a flexible set of tools for building a wide variety of WebSocket based applications wrapped by low or zero overhead abstractions. It is not opinionated. If something can be practically replacable (with low overhead) based on the user's preference then it is. It accomplishes this via a policy based design built using C++ template metaprogramming. Bundled config packages provide sane defaults so most users can get started quickly. As they understand their solution better and want to optimize, the default components can be reconfigured or replaced entirely and transparently."),
          Category(type: "heading", content: "KEY FEATURES"),
          Category(
              type: "paragraph",
              content:
                  "WebSocket++'s goal is to provide a flexible set of tools for building a wide variety of WebSocket based applications wrapped by low or zero overhead abstractions. It is not opinionated. If something can be practically replacable (with low overhead) based on the user's preference then it is. It accomplishes this via a policy based design built using C++ template metaprogramming. Bundled config packages provide sane defaults so most users can get started quickly. As they understand their solution better and want to optimize, the default components can be reconfigured or replaced entirely and transparently."),
        ])),

    //Education
    "howard-university": ProjectModel(
      cardModel: CardModel(
          role: "Computer Science",
          date: "Fall 2019 - Spring 2023",
          title: "Howard University",
          body: "Bachelor's of Science.\n"
              "GPA: 3.82/4.00\n\n"
              "Relevant Coursework: Computer Science 1, Computer Science 2, Computer Science 3, Applied Data Science, Computer Organization 1, Computer Organization 2, Large Scale Programming, Calculus"),
    ),
    "tech-exchange": ProjectModel(
      cardModel: CardModel(
          date: "Spring 2021",
          title: "Google Tech Exchange",
          body:
              "I participated in a 1 semester long immersive computer science program managed by Google engineers.\n\n"
              "I completed an Applied Data Structures course taught by a Google engineer."),
    ),

    //Awards
    "capstone-scholarship": ProjectModel(
      cardModel: CardModel(
          date: "Fall 2019 - May 2023",
          title: "Capstone Scholarship",
          body:
              "I was awarded the Capstone Scholarship by Howard University, which is a four year merit based scholarship."),
    ),
    "autodesk-scholarship": ProjectModel(
      cardModel: CardModel(
          date: "Fall 2020 - Spring 2021",
          title: "Autodesk Scholarship",
          body:
              "I was awarded this 1 year scholarship by Autodesk for my participation in a one year internship."),
    ),

    //Skills
    "programming-languages": ProjectModel(
      cardModel: CardModel(
          title: "Programming Languages",
          body: ""
              "Python\n"
              "Java\n"
              "C++\n"
              "JavaScript\n"
              "Dart\n"),
    ),
    "frameworks": ProjectModel(
      cardModel: CardModel(
          title: "Tools and Technologies",
          body: ""
              "Git/Github\n"
              "Linux\n"
              "Docker\n"
              "Spring Boot\n"
              "Flutter"),
    ),

    //Activities
    "google-coding-challenge": ProjectModel(
      cardModel: CardModel(
          role: "Participant",
          date: "October 2019",
          title: "Google Coding Challenge",
          body:
              "I participated in an in person coding challenge hosted by Google.\n\n"
              "I collaborated with a team of 3 students to solve algorithmic challenges.\n\n"
              "I and my team were awarded the 2nd place prize by a panel of Google engineers."),
    ),
    "at&t-hackathon": ProjectModel(
      cardModel: CardModel(
          date: "September 2019",
          title: "AT&T Hackathon",
          body: "I participated in a 2 day hackathon hosted by AT&T.\n\n"
              "I worked in a team of 3 to build a web application that allowed students to connect with each other.\n\n"
              "I developed the front-end of the application using HTML5."),
    ),
    "organizations": ProjectModel(
      cardModel: CardModel(
          title: "Organizations",
          body:
              "Association for Computing Machinery - Former Freshman Liaison\n\n"
              "American Institute of Aeronautics and Astronautics. - Member\n\n"
              "National Society of Black Engineers - Member\n\n"
              "Howard University Robotics Organization - Member"),
    ),
  };

  static List<String> keyProjects = ["chernobyl++", "personal-website"];
  static List<String> legacyProjects = ["connect-4", "shopping-app"];
  static List<String> education = ["howard-university", "tech-exchange"];
  static List<String> awards = ["capstone-scholarship", "autodesk-scholarship"];
  static List<String> skills = ["programming-languages", "frameworks"];
  static List<String> internships = ["intuit", "autodesk"];
  static List<String> activities = ["google-coding-challenge", "at&t-hackathon", "organizations"];
}
