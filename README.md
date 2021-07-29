# GenericTableSolution
It is a flexible approach to create dynamic table View with mix of custom table cells designed in UIKit and SwiftUI.

## Who should visit this approach?
If your app supports from iOS 13 and above, but you have lots of screens designed using UKit, but now you want to work on latest SwiftUI APIs to design your views. there is midway using this mix match approach which can give you sigh of relief. You can design view in SwiftUi and place it as tableCell alongwith other tableCells which are design by UIKit. 

## PS
* If you dont have any dependency to reuse old tableCell xibs and you have support from iOS 13, You should use SwiftUI to design your screen and close this repo link to save your time 😀. Don't even read next points. 

* Because of feature deadline if you didn't get time to migrate your old code in SwiftUI, You can take help from this approach to inject SwiftUI view alongwith old TableCell XIbs in your UITableView.

* We can solve this issue by UIHostingController's view. Check the code sample for more details.

## Demo Screnshot
<img src="/Screenshots/1.png" width="390" height="844">

## Approach Diagram 
(Lazy enough to right blog on it sorry, I hope you'd understand this flow diagram 🤓)
<img src="/Screenshots/GenericTableArch.jpeg" width="871" height="401">
