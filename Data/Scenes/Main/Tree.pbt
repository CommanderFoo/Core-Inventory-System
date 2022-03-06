Name: "Root"
RootId: 4781671109827199097
Objects {
  Id: 4781671109827199097
  Name: "Root"
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
  ChildIds: 16270802511419725645
  ChildIds: 4056815105945944543
  UnregisteredParameters {
  }
  Collidable_v2 {
    Value: "mc:ecollisionsetting:forceon"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:forceon"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Folder {
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
}
Objects {
  Id: 4056815105945944543
  Name: "Inventory System"
  Transform {
    Location {
      X: 87.3912811
      Y: 0.975377083
      Z: -3.05175781e-05
    }
    Rotation {
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 4781671109827199097
  ChildIds: 10736260970155672102
  ChildIds: 4593270119659968449
  ChildIds: 12022879565615496328
  ChildIds: 8131351067154343009
  ChildIds: 9433971498664992443
  ChildIds: 13953430196764082360
  ChildIds: 3399513445889837083
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
  Id: 3399513445889837083
  Name: "Proxy"
  Transform {
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 4056815105945944543
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
}
Objects {
  Id: 13953430196764082360
  Name: "Armor Inventory"
  Transform {
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 4056815105945944543
  ChildIds: 6547396615865989496
  ChildIds: 2778114454986269159
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
        SelfId: 17293872194292391048
      }
    }
    Overrides {
      Name: "cs:Slots"
      ObjectReference {
        SelfId: 726912903378148258
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
  InstanceHistory {
    SelfId: 13953430196764082360
    SubobjectId: 15757681508783782519
    InstanceId: 14598834697028635917
    TemplateId: 7581631008779369608
    WasRoot: true
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
}
Objects {
  Id: 2778114454986269159
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
  ParentId: 13953430196764082360
  ChildIds: 4696370246106467488
  ChildIds: 8494700798632696105
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
  InstanceHistory {
    SelfId: 2778114454986269159
    SubobjectId: 4433747024315996968
    InstanceId: 14598834697028635917
    TemplateId: 7581631008779369608
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
}
Objects {
  Id: 8494700798632696105
  Name: "Armor_Inventory_Client"
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
  ParentId: 2778114454986269159
  UnregisteredParameters {
    Overrides {
      Name: "cs:Root"
      ObjectReference {
        SelfId: 13953430196764082360
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
}
Objects {
  Id: 4696370246106467488
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
  ParentId: 2778114454986269159
  ChildIds: 17293872194292391048
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
  InstanceHistory {
    SelfId: 4696370246106467488
    SubobjectId: 6496115731275101807
    InstanceId: 14598834697028635917
    TemplateId: 7581631008779369608
  }
}
Objects {
  Id: 17293872194292391048
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
  ParentId: 4696370246106467488
  ChildIds: 5453315580027428398
  ChildIds: 10825281187171331731
  ChildIds: 726912903378148258
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
  InstanceHistory {
    SelfId: 17293872194292391048
    SubobjectId: 16936384737219765831
    InstanceId: 14598834697028635917
    TemplateId: 7581631008779369608
  }
}
Objects {
  Id: 726912903378148258
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
  ParentId: 17293872194292391048
  ChildIds: 16680803583703964258
  ChildIds: 8849661163537408157
  ChildIds: 7674693893179186798
  ChildIds: 733719725586577313
  ChildIds: 15231237553342542382
  ChildIds: 11817286411527501088
  ChildIds: 11682154950814636516
  ChildIds: 493522063567491611
  ChildIds: 248119101087475710
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
  InstanceHistory {
    SelfId: 726912903378148258
    SubobjectId: 1233016953411068269
    InstanceId: 14598834697028635917
    TemplateId: 7581631008779369608
  }
}
Objects {
  Id: 248119101087475710
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
  ParentId: 726912903378148258
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
  InstanceHistory {
    SelfId: 248119101087475710
    SubobjectId: 14548884974670768883
    InstanceId: 14598834697028635917
    TemplateId: 7581631008779369608
  }
}
Objects {
  Id: 493522063567491611
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
  ParentId: 726912903378148258
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
  InstanceHistory {
    SelfId: 493522063567491611
    SubobjectId: 14717813595744771862
    InstanceId: 14598834697028635917
    TemplateId: 7581631008779369608
  }
}
Objects {
  Id: 11682154950814636516
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
  ParentId: 726912903378148258
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
  InstanceHistory {
    SelfId: 11682154950814636516
    SubobjectId: 7531743467730015465
    InstanceId: 14598834697028635917
    TemplateId: 7581631008779369608
  }
}
Objects {
  Id: 11817286411527501088
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
  ParentId: 726912903378148258
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
  InstanceHistory {
    SelfId: 11817286411527501088
    SubobjectId: 7594781660473702445
    InstanceId: 14598834697028635917
    TemplateId: 7581631008779369608
  }
}
Objects {
  Id: 15231237553342542382
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
  ParentId: 726912903378148258
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
  InstanceHistory {
    SelfId: 15231237553342542382
    SubobjectId: 1871600874058972963
    InstanceId: 14598834697028635917
    TemplateId: 7581631008779369608
  }
}
Objects {
  Id: 733719725586577313
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
  ParentId: 726912903378148258
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
  InstanceHistory {
    SelfId: 733719725586577313
    SubobjectId: 13886788964490345132
    InstanceId: 14598834697028635917
    TemplateId: 7581631008779369608
  }
}
Objects {
  Id: 7674693893179186798
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
  ParentId: 726912903378148258
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
  InstanceHistory {
    SelfId: 7674693893179186798
    SubobjectId: 11536119574923842403
    InstanceId: 14598834697028635917
    TemplateId: 7581631008779369608
  }
}
Objects {
  Id: 8849661163537408157
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
  ParentId: 726912903378148258
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
  InstanceHistory {
    SelfId: 8849661163537408157
    SubobjectId: 12702742772033891728
    InstanceId: 14598834697028635917
    TemplateId: 7581631008779369608
  }
}
Objects {
  Id: 16680803583703964258
  Name: "Armor Slot"
  Transform {
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 726912903378148258
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
  InstanceHistory {
    SelfId: 16680803583703964258
    SubobjectId: 3307723175948113775
    InstanceId: 14598834697028635917
    TemplateId: 7581631008779369608
  }
}
Objects {
  Id: 10825281187171331731
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
  ParentId: 17293872194292391048
  ChildIds: 18350288265450948065
  ChildIds: 9118458894521758058
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
  InstanceHistory {
    SelfId: 10825281187171331731
    SubobjectId: 10173933852012680284
    InstanceId: 14598834697028635917
    TemplateId: 7581631008779369608
  }
}
Objects {
  Id: 9118458894521758058
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
  ParentId: 10825281187171331731
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
  InstanceHistory {
    SelfId: 9118458894521758058
    SubobjectId: 7314209734278581157
    InstanceId: 14598834697028635917
    TemplateId: 7581631008779369608
  }
}
Objects {
  Id: 18350288265450948065
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
  ParentId: 10825281187171331731
  ChildIds: 1647775838430445736
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
  InstanceHistory {
    SelfId: 18350288265450948065
    SubobjectId: 16547171684141006638
    InstanceId: 14598834697028635917
    TemplateId: 7581631008779369608
  }
}
Objects {
  Id: 1647775838430445736
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
  ParentId: 18350288265450948065
  ChildIds: 7383968561347581973
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
    SelfId: 1647775838430445736
    SubobjectId: 996454852895128167
    InstanceId: 14598834697028635917
    TemplateId: 7581631008779369608
  }
}
Objects {
  Id: 7383968561347581973
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
  ParentId: 1647775838430445736
  ChildIds: 10069714554276260917
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
  InstanceHistory {
    SelfId: 7383968561347581973
    SubobjectId: 9039618651730158298
    InstanceId: 14598834697028635917
    TemplateId: 7581631008779369608
  }
}
Objects {
  Id: 10069714554276260917
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
  ParentId: 7383968561347581973
  ChildIds: 2310713165328007923
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
  InstanceHistory {
    SelfId: 10069714554276260917
    SubobjectId: 10427202050271926010
    InstanceId: 14598834697028635917
    TemplateId: 7581631008779369608
  }
}
Objects {
  Id: 2310713165328007923
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
  ParentId: 10069714554276260917
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
    SelfId: 2310713165328007923
    SubobjectId: 4259068706814474300
    InstanceId: 14598834697028635917
    TemplateId: 7581631008779369608
  }
}
Objects {
  Id: 5453315580027428398
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
  ParentId: 17293872194292391048
  ChildIds: 7889807681641229168
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
  InstanceHistory {
    SelfId: 5453315580027428398
    SubobjectId: 5810800949664031969
    InstanceId: 14598834697028635917
    TemplateId: 7581631008779369608
  }
}
Objects {
  Id: 7889807681641229168
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
  ParentId: 5453315580027428398
  ChildIds: 13539155750537070297
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
    SelfId: 7889807681641229168
    SubobjectId: 8535507963681886655
    InstanceId: 14598834697028635917
    TemplateId: 7581631008779369608
  }
}
Objects {
  Id: 13539155750537070297
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
  ParentId: 7889807681641229168
  ChildIds: 2300640020908760742
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
    SelfId: 13539155750537070297
    SubobjectId: 11596403341863320598
    InstanceId: 14598834697028635917
    TemplateId: 7581631008779369608
  }
}
Objects {
  Id: 2300640020908760742
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
  ParentId: 13539155750537070297
  ChildIds: 14783186226143620410
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
    SelfId: 2300640020908760742
    SubobjectId: 353408210654798953
    InstanceId: 14598834697028635917
    TemplateId: 7581631008779369608
  }
}
Objects {
  Id: 14783186226143620410
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
  ParentId: 2300640020908760742
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
    SelfId: 14783186226143620410
    SubobjectId: 15430001382692067317
    InstanceId: 14598834697028635917
    TemplateId: 7581631008779369608
  }
}
Objects {
  Id: 6547396615865989496
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
  ParentId: 13953430196764082360
  ChildIds: 9116721713769314572
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
    SelfId: 6547396615865989496
    SubobjectId: 4744273400981095351
    InstanceId: 14598834697028635917
    TemplateId: 7581631008779369608
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
}
Objects {
  Id: 9116721713769314572
  Name: "Armor_Inventory_Server"
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
  ParentId: 6547396615865989496
  UnregisteredParameters {
    Overrides {
      Name: "cs:Root"
      ObjectReference {
        SelfId: 13953430196764082360
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
  InstanceHistory {
    SelfId: 9116721713769314572
    SubobjectId: 7318093300271285187
    InstanceId: 14598834697028635917
    TemplateId: 7581631008779369608
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
}
Objects {
  Id: 9433971498664992443
  Name: "Chest Inventory"
  Transform {
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 4056815105945944543
  TemplateInstance {
    ParameterOverrideMap {
      key: 4718527058990615992
      value {
        Overrides {
          Name: "Name"
          String: "Chest Inventory"
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
          Name: "Position"
          Vector {
            X: 332.608704
          }
        }
        Overrides {
          Name: "Rotation"
          Rotator {
            Yaw: 90
          }
        }
      }
    }
    TemplateAsset {
      Id: 17881690212890626348
    }
  }
}
Objects {
  Id: 8131351067154343009
  Name: "Player Hotbar"
  Transform {
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 4056815105945944543
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  TemplateInstance {
    ParameterOverrideMap {
      key: 2157732961051654012
      value {
        Overrides {
          Name: "Name"
          String: "Player Hotbar"
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
      }
    }
    TemplateAsset {
      Id: 2366760204233403941
    }
  }
}
Objects {
  Id: 12022879565615496328
  Name: "Player Inventory"
  Transform {
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 4056815105945944543
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  TemplateInstance {
    ParameterOverrideMap {
      key: 16211408270603517451
      value {
        Overrides {
          Name: "Name"
          String: "Player Inventory"
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
      }
    }
    TemplateAsset {
      Id: 17543768331625296425
    }
  }
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
  ParentId: 4056815105945944543
  ChildIds: 13138830252238135915
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
  Id: 13138830252238135915
  Name: "Save_Inventory_Server"
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
      Name: "cs:API_Inventory"
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
  ParentId: 4056815105945944543
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
}
Objects {
  Id: 16270802511419725645
  Name: "Misc"
  Transform {
    Location {
      Z: -50
    }
    Rotation {
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 4781671109827199097
  ChildIds: 9086936746104183945
  ChildIds: 16813558807825262224
  ChildIds: 10005074784157121906
  ChildIds: 14982843161775482339
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
  Id: 14982843161775482339
  Name: "Default Floor"
  Transform {
    Location {
    }
    Rotation {
    }
    Scale {
      X: 50
      Y: 50
      Z: 1
    }
  }
  ParentId: 16270802511419725645
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 15784785916998790486
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
  CoreMesh {
    MeshAsset {
      Id: 12095835209017042614
    }
    Teams {
      IsTeamCollisionEnabled: true
      IsEnemyCollisionEnabled: true
    }
    InteractWithTriggers: true
    StaticMesh {
      Physics {
      }
      BoundsScale: 1
    }
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
}
Objects {
  Id: 10005074784157121906
  Name: "Default Sky"
  Transform {
    Location {
      Z: 750
    }
    Rotation {
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 16270802511419725645
  ChildIds: 13551641546322277000
  ChildIds: 7155168770677928712
  ChildIds: 10505154200474359396
  UnregisteredParameters {
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
  Folder {
    IsGroup: true
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
}
Objects {
  Id: 10505154200474359396
  Name: "Sun Light"
  Transform {
    Location {
    }
    Rotation {
      Pitch: -45.8452454
      Yaw: 33.9371338
      Roll: 8.92731857
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 10005074784157121906
  UnregisteredParameters {
    Overrides {
      Name: "bp:Use Temperature"
      Bool: false
    }
    Overrides {
      Name: "bp:Light Color"
      Color {
        R: 1
        G: 0.955973327
        B: 0.73791039
        A: 1
      }
    }
    Overrides {
      Name: "bp:Shape"
      Int: 1
    }
    Overrides {
      Name: "bp:Size"
      Float: 5
    }
    Overrides {
      Name: "bp:Light Shaft Bloom"
      Bool: true
    }
    Overrides {
      Name: "bp:Cast Volumetric Shadows"
      Bool: false
    }
    Overrides {
      Name: "bp:Light Shaft Mask Darkness"
      Float: 0.5
    }
    Overrides {
      Name: "bp:Intensity"
      Float: 3.5
    }
    Overrides {
      Name: "bp:Sun Disc Color"
      Color {
        R: 3
        G: 3
        B: 3
        A: 1
      }
    }
    Overrides {
      Name: "bp:Light Shaft Bloom Scale"
      Float: 0.2
    }
    Overrides {
      Name: "bp:Light Shaft Bloom Threshold"
      Float: 0.05
    }
    Overrides {
      Name: "bp:Light Shaft Occlusion"
      Bool: true
    }
    Overrides {
      Name: "bp:Light Shaft Bloom Tint"
      Color {
        R: 1
        G: 0.998476863
        B: 0.77
        A: 1
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
  Blueprint {
    BlueprintAsset {
      Id: 16910278292812118833
    }
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
}
Objects {
  Id: 7155168770677928712
  Name: "Skylight"
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
  ParentId: 10005074784157121906
  UnregisteredParameters {
    Overrides {
      Name: "bp:Index"
      Int: 3
    }
    Overrides {
      Name: "bp:Occlusion Contrast"
      Float: 0
    }
    Overrides {
      Name: "bp:Intensity"
      Float: 3
    }
    Overrides {
      Name: "bp:Lower Hemisphere Color"
      Color {
        R: 0.0666259378
        G: 0.0307134502
        A: 1
      }
    }
    Overrides {
      Name: "bp:Occlusion Tint"
      Color {
        R: 0.0274509825
        G: 0.0274509825
        B: 0.0392156877
        A: 1
      }
    }
    Overrides {
      Name: "bp:Occlusion Exponent"
      Float: 0.4
    }
    Overrides {
      Name: "bp:Cast Shadows"
      Bool: true
    }
    Overrides {
      Name: "bp:Cast Volumetric Shadows"
      Bool: false
    }
    Overrides {
      Name: "bp:Tint Color"
      Color {
        R: 0.502886474
        G: 0.48514995
        B: 0.752942204
        A: 1
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
  Blueprint {
    BlueprintAsset {
      Id: 11515840070784317904
    }
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
}
Objects {
  Id: 13551641546322277000
  Name: "Sky Dome"
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
  ParentId: 10005074784157121906
  UnregisteredParameters {
    Overrides {
      Name: "bp:Zenith Color"
      Color {
        R: 0.0243181027
        G: 0.0633459464
        B: 0.212230757
        A: 0.886000037
      }
    }
    Overrides {
      Name: "bp:Horizon Color"
      Color {
        R: 0.489468127
        G: 0.480969489
        B: 0.623960376
        A: 0.895000041
      }
    }
    Overrides {
      Name: "bp:Haze Color"
      Color {
        R: 0.590618849
        G: 0.590618849
        B: 0.701101899
        A: 1
      }
    }
    Overrides {
      Name: "bp:Use Sun Color for Cloud Color"
      Bool: false
    }
    Overrides {
      Name: "bp:Cloud Ambient Brightness"
      Float: 3
    }
    Overrides {
      Name: "bp:Cloud Rim Brightness"
      Float: 50
    }
    Overrides {
      Name: "bp:Cloud Opacity"
      Float: 0
    }
    Overrides {
      Name: "bp:Cloud Ambient Color"
      Color {
        R: 2
        G: 2
        B: 2
        A: 1
      }
    }
    Overrides {
      Name: "bp:Cloud Color"
      Color {
        R: 2
        G: 2
        B: 2
        A: 1
      }
    }
    Overrides {
      Name: "bp:Cloud Shape"
      Int: 4
    }
    Overrides {
      Name: "bp:Cloud Lighting Brightness"
      Float: 1
    }
    Overrides {
      Name: "bp:Cloud Wisp Opacity"
      Float: 0.4
    }
    Overrides {
      Name: "bp:Cloud Speed"
      Float: 1
    }
    Overrides {
      Name: "bp:Brightness"
      Float: 1
    }
    Overrides {
      Name: "bp:Background Clouds"
      Bool: true
    }
    Overrides {
      Name: "bp:High Cloud Index"
      Int: 2
    }
    Overrides {
      Name: "bp:High Cloud Opacity"
      Float: 0
    }
    Overrides {
      Name: "bp:High Cloud Noise Amount"
      Float: 0.1
    }
    Overrides {
      Name: "bp:High Cloud Noise Scale"
      Float: 0.2
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
  Blueprint {
    BlueprintAsset {
      Id: 7887238662729938253
    }
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
}
Objects {
  Id: 16813558807825262224
  Name: "Spawn Point"
  Transform {
    Location {
      Z: 165
    }
    Rotation {
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 16270802511419725645
  UnregisteredParameters {
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
    Value: "mc:eindicatorvisibility:alwaysvisible"
  }
  PlayerSpawnPoint {
    TeamInt: 1
    PlayerScaleMultiplier: 1
    SpawnEffectsTemplate {
      Id: 841534158063459245
    }
    ShouldDecrowdPlayers: true
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
}
Objects {
  Id: 9086936746104183945
  Name: "Gameplay Settings"
  Transform {
    Location {
      Z: 50
    }
    Rotation {
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 16270802511419725645
  UnregisteredParameters {
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
    IsFilePartition: true
    FilePartitionName: "Gameplay Settings"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
}
