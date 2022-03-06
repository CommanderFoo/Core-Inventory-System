Assets {
  Id: 1574328558833348245
  Name: "Armor Inventory"
  PlatformAssetType: 5
  TemplateAsset {
    ObjectBlock {
      RootId: 5574202887036480104
      Objects {
        Id: 5574202887036480104
        Name: "Armor Inventory"
        Transform {
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 4056815105945944543
        ChildIds: 15429903673137320872
        ChildIds: 12282118051503311671
        UnregisteredParameters {
          Overrides {
            Name: "cs:API_Inventory"
            AssetReference {
              Id: 12879219911357857649
            }
          }
          Overrides {
            Name: "cs:Name"
            String: "Armor Inventory"
          }
          Overrides {
            Name: "cs:SlotCount"
            Int: 9
          }
          Overrides {
            Name: "cs:StorageKey"
            String: "ainv"
          }
          Overrides {
            Name: "cs:CleanUp"
            Bool: true
          }
          Overrides {
            Name: "cs:InventoryUI"
            ObjectReference {
              SubObjectId: 9006966199822366296
            }
          }
          Overrides {
            Name: "cs:Slots"
            ObjectReference {
              SubObjectId: 9721444502498029938
            }
          }
          Overrides {
            Name: "cs:SlotFrameNormal"
            Color {
              R: 0.423267752
              G: 0.208636895
              B: 0.045186203
              A: 1
            }
          }
          Overrides {
            Name: "cs:SlotFrameHover"
            Color {
              R: 0.296875
              G: 0.146335483
              B: 0.0316930562
              A: 1
            }
          }
          Overrides {
            Name: "cs:SlotBackgroundNormal"
            Color {
              R: 0.991102397
              G: 0.496933132
              B: 0.168269426
              A: 1
            }
          }
          Overrides {
            Name: "cs:SlotBackgroundHover"
            Color {
              R: 0.991102397
              G: 0.63334614
              B: 0.395408601
              A: 1
            }
          }
          Overrides {
            Name: "cs:API_Inventory:isrep"
            Bool: false
          }
          Overrides {
            Name: "cs:API_Inventory:ml"
            Bool: false
          }
          Overrides {
            Name: "cs:Name:isrep"
            Bool: false
          }
          Overrides {
            Name: "cs:Name:ml"
            Bool: false
          }
          Overrides {
            Name: "cs:Slots:isrep"
            Bool: false
          }
          Overrides {
            Name: "cs:Slots:ml"
            Bool: false
          }
          Overrides {
            Name: "cs:SlotFrameNormal:isrep"
            Bool: false
          }
          Overrides {
            Name: "cs:SlotFrameNormal:ml"
            Bool: false
          }
          Overrides {
            Name: "cs:SlotFrameHover:isrep"
            Bool: false
          }
          Overrides {
            Name: "cs:SlotFrameHover:ml"
            Bool: false
          }
          Overrides {
            Name: "cs:SlotBackgroundNormal:isrep"
            Bool: false
          }
          Overrides {
            Name: "cs:SlotBackgroundNormal:ml"
            Bool: false
          }
          Overrides {
            Name: "cs:SlotBackgroundHover:isrep"
            Bool: false
          }
          Overrides {
            Name: "cs:SlotBackgroundHover:ml"
            Bool: false
          }
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        EditorIndicatorVisibility {
          Value: "mc:eindicatorvisibility:visiblewhenselected"
        }
        Folder {
          IsGroup: true
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
      }
      Objects {
        Id: 15429903673137320872
        Name: "Server"
        Transform {
          Location {
          }
          Rotation {
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 5574202887036480104
        ChildIds: 14553481301205902906
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        EditorIndicatorVisibility {
          Value: "mc:eindicatorvisibility:visiblewhenselected"
        }
        NetworkContext {
          Type: Server
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
      }
      Objects {
        Id: 14553481301205902906
        Name: "Inventory_Server"
        Transform {
          Location {
            X: -9.15527344e-05
            Y: 429.999969
          }
          Rotation {
            Yaw: -89.9999847
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 15429903673137320872
        UnregisteredParameters {
          Overrides {
            Name: "cs:Root"
            ObjectReference {
              SubObjectId: 5574202887036480104
            }
          }
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        EditorIndicatorVisibility {
          Value: "mc:eindicatorvisibility:visiblewhenselected"
        }
        Script {
          ScriptAsset {
            Id: 16293581799952892550
          }
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
      }
      Objects {
        Id: 12282118051503311671
        Name: "Client"
        Transform {
          Location {
          }
          Rotation {
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 5574202887036480104
        ChildIds: 14831438725735704176
        ChildIds: 6776474551656355825
        Collidable_v2 {
          Value: "mc:ecollisionsetting:forceoff"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:forceoff"
        }
        EditorIndicatorVisibility {
          Value: "mc:eindicatorvisibility:visiblewhenselected"
        }
        NetworkContext {
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
      }
      Objects {
        Id: 14831438725735704176
        Name: "UI Container"
        Transform {
          Location {
          }
          Rotation {
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 12282118051503311671
        ChildIds: 9006966199822366296
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        EditorIndicatorVisibility {
          Value: "mc:eindicatorvisibility:visiblewhenselected"
        }
        Control {
          RenderTransformPivot {
            Anchor {
              Value: "mc:euianchor:middlecenter"
            }
          }
          Canvas {
            ContentType {
              Value: "mc:ecanvascontenttype:dynamic"
            }
            Opacity: 1
            IsHUD: true
            CanvasWorldSize {
              X: 1024
              Y: 1024
            }
            RedrawTime: 30
          }
          AnchorLayout {
            SelfAnchor {
              Anchor {
                Value: "mc:euianchor:topleft"
              }
            }
            TargetAnchor {
              Anchor {
                Value: "mc:euianchor:topleft"
              }
            }
          }
        }
      }
      Objects {
        Id: 9006966199822366296
        Name: "Inventory"
        Transform {
          Location {
          }
          Rotation {
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 14831438725735704176
        ChildIds: 14362278877528749310
        ChildIds: 1928700390744900675
        ChildIds: 9721444502498029938
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        EditorIndicatorVisibility {
          Value: "mc:eindicatorvisibility:visiblewhenselected"
        }
        Control {
          Width: 340
          Height: 430
          UIX: 605
          RenderTransformPivot {
            Anchor {
              Value: "mc:euianchor:middlecenter"
            }
          }
          Panel {
            Opacity: 1
          }
          AnchorLayout {
            SelfAnchor {
              Anchor {
                Value: "mc:euianchor:middleleft"
              }
            }
            TargetAnchor {
              Anchor {
                Value: "mc:euianchor:middleleft"
              }
            }
          }
        }
      }
      Objects {
        Id: 14362278877528749310
        Name: "Frame Panel"
        Transform {
          Location {
          }
          Rotation {
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 9006966199822366296
        ChildIds: 16249334227954205088
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        EditorIndicatorVisibility {
          Value: "mc:eindicatorvisibility:visiblewhenselected"
        }
        Control {
          Width: 100
          Height: 100
          RenderTransformPivot {
            Anchor {
              Value: "mc:euianchor:middlecenter"
            }
          }
          UseParentWidth: true
          UseParentHeight: true
          Panel {
            Opacity: 0.4
          }
          AnchorLayout {
            SelfAnchor {
              Anchor {
                Value: "mc:euianchor:middlecenter"
              }
            }
            TargetAnchor {
              Anchor {
                Value: "mc:euianchor:middlecenter"
              }
            }
          }
        }
      }
      Objects {
        Id: 16249334227954205088
        Name: "Frame"
        Transform {
          Location {
          }
          Rotation {
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 14362278877528749310
        ChildIds: 3970977778104413193
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        EditorIndicatorVisibility {
          Value: "mc:eindicatorvisibility:visiblewhenselected"
        }
        Control {
          Width: 200
          Height: 200
          RenderTransformPivot {
            Anchor {
              Value: "mc:euianchor:middlecenter"
            }
          }
          UseParentWidth: true
          UseParentHeight: true
          Image {
            Brush {
              Id: 3839519509431907484
            }
            Color {
              R: 0.187820792
              G: 0.0843762159
              B: 0.0109600965
              A: 1
            }
            TeamSettings {
            }
            ShadowColor {
              A: 1
            }
            ShadowOffset {
            }
            ScreenshotIndex: 1
          }
          AnchorLayout {
            SelfAnchor {
              Anchor {
                Value: "mc:euianchor:middlecenter"
              }
            }
            TargetAnchor {
              Anchor {
                Value: "mc:euianchor:middlecenter"
              }
            }
          }
        }
      }
      Objects {
        Id: 3970977778104413193
        Name: "Frame"
        Transform {
          Location {
          }
          Rotation {
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 16249334227954205088
        ChildIds: 10597676647417214070
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        EditorIndicatorVisibility {
          Value: "mc:eindicatorvisibility:visiblewhenselected"
        }
        Control {
          Width: -8
          Height: -8
          RenderTransformPivot {
            Anchor {
              Value: "mc:euianchor:middlecenter"
            }
          }
          AddSizeToParentIfUsingParentSize: true
          UseParentWidth: true
          UseParentHeight: true
          Image {
            Brush {
              Id: 3839519509431907484
            }
            Color {
              R: 0.571125031
              G: 0.274677366
              B: 0.088655591
              A: 1
            }
            TeamSettings {
            }
            ShadowColor {
              A: 1
            }
            ShadowOffset {
            }
            ScreenshotIndex: 1
          }
          AnchorLayout {
            SelfAnchor {
              Anchor {
                Value: "mc:euianchor:middlecenter"
              }
            }
            TargetAnchor {
              Anchor {
                Value: "mc:euianchor:middlecenter"
              }
            }
          }
        }
      }
      Objects {
        Id: 10597676647417214070
        Name: "Frame"
        Transform {
          Location {
          }
          Rotation {
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 3970977778104413193
        ChildIds: 4744380199761463274
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        EditorIndicatorVisibility {
          Value: "mc:eindicatorvisibility:visiblewhenselected"
        }
        Control {
          Width: -4
          Height: -4
          RenderTransformPivot {
            Anchor {
              Value: "mc:euianchor:middlecenter"
            }
          }
          AddSizeToParentIfUsingParentSize: true
          UseParentWidth: true
          UseParentHeight: true
          Image {
            Brush {
              Id: 3839519509431907484
            }
            Color {
              R: 0.361306876
              G: 0.135633349
              B: 0.0262412224
              A: 1
            }
            TeamSettings {
            }
            ShadowColor {
              A: 1
            }
            ShadowOffset {
            }
            ScreenshotIndex: 1
          }
          AnchorLayout {
            SelfAnchor {
              Anchor {
                Value: "mc:euianchor:middlecenter"
              }
            }
            TargetAnchor {
              Anchor {
                Value: "mc:euianchor:middlecenter"
              }
            }
          }
        }
      }
      Objects {
        Id: 4744380199761463274
        Name: "Background"
        Transform {
          Location {
          }
          Rotation {
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 10597676647417214070
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        EditorIndicatorVisibility {
          Value: "mc:eindicatorvisibility:visiblewhenselected"
        }
        Control {
          Width: -4
          Height: -4
          RenderTransformPivot {
            Anchor {
              Value: "mc:euianchor:middlecenter"
            }
          }
          AddSizeToParentIfUsingParentSize: true
          UseParentWidth: true
          UseParentHeight: true
          Image {
            Brush {
              Id: 3839519509431907484
            }
            Color {
              R: 0.982250869
              G: 0.558340609
              B: 0.246201396
              A: 1
            }
            TeamSettings {
            }
            ShadowColor {
              A: 1
            }
            ShadowOffset {
            }
            ScreenshotIndex: 1
          }
          AnchorLayout {
            SelfAnchor {
              Anchor {
                Value: "mc:euianchor:middlecenter"
              }
            }
            TargetAnchor {
              Anchor {
                Value: "mc:euianchor:middlecenter"
              }
            }
          }
        }
      }
      Objects {
        Id: 1928700390744900675
        Name: "Inventory Title"
        Transform {
          Location {
          }
          Rotation {
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 9006966199822366296
        ChildIds: 8238861491250933553
        ChildIds: 17470667084712729530
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        EditorIndicatorVisibility {
          Value: "mc:eindicatorvisibility:visiblewhenselected"
        }
        Control {
          Width: 130
          Height: 40
          UIY: 30
          RenderTransformPivot {
            Anchor {
              Value: "mc:euianchor:middlecenter"
            }
          }
          Panel {
            Opacity: 1
          }
          AnchorLayout {
            SelfAnchor {
              Anchor {
                Value: "mc:euianchor:bottomcenter"
              }
            }
            TargetAnchor {
              Anchor {
                Value: "mc:euianchor:topcenter"
              }
            }
          }
        }
      }
      Objects {
        Id: 8238861491250933553
        Name: "Frames"
        Transform {
          Location {
          }
          Rotation {
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 1928700390744900675
        ChildIds: 11106178286056598136
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        EditorIndicatorVisibility {
          Value: "mc:eindicatorvisibility:visiblewhenselected"
        }
        Control {
          Width: 100
          Height: 100
          RenderTransformPivot {
            Anchor {
              Value: "mc:euianchor:middlecenter"
            }
          }
          UseParentWidth: true
          UseParentHeight: true
          Panel {
            Opacity: 0.4
          }
          AnchorLayout {
            SelfAnchor {
              Anchor {
                Value: "mc:euianchor:topleft"
              }
            }
            TargetAnchor {
              Anchor {
                Value: "mc:euianchor:topleft"
              }
            }
          }
        }
      }
      Objects {
        Id: 11106178286056598136
        Name: "Frame"
        Transform {
          Location {
          }
          Rotation {
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 8238861491250933553
        ChildIds: 16899231361717990085
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        EditorIndicatorVisibility {
          Value: "mc:eindicatorvisibility:visiblewhenselected"
        }
        Control {
          Width: 200
          Height: 200
          RenderTransformPivot {
            Anchor {
              Value: "mc:euianchor:middlecenter"
            }
          }
          UseParentWidth: true
          UseParentHeight: true
          Image {
            Brush {
              Id: 3839519509431907484
            }
            Color {
              R: 0.187820792
              G: 0.0843762159
              B: 0.0109600965
              A: 1
            }
            TeamSettings {
            }
            ShadowColor {
              A: 1
            }
            ShadowOffset {
            }
            ScreenshotIndex: 1
          }
          AnchorLayout {
            SelfAnchor {
              Anchor {
                Value: "mc:euianchor:middlecenter"
              }
            }
            TargetAnchor {
              Anchor {
                Value: "mc:euianchor:middlecenter"
              }
            }
          }
        }
      }
      Objects {
        Id: 16899231361717990085
        Name: "Frame"
        Transform {
          Location {
          }
          Rotation {
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 11106178286056598136
        ChildIds: 522928979915998949
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        EditorIndicatorVisibility {
          Value: "mc:eindicatorvisibility:visiblewhenselected"
        }
        Control {
          Width: -4
          Height: -4
          RenderTransformPivot {
            Anchor {
              Value: "mc:euianchor:middlecenter"
            }
          }
          AddSizeToParentIfUsingParentSize: true
          UseParentWidth: true
          UseParentHeight: true
          Image {
            Brush {
              Id: 3839519509431907484
            }
            Color {
              R: 0.571125031
              G: 0.274677366
              B: 0.088655591
              A: 1
            }
            TeamSettings {
            }
            ShadowColor {
              A: 1
            }
            ShadowOffset {
            }
            ScreenshotIndex: 1
          }
          AnchorLayout {
            SelfAnchor {
              Anchor {
                Value: "mc:euianchor:middlecenter"
              }
            }
            TargetAnchor {
              Anchor {
                Value: "mc:euianchor:middlecenter"
              }
            }
          }
        }
      }
      Objects {
        Id: 522928979915998949
        Name: "Frame"
        Transform {
          Location {
          }
          Rotation {
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 16899231361717990085
        ChildIds: 12460981101749397539
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        EditorIndicatorVisibility {
          Value: "mc:eindicatorvisibility:visiblewhenselected"
        }
        Control {
          Width: -2
          Height: -2
          RenderTransformPivot {
            Anchor {
              Value: "mc:euianchor:middlecenter"
            }
          }
          AddSizeToParentIfUsingParentSize: true
          UseParentWidth: true
          UseParentHeight: true
          Image {
            Brush {
              Id: 3839519509431907484
            }
            Color {
              R: 0.361306876
              G: 0.135633349
              B: 0.0262412224
              A: 1
            }
            TeamSettings {
            }
            ShadowColor {
              A: 1
            }
            ShadowOffset {
            }
            ScreenshotIndex: 1
          }
          AnchorLayout {
            SelfAnchor {
              Anchor {
                Value: "mc:euianchor:middlecenter"
              }
            }
            TargetAnchor {
              Anchor {
                Value: "mc:euianchor:middlecenter"
              }
            }
          }
        }
      }
      Objects {
        Id: 12460981101749397539
        Name: "Background"
        Transform {
          Location {
          }
          Rotation {
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 522928979915998949
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        EditorIndicatorVisibility {
          Value: "mc:eindicatorvisibility:visiblewhenselected"
        }
        Control {
          Width: -4
          Height: -4
          RenderTransformPivot {
            Anchor {
              Value: "mc:euianchor:middlecenter"
            }
          }
          AddSizeToParentIfUsingParentSize: true
          UseParentWidth: true
          UseParentHeight: true
          Image {
            Brush {
              Id: 3839519509431907484
            }
            Color {
              R: 0.982250869
              G: 0.558340609
              B: 0.246201396
              A: 1
            }
            TeamSettings {
            }
            ShadowColor {
              A: 1
            }
            ShadowOffset {
            }
            ScreenshotIndex: 1
          }
          AnchorLayout {
            SelfAnchor {
              Anchor {
                Value: "mc:euianchor:middlecenter"
              }
            }
            TargetAnchor {
              Anchor {
                Value: "mc:euianchor:middlecenter"
              }
            }
          }
        }
      }
      Objects {
        Id: 17470667084712729530
        Name: "Title"
        Transform {
          Location {
            X: -13.0504675
            Y: -440.125092
            Z: 2.28881836e-05
          }
          Rotation {
            Yaw: 150.981415
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 1928700390744900675
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        EditorIndicatorVisibility {
          Value: "mc:eindicatorvisibility:visiblewhenselected"
        }
        Control {
          Width: -30
          Height: 30
          UIY: 2
          RenderTransformPivot {
            Anchor {
              Value: "mc:euianchor:middlecenter"
            }
          }
          AddSizeToParentIfUsingParentSize: true
          UseParentWidth: true
          Text {
            Label: "Armor"
            Color {
              R: 1
              G: 1
              B: 1
              A: 1
            }
            Size: 14
            Justification {
              Value: "mc:etextjustify:center"
            }
            Font {
              Id: 3081743918018300983
            }
            VerticalJustification {
              Value: "mc:everticaljustification:center"
            }
            ShadowColor {
              A: 1
            }
            ShadowOffset {
            }
            OutlineColor {
              A: 1
            }
            OutlineSize: 2
          }
          AnchorLayout {
            SelfAnchor {
              Anchor {
                Value: "mc:euianchor:middlecenter"
              }
            }
            TargetAnchor {
              Anchor {
                Value: "mc:euianchor:middlecenter"
              }
            }
          }
        }
      }
      Objects {
        Id: 9721444502498029938
        Name: "Slots"
        Transform {
          Location {
          }
          Rotation {
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 9006966199822366296
        ChildIds: 643791182966807369
        ChildIds: 10754988574857798070
        ChildIds: 9588400819631365957
        ChildIds: 16555118857920444042
        ChildIds: 4391312052789801733
        ChildIds: 5507416025074414603
        ChildIds: 5588528264833374415
        ChildIds: 16809823474309468976
        ChildIds: 17068736950559696597
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        EditorIndicatorVisibility {
          Value: "mc:eindicatorvisibility:visiblewhenselected"
        }
        Control {
          Width: -60
          Height: -60
          UIY: 10
          RenderTransformPivot {
            Anchor {
              Value: "mc:euianchor:middlecenter"
            }
          }
          AddSizeToParentIfUsingParentSize: true
          UseParentWidth: true
          UseParentHeight: true
          Panel {
            Opacity: 1
          }
          AnchorLayout {
            SelfAnchor {
              Anchor {
                Value: "mc:euianchor:middlecenter"
              }
            }
            TargetAnchor {
              Anchor {
                Value: "mc:euianchor:middlecenter"
              }
            }
          }
        }
      }
      Objects {
        Id: 643791182966807369
        Name: "Armor Slot"
        Transform {
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 9721444502498029938
        TemplateInstance {
          ParameterOverrideMap {
            key: 847440081716985346
            value {
              Overrides {
                Name: "Name"
                String: "Armor Slot"
              }
              Overrides {
                Name: "Position"
                Vector {
                }
              }
              Overrides {
                Name: "Rotation"
                Rotator {
                }
              }
            }
          }
          ParameterOverrideMap {
            key: 18306186469111437044
            value {
              Overrides {
                Name: "Image"
                AssetReference {
                  Id: 841534158063459245
                }
              }
              Overrides {
                Name: "Visible"
                Enum {
                  Value: "mc:evisibilitysetting:forceoff"
                }
              }
            }
          }
          TemplateAsset {
            Id: 118775985379504992
          }
        }
      }
      Objects {
        Id: 10754988574857798070
        Name: "Armor Slot"
        Transform {
          Location {
            X: 430
          }
          Rotation {
            Yaw: 89.9999847
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 9721444502498029938
        TemplateInstance {
          ParameterOverrideMap {
            key: 847440081716985346
            value {
              Overrides {
                Name: "Name"
                String: "Armor Slot"
              }
              Overrides {
                Name: "Position"
                Vector {
                }
              }
              Overrides {
                Name: "Rotation"
                Rotator {
                  Yaw: -6.83018879e-06
                }
              }
              Overrides {
                Name: "Scale"
                Vector {
                  X: 1
                  Y: 1
                  Z: 1
                }
              }
              Overrides {
                Name: "UIY"
                Float: 90
              }
              Overrides {
                Name: "UIX"
                Float: 0
              }
            }
          }
          ParameterOverrideMap {
            key: 4642553103218505358
            value {
              Overrides {
                Name: "Image"
                AssetReference {
                  Id: 10584252582777731982
                }
              }
            }
          }
          ParameterOverrideMap {
            key: 18306186469111437044
            value {
              Overrides {
                Name: "Image"
                AssetReference {
                  Id: 841534158063459245
                }
              }
              Overrides {
                Name: "Visible"
                Enum {
                  Value: "mc:evisibilitysetting:forceoff"
                }
              }
            }
          }
          TemplateAsset {
            Id: 118775985379504992
          }
        }
      }
      Objects {
        Id: 9588400819631365957
        Name: "Armor Slot"
        Transform {
          Location {
            X: 430
          }
          Rotation {
            Yaw: 89.9999847
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 9721444502498029938
        TemplateInstance {
          ParameterOverrideMap {
            key: 847440081716985346
            value {
              Overrides {
                Name: "Name"
                String: "Armor Slot"
              }
              Overrides {
                Name: "Position"
                Vector {
                }
              }
              Overrides {
                Name: "Rotation"
                Rotator {
                  Yaw: -6.83018879e-06
                }
              }
              Overrides {
                Name: "Scale"
                Vector {
                  X: 1
                  Y: 1
                  Z: 1
                }
              }
              Overrides {
                Name: "UIY"
                Float: 90
              }
              Overrides {
                Name: "UIX"
                Float: -90
              }
            }
          }
          ParameterOverrideMap {
            key: 4642553103218505358
            value {
              Overrides {
                Name: "Image"
                AssetReference {
                  Id: 10991875205033485074
                }
              }
            }
          }
          ParameterOverrideMap {
            key: 18306186469111437044
            value {
              Overrides {
                Name: "Image"
                AssetReference {
                  Id: 841534158063459245
                }
              }
              Overrides {
                Name: "Visible"
                Enum {
                  Value: "mc:evisibilitysetting:forceoff"
                }
              }
            }
          }
          TemplateAsset {
            Id: 118775985379504992
          }
        }
      }
      Objects {
        Id: 16555118857920444042
        Name: "Armor Slot"
        Transform {
          Location {
            X: 430
          }
          Rotation {
            Yaw: 89.9999847
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 9721444502498029938
        TemplateInstance {
          ParameterOverrideMap {
            key: 847440081716985346
            value {
              Overrides {
                Name: "Name"
                String: "Armor Slot"
              }
              Overrides {
                Name: "Position"
                Vector {
                }
              }
              Overrides {
                Name: "Rotation"
                Rotator {
                  Yaw: -6.83018879e-06
                }
              }
              Overrides {
                Name: "Scale"
                Vector {
                  X: 1
                  Y: 1
                  Z: 1
                }
              }
              Overrides {
                Name: "UIY"
                Float: 180
              }
              Overrides {
                Name: "UIX"
                Float: -90
              }
            }
          }
          ParameterOverrideMap {
            key: 4642553103218505358
            value {
              Overrides {
                Name: "Image"
                AssetReference {
                  Id: 16948043479495054129
                }
              }
            }
          }
          ParameterOverrideMap {
            key: 18306186469111437044
            value {
              Overrides {
                Name: "Image"
                AssetReference {
                  Id: 841534158063459245
                }
              }
              Overrides {
                Name: "Visible"
                Enum {
                  Value: "mc:evisibilitysetting:forceoff"
                }
              }
            }
          }
          TemplateAsset {
            Id: 118775985379504992
          }
        }
      }
      Objects {
        Id: 4391312052789801733
        Name: "Armor Slot"
        Transform {
          Location {
            X: 430
          }
          Rotation {
            Yaw: 89.9999847
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 9721444502498029938
        TemplateInstance {
          ParameterOverrideMap {
            key: 847440081716985346
            value {
              Overrides {
                Name: "Name"
                String: "Armor Slot"
              }
              Overrides {
                Name: "Position"
                Vector {
                }
              }
              Overrides {
                Name: "Rotation"
                Rotator {
                  Yaw: -6.83018879e-06
                }
              }
              Overrides {
                Name: "Scale"
                Vector {
                  X: 1
                  Y: 1
                  Z: 1
                }
              }
              Overrides {
                Name: "UIY"
                Float: 90
              }
              Overrides {
                Name: "UIX"
                Float: 90
              }
            }
          }
          ParameterOverrideMap {
            key: 4642553103218505358
            value {
              Overrides {
                Name: "Image"
                AssetReference {
                  Id: 10991875205033485074
                }
              }
              Overrides {
                Name: "FlipHorizontal"
                Bool: true
              }
            }
          }
          ParameterOverrideMap {
            key: 18306186469111437044
            value {
              Overrides {
                Name: "FlipHorizontal"
                Bool: true
              }
              Overrides {
                Name: "Image"
                AssetReference {
                  Id: 841534158063459245
                }
              }
              Overrides {
                Name: "Visible"
                Enum {
                  Value: "mc:evisibilitysetting:forceoff"
                }
              }
            }
          }
          TemplateAsset {
            Id: 118775985379504992
          }
        }
      }
      Objects {
        Id: 5507416025074414603
        Name: "Armor Slot"
        Transform {
          Location {
            X: 430
          }
          Rotation {
            Yaw: 89.9999847
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 9721444502498029938
        TemplateInstance {
          ParameterOverrideMap {
            key: 847440081716985346
            value {
              Overrides {
                Name: "Name"
                String: "Armor Slot"
              }
              Overrides {
                Name: "Position"
                Vector {
                }
              }
              Overrides {
                Name: "Rotation"
                Rotator {
                  Yaw: -6.83018879e-06
                }
              }
              Overrides {
                Name: "Scale"
                Vector {
                  X: 1
                  Y: 1
                  Z: 1
                }
              }
              Overrides {
                Name: "UIY"
                Float: 180
              }
              Overrides {
                Name: "UIX"
                Float: 90
              }
            }
          }
          ParameterOverrideMap {
            key: 4642553103218505358
            value {
              Overrides {
                Name: "Image"
                AssetReference {
                  Id: 16948043479495054129
                }
              }
              Overrides {
                Name: "FlipHorizontal"
                Bool: true
              }
            }
          }
          ParameterOverrideMap {
            key: 18306186469111437044
            value {
              Overrides {
                Name: "FlipHorizontal"
                Bool: true
              }
              Overrides {
                Name: "Image"
                AssetReference {
                  Id: 841534158063459245
                }
              }
              Overrides {
                Name: "Visible"
                Enum {
                  Value: "mc:evisibilitysetting:forceoff"
                }
              }
            }
          }
          TemplateAsset {
            Id: 118775985379504992
          }
        }
      }
      Objects {
        Id: 5588528264833374415
        Name: "Armor Slot"
        Transform {
          Location {
            X: 430
          }
          Rotation {
            Yaw: 89.9999847
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 9721444502498029938
        TemplateInstance {
          ParameterOverrideMap {
            key: 847440081716985346
            value {
              Overrides {
                Name: "Name"
                String: "Armor Slot"
              }
              Overrides {
                Name: "Position"
                Vector {
                }
              }
              Overrides {
                Name: "Rotation"
                Rotator {
                  Yaw: -6.83018879e-06
                }
              }
              Overrides {
                Name: "Scale"
                Vector {
                  X: 1
                  Y: 1
                  Z: 1
                }
              }
              Overrides {
                Name: "UIY"
                Float: 180
              }
              Overrides {
                Name: "UIX"
                Float: 0
              }
            }
          }
          ParameterOverrideMap {
            key: 4642553103218505358
            value {
              Overrides {
                Name: "Image"
                AssetReference {
                  Id: 2691612049590178732
                }
              }
            }
          }
          ParameterOverrideMap {
            key: 18306186469111437044
            value {
              Overrides {
                Name: "Image"
                AssetReference {
                  Id: 841534158063459245
                }
              }
              Overrides {
                Name: "Visible"
                Enum {
                  Value: "mc:evisibilitysetting:forceoff"
                }
              }
            }
          }
          TemplateAsset {
            Id: 118775985379504992
          }
        }
      }
      Objects {
        Id: 16809823474309468976
        Name: "Armor Slot"
        Transform {
          Location {
            X: 430
          }
          Rotation {
            Yaw: 89.9999847
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 9721444502498029938
        TemplateInstance {
          ParameterOverrideMap {
            key: 847440081716985346
            value {
              Overrides {
                Name: "Name"
                String: "Armor Slot"
              }
              Overrides {
                Name: "Position"
                Vector {
                }
              }
              Overrides {
                Name: "Rotation"
                Rotator {
                  Yaw: -6.83018879e-06
                }
              }
              Overrides {
                Name: "Scale"
                Vector {
                  X: 1
                  Y: 1
                  Z: 1
                }
              }
              Overrides {
                Name: "UIY"
                Float: 270
              }
              Overrides {
                Name: "UIX"
                Float: -45
              }
            }
          }
          ParameterOverrideMap {
            key: 4642553103218505358
            value {
              Overrides {
                Name: "Image"
                AssetReference {
                  Id: 5940504427700487458
                }
              }
            }
          }
          ParameterOverrideMap {
            key: 18306186469111437044
            value {
              Overrides {
                Name: "Image"
                AssetReference {
                  Id: 841534158063459245
                }
              }
              Overrides {
                Name: "Visible"
                Enum {
                  Value: "mc:evisibilitysetting:forceoff"
                }
              }
            }
          }
          TemplateAsset {
            Id: 118775985379504992
          }
        }
      }
      Objects {
        Id: 17068736950559696597
        Name: "Armor Slot"
        Transform {
          Location {
            X: 430
          }
          Rotation {
            Yaw: 89.9999847
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 9721444502498029938
        TemplateInstance {
          ParameterOverrideMap {
            key: 847440081716985346
            value {
              Overrides {
                Name: "Name"
                String: "Armor Slot"
              }
              Overrides {
                Name: "Position"
                Vector {
                }
              }
              Overrides {
                Name: "Rotation"
                Rotator {
                  Yaw: -6.83018879e-06
                }
              }
              Overrides {
                Name: "Scale"
                Vector {
                  X: 1
                  Y: 1
                  Z: 1
                }
              }
              Overrides {
                Name: "UIY"
                Float: 270
              }
              Overrides {
                Name: "UIX"
                Float: 45
              }
              Overrides {
                Name: "UIRotationAngle"
                Float: 1
              }
            }
          }
          ParameterOverrideMap {
            key: 4642553103218505358
            value {
              Overrides {
                Name: "Image"
                AssetReference {
                  Id: 5940504427700487458
                }
              }
              Overrides {
                Name: "FlipHorizontal"
                Bool: true
              }
            }
          }
          ParameterOverrideMap {
            key: 18306186469111437044
            value {
              Overrides {
                Name: "FlipVertical"
                Bool: false
              }
              Overrides {
                Name: "FlipHorizontal"
                Bool: true
              }
              Overrides {
                Name: "Image"
                AssetReference {
                  Id: 841534158063459245
                }
              }
              Overrides {
                Name: "Visible"
                Enum {
                  Value: "mc:evisibilitysetting:forceoff"
                }
              }
            }
          }
          TemplateAsset {
            Id: 118775985379504992
          }
        }
      }
      Objects {
        Id: 6776474551656355825
        Name: "Inventory_Client"
        Transform {
          Location {
            X: -9.15527344e-05
            Y: 429.999969
          }
          Rotation {
            Yaw: -89.9999847
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 12282118051503311671
        UnregisteredParameters {
          Overrides {
            Name: "cs:Root"
            ObjectReference {
              SubObjectId: 5574202887036480104
            }
          }
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        EditorIndicatorVisibility {
          Value: "mc:eindicatorvisibility:visiblewhenselected"
        }
        Script {
          ScriptAsset {
            Id: 10545072440016289850
          }
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
      }
    }
    Assets {
      Id: 3839519509431907484
      Name: "BG Flat 002"
      PlatformAssetType: 9
      PrimaryAsset {
        AssetType: "PlatformBrushAssetRef"
        AssetId: "BackgroundNoOutline_019"
      }
    }
    Assets {
      Id: 3081743918018300983
      Name: "Teko Bold"
      PlatformAssetType: 28
      PrimaryAsset {
        AssetType: "FontAssetRef"
        AssetId: "TekoBold_ref"
      }
    }
    Assets {
      Id: 10584252582777731982
      Name: "Fantasy Gear Top 015"
      PlatformAssetType: 9
      PrimaryAsset {
        AssetType: "PlatformBrushAssetRef"
        AssetId: "UI_Fantasy_Gear_Top_015"
      }
    }
    Assets {
      Id: 10991875205033485074
      Name: "Fantasy Gear Shoulder 015"
      PlatformAssetType: 9
      PrimaryAsset {
        AssetType: "PlatformBrushAssetRef"
        AssetId: "UI_Fantasy_Gear_Puldron_015"
      }
    }
    Assets {
      Id: 16948043479495054129
      Name: "Fantasy Glove 015"
      PlatformAssetType: 9
      PrimaryAsset {
        AssetType: "PlatformBrushAssetRef"
        AssetId: "UI_Fantasy_Gear_Glove_015"
      }
    }
    Assets {
      Id: 2691612049590178732
      Name: "Fantasy Bottom Gear 015"
      PlatformAssetType: 9
      PrimaryAsset {
        AssetType: "PlatformBrushAssetRef"
        AssetId: "UI_Fantasy_Gear_Bottoms_015"
      }
    }
    Assets {
      Id: 5940504427700487458
      Name: "Fantasy Boot 015"
      PlatformAssetType: 9
      PrimaryAsset {
        AssetType: "PlatformBrushAssetRef"
        AssetId: "UI_Fantasy_Gear_Boot_015"
      }
    }
    PrimaryAssetId {
      AssetType: "None"
      AssetId: "None"
    }
  }
  SerializationVersion: 107
}
