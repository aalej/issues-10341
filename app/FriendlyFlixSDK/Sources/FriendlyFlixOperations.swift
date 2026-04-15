import Foundation

import FirebaseCore
import FirebaseDataConnect




















// MARK: Common Enums

public enum OrderDirection: String, Codable, Sendable {
  case ASC = "ASC"
  case DESC = "DESC"
  }

public enum SearchQueryFormat: String, Codable, Sendable {
  case QUERY = "QUERY"
  case PLAIN = "PLAIN"
  case PHRASE = "PHRASE"
  case ADVANCED = "ADVANCED"
  }


// MARK: Connector Enums

// End enum definitions









public class UpsertUserMutation{

  let dataConnect: DataConnect

  init(dataConnect: DataConnect) {
    self.dataConnect = dataConnect
  }

  public static let OperationName = "UpsertUser"

  public typealias Ref = MutationRef<UpsertUserMutation.Data,UpsertUserMutation.Variables>

  public struct Variables: OperationVariable {
  
        
        public var
username: String


    
    
    
    public init (
        
username: String

        
        ) {
        self.username = username
        

        
    }

    public static func == (lhs: Variables, rhs: Variables) -> Bool {
      
        return lhs.username == rhs.username
              
    }

    
public func hash(into hasher: inout Hasher) {
  
  hasher.combine(username)
  
}

    enum CodingKeys: String, CodingKey {
      
      case username
      
    }

    public func encode(to encoder: Encoder) throws {
      var container = encoder.container(keyedBy: CodingKeys.self)
      let codecHelper = CodecHelper<CodingKeys>()
      
      
      try codecHelper.encode(username, forKey: .username, container: &container)
      
      
    }

  }

  public struct Data: Decodable, Sendable {



public var 
user_upsert: UserKey

  }

  public func ref(
        
username: String

        ) -> MutationRef<UpsertUserMutation.Data,UpsertUserMutation.Variables>  {
        var variables = UpsertUserMutation.Variables(username:username)
        

        let ref = dataConnect.mutation(name: "UpsertUser", variables: variables, resultsDataType:UpsertUserMutation.Data.self)
        return ref as MutationRef<UpsertUserMutation.Data,UpsertUserMutation.Variables>
   }

  @MainActor
   public func execute( 
        
username: String

        ) async throws -> OperationResult<UpsertUserMutation.Data> {
        var variables = UpsertUserMutation.Variables(username:username)
        

        let ref = dataConnect.mutation(name: "UpsertUser", variables: variables, resultsDataType:UpsertUserMutation.Data.self)
        
        return try await ref.execute()
        
   }
}






public class AddFavoritedMovieMutation{

  let dataConnect: DataConnect

  init(dataConnect: DataConnect) {
    self.dataConnect = dataConnect
  }

  public static let OperationName = "AddFavoritedMovie"

  public typealias Ref = MutationRef<AddFavoritedMovieMutation.Data,AddFavoritedMovieMutation.Variables>

  public struct Variables: OperationVariable {
  
        
        public var
movieId: UUID


    
    
    
    public init (
        
movieId: UUID

        
        ) {
        self.movieId = movieId
        

        
    }

    public static func == (lhs: Variables, rhs: Variables) -> Bool {
      
        return lhs.movieId == rhs.movieId
              
    }

    
public func hash(into hasher: inout Hasher) {
  
  hasher.combine(movieId)
  
}

    enum CodingKeys: String, CodingKey {
      
      case movieId
      
    }

    public func encode(to encoder: Encoder) throws {
      var container = encoder.container(keyedBy: CodingKeys.self)
      let codecHelper = CodecHelper<CodingKeys>()
      
      
      try codecHelper.encode(movieId, forKey: .movieId, container: &container)
      
      
    }

  }

  public struct Data: Decodable, Sendable {



public var 
favorite_movie_upsert: FavoriteMovieKey

  }

  public func ref(
        
movieId: UUID

        ) -> MutationRef<AddFavoritedMovieMutation.Data,AddFavoritedMovieMutation.Variables>  {
        var variables = AddFavoritedMovieMutation.Variables(movieId:movieId)
        

        let ref = dataConnect.mutation(name: "AddFavoritedMovie", variables: variables, resultsDataType:AddFavoritedMovieMutation.Data.self)
        return ref as MutationRef<AddFavoritedMovieMutation.Data,AddFavoritedMovieMutation.Variables>
   }

  @MainActor
   public func execute( 
        
movieId: UUID

        ) async throws -> OperationResult<AddFavoritedMovieMutation.Data> {
        var variables = AddFavoritedMovieMutation.Variables(movieId:movieId)
        

        let ref = dataConnect.mutation(name: "AddFavoritedMovie", variables: variables, resultsDataType:AddFavoritedMovieMutation.Data.self)
        
        return try await ref.execute()
        
   }
}






public class DeleteFavoritedMovieMutation{

  let dataConnect: DataConnect

  init(dataConnect: DataConnect) {
    self.dataConnect = dataConnect
  }

  public static let OperationName = "DeleteFavoritedMovie"

  public typealias Ref = MutationRef<DeleteFavoritedMovieMutation.Data,DeleteFavoritedMovieMutation.Variables>

  public struct Variables: OperationVariable {
  
        
        public var
movieId: UUID


    
    
    
    public init (
        
movieId: UUID

        
        ) {
        self.movieId = movieId
        

        
    }

    public static func == (lhs: Variables, rhs: Variables) -> Bool {
      
        return lhs.movieId == rhs.movieId
              
    }

    
public func hash(into hasher: inout Hasher) {
  
  hasher.combine(movieId)
  
}

    enum CodingKeys: String, CodingKey {
      
      case movieId
      
    }

