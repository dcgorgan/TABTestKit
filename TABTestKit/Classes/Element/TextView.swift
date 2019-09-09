//
//  TextView.swift
//  TABTestKit
//
//  Created by Kane Cheshire on 09/09/2019.
//

import XCTest

public struct TextView: Element, Editable, ValueRepresenting {
	
	public let id: String
	public let type: XCUIElement.ElementType = .textView
	public var value: String { underlyingXCUIElement.value as? String ?? "" }
	
	public init(id: String) {
		self.id = id
	}
	
}
