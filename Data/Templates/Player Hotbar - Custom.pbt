Assets {
  Id: 6059809945121910478
  Name: "Player Hotbar - Custom"
  PlatformAssetType: 5
  TemplateAsset {
    ObjectBlock {
      RootId: 15389941923635140634
      Objects {
        Id: 15389941923635140634
        Name: "Player Hotbar - Custom"
        Transform {
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 9240207570372459281
        ChildIds: 7569274780274593853
        ChildIds: 4264787711035686082
        UnregisteredParameters {
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
            Name: "cs:StorageSlotKey"
            String: "phbs"
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
            Name: "cs:InventoryUI"
            ObjectReference {
              SubObjectId: 7401960166720432410
            }
          }
          Overrides {
            Name: "cs:Slots"
            ObjectReference {
              SubObjectId: 2738278560420837455
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
            Name: "cs:SlotFrameActive"
            Color {
              R: 0.854992807
              G: 0.577580631
              A: 1
            }
          }
          Overrides {
            Name: "cs:PickupPriority"
            Int: 1
          }
          Overrides {
            Name: "cs:Sortable"
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
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 7569274780274593853
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
        ParentId: 15389941923635140634
        ChildIds: 5318456021417373696
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
        Id: 5318456021417373696
        Name: "Inventory_Hotbar_Server"
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
        ParentId: 7569274780274593853
        UnregisteredParameters {
          Overrides {
            Name: "cs:Root"
            ObjectReference {
              SubObjectId: 15389941923635140634
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
            Id: 6135363357821781503
          }
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 4264787711035686082
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
        ParentId: 15389941923635140634
        ChildIds: 1534107443793413542
        ChildIds: 13803545120185009614
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
        Id: 1534107443793413542
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
        ParentId: 4264787711035686082
        ChildIds: 7401960166720432410
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
        Id: 7401960166720432410
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
        ParentId: 1534107443793413542
        ChildIds: 3463190969106697488
        ChildIds: 2738278560420837455
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
          Width: 30
          Height: 30
          UIY: -30
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
                Value: "mc:euianchor:bottomcenter"
              }
            }
          }
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 3463190969106697488
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
        ParentId: 7401960166720432410
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
        Id: 2738278560420837455
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
        ParentId: 7401960166720432410
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
        Id: 13803545120185009614
        Name: "Inventory_Hotbar_Client"
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
        ParentId: 4264787711035686082
        UnregisteredParameters {
          Overrides {
            Name: "cs:Root"
            ObjectReference {
              SubObjectId: 15389941923635140634
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
            Id: 11892512239955878530
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
    PrimaryAssetId {
      AssetType: "None"
      AssetId: "None"
    }
  }
  SerializationVersion: 118
  VirtualFolderPath: "Inventory"
  VirtualFolderPath: "Inventories"
}
