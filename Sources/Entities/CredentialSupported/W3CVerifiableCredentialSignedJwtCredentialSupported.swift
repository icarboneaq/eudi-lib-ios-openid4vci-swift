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
import SwiftyJSON

public struct W3CVerifiableCredentialSignedJwtCredentialSupported: Codable {
  public let format: String
  public let scope: String?
  public let cryptographicBindingMethodsSupported: [String]?
  public let cryptographicSuitesSupported: [String]?
  public let proofTypesSupported: [String]?
  public let display: [Display]?
  public let credentialDefinition: JSON
  public let order: [String]?
  
  public enum CodingKeys: String, CodingKey {
    case format
    case scope
    case cryptographicBindingMethodsSupported = "cryptographic_binding_methods_supported"
    case cryptographicSuitesSupported = "cryptographic_suites_supported"
    case proofTypesSupported = "proof_types_supported"
    case display
    case credentialDefinition = "credential_definition"
    case order
  }
  
  public init(
    format: String,
    scope: String? = nil,
    cryptographicBindingMethodsSupported: [String]? = nil,
    cryptographicSuitesSupported: [String]? = nil,
    proofTypesSupported: [String]? = nil,
    display: [Display]? = nil,
    credentialDefinition: JSON,
    order: [String]? = nil
  ) {
    self.format = format
    self.scope = scope
    self.cryptographicBindingMethodsSupported = cryptographicBindingMethodsSupported
    self.cryptographicSuitesSupported = cryptographicSuitesSupported
    self.proofTypesSupported = proofTypesSupported
    self.display = display
    self.credentialDefinition = credentialDefinition
    self.order = order
  }
}
