Assets {
  Id: 7581631008779369608
  Name: "Wearable Inventory"
  PlatformAssetType: 5
  TemplateAsset {
    ObjectBlock {
      RootId: 15757681508783782519
      Objects {
        Id: 15757681508783782519
        Name: "Wearable Inventory"
        Transform {
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 4056815105945944543
        ChildIds: 4744273400981095351
        ChildIds: 4433747024315996968
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
            Name: "cs:StartVisible"
            Bool: true
          }
          Overrides {
            Name: "cs:CleanUp"
            Bool: true
          }
          Overrides {
            Name: "cs:Sortable"
            Bool: false
          }
          Overrides {
            Name: "cs:InventoryUI"
            ObjectReference {
              SubObjectId: 16936384737219765831
            }
          }
          Overrides {
            Name: "cs:Slots"
            ObjectReference {
              SubObjectId: 1233016953411068269
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
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 4744273400981095351
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
        ParentId: 15757681508783782519
        ChildIds: 7318093300271285187
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
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 7318093300271285187
        Name: "Inventory_Wearable_Server"
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
        ParentId: 4744273400981095351
        UnregisteredParameters {
          Overrides {
            Name: "cs:Root"
            ObjectReference {
              SubObjectId: 15757681508783782519
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
            Id: 5442004602744257629
          }
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 4433747024315996968
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
        ParentId: 15757681508783782519
        ChildIds: 6496115731275101807
        ChildIds: 7270317912739735379
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
          MinDetailLevel {
            Value: "mc:edetaillevel:low"
          }
          MaxDetailLevel {
            Value: "mc:edetaillevel:ultra"
          }
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 6496115731275101807
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
        ParentId: 4433747024315996968
        ChildIds: 16936384737219765831
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
            UseSafeZoneAdjustment: true
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
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 16936384737219765831
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
        ParentId: 6496115731275101807
        ChildIds: 5810800949664031969
        ChildIds: 10173933852012680284
        ChildIds: 1233016953411068269
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:forceon"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        EditorIndicatorVisibility {
          Value: "mc:eindicatorvisibility:visiblewhenselected"
        }
        Control {
          Width: 290
          Height: 380
          UIX: 50
          RenderTransformPivot {
            Anchor {
              Value: "mc:euianchor:middlecenter"
            }
          }
          Panel {
            Opacity: 1
            OpacityMaskBrush {
            }
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
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 5810800949664031969
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
        ParentId: 16936384737219765831
        ChildIds: 8535507963681886655
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
            OpacityMaskBrush {
            }
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
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 8535507963681886655
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
        ParentId: 5810800949664031969
        ChildIds: 11596403341863320598
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
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 11596403341863320598
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
        ParentId: 8535507963681886655
        ChildIds: 353408210654798953
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
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 353408210654798953
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
        ParentId: 11596403341863320598
        ChildIds: 15430001382692067317
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
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 15430001382692067317
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
        ParentId: 353408210654798953
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
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 10173933852012680284
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
        ParentId: 16936384737219765831
        ChildIds: 16547171684141006638
        ChildIds: 7314209734278581157
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
            OpacityMaskBrush {
            }
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
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 16547171684141006638
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
        ParentId: 10173933852012680284
        ChildIds: 996454852895128167
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
            OpacityMaskBrush {
            }
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
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 996454852895128167
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
        ParentId: 16547171684141006638
        ChildIds: 9039618651730158298
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
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 9039618651730158298
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
        ParentId: 996454852895128167
        ChildIds: 10427202050271926010
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
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 10427202050271926010
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
        ParentId: 9039618651730158298
        ChildIds: 4259068706814474300
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
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 4259068706814474300
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
        ParentId: 10427202050271926010
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
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 7314209734278581157
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
        ParentId: 10173933852012680284
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
            Label: "Wearables"
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
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 1233016953411068269
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
        ParentId: 16936384737219765831
        ChildIds: 3307723175948113775
        ChildIds: 12702742772033891728
        ChildIds: 11536119574923842403
        ChildIds: 13886788964490345132
        ChildIds: 1871600874058972963
        ChildIds: 7594781660473702445
        ChildIds: 7531743467730015465
        ChildIds: 14717813595744771862
        ChildIds: 14548884974670768883
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
          UIY: 36
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
            OpacityMaskBrush {
            }
          }
          AnchorLayout {
            SelfAnchor {
              Anchor {
                Value: "mc:euianchor:topcenter"
              }
            }
            TargetAnchor {
              Anchor {
                Value: "mc:euianchor:topcenter"
              }
            }
          }
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 3307723175948113775
        Name: "Armor Slot"
        Transform {
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 1233016953411068269
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
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 12702742772033891728
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
        ParentId: 1233016953411068269
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
                Float: 80
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
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 11536119574923842403
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
        ParentId: 1233016953411068269
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
                Float: 80
              }
              Overrides {
                Name: "UIX"
                Float: -80
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
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 13886788964490345132
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
        ParentId: 1233016953411068269
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
                Float: 160
              }
              Overrides {
                Name: "UIX"
                Float: -80
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
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 1871600874058972963
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
        ParentId: 1233016953411068269
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
                Float: 80
              }
              Overrides {
                Name: "UIX"
                Float: 80
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
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 7594781660473702445
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
        ParentId: 1233016953411068269
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
                Float: 160
              }
              Overrides {
                Name: "UIX"
                Float: 80
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
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 7531743467730015465
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
        ParentId: 1233016953411068269
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
                Float: 160
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
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 14717813595744771862
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
        ParentId: 1233016953411068269
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
                Float: 240
              }
              Overrides {
                Name: "UIX"
                Float: -40
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
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 14548884974670768883
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
        ParentId: 1233016953411068269
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
                Float: 240
              }
              Overrides {
                Name: "UIX"
                Float: 40
              }
              Overrides {
                Name: "UIRotationAngle"
                Float: 1
              }
              Overrides {
                Name: "cs:Tags"
                String: "Foot"
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
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 7270317912739735379
        Name: "Inventory_Wearables_Client"
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
        ParentId: 4433747024315996968
        UnregisteredParameters {
          Overrides {
            Name: "cs:Root"
            ObjectReference {
              SubObjectId: 15757681508783782519
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
            Id: 737881821191491817
          }
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
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
  SerializationVersion: 118
  VirtualFolderPath: "Inventory System"
  VirtualFolderPath: "Inventories"
}
