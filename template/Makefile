update:
	@carthage update --platform iOS
tests:
	@xcodebuild -project "template.xcodeproj" -scheme "template" -sdk iphonesimulator -destination 'platform=iOS Simulator,name=iPhone 5s'  clean build test
