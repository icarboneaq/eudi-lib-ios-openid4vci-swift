/*
 * Copyright (c) 2023 European Commission
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */
import Foundation

public enum IssuanceAuthorization {
  case authorizationCode(String)
  case preAuthorizationCode(String)
}

public extension IssuanceAuthorization {
  
  init(authorizationCode: String) throws {
    
    guard !authorizationCode.isEmpty else {
      throw CredentialError.genericError
    }
    
    self = .authorizationCode(authorizationCode)
  }
  
  init(preAuthorizationCode: String) throws {
    
    guard !preAuthorizationCode.isEmpty else {
      throw CredentialError.genericError
    }
    
    self = .preAuthorizationCode(preAuthorizationCode)
  }
}
