# Minimal Reproducible Example: Gesture Conflict Between SwiftUI List and Flutter List

This project demonstrates an issue where drag gestures are consumed by both a SwiftUI List and a Flutter List simultaneously when attempting to drag on the Flutter List.

## Issue Description

When attempting to drag on the Flutter List, the drag gestures are consumed by both the SwiftUI List and the Flutter List, causing unintended behavior and conflicts.

## Screen Recording

To see the issue in action, refer to the screen recording:

[![Screen Recording](./screen_recording.mov)](./screen_recording.mov)

## Project Structure

### EmbedFlutterScrollView

This component defines a horizontal SwiftUI List.

```swift
import SwiftUI

struct ContentView: View {
    var body: some View {
        List {
            Text("Hehe 1")
            Text("Hehe 1")
            Text("Hehe 1")
            Text("Hehe 1")
            Text("Hehe 1")
            Text("Hehe 1")
            Text("Hehe 1")
            Text("Hehe 1")
            Text("Hehe 1")
            Text("Hehe 1")
            Text("Hehe 1")
            FlutterView().frame(height: 200)
        }
    }
}
```

### scroll_view
This component defines a horizontal SwiftUI List.


```dart
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) => MaterialApp(
        home: Scaffold(
          body: ListView(
            scrollDirection: Axis.horizontal,
            children: Colors.primaries
                .map((e) => Container(
                      color: e,
                      width: 100,
                      height: 100,
                    ))
                .toList(),
          ),
        ),
      );
}
```
