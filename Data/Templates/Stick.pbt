Assets {
  Id: 2013165080876802881
  Name: "Stick"
  PlatformAssetType: 5
  TemplateAsset {
    ObjectBlock {
      RootId: 2501195100645144055
      Objects {
        Id: 2501195100645144055
        Name: "Stick Pickup"
        Transform {
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 4781671109827199097
        ChildIds: 3122754281718643758
        ChildIds: 13009612790557758849
        ChildIds: 17071952561241055533
        UnregisteredParameters {
          Overrides {
            Name: "cs:Inventory"
            AssetReference {
              Id: 12879219911357857649
            }
          }
          Overrides {
            Name: "cs:UpDownCurve"
            SimpleCurve {
              Keys {
                Interpolation {
                  Value: "mc:erichcurveinterpmode:rcim_cubic"
                }
                TangentMode {
                  Value: "mc:erichcurvetangentmode:rctm_user"
                }
              }
              Keys {
                Interpolation {
                  Value: "mc:erichcurveinterpmode:rcim_cubic"
                }
                TangentMode {
                  Value: "mc:erichcurvetangentmode:rctm_user"
                }
                Time: 3
                Value: 1
              }
              PreExtrapolation {
                Value: "mc:erichcurveextrapolation:rcce_oscillate"
              }
              PostExtrapolation {
                Value: "mc:erichcurveextrapolation:rcce_oscillate"
              }
              DefaultValue: 3.40282347e+38
            }
          }
          Overrides {
            Name: "cs:Rotate"
            Bool: true
          }
          Overrides {
            Name: "cs:AnimateUpDown"
            Bool: true
          }
          Overrides {
            Name: "cs:Multiplier"
            Float: 20
          }
          Overrides {
            Name: "cs:IsShared"
            Bool: false
          }
          Overrides {
            Name: "cs:FollowSpeed"
            Int: 5000
          }
          Overrides {
            Name: "cs:UpDownCurve:isrep"
            Bool: false
          }
          Overrides {
            Name: "cs:UpDownCurve:ml"
            Bool: false
          }
          Overrides {
            Name: "cs:Rotate:isrep"
            Bool: false
          }
          Overrides {
            Name: "cs:Rotate:ml"
            Bool: false
          }
          Overrides {
            Name: "cs:AnimateUpDown:isrep"
            Bool: false
          }
          Overrides {
            Name: "cs:AnimateUpDown:ml"
            Bool: false
          }
        }
        WantsNetworking: true
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
        Id: 3122754281718643758
        Name: "Inventory_Pickup_Server"
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
        ParentId: 2501195100645144055
        UnregisteredParameters {
          Overrides {
            Name: "cs:Root"
            ObjectReference {
              SubObjectId: 2501195100645144055
            }
          }
          Overrides {
            Name: "cs:PickupTrigger"
            ObjectReference {
              SubObjectId: 17071952561241055533
            }
          }
          Overrides {
            Name: "cs:Inventory_Events"
            AssetReference {
              Id: 9805636833553611479
            }
          }
        }
        WantsNetworking: true
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
            Id: 7153229304768253401
          }
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 13009612790557758849
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
        ParentId: 2501195100645144055
        ChildIds: 9620447563037553488
        ChildIds: 16430864326889091347
        ChildIds: 335502398509459121
        ChildIds: 7070119542677212077
        WantsNetworking: true
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
      }
      Objects {
        Id: 9620447563037553488
        Name: "Inventory Object Outline"
        Transform {
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 13009612790557758849
        TemplateInstance {
          ParameterOverrideMap {
            key: 3443521175387742296
            value {
              Overrides {
                Name: "Name"
                String: "Inventory Object Outline"
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
                Name: "bp:Object To Outline"
                ObjectReference {
                  SubObjectId: 16430864326889091347
                }
              }
              Overrides {
                Name: "bp:Enabled"
                Bool: false
              }
              Overrides {
                Name: "bp:Dynamic Thickness"
                Bool: false
              }
              Overrides {
                Name: "bp:Thickness"
                Float: 1
              }
            }
          }
          TemplateAsset {
            Id: 107364086786845811
          }
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 16430864326889091347
        Name: "Item"
        Transform {
          Location {
            Z: 10.955986
          }
          Rotation {
          }
          Scale {
            X: 0.3
            Y: 0.3
            Z: 0.3
          }
        }
        ParentId: 13009612790557758849
        ChildIds: 17374607591130114994
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
        Id: 17374607591130114994
        Name: "Nature - Stick 04"
        Transform {
          Location {
          }
          Rotation {
          }
          Scale {
            X: 0.948925734
            Y: 0.948925734
            Z: 0.948925734
          }
        }
        ParentId: 16430864326889091347
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
        CoreMesh {
          MeshAsset {
            Id: 14552629478674466828
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          StaticMesh {
            Physics {
              Mass: 100
              LinearDamping: 0.01
            }
            BoundsScale: 1
          }
        }
        Relevance {
          Value: "mc:edistancerelevance:critical"
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 335502398509459121
        Name: "Outline Trigger"
        Transform {
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 13009612790557758849
        TemplateInstance {
          ParameterOverrideMap {
            key: 17259491069621030325
            value {
              Overrides {
                Name: "Name"
                String: "Outline Trigger"
              }
            }
          }
          TemplateAsset {
            Id: 16799078388953106667
          }
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 7070119542677212077
        Name: "Inventory_Pickup_Client"
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
        ParentId: 13009612790557758849
        UnregisteredParameters {
          Overrides {
            Name: "cs:Root"
            ObjectReference {
              SubObjectId: 2501195100645144055
            }
          }
          Overrides {
            Name: "cs:Item"
            ObjectReference {
              SubObjectId: 16430864326889091347
            }
          }
          Overrides {
            Name: "cs:Outline"
            ObjectReference {
              SubObjectId: 8712753421868274254
            }
          }
          Overrides {
            Name: "cs:OutlineTrigger"
            ObjectReference {
              SubObjectId: 10084862623937870866
            }
          }
          Overrides {
            Name: "cs:PickupTrigger"
            ObjectReference {
              SubObjectId: 17071952561241055533
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
            Id: 16570813441883333925
          }
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 17071952561241055533
        Name: "Pickup Trigger"
        Transform {
          Scale {
            X: 2.72379947
            Y: 2.72379947
            Z: 2.72379947
          }
        }
        ParentId: 2501195100645144055
        WantsNetworking: true
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
        Trigger {
          TeamSettings {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          TriggerShape_v2 {
            Value: "mc:etriggershape:sphere"
          }
          InteractionTemplate {
          }
          BreadcrumbTemplate {
          }
        }
        InstanceHistory {
          SelfId: 5290609790212649847
          SubobjectId: 2859771732851525319
          InstanceId: 9621295948324140719
          TemplateId: 12185415287135871786
          WasRoot: true
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
      }
    }
    Assets {
      Id: 14552629478674466828
      Name: "Nature - Stick 04"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_prop_nat_stick_004_ref"
      }
    }
    PrimaryAssetId {
      AssetType: "None"
      AssetId: "None"
    }
  }
  SerializationVersion: 121
  VirtualFolderPath: "Inventory"
  VirtualFolderPath: "Item Templates"
}
