Assets {
  Id: 8036679928641183158
  Name: "Player Inventory Tab"
  PlatformAssetType: 5
  TemplateAsset {
    ObjectBlock {
      RootId: 15439844887740237587
      Objects {
        Id: 15439844887740237587
        Name: "Player Inventory Tab"
        Transform {
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 9240207570372459281
        ChildIds: 6479796754820360031
        ChildIds: 12271650281918010535
        UnregisteredParameters {
          Overrides {
            Name: "cs:Name"
            String: "Player Inventory"
          }
          Overrides {
            Name: "cs:SlotCount"
            Int: 50
          }
          Overrides {
            Name: "cs:SlotsPerRow"
            Int: 10
          }
          Overrides {
            Name: "cs:MaxHeight"
            Float: 500
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
            Name: "cs:StorageKey"
            String: "pinv"
          }
          Overrides {
            Name: "cs:InventoryUI"
            ObjectReference {
              SubObjectId: 3186080471637684279
            }
          }
          Overrides {
            Name: "cs:Slots"
            ObjectReference {
              SubObjectId: 16913213544402551972
            }
          }
          Overrides {
            Name: "cs:SlotFrameNormal"
            Color {
              G: 0.000910581031
              B: 0.0144438436
              A: 1
            }
          }
          Overrides {
            Name: "cs:SlotFrameHover"
            Color {
              R: 0.854992807
              G: 0.577580631
              A: 1
            }
          }
          Overrides {
            Name: "cs:SlotBackgroundNormal"
            Color {
              G: 0.000910581031
              B: 0.0144438436
              A: 1
            }
          }
          Overrides {
            Name: "cs:SlotBackgroundHover"
            Color {
              G: 0.000910581031
              B: 0.0144438436
              A: 1
            }
          }
          Overrides {
            Name: "cs:PickupPriority"
            Int: 2
          }
          Overrides {
            Name: "cs:Sortable"
            Bool: true
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
            Name: "cs:SlotsPerRow:isrep"
            Bool: false
          }
          Overrides {
            Name: "cs:SlotsPerRow:ml"
            Bool: false
          }
          Overrides {
            Name: "cs:MaxHeight:isrep"
            Bool: false
          }
          Overrides {
            Name: "cs:MaxHeight:ml"
            Bool: false
          }
          Overrides {
            Name: "cs:StartVisible:isrep"
            Bool: false
          }
          Overrides {
            Name: "cs:StartVisible:ml"
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
            Name: "cs:StorageKey:isrep"
            Bool: false
          }
          Overrides {
            Name: "cs:StorageKey:ml"
            Bool: false
          }
          Overrides {
            Name: "cs:InventoryUI:isrep"
            Bool: false
          }
          Overrides {
            Name: "cs:InventoryUI:ml"
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
          Overrides {
            Name: "cs:PickupPriority:isrep"
            Bool: false
          }
          Overrides {
            Name: "cs:PickupPriority:ml"
            Bool: false
          }
          Overrides {
            Name: "cs:Sortable:isrep"
            Bool: false
          }
          Overrides {
            Name: "cs:Sortable:ml"
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
        Id: 6479796754820360031
        Name: "Server"
        Transform {
          Location {
            X: -87.3912811
            Y: -0.975377083
            Z: 3.05175781e-05
          }
          Rotation {
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 15439844887740237587
        ChildIds: 481027681312965648
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
        Id: 481027681312965648
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
        ParentId: 6479796754820360031
        UnregisteredParameters {
          Overrides {
            Name: "cs:Root"
            ObjectReference {
              SubObjectId: 15439844887740237587
            }
          }
          Overrides {
            Name: "cs:Inventory"
            AssetReference {
              Id: 12879219911357857649
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
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 12271650281918010535
        Name: "Client"
        Transform {
          Location {
            X: -87.3912811
            Y: -0.975377083
            Z: 3.05175781e-05
          }
          Rotation {
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 15439844887740237587
        ChildIds: 8145030269003841407
        ChildIds: 1068035124032947395
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
        Id: 8145030269003841407
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
        ParentId: 12271650281918010535
        ChildIds: 3186080471637684279
        ChildIds: 3414651107095096355
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
        Id: 3186080471637684279
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
        ParentId: 8145030269003841407
        ChildIds: 14181376802647087199
        ChildIds: 16913213544402551972
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:forceoff"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        EditorIndicatorVisibility {
          Value: "mc:eindicatorvisibility:visiblewhenselected"
        }
        Control {
          UIY: 100
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
        Id: 14181376802647087199
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
        ParentId: 3186080471637684279
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
              A: 0.475000024
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
        Id: 16913213544402551972
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
        ParentId: 3186080471637684279
        ChildIds: 17447793926533548338
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
          Width: -40
          Height: -40
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
        Id: 17447793926533548338
        Name: "UI Scroll Panel"
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
        ParentId: 16913213544402551972
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
          Height: 1
          RenderTransformPivot {
            Anchor {
              Value: "mc:euianchor:middlecenter"
            }
          }
          AddSizeToParentIfUsingParentSize: true
          UseParentWidth: true
          UseParentHeight: true
          ScrollPanel {
            Orientation {
              Value: "mc:eorientation:orient_vertical"
            }
            IsInteractable: true
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
        Id: 3414651107095096355
        Name: "UI Grow Shrink Button"
        Transform {
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 8145030269003841407
        TemplateInstance {
          ParameterOverrideMap {
            key: 4954124357189605708
            value {
              Overrides {
                Name: "Image"
                AssetReference {
                  Id: 12697148906899715342
                }
              }
            }
          }
          ParameterOverrideMap {
            key: 5166945521430075954
            value {
              Overrides {
                Name: "Name"
                String: "Inventory Tab Button"
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
                Name: "Width"
                Int: 75
              }
              Overrides {
                Name: "Height"
                Int: 75
              }
              Overrides {
                Name: "Visible"
                Enum {
                  Value: "mc:evisibilitysetting:forceoff"
                }
              }
              Overrides {
                Name: "cs:GrowAmount"
                Int: 30
              }
            }
          }
          ParameterOverrideMap {
            key: 11026056780448712365
            value {
              Overrides {
                Name: "Image"
                AssetReference {
                  Id: 12697148906899715342
                }
              }
            }
          }
          ParameterOverrideMap {
            key: 12694488258904602806
            value {
              Overrides {
                Name: "Image"
                AssetReference {
                  Id: 12697148906899715342
                }
              }
              Overrides {
                Name: "Color"
                Color {
                  R: 1
                  G: 0.929111123
                  B: 0.594
                  A: 1
                }
              }
            }
          }
          ParameterOverrideMap {
            key: 13605223797867136028
            value {
              Overrides {
                Name: "Image"
                AssetReference {
                  Id: 12697148906899715342
                }
              }
            }
          }
          ParameterOverrideMap {
            key: 14475387559359828896
            value {
              Overrides {
                Name: "cs:Tween"
                AssetReference {
                  Id: 5010859578220487614
                }
              }
            }
          }
          TemplateAsset {
            Id: 491768282389810091
          }
        }
      }
      Objects {
        Id: 1068035124032947395
        Name: "Inventory_Tab_Client"
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
        ParentId: 12271650281918010535
        UnregisteredParameters {
          Overrides {
            Name: "cs:Inventory"
            AssetReference {
              Id: 12879219911357857649
            }
          }
          Overrides {
            Name: "cs:Root"
            ObjectReference {
              SubObjectId: 15439844887740237587
            }
          }
          Overrides {
            Name: "cs:UI_Tab"
            AssetReference {
              Id: 2020806990263371807
            }
          }
          Overrides {
            Name: "cs:InventoryTabButton"
            ObjectReference {
              SubObjectId: 6483074257952824613
            }
          }
          Overrides {
            Name: "cs:Inventory_Events"
            AssetReference {
              Id: 9805636833553611479
            }
          }
          Overrides {
            Name: "cs:Inventory:isrep"
            Bool: false
          }
          Overrides {
            Name: "cs:Inventory:ml"
            Bool: false
          }
          Overrides {
            Name: "cs:Root:isrep"
            Bool: false
          }
          Overrides {
            Name: "cs:Root:ml"
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
        Script {
          ScriptAsset {
            Id: 6506320993392997208
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
      Id: 12697148906899715342
      Name: "Fantasy Pack 001"
      PlatformAssetType: 9
      PrimaryAsset {
        AssetType: "PlatformBrushAssetRef"
        AssetId: "UI_Fantasy_Equip_Pack_001"
      }
    }
    PrimaryAssetId {
      AssetType: "None"
      AssetId: "None"
    }
  }
  SerializationVersion: 121
  VirtualFolderPath: "Inventory"
  VirtualFolderPath: "Inventories"
}
