Name: "Crafting System"
RootId: 12427107849396578516
Objects {
  Id: 16264596406847862496
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
  ParentId: 12427107849396578516
  ChildIds: 13907451883558150838
  ChildIds: 15691699396662364572
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
  Id: 15691699396662364572
  Name: "Crafting_Tab_Client"
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
  ParentId: 16264596406847862496
  UnregisteredParameters {
    Overrides {
      Name: "cs:UI_Tab"
      AssetReference {
        Id: 2020806990263371807
      }
    }
    Overrides {
      Name: "cs:CraftingPanel"
      ObjectReference {
        SelfId: 8861941641438055566
      }
    }
    Overrides {
      Name: "cs:CraftingTabButton"
      ObjectReference {
        SelfId: 12205698778485795739
        SubObjectId: 5166945521430075954
        InstanceId: 12516120920342394829
        TemplateId: 491768282389810091
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
      Id: 16506698043142403263
    }
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 13907451883558150838
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
  ParentId: 16264596406847862496
  ChildIds: 8861941641438055566
  ChildIds: 12516120920342394829
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
  Id: 12516120920342394829
  Name: "UI Grow Shrink Button"
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
  ParentId: 13907451883558150838
  TemplateInstance {
    ParameterOverrideMap {
      key: 4954124357189605708
      value {
        Overrides {
          Name: "Image"
          AssetReference {
            Id: 14771086016459750699
          }
        }
      }
    }
    ParameterOverrideMap {
      key: 5166945521430075954
      value {
        Overrides {
          Name: "Name"
          String: "Crafting Tab Button"
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
            Id: 14771086016459750699
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
            Id: 14771086016459750699
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
            Id: 14771086016459750699
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
  Id: 8861941641438055566
  Name: "Crafting Panel"
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
  ParentId: 13907451883558150838
  ChildIds: 18195255564064165944
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
      Opacity: 1
      OpacityMaskBrush {
        Id: 841534158063459245
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
  Id: 18195255564064165944
  Name: "UI Image"
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
  ParentId: 8861941641438055566
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
    Image {
      Brush {
        Id: 18181089392823908065
      }
      Color {
        R: 1
        G: 1
        B: 1
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
