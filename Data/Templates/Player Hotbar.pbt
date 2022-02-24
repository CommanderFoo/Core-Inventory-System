Assets {
  Id: 2366760204233403941
  Name: "Player Hotbar"
  PlatformAssetType: 5
  TemplateAsset {
    ObjectBlock {
      RootId: 2157732961051654012
      Objects {
        Id: 2157732961051654012
        Name: "Player Hotbar"
        Transform {
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 4056815105945944543
        ChildIds: 11632436505424674651
        ChildIds: 17530914393312924580
        UnregisteredParameters {
          Overrides {
            Name: "cs:API_Inventory"
            AssetReference {
              Id: 12879219911357857649
            }
          }
          Overrides {
            Name: "cs:Name"
            String: "Player Hotbar"
          }
          Overrides {
            Name: "cs:SlotCount"
            Int: 10
          }
          Overrides {
            Name: "cs:StorageKey"
            String: "phb"
          }
          Overrides {
            Name: "cs:CleanUp"
            Bool: true
          }
          Overrides {
            Name: "cs:Slots"
            ObjectReference {
              SubObjectId: 17178296635386173225
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
            Name: "cs:SlotCount:isrep"
            Bool: false
          }
          Overrides {
            Name: "cs:SlotCount:ml"
            Bool: false
          }
          Overrides {
            Name: "cs:StorageKey:isrep"
            Bool: false
          }
          Overrides {
            Name: "cs:StorageKey:ml"
            Bool: false
          }
          Overrides {
            Name: "cs:CleanUp:isrep"
            Bool: false
          }
          Overrides {
            Name: "cs:CleanUp:ml"
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
        Id: 11632436505424674651
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
        ParentId: 2157732961051654012
        ChildIds: 5284569754776372528
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
        Id: 5284569754776372528
        Name: "Inventory_Server"
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
        ParentId: 11632436505424674651
        UnregisteredParameters {
          Overrides {
            Name: "cs:Root"
            ObjectReference {
              SubObjectId: 2157732961051654012
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
        Id: 17530914393312924580
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
        ParentId: 2157732961051654012
        ChildIds: 15938237459194604224
        ChildIds: 15460974197886614067
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
        Id: 15938237459194604224
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
        ParentId: 17530914393312924580
        ChildIds: 12600169729114424956
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
        Id: 12600169729114424956
        Name: "Player Hotbar"
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
        ParentId: 15938237459194604224
        ChildIds: 18099548609510508805
        ChildIds: 17178296635386173225
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
          Width: 940
          Height: 126
          UIY: -40
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
                Value: "mc:euianchor:bottomcenter"
              }
            }
          }
        }
      }
      Objects {
        Id: 18099548609510508805
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
        ParentId: 12600169729114424956
        ChildIds: 8707088523251170644
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
        Id: 8707088523251170644
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
        ParentId: 18099548609510508805
        ChildIds: 13264871310579678644
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
        Id: 13264871310579678644
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
        ParentId: 8707088523251170644
        ChildIds: 16224211644063889569
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
        Id: 16224211644063889569
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
        ParentId: 13264871310579678644
        ChildIds: 17900253567386296950
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
        Id: 17900253567386296950
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
        ParentId: 16224211644063889569
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
        Id: 17178296635386173225
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
        ParentId: 12600169729114424956
        ChildIds: 6347255314272778066
        ChildIds: 15295477888219289553
        ChildIds: 4971392790461117588
        ChildIds: 9964625231249213763
        ChildIds: 6226923889861604451
        ChildIds: 4018199406661138202
        ChildIds: 13336896811397790663
        ChildIds: 11444753662780781096
        ChildIds: 11176560826977590359
        ChildIds: 15188387465439389523
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
        Id: 6347255314272778066
        Name: "Hotbar Slot"
        Transform {
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 17178296635386173225
        TemplateInstance {
          ParameterOverrideMap {
            key: 17241503802324526723
            value {
              Overrides {
                Name: "Name"
                String: "Hotbar Slot"
              }
            }
          }
          TemplateAsset {
            Id: 10648753773554858583
          }
        }
      }
      Objects {
        Id: 15295477888219289553
        Name: "Hotbar Slot"
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
        ParentId: 17178296635386173225
        TemplateInstance {
          ParameterOverrideMap {
            key: 1467277428421801004
            value {
              Overrides {
                Name: "Label"
                String: "2"
              }
            }
          }
          ParameterOverrideMap {
            key: 17241503802324526723
            value {
              Overrides {
                Name: "Name"
                String: "Hotbar Slot"
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
              Overrides {
                Name: "Scale"
                Vector {
                  X: 1
                  Y: 1
                  Z: 1
                }
              }
              Overrides {
                Name: "UIX"
                Float: -315
              }
            }
          }
          TemplateAsset {
            Id: 10648753773554858583
          }
        }
      }
      Objects {
        Id: 4971392790461117588
        Name: "Hotbar Slot"
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
        ParentId: 17178296635386173225
        TemplateInstance {
          ParameterOverrideMap {
            key: 1467277428421801004
            value {
              Overrides {
                Name: "Label"
                String: "3"
              }
            }
          }
          ParameterOverrideMap {
            key: 17241503802324526723
            value {
              Overrides {
                Name: "Name"
                String: "Hotbar Slot"
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
              Overrides {
                Name: "Scale"
                Vector {
                  X: 1
                  Y: 1
                  Z: 1
                }
              }
              Overrides {
                Name: "UIX"
                Float: -225
              }
            }
          }
          TemplateAsset {
            Id: 10648753773554858583
          }
        }
      }
      Objects {
        Id: 9964625231249213763
        Name: "Hotbar Slot"
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
        ParentId: 17178296635386173225
        TemplateInstance {
          ParameterOverrideMap {
            key: 1467277428421801004
            value {
              Overrides {
                Name: "Label"
                String: "4"
              }
            }
          }
          ParameterOverrideMap {
            key: 17241503802324526723
            value {
              Overrides {
                Name: "Name"
                String: "Hotbar Slot"
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
              Overrides {
                Name: "Scale"
                Vector {
                  X: 1
                  Y: 1
                  Z: 1
                }
              }
              Overrides {
                Name: "UIX"
                Float: -135
              }
            }
          }
          TemplateAsset {
            Id: 10648753773554858583
          }
        }
      }
      Objects {
        Id: 6226923889861604451
        Name: "Hotbar Slot"
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
        ParentId: 17178296635386173225
        TemplateInstance {
          ParameterOverrideMap {
            key: 1467277428421801004
            value {
              Overrides {
                Name: "Label"
                String: "5"
              }
            }
          }
          ParameterOverrideMap {
            key: 17241503802324526723
            value {
              Overrides {
                Name: "Name"
                String: "Hotbar Slot"
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
              Overrides {
                Name: "Scale"
                Vector {
                  X: 1
                  Y: 1
                  Z: 1
                }
              }
              Overrides {
                Name: "UIX"
                Float: -45
              }
            }
          }
          TemplateAsset {
            Id: 10648753773554858583
          }
        }
      }
      Objects {
        Id: 4018199406661138202
        Name: "Hotbar Slot"
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
        ParentId: 17178296635386173225
        TemplateInstance {
          ParameterOverrideMap {
            key: 1467277428421801004
            value {
              Overrides {
                Name: "Label"
                String: "6"
              }
            }
          }
          ParameterOverrideMap {
            key: 17241503802324526723
            value {
              Overrides {
                Name: "Name"
                String: "Hotbar Slot"
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
              Overrides {
                Name: "Scale"
                Vector {
                  X: 1
                  Y: 1
                  Z: 1
                }
              }
              Overrides {
                Name: "UIX"
                Float: 45
              }
            }
          }
          TemplateAsset {
            Id: 10648753773554858583
          }
        }
      }
      Objects {
        Id: 13336896811397790663
        Name: "Hotbar Slot"
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
        ParentId: 17178296635386173225
        TemplateInstance {
          ParameterOverrideMap {
            key: 1467277428421801004
            value {
              Overrides {
                Name: "Label"
                String: "7"
              }
            }
          }
          ParameterOverrideMap {
            key: 17241503802324526723
            value {
              Overrides {
                Name: "Name"
                String: "Hotbar Slot"
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
              Overrides {
                Name: "Scale"
                Vector {
                  X: 1
                  Y: 1
                  Z: 1
                }
              }
              Overrides {
                Name: "UIX"
                Float: 135
              }
            }
          }
          TemplateAsset {
            Id: 10648753773554858583
          }
        }
      }
      Objects {
        Id: 11444753662780781096
        Name: "Hotbar Slot"
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
        ParentId: 17178296635386173225
        TemplateInstance {
          ParameterOverrideMap {
            key: 1467277428421801004
            value {
              Overrides {
                Name: "Label"
                String: "8"
              }
            }
          }
          ParameterOverrideMap {
            key: 17241503802324526723
            value {
              Overrides {
                Name: "Name"
                String: "Hotbar Slot"
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
              Overrides {
                Name: "Scale"
                Vector {
                  X: 1
                  Y: 1
                  Z: 1
                }
              }
              Overrides {
                Name: "UIX"
                Float: 225
              }
            }
          }
          TemplateAsset {
            Id: 10648753773554858583
          }
        }
      }
      Objects {
        Id: 11176560826977590359
        Name: "Hotbar Slot"
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
        ParentId: 17178296635386173225
        TemplateInstance {
          ParameterOverrideMap {
            key: 1467277428421801004
            value {
              Overrides {
                Name: "Label"
                String: "9"
              }
            }
          }
          ParameterOverrideMap {
            key: 17241503802324526723
            value {
              Overrides {
                Name: "Name"
                String: "Hotbar Slot"
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
              Overrides {
                Name: "Scale"
                Vector {
                  X: 1
                  Y: 1
                  Z: 1
                }
              }
              Overrides {
                Name: "UIX"
                Float: 315
              }
            }
          }
          TemplateAsset {
            Id: 10648753773554858583
          }
        }
      }
      Objects {
        Id: 15188387465439389523
        Name: "Hotbar Slot"
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
        ParentId: 17178296635386173225
        TemplateInstance {
          ParameterOverrideMap {
            key: 1467277428421801004
            value {
              Overrides {
                Name: "Label"
                String: "0"
              }
            }
          }
          ParameterOverrideMap {
            key: 17241503802324526723
            value {
              Overrides {
                Name: "Name"
                String: "Hotbar Slot"
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
              Overrides {
                Name: "Scale"
                Vector {
                  X: 1
                  Y: 1
                  Z: 1
                }
              }
              Overrides {
                Name: "UIX"
                Float: 405
              }
            }
          }
          TemplateAsset {
            Id: 10648753773554858583
          }
        }
      }
      Objects {
        Id: 15460974197886614067
        Name: "Inventory_Client"
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
        ParentId: 17530914393312924580
        UnregisteredParameters {
          Overrides {
            Name: "cs:Root"
            ObjectReference {
              SubObjectId: 2157732961051654012
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
    PrimaryAssetId {
      AssetType: "None"
      AssetId: "None"
    }
  }
  SerializationVersion: 107
}
