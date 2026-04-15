
import Foundation

import FirebaseCore
import FirebaseDataConnect
public extension DataConnect {

  static let friendlyFlixConnector: FriendlyFlixConnector = {

    let dc = DataConnect.dataConnect(connectorConfig: FriendlyFlixConnector.connectorConfig, callerSDKType: .generated)
    return FriendlyFlixConnector(dataConnect: dc)
  }()

}

public class FriendlyFlixConnector {

  let dataConnect: DataConnect

  public static let connectorConfig = ConnectorConfig(serviceId: "friendlyflix", location: "us-central1", connector: "friendly-flix")

  init(dataConnect: DataConnect) {
    self.dataConnect = dataConnect

    // init operations 
    self.listReviewsReproQuery = ListReviewsReproQuery(dataConnect: dataConnect)
    self.upsertUserMutation = UpsertUserMutation(dataConnect: dataConnect)
    self.addFavoritedMovieMutation = AddFavoritedMovieMutation(dataConnect: dataConnect)
    self.deleteFavoritedMovieMutation = DeleteFavoritedMovieMutation(dataConnect: dataConnect)
    
  }

  public func useEmulator(host: String = DataConnect.EmulatorDefaults.host, port: Int = DataConnect.EmulatorDefaults.port) {
    self.dataConnect.useEmulator(host: host, port: port)
  }

  // MARK: Operations
public let listReviewsReproQuery: ListReviewsReproQuery
public let upsertUserMutation: UpsertUserMutation
public let addFavoritedMovieMutation: AddFavoritedMovieMutation
public let deleteFavoritedMovieMutation: DeleteFavoritedMovieMutation


}
