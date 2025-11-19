![alt text](https://zs-inapp-sdk-docs-698827873.development.zohocatalyst.com/app/DO_NOT_DELETE_THIS_IMAGE.png)

# ZSInAppPurchaseKit
Get a unified view of your subscription business and related metrics by syncing your subscription data from various sources like Apple App Store, Google Play Store and your website.

Zoho Billing is a recurring billing platform that helps you manage customer subscriptions and subscription-related finances.

You can bundle our SDK with your Android and iOS apps. The SDK's will facilitate purchase with the respective app stores. Any new purchase or changes to existing subscription will be automatically synced to your Zoho Billing organisation and will reflect in your metrics.

Installation
--

**Swift Package Manager**

To install ZSInAppPurchaseKit in your Xcode project using SPM, follow the below steps.


- File > Swift Packages > Add Package Dependency...

- Enter this [repo url](https://github.com/zoho/ZSInAppPurchaseKit.git) in the search box. 

- Select the version as your requirement and select "Add Package".

Then import the package to your project files.

```swift
import ZSInAppPurchaseKit
```

**ZSInAppPurchaseKit.xcframework**

If you are not using SPM in your project you can download and add our [ZSInAppPurchaseKit.xcframework](https://github.com/zoho/ZSInAppPurchaseKit/tree/master/ZSInAppPurchaseKit.xcframework) directly in to your project.

---


Implementation
--

**Initalization**

```
    let zsConfiguration = ZSConfiguration(apiKey: YOUR_API_KEY, zsProductId: YOUR_PRODUCT_ID, domain: DOMAIN)
    zsConfiguration.setUserInfo(userId: APP_USER_ID, email: APP_USER_EMAIL, displayName: APP_USER_DISPLAY_NAME)
    ZSKit.initialize(with: zsConfiguration)
```

**Get Plans**

```
    ZSKit.getPlans
    { (plans, error) in
        //Show the UI with plans list.
    }
```

**Initiate Purchase**

```
    ZSKit.initiatePurchase(product: USER_SELECTED_PRODUCT)
    { (subsDetail, error) in
        //Subscription Handling Code goes here
    }
    
```

**Clear User Info**

```
    //Clear the user information from sdk on the sign out using this method.
    ZSKit.clearUserInfo()
    
```

