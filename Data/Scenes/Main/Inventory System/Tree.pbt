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
  Id: 13209325783734002800
  Name: "Player Hotbar - Custom"
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
      key: 15389941923635140634
      value {
        Overrides {
          Name: "Name"
          String: "Player Hotbar - Custom"
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
          Name: "cs:SlotBackgroundNormal"
          Color {
            G: 0.00334653491
            B: 0.0544802807
            A: 1
          }
        }
      }
    }
    TemplateAsset {
      Id: 6059809945121910478
    }
  }
}
Objects {
  Id: 1554840252127480772
  Name: "Player Inventory Tab"
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
      key: 15439844887740237587
      value {
        Overrides {
          Name: "Name"
          String: "Player Inventory Tab"
        }
        Overrides {
          Name: "cs:MaxHeight"
          Float: 600
        }
        Overrides {
          Name: "cs:SlotBackgroundNormal"
          Color {
            G: 0.00334653491
            B: 0.0544802807
            A: 1
          }
        }
      }
    }
    ParameterOverrideMap {
      key: 16913213544402551972
      value {
        Overrides {
          Name: "Width"
          Int: -30
        }
        Overrides {
          Name: "Height"
          Int: -30
        }
      }
    }
    TemplateAsset {
      Id: 8036679928641183158
    }
  }
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
