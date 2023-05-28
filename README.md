# Project Detail

This project documentation provides an overview of application, which utilises the stacked state management approach following the MVVM (Model-View-ViewModel) architecture. The project includes the implementation of models, views, and view models, while adhering to the principles of clean code architecture. Additionally, location permission handling and internet activity checks have been integrated to ensure a seamless user experience. Furthermore, an app icon has been added to enhance the application's visual appeal. The usage of the Envied library for secure API key and VIN handling and the creation of reusable widgets contribute to the overall efficiency and maintainability of the codebase.I have also written some basic widget and unit tests for project. Widget tests help catch UI-related issues and ensure the proper functioning of user interface components. Unit tests allow us to test code's behaviour in different scenarios, covering edge cases and ensuring the correctness of  application's logic. These tests approach help catch issues early, improve maintainability, and provide confidence in the stability and correctness of code. 

## Project Video

https://github.com/BilalRehman08/EKAR/assets/53112208/bf0d2372-6158-4c4d-b90d-b6051f0c5afd

## Loading Screen

Appears when getting user's location & API request is in process

![loading](https://github.com/BilalRehman08/EKAR/assets/53112208/3a8815d0-244a-4f26-b3ed-bd9e661b8e1a)

## Map Screen

○ Dynamically load a single vehicle into a scene that you named "viewMap" (using user's current location).
○ When the user clicks on a marker on the map, it takes them to a new scene
(named “viewVehicle ”)

![map](https://github.com/BilalRehman08/EKAR/assets/53112208/a4e4d85c-0091-428e-b295-15c604e95f46)

## Vehicle Screen

○ Create a scene called "viewVehicle", and use the API below to dynamically
generate vehicle details (There are some missing values in API, so for that I used hard coded values as they are not provided in the API). To return to the "viewMap" screen, click the back
chevron.
○ Calls Images API, there are 35 images in API so for that I created List extension in which getting only first 5 images from API.
○ Ensure that the slider is functional and that the "proceed with your selection"
component is fixed
○ Calls to action such as How Contracts Work? 'Toast messages' should be
displayed

![vehicle](https://github.com/BilalRehman08/EKAR/assets/53112208/18f7be78-8816-413d-9999-a0f958465e7b)

## OnBoard Screen

○ Using Vertical UICollection view, create a scene (named "viewOnBoard") with
four items and a placeholder icon. Items should be dynamic and ensure to
add a Close Icon to go back to “viewVehicle”
○ When the user clicks the cell item, a popup prompts them to capture the
image
○ Add a Comment input as a mandatory field
○ Create the Submit call to action that will validate the fields, however we are
not requesting you to “post/push” the data.
○ On successful submission, trigger a thank you toast/popup on "viewOnBoard"
with the message "Thank you for choosing ekar."

![onboard](https://github.com/BilalRehman08/EKAR/assets/53112208/6b3b87ef-2fb1-4dd1-b13b-3a3612aa671e)






