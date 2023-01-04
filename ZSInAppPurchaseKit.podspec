Pod::Spec.new do |spec|


  spec.name         = "ZSInAppPurchaseKit"
  spec.version      = "1.0.1"
  spec.homepage     = "https://www.zoho.com/subscriptions"
  spec.summary      = "In App Purchase and subscription management."

  spec.description  = <<-DESC
  Get a unified view of your subscription business and related metrics by syncing your subscription data from various sources like Apple App Store, Google Play Store and your website. 

  Zoho Subscriptions is a recurring billing platform that helps you manage customer subscriptions and subscription-related finances.
                         DESC

  spec.license      = "MIT"

  spec.author             = { "Zoho Corporation" => "support@zohosubscriptions.com" }
  spec.social_media_url   = "https://twitter.com/ZSubscriptions"

  spec.platform     = :ios, '9.0'

  spec.source       = { :git => "https://github.com/zoho/ZSInAppPurchaseKit.git", :tag => spec.version.to_s }

  spec.documentation_url = "https://zs-inapp-sdk-docs-698827873.development.zohocatalyst.com/app/iOS/index.html"

  spec.vendored_frameworks = "ZSInAppPurchaseKit.xcframework"
  spec.framework  = "StoreKit"

end