    public func encode(to encoder: Encoder) throws {
      var container = encoder.container(keyedBy: CodingKeys.self)
      let codecHelper = CodecHelper<CodingKeys>()
      
      
      try codecHelper.encode(movieId, forKey: .movieId, container: &container)
      
      
    }

  }

  public struct Data: Decodable, Sendable {



public var 
favorite_movie_delete: FavoriteMovieKey?

  }

  public func ref(
        
movieId: UUID

        ) -> MutationRef<DeleteFavoritedMovieMutation.Data,DeleteFavoritedMovieMutation.Variables>  {
        var variables = DeleteFavoritedMovieMutation.Variables(movieId:movieId)
        

        let ref = dataConnect.mutation(name: "DeleteFavoritedMovie", variables: variables, resultsDataType:DeleteFavoritedMovieMutation.Data.self)
        return ref as MutationRef<DeleteFavoritedMovieMutation.Data,DeleteFavoritedMovieMutation.Variables>
   }

  @MainActor
   public func execute( 
        
movieId: UUID

        ) async throws -> OperationResult<DeleteFavoritedMovieMutation.Data> {
        var variables = DeleteFavoritedMovieMutation.Variables(movieId:movieId)
        

        let ref = dataConnect.mutation(name: "DeleteFavoritedMovie", variables: variables, resultsDataType:DeleteFavoritedMovieMutation.Data.self)
        
        return try await ref.execute()
        
   }
}






public class ListReviewsReproQuery{

  let dataConnect: DataConnect

  init(dataConnect: DataConnect) {
    self.dataConnect = dataConnect
  }

  public static let OperationName = "ListReviewsRepro"

  public typealias Ref = QueryRefObservation<ListReviewsReproQuery.Data,ListReviewsReproQuery.Variables>

  public struct Variables: OperationVariable {

    
    
  }

  public struct Data: Decodable, Sendable {




public struct Review: Decodable, Sendable  {
  


public var 
rating: Int?



public var 
reviewText: String?





public struct User: Decodable, Sendable ,Hashable, Equatable, Identifiable {
  


public var 
id: String



public var 
username: String


  
  public var userKey: UserKey {
    return UserKey(
      
      id: id
    )
  }

  
public func hash(into hasher: inout Hasher) {
  
  hasher.combine(id)
  
}
public static func == (lhs: User, rhs: User) -> Bool {
    
    return lhs.id == rhs.id 
        
  }

  

  
  enum CodingKeys: String, CodingKey {
    
    case id
    
    case username
    
  }

  public init(from decoder: any Decoder) throws {
    var container = try decoder.container(keyedBy: CodingKeys.self)
    let codecHelper = CodecHelper<CodingKeys>()

    
    
    self.id = try codecHelper.decode(String.self, forKey: .id, container: &container)
    
    
    
    self.username = try codecHelper.decode(String.self, forKey: .username, container: &container)
    
    
  }
}
public var 
user: User





public struct User: Decodable, Sendable ,Hashable, Equatable, Identifiable {
  


public var 
id: String



public var 
username: String


  
  public var userKey: UserKey {
    return UserKey(
      
      id: id
    )
  }

  
public func hash(into hasher: inout Hasher) {
  
  hasher.combine(id)
  
}
public static func == (lhs: User, rhs: User) -> Bool {
    
    return lhs.id == rhs.id 
        
  }

  

  
  enum CodingKeys: String, CodingKey {
    
    case id
    
    case username
    
  }

  public init(from decoder: any Decoder) throws {
    var container = try decoder.container(keyedBy: CodingKeys.self)
    let codecHelper = CodecHelper<CodingKeys>()

    
    
    self.id = try codecHelper.decode(String.self, forKey: .id, container: &container)
    
    
    
    self.username = try codecHelper.decode(String.self, forKey: .username, container: &container)
    
    
  }
}
public var 
otherUser: User


  

  
  enum CodingKeys: String, CodingKey {
    
    case rating
    
    case reviewText
    
    case user
    
    case otherUser
    
  }

  public init(from decoder: any Decoder) throws {
    var container = try decoder.container(keyedBy: CodingKeys.self)
    let codecHelper = CodecHelper<CodingKeys>()

    
    
    self.rating = try codecHelper.decode(Int?.self, forKey: .rating, container: &container)
    
    
    
    self.reviewText = try codecHelper.decode(String?.self, forKey: .reviewText, container: &container)
    
    
    
    self.user = try codecHelper.decode(User.self, forKey: .user, container: &container)
    
    
    
    self.otherUser = try codecHelper.decode(User.self, forKey: .otherUser, container: &container)
    
    
  }
}
public var 
reviews: [Review]

  }

  public func ref(
        
        ) -> QueryRefObservation<ListReviewsReproQuery.Data,ListReviewsReproQuery.Variables>  {
        var variables = ListReviewsReproQuery.Variables()
        

        let ref = dataConnect.query(name: "ListReviewsRepro", variables: variables, resultsDataType:ListReviewsReproQuery.Data.self, publisher: .observableMacro)
        return ref as! QueryRefObservation<ListReviewsReproQuery.Data,ListReviewsReproQuery.Variables>
   }

  @MainActor
   public func execute( fetchPolicy: QueryFetchPolicy = .preferCache,  
        
        ) async throws -> OperationResult<ListReviewsReproQuery.Data> {
        var variables = ListReviewsReproQuery.Variables()
        

        let ref = dataConnect.query(name: "ListReviewsRepro", variables: variables, resultsDataType:ListReviewsReproQuery.Data.self, publisher: .observableMacro)
        
        let refCast = ref as! QueryRefObservation<ListReviewsReproQuery.Data,ListReviewsReproQuery.Variables>
        return try await refCast.execute(fetchPolicy: fetchPolicy)
        
   }
}


