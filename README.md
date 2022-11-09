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