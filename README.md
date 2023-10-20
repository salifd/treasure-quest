# Treasure Quest

Treasure Quest is an iOS application that offers treasure hunts where you can uncover gems with random values based varying probabilities.

## Table of Contents

- [Approach](#approach)
- [Features](#features)
- [Improvements](#improvements)
- [License](#license)

## Approach

Treasure Quest is designed using the Model-View-ViewModel (MVVM) architectural pattern. It separates the application into three key components:

- **Model:** Represents the application's data and business logic.
- **View:** Defines the user interface and layout.
- **ViewModel:** Acts as an intermediary between the Model and View, handling data binding and user interaction.

We can also talk about the service layer which handles networking, data storage, and other backend-related operations.

**I choosed this architectural approach to promote clean, maintainable, and testable code.**

## Features

- **Simulate Treasure Hunts:** Enjoy the thrill of treasure hunts with random rewards.
- **Unique Treasures:** Each treasure has a unique value and probability.

## Improvements

In a real production app, we would consider different approaches to enhance the user experience:

- **Game Frameworks:** Use game development frameworks such as Unity, SpriteKit, or similar platforms to provide advanced graphics, animations, and interactive elements for an immersive gaming experience.
- **Social Features:** Implement social integration, leaderboards, or multiplayer functionality.
- **Monetization:** Explore options for in-app purchases, ads, or other monetization strategies.
- **User Feedback:** Collect and analyze user feedback to continuously improve and optimize the app.


In Our case here, improvements could be :

- Splitting into multiple specfic endpoint by having POST, PUT or DELETE.
- Adding an embed databse to store some informations related to the user.
- Adding a mechanism to able create a queue for multiple requests.
 

## License

This project is licensed under the MIT License.
