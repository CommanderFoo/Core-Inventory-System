Assets {
  Id: 15852684568902083763
  Name: "Mushroom"
  PlatformAssetType: 5
  TemplateAsset {
    ObjectBlock {
      RootId: 4467551336182475141
      Objects {
        Id: 4467551336182475141
        Name: "Mushroom"
        Transform {
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 4781671109827199097
        ChildIds: 3755907039012298844
        ChildIds: 12376599946085665267
        ChildIds: 17555642208945388895
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
        Id: 3755907039012298844
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
        ParentId: 4467551336182475141
        UnregisteredParameters {
          Overrides {
            Name: "cs:Root"
            ObjectReference {
              SubObjectId: 4467551336182475141
            }
          }
          Overrides {
            Name: "cs:PickupTrigger"
            ObjectReference {
              SubObjectId: 17555642208945388895
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
        Id: 12376599946085665267
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
        ParentId: 4467551336182475141
        ChildIds: 9412081648241597092
        ChildIds: 18108905901934013793
        ChildIds: 268858997677444933
        ChildIds: 9031957747596154847
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
        Id: 9412081648241597092
        Name: "Inventory Object Outline"
        Transform {
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 12376599946085665267
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
                  SubObjectId: 18108905901934013793
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
        Id: 18108905901934013793
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
        ParentId: 12376599946085665267
        ChildIds: 16559463357566540462
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
        Id: 16559463357566540462
        Name: "Nature - Mushroom 05"
        Transform {
          Location {
            Z: -17.0655365
          }
          Rotation {
          }
          Scale {
            X: 1.3171227
            Y: 1.3171227
            Z: 1.3171227
          }
        }
        ParentId: 18108905901934013793
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
            Id: 13829240005109576666
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
        Id: 268858997677444933
        Name: "Outline Trigger"
        Transform {
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 12376599946085665267
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
        Id: 9031957747596154847
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
        ParentId: 12376599946085665267
        UnregisteredParameters {
          Overrides {
            Name: "cs:Root"
            ObjectReference {
              SubObjectId: 4467551336182475141
            }
          }
          Overrides {
            Name: "cs:Item"
            ObjectReference {
              SubObjectId: 18108905901934013793
            }
          }
          Overrides {
            Name: "cs:Outline"
            ObjectReference {
              SubObjectId: 7466971374164889148
            }
          }
          Overrides {
            Name: "cs:OutlineTrigger"
            ObjectReference {
              SubObjectId: 10717802866182119520
            }
          }
          Overrides {
            Name: "cs:PickupTrigger"
            ObjectReference {
              SubObjectId: 17555642208945388895
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
        Id: 17555642208945388895
        Name: "Pickup Trigger"
        Transform {
          Scale {
            X: 2.72379947
            Y: 2.72379947
            Z: 2.72379947
          }
        }
        ParentId: 4467551336182475141
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
          SelfId: 17855455999835657377
          SubobjectId: 2859771732851525319
          InstanceId: 8035497499183849884
          TemplateId: 12185415287135871786
          WasRoot: true
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
      }
    }
    Assets {
      Id: 13829240005109576666
      Name: "Nature - Mushroom 05"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_nat_fun_mushroom_005_ref"
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
