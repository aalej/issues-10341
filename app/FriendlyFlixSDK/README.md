This Swift package contains the generated Swift code for the connector `friendly-flix`.

You can use this package by adding it as a local Swift package dependency in your project.

# Accessing the connector

Add the necessary imports

```
import FirebaseDataConnect
import FriendlyFlixSDK

```

The connector can be accessed using the following code:

```
let connector = DataConnect.friendlyFlixConnector

```


## Connecting to the local Emulator
By default, the connector will connect to the production service.

To connect to the emulator, you can use the following code, which can be called from the `init` function of your SwiftUI app

```
connector.useEmulator()
```

# Queries

## ListReviewsReproQuery


### Using the Query Reference
```
struct MyView: View {
   var listReviewsReproQueryRef = DataConnect.friendlyFlixConnector.listReviewsReproQuery.ref(...)

  var body: some View {
    VStack {
      if let data = listReviewsReproQueryRef.data {
        // use data in View
      }
      else {
        Text("Loading...")
      }
    }
    .task {
        do {
          let _ = try await listReviewsReproQueryRef.execute()
        } catch {
        }
      }
  }
}
```

### One-shot execute
```
DataConnect.friendlyFlixConnector.listReviewsReproQuery.execute(...)
```


# Mutations
## UpsertUserMutation

### Variables

#### Required
```swift

let username: String = ...
```
 

### One-shot execute
```
DataConnect.friendlyFlixConnector.upsertUserMutation.execute(...)
```

## AddFavoritedMovieMutation

### Variables

#### Required
```swift

let movieId: UUID = ...
```
 

### One-shot execute
```
DataConnect.friendlyFlixConnector.addFavoritedMovieMutation.execute(...)
```

## DeleteFavoritedMovieMutation

### Variables

#### Required
```swift

let movieId: UUID = ...
```
 

### One-shot execute
```
DataConnect.friendlyFlixConnector.deleteFavoritedMovieMutation.execute(...)
```

