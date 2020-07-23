//
//  BiometricLogin_HappyPathTests.swift
//  TABTestKit_ExampleUITests
//
//  Created by Kane Cheshire on 10/09/2019.
//  Copyright © 2019 Kin + Carta. All rights reserved.
//

import TABTestKit

// NOTE: Parallel UI tests are best optimised if you only have one test function per test case.

final class BiometricLogin_HappyPathTests: TABTestCase, SystemPreferencesContext { // TODO: Enable parallel tests
  
  override func preLaunchSetup(_ launch: @escaping () -> Void) {
    resetAllPrivacyPrompts()
    launch()
  }
  
  func test_happyPath() {
    Scenario("Logging in with biometrics") {
      Given(I: see(biometricLoginScreen))
      When(I: complete(biometricLoginScreen))
      Then(I: doNotSee(biometricLoginScreen))
    }
  }
  
}
