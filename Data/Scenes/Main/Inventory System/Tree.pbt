Name: "Inventory System"
RootId: 9240207570372459281
Objects {
  Id: 16512755781344736806
  Name: "Tooltip"
  Transform {
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 9240207570372459281
  TemplateInstance {
    ParameterOverrideMap {
      key: 54666255652980159
      value {
        Overrides {
          Name: "Height"
          Int: 120
        }
        Overrides {
          Name: "Width"
          Int: 260
        }
        Overrides {
          Name: "Visible"
          Enum {
            Value: "mc:evisibilitysetting:forceoff"
          }
        }
      }
    }
    ParameterOverrideMap {
      key: 2706120170509256451
      value {
        Overrides {
          Name: "Color"
          Color {
            R: 0.187820792
            G: 0.0843762606
            B: 0.0109600984
            A: 0.6
          }
        }
      }
    }
    ParameterOverrideMap {
      key: 6592134428415072945
      value {
        Overrides {
          Name: "Opacity"
          Float: 1
        }
      }
    }
    ParameterOverrideMap {
      key: 7189892930104440088
      value {
        Overrides {
          Name: "Name"
          String: "Tooltip"
        }
        Overrides {
          Name: "Position"
          Vector {
            X: -87.3912811
            Y: -0.975377083
            Z: 3.05175781e-05
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
      }
    }
    ParameterOverrideMap {
      key: 9010608095558872989
      value {
        Overrides {
          Name: "Color"
          Color {
            R: 0.571125031
            G: 0.274677306
            B: 0.088655591
            A: 0.6
          }
        }
      }
    }
    ParameterOverrideMap {
      key: 10116855485341550712
      value {
        Overrides {
          Name: "Color"
          Color {
            R: 0.361306876
            G: 0.135633335
            B: 0.0262412187
            A: 0.6
          }
        }
      }
    }
    ParameterOverrideMap {
      key: 16686969169900918804
      value {
        Overrides {
          Name: "Font"
          AssetReference {
            Id: 3081743918018300983
          }
        }
        Overrides {
          Name: "OutlineSize"
          Int: 1
        }
        Overrides {
          Name: "OutlineColor"
          Color {
            A: 1
          }
        }
        Overrides {
          Name: "Size"
          Int: 15
        }
        Overrides {
          Name: "Color"
          Color {
            R: 1
            G: 0.935238063
            B: 0.49
            A: 1
          }
        }
        Overrides {
          Name: "Label"
          String: ""
        }
        Overrides {
          Name: "UIY"
          Float: 40
        }
      }
    }
    ParameterOverrideMap {
      key: 17573487062967763596
      value {
        Overrides {
          Name: "Color"
          Color {
            R: 0.982250869
            G: 0.558340669
            B: 0.246201396
            A: 0.6
          }
        }
      }
    }
    TemplateAsset {
      Id: 1492013694673447387
    }
  }
}
Objects {
  Id: 3399513445889837083
  Name: "Proxy"
  Transform {
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 9240207570372459281
  Collidable_v2 {
    Value: "mc:ecollisionsetting:forceoff"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  TemplateInstance {
    ParameterOverrideMap {
      key: 9822156273903299146
      value {
        Overrides {
          Name: "Name"
          String: "Proxy"
        }
        Overrides {
          Name: "Position"
          Vector {
            X: -87.3912811
            Y: -0.975377083
            Z: 3.05175781e-05
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
      }
    }
    TemplateAsset {
      Id: 2907989484309433646
    }
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 11550513494004263882
  Name: "Player Hotbar"
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
  ParentId: 9240207570372459281
  ChildIds: 2077517598392050669
  ChildIds: 5688105305610342162
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
        SelfId: 1397998237077904074
      }
    }
    Overrides {
      Name: "cs:Slots"
      ObjectReference {
        SelfId: 6043819322808421279
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
  InstanceHistory {
    SelfId: 11550513494004263882
    SubobjectId: 2157732961051654012
    InstanceId: 8131351067154343009
    TemplateId: 2366760204233403941
    WasRoot: true
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 5688105305610342162
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
  ParentId: 11550513494004263882
  ChildIds: 6959639116732839542
  ChildIds: 14578063310221260318
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
  InstanceHistory {
    SelfId: 5688105305610342162
    SubobjectId: 17530914393312924580
    InstanceId: 8131351067154343009
    TemplateId: 2366760204233403941
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 14578063310221260318
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
  ParentId: 5688105305610342162
  UnregisteredParameters {
    Overrides {
      Name: "cs:Root"
      ObjectReference {
        SelfId: 11550513494004263882
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
  InstanceHistory {
    SelfId: 14578063310221260318
    SubobjectId: 8644038496056306344
    InstanceId: 8131351067154343009
    TemplateId: 2366760204233403941
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 6959639116732839542
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
  ParentId: 5688105305610342162
  ChildIds: 356854996644816439
  ChildIds: 1397998237077904074
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
  InstanceHistory {
    SelfId: 6959639116732839542
    SubobjectId: 15938237459194604224
    InstanceId: 8131351067154343009
    TemplateId: 2366760204233403941
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 1397998237077904074
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
  ParentId: 6959639116732839542
  ChildIds: 5030553386225958592
  ChildIds: 6043819322808421279
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
  InstanceHistory {
    SelfId: 1397998237077904074
    SubobjectId: 12600169729114424956
    InstanceId: 8131351067154343009
    TemplateId: 2366760204233403941
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 6043819322808421279
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
  ParentId: 1397998237077904074
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
  InstanceHistory {
    SelfId: 6043819322808421279
    SubobjectId: 17178296635386173225
    InstanceId: 8131351067154343009
    TemplateId: 2366760204233403941
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 5030553386225958592
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
  ParentId: 1397998237077904074
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
  InstanceHistory {
    SelfId: 5030553386225958592
    SubobjectId: 17900253567386296950
    InstanceId: 8131351067154343009
    TemplateId: 2366760204233403941
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 356854996644816439
  Name: "Hotbar Slot"
  Transform {
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 6959639116732839542
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  TemplateInstance {
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
            X: 966.58136
            Y: -909.103394
          }
        }
        Overrides {
          Name: "Rotation"
          Rotator {
          }
        }
      }
    }
    TemplateAsset {
      Id: 10648753773554858583
    }
  }
}
Objects {
  Id: 2077517598392050669
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
  ParentId: 11550513494004263882
  ChildIds: 4328337345075889104
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
  InstanceHistory {
    SelfId: 2077517598392050669
    SubobjectId: 11632436505424674651
    InstanceId: 8131351067154343009
    TemplateId: 2366760204233403941
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 4328337345075889104
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
  ParentId: 2077517598392050669
  UnregisteredParameters {
    Overrides {
      Name: "cs:Root"
      ObjectReference {
        SelfId: 11550513494004263882
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
  InstanceHistory {
    SelfId: 4328337345075889104
    SubobjectId: 9343618491549622118
    InstanceId: 8131351067154343009
    TemplateId: 2366760204233403941
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 8704564018736570859
  Name: "Player Inventory Tab"
  Transform {
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 9240207570372459281
  ChildIds: 17826750448767861159
  ChildIds: 343438150990328415
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
        SelfId: 9421161581088478927
      }
    }
    Overrides {
      Name: "cs:Slots"
      ObjectReference {
        SelfId: 4917444670870741596
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
  InstanceHistory {
    SelfId: 8704564018736570859
    SubobjectId: 13335571277373723189
    InstanceId: 3869704642902205879
    TemplateId: 15790858484740131745
    WasRoot: true
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 343438150990328415
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
  ParentId: 8704564018736570859
  ChildIds: 16105292435694082439
  ChildIds: 11555083862967853627
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
  InstanceHistory {
    SelfId: 343438150990328415
    SubobjectId: 14202530899994313089
    InstanceId: 3869704642902205879
    TemplateId: 15790858484740131745
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 11555083862967853627
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
  ParentId: 343438150990328415
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
        SelfId: 8704564018736570859
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
        SelfId: 17830043894148119517
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
  InstanceHistory {
    SelfId: 11555083862967853627
    SubobjectId: 7027377087577051621
    InstanceId: 3869704642902205879
    TemplateId: 15790858484740131745
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 16105292435694082439
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
  ParentId: 343438150990328415
  ChildIds: 9421161581088478927
  ChildIds: 4247072499445376999
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
  InstanceHistory {
    SelfId: 16105292435694082439
    SubobjectId: 2187864944423676505
    InstanceId: 3869704642902205879
    TemplateId: 15790858484740131745
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 4247072499445376999
  Name: "UI Grow Shrink Button"
  Transform {
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 16105292435694082439
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
  InstanceHistory {
    SelfId: 4247072499445376999
    SubobjectId: 1099813106312806992
    InstanceId: 3869704642902205879
    TemplateId: 15790858484740131745
  }
}
Objects {
  Id: 9421161581088478927
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
  ParentId: 16105292435694082439
  ChildIds: 9404565299334125196
  ChildIds: 4917444670870741596
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
  InstanceHistory {
    SelfId: 9421161581088478927
    SubobjectId: 4855748178494219537
    InstanceId: 3869704642902205879
    TemplateId: 15790858484740131745
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 4917444670870741596
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
  ParentId: 9421161581088478927
  ChildIds: 6677307616958607306
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
  InstanceHistory {
    SelfId: 4917444670870741596
    SubobjectId: 9647801568003658114
    InstanceId: 3869704642902205879
    TemplateId: 15790858484740131745
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 6677307616958607306
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
  ParentId: 4917444670870741596
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
  InstanceHistory {
    SelfId: 6677307616958607306
    SubobjectId: 11346584315197660180
    InstanceId: 3869704642902205879
    TemplateId: 15790858484740131745
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 9404565299334125196
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
  ParentId: 9421161581088478927
  ChildIds: 1414020472785467570
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
  InstanceHistory {
    SelfId: 9404565299334125196
    SubobjectId: 4854352601995896146
    InstanceId: 3869704642902205879
    TemplateId: 15790858484740131745
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 1414020472785467570
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
  ParentId: 9404565299334125196
  ChildIds: 2005142193556826286
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
  InstanceHistory {
    SelfId: 1414020472785467570
    SubobjectId: 15150735420959099756
    InstanceId: 3869704642902205879
    TemplateId: 15790858484740131745
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 2005142193556826286
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
  ParentId: 1414020472785467570
  ChildIds: 4733589678262430312
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
  InstanceHistory {
    SelfId: 2005142193556826286
    SubobjectId: 15712522008844163952
    InstanceId: 3869704642902205879
    TemplateId: 15790858484740131745
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 4733589678262430312
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
  ParentId: 2005142193556826286
  ChildIds: 10726463285056721327
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
  InstanceHistory {
    SelfId: 4733589678262430312
    SubobjectId: 9253968201161267638
    InstanceId: 3869704642902205879
    TemplateId: 15790858484740131745
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 10726463285056721327
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
  ParentId: 4733589678262430312
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
  InstanceHistory {
    SelfId: 10726463285056721327
    SubobjectId: 6125361900896166513
    InstanceId: 3869704642902205879
    TemplateId: 15790858484740131745
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 17826750448767861159
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
  ParentId: 8704564018736570859
  ChildIds: 12116230992731693800
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
  InstanceHistory {
    SelfId: 17826750448767861159
    SubobjectId: 3943168251561505401
    InstanceId: 3869704642902205879
    TemplateId: 15790858484740131745
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 12116230992731693800
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
  ParentId: 17826750448767861159
  UnregisteredParameters {
    Overrides {
      Name: "cs:Root"
      ObjectReference {
        SelfId: 8704564018736570859
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
  InstanceHistory {
    SelfId: 12116230992731693800
    SubobjectId: 7636093220504080694
    InstanceId: 3869704642902205879
    TemplateId: 15790858484740131745
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 10751865052575020561
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
  ParentId: 9240207570372459281
  ChildIds: 14657203865100992715
  ChildIds: 13993254307831907484
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
  Id: 13993254307831907484
  Name: "Inventory_Audio_Client"
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
  ParentId: 10751865052575020561
  UnregisteredParameters {
    Overrides {
      Name: "cs:PickupAudio"
      ObjectReference {
        SelfId: 7992050087494182973
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
      Id: 15464992485385980514
    }
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 14657203865100992715
  Name: "Audio"
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
  ParentId: 10751865052575020561
  ChildIds: 7992050087494182973
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
  Id: 7992050087494182973
  Name: "Pickup"
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
  ParentId: 14657203865100992715
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
  AudioInstance {
    AudioAsset {
      Id: 9578398714806555845
    }
    Volume: 1
    Falloff: -1
    Radius: -1
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 4593270119659968449
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
  ParentId: 9240207570372459281
  ChildIds: 13138830252238135915
  ChildIds: 17971822039108373568
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
  Id: 17971822039108373568
  Name: "Inventory_Drop_Server"
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
  ParentId: 4593270119659968449
  UnregisteredParameters {
    Overrides {
      Name: "cs:Drops"
      ObjectReference {
        SelfId: 12565870518819623267
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
      Id: 10111855426989570073
    }
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 13138830252238135915
  Name: "Inventory_Save_Server"
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
  ParentId: 4593270119659968449
  UnregisteredParameters {
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
      Id: 16170364069802545493
    }
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 12565870518819623267
  Name: "Drops"
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
  ParentId: 9240207570372459281
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
  Id: 10736260970155672102
  Name: "Inventory Bindings"
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
  ParentId: 9240207570372459281
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
  BindingSet {
    BindingSetAsset {
      Id: 5004294234075582436
    }
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
