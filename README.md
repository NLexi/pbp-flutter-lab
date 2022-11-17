# Assignment 7

### Differences between stateless widget and stateful widget
The main difference between them are during the app runtime
stateless widgets are static and don't change (immutable), 
meanwhile stateful widgets are dynamic and they change (mutable).

### What widgets does this project use and their functions
- AppBar : The bar the top, in this app containing the title of the app
- Column : Putting child widgets in the vertical direction
- Row : Laying out the child widgets in the horizontal direction
- Scaffold : Basic Material Design visual layout structure
- Icon : Displaying an icon
- Text : Displaying a line of text

### function of `setState()`
setState() enqueues changes to the component state and tells React that this component and its children need to be re-rendered with the updated state.
The variables that can be affected by it are the ones it contains

### Differences of `const` and `final`
When the value must be known is different,
`const` must know the value at **compile-time**
`final` must know the value at **run-time**
both can't be changed once initialized

### Step by step process
- Create a new flutter project
- Add a new function to decrement counter called `_decrementCounter`
- Add a button that uses `_decrementCounter` on press on the bottom right of the screen
- Add a conditional statement to display the text either even or odd
- Add a conditional statement that hides the decrement button if the counter is 0
- Run `git init` in root folder
- Modify `READ.ME` file in root folder
- Create a new repository named `pbp-flutter-lab`
- Do `add`-`commit`-`push` into said git repository

# Assignment 8

### Differences between `Navigator.push` and `Navigator.pushReplacement`
Navigator.push pushes the route into the stack on top of the current page, thereby displaying the second route.
Meanwhile, Navigator.pushReplacement replaces the current page with the route you want to push.

### What widgets does this project use and their functions
- `DropdownButton` : Displays a drop down menu with items that the user can select
- `TextButton` : A simple button that displays a text on it and listens to onPressed()
- `ElevatedButton` : A bigger button
- `ListTile` : A widget to populate ListView and contains title, leading, as well as trailing
- `ListView.builder` : A ListView constructor that builds the children on demand
- `Material` : A convenience widget that wraps a number of widgets that are commonly required for applications implementing Material Design

### Name the types of events that exist in flutter
- `onPressed` : listens to user clicks on an object
- `onTap` : listens to user taps on a render object
- `onSaved` : listens to when a user saves their data input in a form
- `onChanged` : listens to when a user changes the value of field

### How does the navigator work in "switching" pages of an application
When we use a push method, we will navigate to another screen as well as put it on top of the stack.
When we pop we remove that screen rom on top of the stack.

### Step by step process
- Create a new dart file called `Form.dart` to display 'Add Budget'.
- Create a new dart file called `budget.dart` to display 'budget data'.
- Create a drawer to navigate all these screens.
- Fill the Form.dart with questions that we need
- Create a new class called `DataList` that can receive the data from `Form.dart`.
- Create a new dart file called `datalist.dart` that contains a global variable `data` as a list.
- Display `data` in `budget.dart` using `ListView.builder`.
- Modify `READ.ME` file in root folder.
- Do `add`-`commit`-`push` into git repository.